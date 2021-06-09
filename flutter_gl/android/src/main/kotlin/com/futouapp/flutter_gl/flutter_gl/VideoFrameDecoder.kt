package com.futouapp.flutter_gl.flutter_gl

import android.content.Context
import android.graphics.*
import android.media.*
import android.os.Bundle
import android.os.Handler
import android.os.Message
import android.util.Log
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.io.IOException


class VideoFrameDecoder {

    var filePath: String;

    lateinit var mediaExtractor: MediaExtractor;
    lateinit var videoDecoder: MediaCodec;
    lateinit var videoMediaFormat: MediaFormat;
    lateinit var mHandler: Handler
    lateinit var onNewFrame: (Double, ByteArray, Int) -> Unit;
    lateinit var failFrame: (Double) -> Unit;


    var renderWidth: Int;
    var renderHeight: Int;

    var width: Int = 0;
    var height: Int = 0;
    var degrees: Int = 0;
    var frameRate: Int = 25;
    lateinit var context: Context;

    var disposed: Boolean = false;

    constructor(filePath: String, renderWidth: Int, renderHeight: Int) {
        this.filePath = filePath

        this.renderWidth = renderWidth;
        this.renderHeight = renderHeight;

        this.context = FlutterGlPlugin.Companion.context;

        setup()
    }

    fun setup() {

        mediaExtractor = MediaExtractor();

        mHandler = object : Handler() {
            override fun handleMessage(msg: Message) {
                println(" handleMessage.... ")

                var bundle = msg!!.getData();
                var bytes = bundle.getByteArray("bytes");
                var time = bundle.getDouble("time");
                var format = bundle.getInt("format");

                onNewFrame(time, bytes!!, format);
            }
        }


        try {
            mediaExtractor.setDataSource(filePath)
        } catch (e: IOException) {
            e.printStackTrace()
        }

        for (i in 0 until mediaExtractor.trackCount) {
            var mediaFormat = mediaExtractor.getTrackFormat(i)
            val mime = mediaFormat.getString(MediaFormat.KEY_MIME)!!


            if (mime.startsWith(KEY_VIDEO)) {
                width = mediaFormat.getInteger(MediaFormat.KEY_WIDTH)
                height = mediaFormat.getInteger(MediaFormat.KEY_HEIGHT)

                videoMediaFormat = mediaFormat;//匹配视频对应的轨道

                mediaExtractor.selectTrack(i) //选择视频对应的轨道
                try {
                    videoDecoder = MediaCodec.createDecoderByType(mime)
                    showSupportedColorFormat(videoDecoder.getCodecInfo().getCapabilitiesForType(mime));
                    videoMediaFormat.setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible);
//                    videoDecoder.configure(videoMediaFormat, null, null, 0) //flag=1的时候为encode
                    videoDecoder.configure(videoMediaFormat, null, null, 0) //flag=1的时候为encode
                    videoDecoder.start();
                } catch (e: IOException) {
                    e.printStackTrace()
                }
                break
            }
        }

        val retriever = MediaMetadataRetriever()
        retriever.setDataSource(filePath)

