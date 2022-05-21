package com.futouapp.flutter_gl.flutter_gl


import android.content.Context
import android.graphics.SurfaceTexture
import android.opengl.EGLSurface
import android.opengl.GLES32.*
import android.os.Handler
import android.os.HandlerThread
import com.futouapp.threeegl.ThreeEgl
import java.util.concurrent.Semaphore


class CustomRender {

    var disposed = false;

    private lateinit var worker: RenderWorker

    var textureId: Int;
    var context: Context;

    // TODO use same context different surface will have better performance???
    lateinit var eglEnv: EglEnv;

    var surfaceTexture: SurfaceTexture;


    companion object {
        var shareEglEnv: EglEnv? = null;
        var dartEglEnv: EglEnv? = null;

        var renderThread: HandlerThread? = null;
        var renderHandler : Handler? = null;
    }

    constructor(options: Map<String, Any>, surfaceTexture: SurfaceTexture, textureId: Int) {
        this.textureId = textureId;
        this.context = FlutterGlPlugin.context;
        this.surfaceTexture = surfaceTexture;
        
        if(renderThread == null) {
            renderThread = HandlerThread("flutterGlCustomRender");
            renderThread!!.start();
            renderHandler = Handler(renderThread!!.looper)
        }


        this.executeSync {
            setup(surfaceTexture, options);
        }

    }

    fun setup(surfaceTexture: SurfaceTexture, options: Map<String, Any>) {
        this.initEGL(surfaceTexture, options);

        this.worker = RenderWorker();
        this.worker.setup();
    }

    fun updateTexture(sourceTexture: Int): Boolean {
        this.execute {
            eglEnv.makeCurrent();

            glBindFramebuffer(GL_FRAMEBUFFER, 0);

            glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT or GL_STENCIL_BUFFER_BIT);

            this.worker.renderTexture(sourceTexture, null);

            glFinish();

            checkGlError("update texture 01");
            eglEnv.swapBuffers();
        }

        return true;
    }


    fun initEGL(surfaceTexture: SurfaceTexture, options: Map<String, Any>) {

        var glWidth = ((options["width"] as Int) * (options["dpr"] as Double)).toInt();
        var glHeight = ((options["height"] as Int) * (options["dpr"] as Double)).toInt();

        if(shareEglEnv == null) {
            shareEglEnv = EglEnv();
            shareEglEnv!!.setupRender();
            ThreeEgl.setContext("shareContext", shareEglEnv!!.eglContext);
        }

        surfaceTexture.setDefaultBufferSize(glWidth, glHeight)

        eglEnv = EglEnv();
        eglEnv.setupRender(shareEglEnv!!.eglContext);
        eglEnv.buildWindowSurface(surfaceTexture);
        eglEnv.makeCurrent();

        if(dartEglEnv == null) {
            dartEglEnv = EglEnv();
            dartEglEnv!!.setupRender(shareEglEnv!!.eglContext);
            dartEglEnv!!.buildOffScreenSurface(glWidth, glHeight);
        }
    }


    fun executeSync(task: () -> Unit) {
        val semaphore = Semaphore(0)
        renderHandler!!.post {
            task.invoke()
            semaphore.release()
        }
        semaphore.acquire()
    }

    fun execute(task: () -> Unit) {
        renderHandler!!.post {
            task.invoke()
        }
    }

    fun getEgl() : List<Long> {
        var _res = mutableListOf<Long>();

        var egls = this.eglEnv.getEgl().toMutableList();
        var dartEgls = dartEglEnv!!.getEgl().toMutableList();

        _res.addAll( egls );
        _res.addAll( dartEgls );
        return _res;
    }

    fun dispose() {
        disposed = true;
//        this.shareEglEnv.dispose();
        this.eglEnv.dispose();
//        this.dartEglEnv.dispose();
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
