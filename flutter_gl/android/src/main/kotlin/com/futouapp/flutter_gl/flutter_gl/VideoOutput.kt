package com.futouapp.flutter_gl.flutter_gl

import android.content.Context
import android.graphics.Bitmap
import android.graphics.SurfaceTexture
import android.media.*
import android.opengl.*
import android.opengl.GLES32.*
import android.opengl.GLU.gluErrorString
import android.os.*
import android.provider.MediaStore
import android.util.Log
import android.view.Surface
import androidx.annotation.RequiresApi
import java.io.BufferedOutputStream
import java.io.FileOutputStream
import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.util.*
import java.util.concurrent.Semaphore
import kotlin.collections.ArrayList
import kotlin.math.pow
import kotlin.math.roundToInt


class VideoOutput : SurfaceTexture.OnFrameAvailableListener {


    private var filePath: String? = null
    private var surface: Surface? = null

    private lateinit var mediaExtractor: MediaExtractor;
    private lateinit var videoDecoder: MediaCodec;
    private lateinit var videoMediaFormat: MediaFormat;

    lateinit var context: Context;

    lateinit var surfaceTexture: SurfaceTexture;


    var waitDecodeFrames: MutableList<Double> = ArrayList();
    var videoFramesFrameDecoder: VideoFrameDecoder? = null;

    var degrees: Int = 0;
    private var duration: Double = 0.0
    private var playing = false;
    private var seeking = false;
    private var seekingTo: Long = 0;

    var width: Int = 0
    var height: Int = 0


    var renderWidth: Int;
    var renderHeight: Int;

    var screenScale: Float = 1.0f;


    var textureId: Int? = null;

    var openGLProgram: OpenGLProgram? = null;

    lateinit var vertexBuffer1: FloatBuffer;
    lateinit var textureBuffer1: FloatBuffer;

    lateinit var vertexBuffer2: FloatBuffer;
    lateinit var textureBuffer2: FloatBuffer;


    lateinit var vertexBuffer90: FloatBuffer;
    lateinit var textureBuffer90: FloatBuffer;

    lateinit var vertexBuffer180: FloatBuffer;
    lateinit var textureBuffer180: FloatBuffer;

    lateinit var vertexBuffer270: FloatBuffer;
    lateinit var textureBuffer270: FloatBuffer;

    var tmpFrameBuffer = IntArray(1);
    var tmpTextures = IntArray(1);


    var videoBufferInfo = MediaCodec.BufferInfo();

    var disposed: Boolean = false;

    var running: Boolean = false;
    var currentVideoTime: Long = -1;
    var readEnd = false

    var renderToVideo: Boolean = false;


    var syncSampleTimes = Stack<Long>();
    var lastRenderTime: Long = 0L;

    var videoFps: Int = 25;

    // 微秒
    var videoFrameDuration: Long = 40 * 1000L;

    var decoderThread: HandlerThread = HandlerThread("decoderThread");
    private var decoderThreadHandler: Handler? = null;

    var decoderFrameThread: HandlerThread = HandlerThread("decoderFrameThread");
    private var decoderFrameThreadHandler: Handler? = null;

    var lastTime: Long = 0L;

    var ready = false;

    constructor(filePath: String, renderWidth: Int, renderHeight: Int, renderToVideo: Boolean) {
        this.filePath = filePath;
        this.renderToVideo = renderToVideo;
        this.renderWidth = renderWidth;
        this.renderHeight = renderHeight;
    }

    fun getInfo(): Map<String, Any> {
        var info = mutableMapOf<String, Any>();

        playVideo(1.0, "running");

        this.executeSync {
            info["width"] = this.width;
            info["height"] = this.height;

            val _textureID = getTextureAt(1.0);

            info["texture"] = _textureID!!;
        }



        return info;
    }


    // 异步
    fun execute(task: () -> Unit) {
        decoderThreadHandler?.post {
            task.invoke()
        }
    }

    fun executeSync(task: () -> Unit) {
        val semaphore = Semaphore(0)
        decoderThreadHandler?.post {
            task.invoke()
            semaphore.release()
        }
        semaphore.acquire()
    }

    fun setup(videoEglEnv: EglEnv) {
        decoderThread.start()
        decoderThreadHandler = Handler(decoderThread.looper)


        decoderFrameThread.start();
        decoderFrameThreadHandler = Handler(decoderFrameThread.looper)



        this.executeSync {
            this.setup2(videoEglEnv);
        }
    }