        degrees = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)!!.toInt()
    }


    fun getFrameAtTime(time: Double, handler: Handler) {

//        println(" videoframedecoder getFrameAtTime: ${time} System.currentTimeMillis 0: ${System.currentTimeMillis()} ");

        if(disposed) {
            return;
        }

        videoDecoder.flush();

        var _start = System.currentTimeMillis();

        // 单位是微秒？
        val targetTime = ((time * 1000 * 1000).toInt()).toLong()
        mediaExtractor.seekTo(targetTime, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);


        var bufferInfo = MediaCodec.BufferInfo()

        var readEnd = false
        var lastSampleTime: Long = 0
        var playing: Boolean = true;
        var doRender: Boolean = false;

        while (playing) {

            val _ct = System.currentTimeMillis();

            if(_ct - _start > 2000) {
                println("getFrameAtTime timeout: ${time}  超时。。。 ");
                break;
            }

            if(disposed) {
                break;
            }

            if (!readEnd) {
                readEnd = putBufferToCoder(mediaExtractor, videoDecoder)
            } else {
                println(" reach end when decode time: ${time} ")
                break;
            }

            val outputBufferIndex = videoDecoder.dequeueOutputBuffer(bufferInfo, TIMEOUT_US)

            when (outputBufferIndex) {
                MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
//                    Log.v(TAG, "format changed")
                }
                MediaCodec.INFO_TRY_AGAIN_LATER -> {
//                    Log.v(TAG, "视频解码当前帧超时 VideoFrameDecoder mediaExtractor current time: ${mediaExtractor.sampleTime} target time: ${time} ")
                }
                MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED ->  {
                    //                    Log.v(TAG, "output buffers changed")
                    //                    outputBuffers = mediaCodec.getOutputBuffers();
                }
                else -> {
                    //直接渲染到Surface时使用不到outputBuffer
//                    var outputBuffer = outputBuffers[outputBufferIndex];

                    if (bufferInfo.size != 0) {
                        // 微秒转毫秒
                        val currentSampleTime = bufferInfo.presentationTimeUs;

                        if ((targetTime - currentSampleTime) <= (20 * 1000).toLong()) {

                            doRender = true;

//                            println("getFrameAtTime success currentSampleTime: ${currentSampleTime / 1000.0 / 1000.0}  target time is ${time} ");

//                            val _ct = System.currentTimeMillis();
//                            println("get frame success ====_ct: ${_ct}= _start: ${_start}= diff: ${_ct - _start}============");

                            playing = false

                            var _start = System.currentTimeMillis();

                            val image: Image? = videoDecoder.getOutputImage(outputBufferIndex);

                            if(image != null) {
                                val iw = image.width;
                                val ih = image.height;

                                Log.v(TAG, "NV21toJPEG image width： ${iw} height: ${ih} ");


                                val bytes = NV21toJPEG(image!!);

                                val iscale: Double = iw / ih.toDouble();

                                var nw: Double = 300.0
                                var nh: Double = 300.0

                                if (iw > ih) {
                                    nh = nw / iscale;
                                } else {
                                    nw = nh * iscale;
                                }

//                            println(" nw: ${nw} nh: ${nh} iscale: ${iscale} ")
                                val nbytes = getScaledImage(bytes!!, nw.toInt(), nh.toInt());

                                var _start2 = System.currentTimeMillis();

//                            println(" image cost : ${_start2 - _start} ")
//
//                            var msg = Message()
//                            var bundle = Bundle();
//                            bundle.putByteArray("bytes", nbytes!!);
//                            bundle.putDouble("time", time);
//                            bundle.putInt("format", image.format);
//                            msg.setData(bundle);
//
//                            mHandler.sendMessage(msg)

                                var msg = Message()
                                var bundle = Bundle();
                                bundle.putString("name", "newVideoFrame");
                                bundle.putString("filePath", filePath);
                                bundle.putDouble("time", time);
                                bundle.putInt("frame", Math.floor(time * 25.0).toInt())
                                bundle.putInt("format", image.format);
                                bundle.putByteArray("frameData", bytes);
                                msg.setData(bundle);

                                handler.sendMessage(msg)
                            }


                        }
                    }

                    //渲染 释放缓冲区
                    // As soon as we call releaseOutputBuffer, the buffer will be forwarded
                    // to SurfaceTexture to convert to a texture.  The API doesn't guarantee
                    // that the texture will be available before the call returns, so we
                    // need to wait for the onFrameAvailable callback to fire.

                    try {
                        videoDecoder.releaseOutputBuffer(outputBufferIndex, doRender)
                    } catch (e: MediaCodec.CodecException) {
                        println("mediaCodec.releaseOutputBuffer CodecException $e ")
                    } catch (e: IllegalStateException) {
                        println("mediaCodec.releaseOutputBuffer IllegalStateException $e ")
                    } finally {
                    }

                }
            }
            if (bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                Log.v(TAG, "buffer stream end bufferInfo.flags:${bufferInfo.flags} ${MediaCodec.BUFFER_FLAG_END_OF_STREAM}")
                break
            }
        }


        if(!doRender) {
            if(failFrame != null) {
                failFrame(time);
            }
        }

    }

    fun getFrameFileAtTime(time: Double, framePath: String) {
        val _ffile = File(framePath);

        if(_ffile.exists()) {
            return;
        }

        if(VERBOSE) println(" getFrameFileAtTime: ${time} ")

        var _start = System.currentTimeMillis();

        // 单位是微秒？
        val targetTime = ((time * 1000 * 1000).toInt()).toLong()
        videoDecoder.flush();
        mediaExtractor.seekTo(targetTime, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);


        var bufferInfo = MediaCodec.BufferInfo()

        var readEnd = false
        var doRender: Boolean = false;

        while (true) {
            val _ct = System.currentTimeMillis();
            if(_ct - _start > 2000) {
                println("getFrameAtTime timeout: ${time}  超时。。。 ");
                break;
            }

            if(disposed) {
                break;
            }

            if (!readEnd) {
                readEnd = putBufferToCoder(mediaExtractor, videoDecoder)
            } else {
                println(" reach end when decode time: ${time} ")
                break;
            }

            val outputBufferIndex = videoDecoder.dequeueOutputBuffer(bufferInfo, TIMEOUT_US)

            when (outputBufferIndex) {
                MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
//                    Log.v(TAG, "format changed")
                }
                MediaCodec.INFO_TRY_AGAIN_LATER -> {
//                    Log.v(TAG, "视频解码当前帧超时 VideoFrameDecoder mediaExtractor current time: ${mediaExtractor.sampleTime} target time: ${time} ")
                }
                MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED ->  {
                    //                    Log.v(TAG, "output buffers changed")
                    //                    outputBuffers = mediaCodec.getOutputBuffers();
                }
                else -> {
                    //直接渲染到Surface时使用不到outputBuffer
//                    var outputBuffer = outputBuffers[outputBufferIndex];

                    if (bufferInfo.size > 0) {
                        // 微秒转毫秒
                        val currentSampleTime = bufferInfo.presentationTimeUs;

                        if ((targetTime - currentSampleTime) <= (20 * 1000).toLong()) {

                            doRender = true;

                            val image: Image? = videoDecoder.getOutputImage(outputBufferIndex);

                            if(image != null) {
                                val iw = image.width;
                                val ih = image.height;


                                val bytes = NV21toJPEG(image);

                                val iscale: Double = iw / ih.toDouble();

                                var nw: Double = 300.0
                                var nh: Double = 300.0

                                if (iw > ih) {
                                    nh = nw / iscale;
                                } else {
                                    nw = nh * iscale;
                                }

//                            println(" nw: ${nw} nh: ${nh} iscale: ${iscale} ")
//                            val nbytes = getScaledImage(bytes!!, nw.toInt(), nh.toInt());

                                val _bitmap = getScaledBitmap(bytes!!, nw.toInt(), nh.toInt());

                                saveFrame(_bitmap, framePath);
                            }
                        }
                    }

                    //渲染 释放缓冲区
                    // As soon as we call releaseOutputBuffer, the buffer will be forwarded
                    // to SurfaceTexture to convert to a texture.  The API doesn't guarantee
                    // that the texture will be available before the call returns, so we
                    // need to wait for the onFrameAvailable callback to fire.

                    try {
                        videoDecoder.releaseOutputBuffer(outputBufferIndex, doRender)
                    } catch (e: MediaCodec.CodecException) {
                        println("mediaCodec.releaseOutputBuffer CodecException $e ")
                    } catch (e: IllegalStateException) {
                        println("mediaCodec.releaseOutputBuffer IllegalStateException $e ")
                    } finally {
                    }

                }
            }

            if(doRender) {
                break;
            }

            if (bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                Log.v(TAG, "buffer stream end bufferInfo.flags:${bufferInfo.flags} ${MediaCodec.BUFFER_FLAG_END_OF_STREAM}")
                break
            }
        }
    }

    fun saveFrame(frame: Bitmap, framePath: String) {
        try {
            val file = File(framePath)
            val fOut = FileOutputStream(file)
            frame.compress(Bitmap.CompressFormat.JPEG, 85, fOut)
            fOut.flush()
            fOut.close()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }


    private fun showSupportedColorFormat(caps: MediaCodecInfo.CodecCapabilities) {
        Log.v(TAG,"supported color format: ")
        for (c in caps.colorFormats) {
            Log.v(TAG, c.toString() + "\t")
        }
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
                decoder.queueInputBuffer(inputBufferIndex, 0, sampleSize, extractor.sampleTime, 0)
                extractor.advance()
            }
        }
        return isMediaEnd
    }

    private fun YUV_420_888toNV21(image: Image): ByteArray {

//        val _format = image.getFormat();
//        Log.v(TAG, "image get format is ${_format}")


        val yBuffer = image.planes[0].buffer
        val uBuffer = image.planes[1].buffer
        val vBuffer = image.planes[2].buffer
        val ySize = yBuffer.remaining()
        val uSize = uBuffer.remaining()
        val vSize = vBuffer.remaining()
        var nv21 = ByteArray(ySize + uSize + vSize)
        //U and V are swapped
        yBuffer[nv21, 0, ySize]
        vBuffer[nv21, ySize, vSize]
        uBuffer[nv21, ySize + vSize, uSize]
        return nv21
    }

    private fun isImageFormatSupported(image: Image): Boolean {
        val format = image.format
        when (format) {
            ImageFormat.YUV_420_888, ImageFormat.NV21, ImageFormat.YV12 -> return true
        }
        return false
    }

    private fun getDataFromImage(image: Image, colorFormat: Int): ByteArray {
        require(!(colorFormat != COLOR_FormatI420 && colorFormat != COLOR_FormatNV21)) { "only support COLOR_FormatI420 " + "and COLOR_FormatNV21" }
        if (!isImageFormatSupported(image)) {
            throw RuntimeException("can't convert Image to byte array, format " + image.format)
        }
        val crop = image.cropRect
        val format = image.format
        val width = crop.width()
        val height = crop.height()
        val planes = image.planes
        val data = ByteArray(width * height * ImageFormat.getBitsPerPixel(format) / 8)
        val rowData = ByteArray(planes[0].rowStride)
        if (VERBOSE) Log.v(TAG, "get data from " + planes.size + " planes")
        var channelOffset = 0
        var outputStride = 1
        for (i in planes.indices) {
            when (i) {
                0 -> {
                    channelOffset = 0
                    outputStride = 1
                }
                1 -> if (colorFormat == COLOR_FormatI420) {
                    channelOffset = width * height
                    outputStride = 1
                } else if (colorFormat == COLOR_FormatNV21) {
                    channelOffset = width * height + 1
                    outputStride = 2
                }
                2 -> if (colorFormat == COLOR_FormatI420) {
                    channelOffset = (width.toDouble() * height.toDouble() * 1.25).toInt()
                    outputStride = 1
                } else if (colorFormat == COLOR_FormatNV21) {
                    channelOffset = width * height
                    outputStride = 2
                }
            }
            val buffer = planes[i].buffer
            val rowStride = planes[i].rowStride
            val pixelStride = planes[i].pixelStride
            if (VERBOSE) {
                Log.v(TAG, "pixelStride $pixelStride")
                Log.v(TAG, "rowStride $rowStride")
                Log.v(TAG, "width $width")
                Log.v(TAG, "height $height")
                Log.v(TAG, "buffer size " + buffer.remaining())
            }
            val shift = if (i == 0) 0 else 1
            val w = width shr shift
            val h = height shr shift
            buffer.position(rowStride * (crop.top shr shift) + pixelStride * (crop.left shr shift))
            for (row in 0 until h) {
                val length: Int
                if (pixelStride == 1 && outputStride == 1) {
                    length = w
                    buffer.get(data, channelOffset, length)
                    channelOffset += length
                } else {
                    length = (w - 1) * pixelStride + 1
                    buffer.get(rowData, 0, length)
                    for (col in 0 until w) {
                        data[channelOffset] = rowData[col * pixelStride]
                        channelOffset += outputStride
                    }
                }
                if (row < h - 1) {
                    buffer.position(buffer.position() + rowStride - length)
                }
            }
            if (VERBOSE) Log.v(TAG, "Finished reading data from plane $i")
        }
        return data
    }


    private fun NV21toJPEG(image: Image): ByteArray? {

        val nv21 = getDataFromImage(image, COLOR_FormatNV21);

        val out = ByteArrayOutputStream()

        val crop = image.cropRect

        Log.v(TAG, "NV21toJPEG: bytes: ${nv21.count()} width: ${crop.width()} height: ${crop.height()} ")


        val yuv = YuvImage(nv21, ImageFormat.NV21, crop.width(), crop.height(), null)
        yuv.compressToJpeg(crop, 80, out)
        return out.toByteArray();
    }

    // 缩放同时旋转
    private fun getScaledImage(originalImage: ByteArray, newWidth: Int, newHeight: Int): ByteArray? {
        // PNG has not losses, it just ignores this field when compressing
        val COMPRESS_QUALITY = 0
        // Get the bitmap from byte array since, the bitmap has the the resize function
        val bitmapImage: Bitmap = BitmapFactory.decodeByteArray(originalImage, 0, originalImage.size)
        // New bitmap with the correct size, may not return a null object
        val mutableBitmapImage: Bitmap = Bitmap.createScaledBitmap(bitmapImage, newWidth, newHeight, false)

        // 旋转90度
        val resultBitmap = bitmapTransform(mutableBitmapImage);

//        val resultBitmap = mutableBitmapImage

        // Get the byte array from tbe bitmap to be returned
        val outputStream = ByteArrayOutputStream()
        resultBitmap.compress(Bitmap.CompressFormat.PNG, 0, outputStream)
        if (resultBitmap !== bitmapImage) {
            resultBitmap.recycle()
        } // else they are the same, just recycle once
        bitmapImage.recycle()
        mutableBitmapImage.recycle()
        return outputStream.toByteArray()
    }

    // 缩放同时旋转
    private fun getScaledBitmap(originalImage: ByteArray, newWidth: Int, newHeight: Int): Bitmap {
        // PNG has not losses, it just ignores this field when compressing
        val COMPRESS_QUALITY = 0
        // Get the bitmap from byte array since, the bitmap has the the resize function
        val bitmapImage: Bitmap = BitmapFactory.decodeByteArray(originalImage, 0, originalImage.size)
        // New bitmap with the correct size, may not return a null object
        val mutableBitmapImage: Bitmap = Bitmap.createScaledBitmap(bitmapImage, newWidth, newHeight, false)

        // 旋转90度
        val resultBitmap = bitmapTransform(mutableBitmapImage);

        return resultBitmap;
    }

    fun bitmapTransform(bitmap: Bitmap): Bitmap {
        val w = bitmap.getWidth()
        val h = bitmap.getHeight()
        var m = Matrix();

//        print(" degrees: ${degrees} ")

        if (degrees == 90) {
            m.setRotate(90.0f);
        } else if (degrees == 180) {
            m.setRotate(180.0f);
        } else if (degrees == 270) {
            m.setRotate(270.0f);
        }

        return Bitmap.createBitmap(bitmap, 0, 0, w, h, m, true);
    }


    fun dispose() {
        disposed = true;

        mediaExtractor.release()

        videoDecoder.stop()
        videoDecoder.release()
    }

    companion object {
        private const val VERBOSE = false;
        private const val TAG = "VideoFrameDecoder"
        private const val KEY_VIDEO = "video/"
        private const val KEY_AUDIO = "audio/"
        private const val TIMEOUT_US: Long = 0
    }

    private val COLOR_FormatI420 = 1
    private val COLOR_FormatNV21 = 2

}