package com.futouapp.flutter_gl.flutter_gl

import android.opengl.GLES30

import java.lang.Exception


//#version 300 es must be at first line
private val GLSL_VERTEX_SHADER = """#version 300 es
precision mediump float;

layout (location = 0) in vec4 Position;
layout (location = 1) in vec2 TextureCoords;
out vec2 TextureCoordsVarying;
uniform mat4 matrix;

void main () {
    gl_Position = matrix * Position;
    TextureCoordsVarying = TextureCoords;
}
"""


private val GLSL_FRAGMENT_SHADER = """#version 300 es
precision mediump float;

uniform sampler2D Texture0;
in vec2 TextureCoordsVarying;

out vec4 fragColor;

void main (void) { 
  vec4 mask0 = texture(Texture0, TextureCoordsVarying);
  vec4 color = vec4(mask0.rgb, mask0.a);
  fragColor = color;
}
"""




class OpenGLProgram {


    fun getProgram(): Int {
        return compileShaders(GLSL_VERTEX_SHADER, GLSL_FRAGMENT_SHADER);
    }

    fun compileShaders(vertex_shader: String, fragment_shader: String): Int {
        val vertexShader = this.compileShader(vertex_shader, GLES30.GL_VERTEX_SHADER)
        val fragmentShader = this.compileShader(fragment_shader, GLES30.GL_FRAGMENT_SHADER)

        val programHandle = GLES30.glCreateProgram()
        GLES30.glAttachShader(programHandle, vertexShader)
        GLES30.glAttachShader(programHandle, fragmentShader)
        GLES30.glLinkProgram(programHandle)

        var linkSuccess = IntArray(1);
        GLES30.glGetProgramiv(programHandle, GLES30.GL_LINK_STATUS, linkSuccess, 0)
        if (linkSuccess[0] == 0) {

            println(GLES30.glGetProgramInfoLog(programHandle));


            GLES30.glDeleteProgram(programHandle);
            throw Exception(" Linking of program failed. ")
        }

        return programHandle;
    }

    fun compileShader(shader: String, shaderType: Int): Int {
        return compileShaderCode(shader, shaderType);
    }

    fun compileShaderCode(shaderCode: String, shaderType: Int): Int {
        // 1.创建一个新的着色器对象
        val shaderObjectId = GLES30.glCreateShader(shaderType)

        // 2.获取创建状态
        if (shaderObjectId == 0) {
            // 在OpenGL中，都是通过整型值去作为OpenGL对象的引用。之后进行操作的时候都是将这个整型值传回给OpenGL进行操作。
            // 返回值0代表着创建对象失败。

            println("Could not create new shader.");

            return 0
        }

        // 3.将着色器代码上传到着色器对象中
        GLES30.glShaderSource(shaderObjectId, shaderCode)

        // 4.编译着色器对象
        GLES30.glCompileShader(shaderObjectId)

        // 5.获取编译状态：OpenGL将想要获取的值放入长度为1的数组的首位
        val compileStatus = IntArray(1)
        GLES30.glGetShaderiv(shaderObjectId, GLES30.GL_COMPILE_STATUS, compileStatus, 0)

        // 打印编译的着色器信息
        println("Results of compiling source:" + GLES30.glGetShaderInfoLog(shaderObjectId))


        // 6.验证编译状态
        if (compileStatus[0] == 0) {

            println(GLES30.glGetProgramInfoLog(shaderObjectId));
            println("Compilation of shader failed.")

            // 如果编译失败，则删除创建的着色器对象
            GLES30.glDeleteShader(shaderObjectId)

            // 7.返回着色器对象：失败，为0
            return 0
        }

        // 7.返回着色器对象：成功，非0
        return shaderObjectId
    }



}