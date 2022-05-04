package com.futouapp.flutter_gl.flutter_gl


import android.graphics.SurfaceTexture
import android.opengl.*
import android.opengl.EGL14.eglChooseConfig
import android.opengl.GLU.gluErrorString
import android.util.Log
import android.view.Surface


class EglEnv {
    private val EGL_RECORDABLE_ANDROID = 0x3142;

    var eglDisplay = EGL14.EGL_NO_DISPLAY
    var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    var eglSurface = EGL14.EGL_NO_SURFACE
    private var eglConfig: EGLConfig? = null


    constructor() {}

    fun setupFBO(shareContext: EGLContext = EGL14.EGL_NO_CONTEXT) {
        var attribs = intArrayOf(
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_DEPTH_SIZE, 16,
                EGL14.EGL_STENCIL_SIZE, 8,
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
                EGL14.EGL_SAMPLE_BUFFERS, 1,
                EGL14.EGL_SAMPLES, 4,
                EGL14.EGL_NONE)
        setUpEnv(attribs, shareContext);
    }

    fun setupVideoEncode(shareContext: EGLContext = EGL14.EGL_NO_CONTEXT) {
        var attribs = intArrayOf(
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL_RECORDABLE_ANDROID, 1,
                EGL14.EGL_DEPTH_SIZE, 16,
                EGL14.EGL_STENCIL_SIZE, 8,
                EGL14.EGL_SAMPLE_BUFFERS, 1,
                EGL14.EGL_SAMPLES, 4,
                EGL14.EGL_NONE)
        setUpEnv(attribs, shareContext);
    }

    fun setupRender(shareContext: EGLContext = EGL14.EGL_NO_CONTEXT) {
        var attribs = intArrayOf(
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_DEPTH_SIZE, 16,
                EGL14.EGL_STENCIL_SIZE, 8,
                EGL14.EGL_SAMPLE_BUFFERS, 1,
                EGL14.EGL_SAMPLES, 4,
                EGL14.EGL_NONE)

        setUpEnv(attribs, shareContext);
    }

    fun setUpEnv(attributesList: IntArray, shareContext: EGLContext = EGL14.EGL_NO_CONTEXT) {
        // 构建一个显示设备
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
            checkEglError("can't load EGL display")
        }

        val version = IntArray(2)
        if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
            checkEglError("EGL initialize failed")
        }


        val configs = arrayOfNulls<EGLConfig>(1)
        val numConfigs = IntArray(1)
        if (!EGL14.eglChooseConfig(eglDisplay, attributesList, 0, configs,
                        0, configs.size, numConfigs, 0)) {
            checkEglError("EGL choose config failed")
        }
        eglConfig = configs[0]

        val attributes = intArrayOf(
            EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE
        )
        eglContext = EGL14.eglCreateContext(eglDisplay, eglConfig, shareContext, attributes, 0)

        if (eglContext == EGL14.EGL_NO_CONTEXT) {
            checkEglError("EGL create context failed ")
        }
    }

    fun buildOffScreenSurface(width: Int, height: Int) {

        val pbufferAttributes = intArrayOf(
                EGL14.EGL_WIDTH, width,
                EGL14.EGL_HEIGHT, height,
                EGL14.EGL_NONE
        );
        eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, eglConfig, pbufferAttributes, 0)
        if (eglSurface == EGL14.EGL_NO_SURFACE) {
            checkEglError("EGL create Pbuffer surface failed")
        }
    }

    fun buildWindowSurface(surfaceTexture: SurfaceTexture) {

        if (eglSurface != EGL14.EGL_NO_SURFACE) {
            throw RuntimeException("EGL already config surface")
        }
        val surfaceAttribs = intArrayOf(EGL14.EGL_NONE)
        eglSurface = EGL14.eglCreateWindowSurface(eglDisplay, eglConfig, surfaceTexture, surfaceAttribs, 0)
        if (eglSurface == EGL14.EGL_NO_SURFACE) {
            checkEglError("EGL create window surface failed")
        }
    }

    fun buildNewWindowSurface(surfaceTexture: SurfaceTexture): EGLSurface {
        val surfaceAttribs = intArrayOf(EGL14.EGL_NONE)
        return EGL14.eglCreateWindowSurface(eglDisplay, eglConfig, surfaceTexture, surfaceAttribs, 0)
    }

    fun buildWindowSurfaceFromSurface(surface: Surface) {
        if (eglSurface != EGL14.EGL_NO_SURFACE) {
            throw RuntimeException("EGL already config surface")
        }
        val surfaceAttribs = intArrayOf(EGL14.EGL_NONE)
        eglSurface = EGL14.eglCreateWindowSurface(eglDisplay, eglConfig, surface, surfaceAttribs, 0)

        if (eglSurface == EGL14.EGL_NO_SURFACE) {
            checkEglError("EGL create window surface failed")
        }
    }

    fun makeCurrent() {
        Log.d(this.javaClass.name, " egl make current ")
        if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            checkEglError("EGL make current failed")
        }
    }

    fun makeCurrentWithSurface(surface: EGLSurface) {
        if (!EGL14.eglMakeCurrent(eglDisplay, surface, surface, eglContext)) {
            checkEglError("EGL make current failed")
        }
    }

    fun setPresentationTime(nsecs: Long) {
        EGLExt.eglPresentationTimeANDROID(eglDisplay, eglSurface, nsecs)
        checkEglError("eglPresentationTimeANDROID")
    }

    fun swapBuffers(): Boolean {
        val result = EGL14.eglSwapBuffers(eglDisplay, eglSurface)
        checkEglError("eglSwapBuffers")
        return result
    }

    fun getEgl() : List<Long> {
        return listOf(this.eglDisplay.getNativeHandle(), this.eglSurface.getNativeHandle(), this.eglContext.getNativeHandle());
    }


    fun dispose() {

        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_CONTEXT)
            EGL14.eglDestroySurface(eglDisplay, eglSurface)
            EGL14.eglDestroyContext(eglDisplay, eglContext)
            EGL14.eglReleaseThread()
            EGL14.eglTerminate(eglDisplay)
        }
        eglSurface = EGL14.EGL_NO_SURFACE
        eglContext = EGL14.EGL_NO_CONTEXT
        eglDisplay = EGL14.EGL_NO_DISPLAY
    }

    fun checkEglError(msg: String) {
        val error: Int = EGL14.eglGetError()
        if (error != EGL14.EGL_SUCCESS) {

            var errorInfo = gluErrorString(error);

//            throw RuntimeException(msg + ": EGL error: 0x" + Integer.toHexString(error) + "errorInfo: ${errorInfo}")
        }
    }


}