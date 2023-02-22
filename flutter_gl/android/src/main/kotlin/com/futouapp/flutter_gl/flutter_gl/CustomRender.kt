package com.futouapp.flutter_gl.flutter_gl

import android.graphics.SurfaceTexture
import android.opengl.GLES32.*
import android.os.Handler
import android.os.HandlerThread
import android.util.Log
import com.futouapp.threeegl.ThreeEgl
import io.flutter.view.TextureRegistry.SurfaceTextureEntry
import java.util.concurrent.Semaphore


class CustomRender(
    private val entry: SurfaceTextureEntry,
    private val glWidth: Int,
    private val glHeight: Int,
) {
    private var disposed = false

    private lateinit var worker: RenderWorker
    private lateinit var eglEnv: EglEnv

    private val renderThread: HandlerThread = HandlerThread("flutterGlCustomRender")
    private val renderHandler: Handler

    init {

        renderThread.start()
        renderHandler = Handler(renderThread.looper)

        this.executeSync {
            setup(entry.surfaceTexture())
        }
    }

    private fun setup(surfaceTexture: SurfaceTexture) {
        this.initEGL(surfaceTexture)

        this.worker = RenderWorker()
        this.worker.setup()
    }

    fun updateTexture(sourceTexture: Int): Boolean {
        this.execute {
            eglEnv.makeCurrent()

            glBindFramebuffer(GL_FRAMEBUFFER, 0)

            glClearColor(0.0f, 0.0f, 0.0f, 0.0f)
            glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT or GL_STENCIL_BUFFER_BIT)

            this.worker.renderTexture(sourceTexture, null)

            glFinish()

            checkGlError("update texture 01")
            eglEnv.swapBuffers()
        }

        return true
    }


    private fun initEGL(surfaceTexture: SurfaceTexture) {

        surfaceTexture.setDefaultBufferSize(glWidth, glHeight)

        eglEnv = EglEnv()
        eglEnv.setupRender(eglEnv.eglContext)
        ThreeEgl.setContext("shareContext", eglEnv.eglContext)

        eglEnv.buildWindowSurface(surfaceTexture)
        eglEnv.makeCurrent()

    }


    private fun executeSync(task: () -> Unit) {
        val semaphore = Semaphore(0)
        renderHandler.post {
            task.invoke()
            semaphore.release()
        }
        semaphore.acquire()
    }

    private fun execute(task: () -> Unit) {
        renderHandler.post {
            task.invoke()
        }
    }

    fun getEgl(): List<Long> {
        val res = mutableListOf<Long>()
        val egls = this.eglEnv.getEgl().toMutableList()

        res.addAll(egls)
        return res
    }

    fun dispose() {
        Log.d("CustomRender", "dispose: releasing surface texture")
        entry.release()

        eglEnv.dispose()
        worker.dispose()

        disposed = true
    }


    //检查每一步操作是否有错误的方法
    private fun checkGlError(op: String) {
        val error: Int = glGetError()
        if (error != GL_NO_ERROR) {
            println("ES20_ERROR ${op}: glError ${error}")
            throw RuntimeException("$op: glError $error")
        }
    }
}
