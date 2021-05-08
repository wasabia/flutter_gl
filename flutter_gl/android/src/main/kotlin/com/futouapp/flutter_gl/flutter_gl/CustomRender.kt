package com.futouapp.flutter_gl.flutter_gl


import android.content.Context

import android.graphics.SurfaceTexture
import android.opengl.GLES20

import android.util.DisplayMetrics
import android.view.WindowManager
import android.opengl.GLES32.*
import java.nio.ByteBuffer
import java.nio.ByteOrder


class CustomRender {
    // Make sure to initialize Filament first
    // This loads the JNI library needed by most API calls

    var disposed = false;

    private lateinit var worker: RenderWorker
    var options: Map<String, Any>;
    var width: Int;
    var height: Int;

    var glWidth: Int = 0;
    var glHeight: Int = 0;

    var surfaceTexture: SurfaceTexture;
    var textureId: Int;
    var renderToVideo: Boolean = false;
    var screenScale = 1.0f;
    var context: Context;
    lateinit var eglEnv: EglEnv;
    var maxTextureSize = 4096;

    lateinit var dartEglEnv: EglEnv;


    var renderBuffer = IntArray(1);

    var frameBuffer = IntArray(1);
    var frameBufferTexture = IntArray(1)



    constructor(options: Map<String, Any>, surfaceTexture: SurfaceTexture, textureId: Int, renderToVideo: Boolean = false) {
        this.options = options;
        this.width = options["width"] as Int;
        this.height = options["height"] as Int;
        this.surfaceTexture = surfaceTexture;
        this.textureId = textureId;



        this.context = FlutterGlPlugin.context;
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

        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT or GL_STENCIL_BUFFER_BIT);


        this.worker.renderTexture(sourceTexture, null);
        glFinish();

        checkGlError("update texture 01");
        eglEnv.swapBuffers();

        return true;
    }


    fun initEGL() {
        eglEnv = EglEnv(glWidth, glHeight);
        dartEglEnv = EglEnv(glWidth, glHeight);

        eglEnv.setupRender();
        dartEglEnv.setupRender(eglEnv.eglContext);

        // TODO DEBUG
        surfaceTexture.setDefaultBufferSize(glWidth, glHeight)
        eglEnv.buildWindowSurface(surfaceTexture);

        dartEglEnv.buildOffScreenSurface();

        eglEnv.makeCurrent();

//        this.initOpenGL();
    }

    fun initOpenGL() {
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE)
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);


        glGenFramebuffers(1, frameBuffer, 0)
        glBindFramebuffer(GL_FRAMEBUFFER, frameBuffer[0]);

        glGenRenderbuffers(1, renderBuffer, 0);
        glBindRenderbuffer(GL_RENDERBUFFER, renderBuffer[0]);

        glRenderbufferStorage(GL_RENDERBUFFER, GL_RGBA8, glWidth, glHeight);
        var error = glGetError();
        if (error != GL_NO_ERROR) {
            println("GlError while allocating Renderbuffer ${error}");
        }
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, renderBuffer[0]);

        var frameBufferCheck = glCheckFramebufferStatus(GL_FRAMEBUFFER);
        if (frameBufferCheck != GL_FRAMEBUFFER_COMPLETE) {
            println("glCheckFramebufferStatus is not success ....  ")
        }

        glViewport(0, 0, glWidth, glHeight);
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
