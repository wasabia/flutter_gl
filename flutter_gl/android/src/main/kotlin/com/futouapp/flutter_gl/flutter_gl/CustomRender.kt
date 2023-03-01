package com.futouapp.flutter_gl.flutter_gl


import android.opengl.GLES32.*
import android.os.Handler
import android.os.HandlerThread
import com.futouapp.threeegl.ThreeEgl
import io.flutter.view.TextureRegistry.SurfaceTextureEntry
import java.util.concurrent.Semaphore


class CustomRender(
    private val entry: SurfaceTextureEntry,
    private val glWidth: Int,
    private val glHeight: Int,
) {

    var disposed = false

    private lateinit var worker: RenderWorker
    private lateinit var eglEnv: EglEnv

    companion object {
        var shareEglEnv: EglEnv? = null
        var dartEglEnv: EglEnv? = null

        var renderThread: HandlerThread? = null
        var renderHandler : Handler? = null
    }

    init {
        if(renderThread == null) {
            renderThread = HandlerThread("flutterGlCustomRender")
            renderThread!!.start()
            renderHandler = Handler(renderThread!!.looper)
        }
        this.executeSync {
            setup()
        }
    }

    fun setup() {
        this.initEGL()

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

            checkGlError()
            eglEnv.swapBuffers()
        }

        return true
    }


    private fun initEGL() {

        if(shareEglEnv == null) {
            shareEglEnv = EglEnv()
            shareEglEnv!!.setupRender()
            ThreeEgl.setContext("shareContext", shareEglEnv!!.eglContext)
        }

        entry.surfaceTexture().setDefaultBufferSize(glWidth, glHeight)

        eglEnv = EglEnv()
        eglEnv.setupRender(shareEglEnv!!.eglContext)
        eglEnv.buildWindowSurface(entry.surfaceTexture())
        eglEnv.makeCurrent()

        if(dartEglEnv == null) {
            dartEglEnv = EglEnv()
            dartEglEnv!!.setupRender(shareEglEnv!!.eglContext)
            dartEglEnv!!.buildOffScreenSurface(glWidth, glHeight)
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
        val res = mutableListOf<Long>()

        val egls = this.eglEnv.getEgl().toMutableList()
        val dartEgls = dartEglEnv!!.getEgl().toMutableList()

        res.addAll( egls )
        res.addAll( dartEgls )

        return res
    }

    fun dispose() {
        this.worker.dispose()

        this.eglEnv.dispose()

        dartEglEnv?.dispose()
        dartEglEnv = null

        shareEglEnv?.dispose()
        shareEglEnv = null


        entry.release()

        disposed = true
    }


    private fun checkGlError() {
        val error: Int = glGetError()
        if (error != GL_NO_ERROR) {
            println("ES20_ERROR update texture: glError $error")
            throw RuntimeException("glError $error")
        }
    }
}
