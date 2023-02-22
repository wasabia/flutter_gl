package com.futouapp.flutter_gl.flutter_gl


import android.opengl.GLES32.*
import android.util.Log
import java.nio.FloatBuffer


class RenderWorker {

    lateinit var vertexBuffer4FBO: FloatBuffer
    lateinit var textureBuffer4FBO: FloatBuffer

    var program: Int? = null

    private val openGLProgram: OpenGLProgram = OpenGLProgram()

    fun setup() {
        setupVBO4FBO()
    }

    fun renderTexture(texture: Int, matrix: FloatArray?) {
        drawTexture(texture, vertexBuffer4FBO, textureBuffer4FBO, matrix)
    }

    fun drawTexture(
        texture: Int,
        vertexBuffer: FloatBuffer,
        textureBuffer: FloatBuffer,
        matrix: FloatArray?
    ) {
        val program = getProgram()
        glUseProgram(program)

        glActiveTexture(GL_TEXTURE10)
        glBindTexture(GL_TEXTURE_2D, texture)
        glUniform1i(glGetUniformLocation(program, "Texture0"), 10)

        var resultMatrix = floatArrayOf(
            1.0f, 0.0f, 0.0f, 0.0f,
            0.0f, 1.0f, 0.0f, 0.0f,
            0.0f, 0.0f, 1.0f, 0.0f,
            0.0f, 0.0f, 0.0f, 1.0f
        )

        if (matrix != null) {
            resultMatrix = matrix
        }
        val matrixUniform = glGetUniformLocation(program, "matrix")
        glUniformMatrix4fv(matrixUniform, 1, false, resultMatrix, 0)

        val positionSlot = 0
        val textureSlot = 1

        glEnableVertexAttribArray(positionSlot)
        glEnableVertexAttribArray(textureSlot)

        vertexBuffer.position(0)
        glVertexAttribPointer(positionSlot, 3, GL_FLOAT, false, 0, vertexBuffer)

        textureBuffer.position(0)
        glVertexAttribPointer(textureSlot, 2, GL_FLOAT, false, 0, textureBuffer)

        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4)
    }

    private fun getProgram(): Int {
        if (program == null) {
            program = openGLProgram.getProgram()
        }
        return program as Int
    }

    private fun setupVBO4FBO() {
        val w = 1.0f
        val h = 1.0f

        val verticesPoints = floatArrayOf(-w, -h, 0.0f, w, -h, 0.0f, -w, h, 0.0f, w, h, 0.0f)
        val texturesPoints = floatArrayOf(0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f)

        vertexBuffer4FBO = BufferUtils.createFloatBuffer(verticesPoints)
        textureBuffer4FBO = BufferUtils.createFloatBuffer(texturesPoints)
    }

    fun dispose() {
        vertexBuffer4FBO.clear()
        textureBuffer4FBO.clear()
    }

}