    fun setup2(videoEglEnv: EglEnv) {

        this.videoFramesFrameDecoder = VideoFrameDecoder(this.filePath!!, renderWidth, renderHeight);

        this.openGLProgram = OpenGLProgram();

        screenScale = 1.0f;


        mediaExtractor = MediaExtractor()
        try {
            mediaExtractor.setDataSource(filePath!!)
        } catch (e: IOException) {
            e.printStackTrace()
        }

        calcVideoInfo();


        videoEglEnv.makeCurrent();
        glViewport(0, 0, width, height);


        this.createSurfaceAndTexture();


        initVideoDecoder();





        setupFBO();
        setupVBO1();
        setupVBO2();
        setupVBO90();
        setupVBO180();
        setupVBO270();

        checkGlError("mediacodec video output setup ")

        getAllKeyframeTimes();

        ready = true;
    }


    fun initVideoDecoder() {
        for (i in 0 until mediaExtractor.trackCount) {
            val mediaFormat = mediaExtractor.getTrackFormat(i)
            val mime = mediaFormat.getString(MediaFormat.KEY_MIME)!!

            if (mime.startsWith(KEY_VIDEO)) { //匹配视频对应的轨道
                val videoWidth = mediaFormat.getInteger(MediaFormat.KEY_WIDTH)
                val videoHeight = mediaFormat.getInteger(MediaFormat.KEY_HEIGHT)


                mediaExtractor.selectTrack(i) //选择视频对应的轨道
                videoMediaFormat = mediaFormat;

                videoFps = videoMediaFormat.getInteger(MediaFormat.KEY_FRAME_RATE);

                videoFrameDuration = (1000 * 1000 / videoFps).toLong();

                println(" videoFps: ${videoFps} ");

                try {
                    videoDecoder = MediaCodec.createDecoderByType(mime)
                    showSupportedColorFormat(videoDecoder.getCodecInfo().getCapabilitiesForType(mime));
                    videoMediaFormat.setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible);


                    // flag=1的时候为encode
                    videoDecoder.configure(videoMediaFormat, this.surface, null, 0)
                    videoDecoder.start()
                } catch (e: IOException) {
                    e.printStackTrace()
                }
                break
            }
        }
    }

    private fun showSupportedColorFormat(caps: MediaCodecInfo.CodecCapabilities) {
        print("supported color format: ")
        for (c in caps.colorFormats) {
            print(c.toString() + "\t")
        }
        println()
    }

    fun calcVideoInfo() {
        val retriever = MediaMetadataRetriever()
        retriever.setDataSource(filePath)

        degrees = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)!!.toInt()
        duration = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION)!!.toDouble();

        val _width = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)!!.toDouble()
        val _height = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)!!.toDouble()

        retriever.release()

        var nw = _width;
        var nh = _height;

        if (degrees == 90 || degrees == 270) {
            nw = _height;
            nh = _width;
        }

        println("1 calcVideoInfo width: ${nw} height: ${nh} degrees: ${degrees}  ");
        println("filePath: ${filePath}");

        this.width = nw.toInt();
        this.height = nh.toInt();
    }

    fun getAllKeyframeTimes() {
        while (true) {
            if (mediaExtractor!!.sampleFlags == MediaExtractor.SAMPLE_FLAG_SYNC)
                syncSampleTimes.push(mediaExtractor!!.sampleTime)

            if (!mediaExtractor!!.advance())
                break
        }

        lastTime = syncSampleTimes.last();

        syncSampleTimes.reverse();

        println(" syncSampleTimes =============>>>: ${syncSampleTimes.count()} ");
//        println(syncSampleTimes);
    }

    fun isPlaying(): Boolean {
        return playing;
    }


    fun createSurfaceAndTexture() {

        val textureIds = IntArray(1)
        glGenTextures(1, textureIds, 0)


        if (EGL14.eglGetCurrentContext().equals(EGL14.EGL_NO_CONTEXT)) {
            println(" ------------------- EGL_NO_CONTEXT ---------------------- ")
        }


        if (textureIds[0] <= 0) {
            val error: Int = glGetError();
            val info = gluErrorString(error);

            println(" glGenTextures error ${info} ")

            glGenTextures(1, textureIds, 0)
            println(" createSurfaceAndTexture2: ${textureIds[0]} ");
            return;
        }


        textureId = textureIds[0]

        glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, textureId!!)
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, null);


        glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
        glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_MAG_FILTER, GL_LINEAR)

        // 创建SurfaceTexture、Surface，并绑定到MediaPlayer上，接收画面驱动回调
        surfaceTexture = SurfaceTexture(textureId!!)
        surfaceTexture.setDefaultBufferSize(width, height);

        println("surfaceTexture.setDefaultBufferSize width: ${width} ${height}  ")

        surfaceTexture.setOnFrameAvailableListener(this)
        surface = Surface(surfaceTexture)
    }


    fun playVideo(time: Double, status: String) {
        playing = status == "playing"
        seek(time);
    }


    fun pause() {
        playing = false;
        running = false;
    }


    fun seek(time: Double) {
//        println(" seeking.... ");

        if (!ready) {
            return;
        }

        playing = false;
        seekingTo = (time * 1000 * 1000).toLong();


        this.videoRunner(seekingTo);
    }

    fun getPrevTime(time: Long): Long {
        var _t = time;
        if (_t > lastTime) {
            _t = lastTime;
        }
        if (_t < 0) {
            _t = 0;
        }

        return syncSampleTimes.first { it <= _t };
    }

    override fun onFrameAvailable(surfaceTexture: SurfaceTexture?) {
        this.surfaceTexture.updateTexImage();

    }

    fun getTextureAt(time: Double): Int? {

        println("getTextureAt: ${time} ready: ${ready} ");

        if (!ready) {
            return null;
        }
        var lastTextures = convertTexture();

        println(" lastTextures: ${lastTextures} ")

        return lastTextures?.get(0);
    }

    fun videoRunner(time: Long) {
        var _tf = ((time / 1000.0 / 1000.0) * videoFps).roundToInt();
        var _vf = ((currentVideoTime / 1000.0 / 1000.0) * videoFps).roundToInt();

        if (_tf == _vf) {
            return;
        }

        var targetTime = (_tf * (1000 * 1000.0 / videoFps)).toLong();

        if (renderToVideo) {
            this.executeSync {
                decodeVideo(targetTime);
            }
        } else {
            if (!running) {
                // 播放时 异步 拖拽时 同步？？？
                //TODO
                if (playing) {
                    this.executeSync {
                        decodeVideo(targetTime);
                    }
                } else {
                    this.executeSync {
                        decodeVideo(targetTime);
                    }
                }
            }
        }

//        var _start2 = System.currentTimeMillis();
//        println("videoRunner cost : ${_start2 - _start}  ")
    }

    fun decodeVideo(time: Long) {

        running = true;

        if (readEnd) {
            videoDecoder.flush();
            currentVideoTime = -99999;
            readEnd = false;
        }

        var _prevTime = getPrevTime(time)



        if (currentVideoTime >= _prevTime && currentVideoTime < time) {
            // 不需要seek 直接向前解码
            mediaExtractor.seekTo(_prevTime, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
        } else {
            videoDecoder.flush();
            mediaExtractor.seekTo(_prevTime, MediaExtractor.SEEK_TO_CLOSEST_SYNC);
        }


        var _start = System.currentTimeMillis();

        var doRender = false
        var isTimeout = false;
        var timeOutCount = 0;


        println("seekto: ${time}  _prevTime: ${_prevTime} ");
        println("mediaExtractor time: ${mediaExtractor.sampleTime}  ")


        while (running) {
            if (disposed) {
                break;
            }

            var mt = mediaExtractor.sampleTime

            var _start1 = System.currentTimeMillis();
            var _cost = _start1 - _start;

            if (_cost > 2000) {
                println(" decode time: ${time} cost: ${_cost} time out mt: ${mt} ")
                break;
            }

//            if(_cost > 500) {
//                isTimeout = true;
//                timeOutCount = timeOutCount + 1;
//                videoDecoder.flush();
//                mediaExtractor.seekTo(_prevTime, MediaExtractor.SEEK_TO_CLOSEST_SYNC);
//                println(" decode time: ${time} cost: ${_cost} time out mt: ${mt} ")
//            }

//            println(" mt: ${mt} ")

//            if(timeOutCount > 2) {
//                println(" decode time: ${time} timeout ${timeOutCount} times break....  ")
//                break;
//            }

            val outputBufferIndex = videoDecoder.dequeueOutputBuffer(videoBufferInfo, TIMEOUT_US)


//            println("dequeueOutputBuffer t: ${time}  sampleTime: ${mt}   ")

            if (outputBufferIndex >= 0) {
                if (videoBufferInfo.size > 0) {
                    val currentSampleTime = videoBufferInfo.presentationTimeUs

                    currentVideoTime = currentSampleTime;

                    val diffTime = time - currentSampleTime;

                    if (isTimeout) {
//                        println(" dorendertime: ${time} currentSampleTime: ${currentSampleTime} diffTime: ${diffTime}")
                    }

                    if (diffTime <= videoFrameDuration * 0.5) {
                        doRender = true;
                    } else {
                        doRender = false;
                    }
                }

                //渲染 释放缓冲区
                videoDecoder.releaseOutputBuffer(outputBufferIndex, doRender)

                if (doRender) {
                    var _start1 = System.currentTimeMillis();
                    if (VERBOSE) println("time: ${time} doRender true: ${_start1 - _start}  ");
                    break;
                }

            } else if (outputBufferIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                Log.v(TAG, "format changed")
            } else if (outputBufferIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
//                Log.v(TAG, "视频解码当前帧超时 time: ${time} lastTime： ${lastTime} currentVideoTime: ${currentVideoTime} _prevTime: ${_prevTime} ")
            }

            if (!readEnd) {
                readEnd = putBufferToCoder(mediaExtractor, videoDecoder)
            }

            if (videoBufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                Log.v(TAG, "buffer stream end time: ${time}");
                readEnd = true;
                break
            }
        }

//        println("decode end : ${time}  ");

        running = false;
    }


    /**
     * 将缓冲区传递至解码器
     *
     * @param extractor
     * @param decoder
     * @param inputBuffers
     * @return 如果到了文件末尾，返回true;否则返回false
     */
    private fun putBufferToCoder(extractor: MediaExtractor, decoder: MediaCodec): Boolean {
        var isMediaEnd = false
        val inputBufferIndex = decoder.dequeueInputBuffer(TIMEOUT_US)
        if (inputBufferIndex >= 0) {
            val inputBuffer = decoder.getInputBuffer(inputBufferIndex);

            val sampleSize = extractor.readSampleData(inputBuffer!!, 0)
            if (sampleSize < 0) {
                decoder.queueInputBuffer(inputBufferIndex, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM)
                isMediaEnd = true
            } else {
                val flag = extractor.sampleFlags
                decoder.queueInputBuffer(inputBufferIndex, 0, sampleSize, extractor.sampleTime, 0)
                extractor.advance()
            }
        }
        return isMediaEnd
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    fun getSamplesForChannel(codec: MediaCodec, bufferId: Int, channelIx: Int): ShortArray? {
        val outputBuffer = codec.getOutputBuffer(bufferId)
        val format = codec.getOutputFormat(bufferId)
        val numChannels = format.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
        val samples = outputBuffer!!.order(ByteOrder.nativeOrder()).asShortBuffer()
        if (channelIx < 0 || channelIx >= numChannels) {
            return null
        }
        val res = ShortArray(samples.remaining() / numChannels)
        for (i in res.indices) {
            res[i] = samples[i * numChannels + channelIx]
        }
        return res
    }


    fun durationInDouble(): Double {
        return duration;
    }

    fun dispose() {
        decoderThread.quit();
        decoderFrameThread.quit();

        disposed = true;
    }

    fun getFrameFileAtTime(time: Double, framePath: String) {
        decoderFrameThreadHandler!!.post {
            this.videoFramesFrameDecoder!!.getFrameFileAtTime(time, framePath);
        }
    }


    // convert GL_TEXTURE_EXTERNAL_OES to GL_TEXTURE
    fun convertTexture(): IntArray? {
        // 纹理ID
        var textureID0 = textureId!!;


        var _tmpProgram = OpenGLProgram().getProgramOES();


        glUseProgram(_tmpProgram)

        glBindFramebuffer(GL_FRAMEBUFFER, tmpFrameBuffer[0]);


        val _filterTexture0Uniform = glGetUniformLocation(_tmpProgram, "Texture0");

        glActiveTexture(GL_TEXTURE0);

        glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, textureID0);

        glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

//        checkGlError("mediacodec video output convertTexture 3 ")

        glUniform1i(_filterTexture0Uniform, 0);
        // 激活纹理单元GL_TEXTURE0，绑定纹理，
        //  GL_TEXTURE0
        // 将 textureSlot 赋值为 0，而 0 与 GL_TEXTURE0 对应，这里如果写 1，上面也要改成 GL_TEXTURE1

        val _positionSlot = glGetAttribLocation(_tmpProgram, "Position")
        val _textureSlot = glGetAttribLocation(_tmpProgram, "TextureCoords")
        glEnableVertexAttribArray(_positionSlot);
        glEnableVertexAttribArray(_textureSlot);

//        println(" convertTexture rotate ${degrees} ")

        //TODO
//        if (degrees == 90) {
//            vertexBuffer90.position(0);
//            glVertexAttribPointer(_positionSlot, 3, GL_FLOAT, false, 0, vertexBuffer90);
//            textureBuffer90.position(0);
//            glVertexAttribPointer(_textureSlot, 2, GL_FLOAT, false, 0, textureBuffer90);
//        } else if (degrees == 180) {
//            vertexBuffer180.position(0);
//            glVertexAttribPointer(_positionSlot, 3, GL_FLOAT, false, 0, vertexBuffer1);
//            textureBuffer180.position(0);
//            glVertexAttribPointer(_textureSlot, 2, GL_FLOAT, false, 0, textureBuffer1);
//        } else if (degrees == 270) {
//            vertexBuffer270.position(0);
//            glVertexAttribPointer(_positionSlot, 3, GL_FLOAT, false, 0, vertexBuffer270);
//            textureBuffer270.position(0);
//            glVertexAttribPointer(_textureSlot, 2, GL_FLOAT, false, 0, textureBuffer270);
//        } else {

//            vertexBuffer2.position(0);
//            textureBuffer2.position(0);
//
//            glVertexAttribPointer(_positionSlot, 3, GL_FLOAT, false, 0, vertexBuffer2);
//            glVertexAttribPointer(_textureSlot, 2, GL_FLOAT, false, 0, textureBuffer2);
//        }

        vertexBuffer270.position(0);
        textureBuffer270.position(0);

        glVertexAttribPointer(_positionSlot, 3, GL_FLOAT, false, 0, vertexBuffer270);
        glVertexAttribPointer(_textureSlot, 2, GL_FLOAT, false, 0, textureBuffer270);

        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
        glFinish();

//        if(seekingTo < 10 * 1000 * 1000L) {
//            saveFrame();
//        }

//        saveFrame();

        return tmpTextures;
    }


    fun saveFrame() {

        var filename = "${seekingTo}.png";

        var mPixelBuf = ByteBuffer.allocateDirect(width * height * 4);
        mPixelBuf.order(ByteOrder.LITTLE_ENDIAN);

        mPixelBuf.rewind()
        glReadPixels(0, 0, width, height, GL_RGBA, GL_UNSIGNED_BYTE, mPixelBuf)

        println(" mPixelBuf ------------------------------------------------ ")



        println(" ${mPixelBuf.get(0)} ${mPixelBuf.get(1)} ${mPixelBuf.get(2)} ${mPixelBuf.get(3)} ${mPixelBuf.get(4)} ")

        var bos: BufferedOutputStream? = null;

        try {
            var path = FlutterGlPlugin.context.getExternalFilesDir(null)!!.getAbsolutePath();
            bos = BufferedOutputStream(FileOutputStream("${path}${filename}"))
            val bmp = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            mPixelBuf.rewind()
            bmp.copyPixelsFromBuffer(mPixelBuf)
            bmp.compress(Bitmap.CompressFormat.PNG, 90, bos)
            saveBitmapTofile(bmp, filename);


            bmp.recycle()


        } finally {
            if (bos != null) bos!!.close()
        }

    }

    fun saveBitmapTofile(bmp: Bitmap, filename: String) {
        if (bmp == null || filename == null) {
            return;
        }

        val context = FlutterGlPlugin.Companion.context;

        MediaStore.Images.Media.insertImage(
                context.contentResolver,
                bmp,
                filename,
                "Image of $filename"
        )
    }


    fun setupFBO() {
        glGenFramebuffers(1, tmpFrameBuffer, 0);
        glGenTextures(1, tmpTextures, 0);


        var glWidth = this.width;
        var glHeight = this.height;

        glActiveTexture(GL_TEXTURE10);
        glBindTexture(GL_TEXTURE_2D, tmpTextures[0]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, glWidth, glHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, null);

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glBindFramebuffer(GL_FRAMEBUFFER, tmpFrameBuffer[0]);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, tmpTextures[0], 0);
        //    glFramebufferTexture2D 是把帧缓存的颜色输出定位到纹理中，这样shader的绘制结果就会成为纹理；

    }

    fun getValueFor(value: Int): Int {
        var i: Int = 1;

        while (2.0.pow(i) < value) {
            i = i + 1;
        }

        return 2.0.pow(i).toInt();
    }


    fun setupVBO1() {
        var w: Float = 1.0f;
        var h: Float = 1.0f;
        var verticesPoints = floatArrayOf(-w, h, 0.0f, -w, -h, 0.0f, w, h, 0.0f, w, -h, 0.0f);
        var texturesPoints = floatArrayOf(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f);


        // 创建顶点缓存
        vertexBuffer1 = BufferUtils.createFloatBuffer(verticesPoints);

        // 设置纹理坐标数据
        textureBuffer1 = BufferUtils.createFloatBuffer(texturesPoints);
    }

    fun setupVBO2() {
        var w: Float = 1.0f;
        var h: Float = 1.0f;

        var verticesPoints = floatArrayOf(-w, -h, 0.0f, w, -h, 0.0f, -w, h, 0.0f, w, h, 0.0f);
        var texturesPoints = floatArrayOf(0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);


        // 创建顶点缓存
        vertexBuffer2 = BufferUtils.createFloatBuffer(verticesPoints);

        // 设置纹理坐标数据
        textureBuffer2 = BufferUtils.createFloatBuffer(texturesPoints);
    }

    fun setupVBO90() {
        var w: Float = 1.0f;
        var h: Float = 1.0f;

        var verticesPoints = floatArrayOf(w, -h, 0.0f, w, h, 0.0f, -w, -h, 0.0f, -w, h, 0.0f);
        var texturesPoints = floatArrayOf(0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);

        // 创建顶点缓存
        vertexBuffer90 = BufferUtils.createFloatBuffer(verticesPoints);

        // 设置纹理坐标数据
        textureBuffer90 = BufferUtils.createFloatBuffer(texturesPoints);
    }

    fun setupVBO180() {
        var w: Float = 1.0f;
        var h: Float = 1.0f;

        var verticesPoints = floatArrayOf(w, h, 0.0f, -w, h, 0.0f, w, -h, 0.0f, -w, -h, 0.0f);
        var texturesPoints = floatArrayOf(0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);

        // 创建顶点缓存
        vertexBuffer180 = BufferUtils.createFloatBuffer(verticesPoints);

        // 设置纹理坐标数据
        textureBuffer180 = BufferUtils.createFloatBuffer(texturesPoints);
    }

    fun setupVBO270() {
        var w: Float = 1.0f;
        var h: Float = 1.0f;

//        var verticesPoints = floatArrayOf(
//                -w, h, 0.0f,
//                -w, -h, 0.0f,
//                w, h, 0.0f,
//                w, -h, 0.0f
//        );
//        var texturesPoints = floatArrayOf(
//                0.0f, 0.0f,
//                1.0f, 0.0f,
//                0.0f, 1.0f,
//                1.0f, 1.0f
//        );

        var verticesPoints = floatArrayOf(
                w, h, 0.0f,
                w, -h, 0.0f,
                -w, h, 0.0f,
                -w, -h, 0.0f

        );
        var texturesPoints = floatArrayOf(
                0.0f, 0.0f,
                1.0f, 0.0f,
                0.0f, 1.0f,
                1.0f, 1.0f
        );

        // 创建顶点缓存
        vertexBuffer270 = BufferUtils.createFloatBuffer(verticesPoints);

        // 设置纹理坐标数据
        textureBuffer270 = BufferUtils.createFloatBuffer(texturesPoints);
    }

    //检查每一步操作是否有错误的方法
    fun checkGlError(op: String) {
        val error: Int = glGetError();
        if (error != GL_NO_ERROR) {
            Log.e("ES20_ERROR", "$op: glError $error")
            throw RuntimeException("$op: glError $error")
        }
    }


    companion object {
        private const val VERBOSE = false;
        private const val TAG = "hwtPlay"
        private const val KEY_VIDEO = "video/"
        private const val KEY_AUDIO = "audio/"
        private const val TIMEOUT_US: Long = 0L;
    }
}