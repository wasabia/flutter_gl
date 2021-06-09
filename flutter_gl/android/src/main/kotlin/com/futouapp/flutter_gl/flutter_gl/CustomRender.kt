package com.futouapp.flutter_gl.flutter_gl


import android.content.Context
import android.graphics.SurfaceTexture
import android.opengl.GLES32.*
import android.os.Handler
import android.os.HandlerThread
import android.util.DisplayMetrics
import android.view.WindowManager
import com.futouapp.threeegl.ThreeEgl
import java.util.concurrent.Semaphore


class CustomRender {
    // Make sure to initialize Filament first
    // This loads the JNI library needed by most API calls

    companion object {
        lateinit var sharedEglEnv: EglEnv;
    }


    var disposed = false;

    private lateinit var worker: RenderWorker
    var options: Map<String, Any>;
    var width: Int;
    var height: Int;

    var glWidth: Int = 0;
    var glHeight: Int = 0;

    var surfaceTexture: SurfaceTexture;
    var textureId: Int;
    var screenScale = 1.0f;
    var context: Context;

    lateinit var eglEnv: EglEnv;
    lateinit var dartEglEnv: EglEnv;
    lateinit var shareEglEnv: EglEnv;

    var maxTextureSize = 4096;

    var renderThread: HandlerThread = HandlerThread("flutterGlCustomRender");
    private var renderHandler : Handler

    constructor(options: Map<String, Any>, surfaceTexture: SurfaceTexture, textureId: Int) {
        this.options = options;
        this.width = options["width"] as Int;
        this.height = options["height"] as Int;
        this.surfaceTexture = surfaceTexture;
        this.textureId = textureId;
        this.context = FlutterGlPlugin.context;

        renderThread.start()
        renderHandler = Handler(renderThread.looper)


        setup();
    }


    fun setup() {
        val wm = this.context.getSystemService(Context.WINDOW_SERVICE) as WindowManager;
        val display = wm.getDefaultDisplay()

        var dm = DisplayMetrics()
        display.getMetrics(dm);

        val density = dm.density;
        screenScale = density;

        glWidth = (width * screenScale).toInt()
        glHeight = (height * screenScale).toInt()

        this.initEGL();

        this.worker = RenderWorker();

        this.worker.setup();

    }

    fun updateTexture(sourceTexture: Int): Boolean {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);

        glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT or GL_STENCIL_BUFFER_BIT);


        this.worker.renderTexture(sourceTexture, null);
        glFinish();

        checkGlError("update texture 01");
        eglEnv.swapBuffers();

        return true;
    }


    fun initEGL() {

        shareEglEnv = EglEnv(glWidth, glHeight);
        shareEglEnv.setupRender();

        ThreeEgl.setContext("shareContext", shareEglEnv.eglContext);
        println(" flutter gl set shareContext: ${shareEglEnv.eglContext} ....  ")

        eglEnv = EglEnv(glWidth, glHeight);
        dartEglEnv = EglEnv(glWidth, glHeight);

        eglEnv.setupRender(shareEglEnv.eglContext);
        dartEglEnv.setupRender(shareEglEnv.eglContext);

        // TODO DEBUG
        surfaceTexture.setDefaultBufferSize(glWidth, glHeight)
        eglEnv.buildWindowSurface(surfaceTexture);

        dartEglEnv.buildOffScreenSurface();

        eglEnv.makeCurrent();
    }


    fun executeSync(task: () -> Unit) {
        val semaphore = Semaphore(0)
        renderHandler.post {
            task.invoke()
            semaphore.release()
        }
        semaphore.acquire()
    }

    fun execute(task: () -> Unit) {
        renderHandler.post {
            task.invoke()
        }
    }

    fun getEgl() : List<Long> {
        var _res = mutableListOf<Long>();
        _res.addAll(this.eglEnv.getEgl());
        _res.addAll(this.dartEglEnv.getEgl());
        return _res;
    }
    

    fun dispose() {
        disposed = true;
        this.eglEnv.dispose();
        this.dartEglEnv.dispose();
        this.worker.dispose();
    }


    //检查每一步操作是否有错误的方法
    fun checkGlError(op: String) {
        val error: Int = glGetError();
        if (error != GL_NO_ERROR) {
            println("ES20_ERROR ${op}: glError ${error}")
            throw RuntimeException("$op: glError $error")
        }
    }
}
