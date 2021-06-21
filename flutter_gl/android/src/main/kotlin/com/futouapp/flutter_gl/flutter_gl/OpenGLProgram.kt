package com.futouapp.flutter_gl.flutter_gl

import android.opengl.GLES30


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


private val OES_GLSL_VERTEX_SHADER = """#version 300 es
precision mediump float;

layout (location = 0) in vec4 Position;
layout (location = 1) in vec2 TextureCoords;
out vec2 TextureCoordsVarying;

void main () {
    gl_Position = Position;
    TextureCoordsVarying = TextureCoords;
}
"""

private val OES_GLSL_FRAGMENT_SHADER = """#version 300 es
#extension GL_OES_EGL_image_external_essl3 : enable

precision mediump float;
uniform samplerExternalOES Texture0;
in vec2 TextureCoordsVarying;

out vec4 fragColor;

void main (void) {
  vec4 mask = texture(Texture0, TextureCoordsVarying);
  fragColor = mask;
}
"""


private val FXAA_VERTEX_SHADER = """#version 300 es
layout (location = 0) in vec4 Position;
layout (location = 1) in vec2 TextureCoords;
out vec2 TextureCoordsVarying;

void main () {
    gl_Position = Position;
    TextureCoordsVarying = TextureCoords;
}
"""

private val FXAA_FRAGMENT_SHADER = """#version 300 es
precision mediump float;
uniform sampler2D Texture0;
uniform vec2 frameBufSize;
in vec2 TextureCoordsVarying;

out vec4 fragColor;

void main( void ) {
    float FXAA_SPAN_MAX = 8.0;
    float FXAA_REDUCE_MUL = 1.0/8.0;
    float FXAA_REDUCE_MIN = 1.0/128.0;

    vec3 rgbNW=texture(Texture0,TextureCoordsVarying+(vec2(-1.0,-1.0)/frameBufSize)).xyz;
    vec3 rgbNE=texture(Texture0,TextureCoordsVarying+(vec2(1.0,-1.0)/frameBufSize)).xyz;
    vec3 rgbSW=texture(Texture0,TextureCoordsVarying+(vec2(-1.0,1.0)/frameBufSize)).xyz;
    vec3 rgbSE=texture(Texture0,TextureCoordsVarying+(vec2(1.0,1.0)/frameBufSize)).xyz;
    vec3 rgbM=texture(Texture0,TextureCoordsVarying).xyz;

    vec3 luma= vec3(0.299, 0.587, 0.114);
    float lumaNW = dot(rgbNW, luma);
    float lumaNE = dot(rgbNE, luma);
    float lumaSW = dot(rgbSW, luma);
    float lumaSE = dot(rgbSE, luma);
    float lumaM  = dot(rgbM,  luma);

    float lumaMin = min(lumaM, min(min(lumaNW, lumaNE), min(lumaSW, lumaSE)));
    float lumaMax = max(lumaM, max(max(lumaNW, lumaNE), max(lumaSW, lumaSE)));

    vec2 dir;
    dir.x = -((lumaNW + lumaNE) - (lumaSW + lumaSE));
    dir.y =  ((lumaNW + lumaSW) - (lumaNE + lumaSE));

    float dirReduce = max(
        (lumaNW + lumaNE + lumaSW + lumaSE) * (0.25 * FXAA_REDUCE_MUL),
        FXAA_REDUCE_MIN);

    float rcpDirMin = 1.0/(min(abs(dir.x), abs(dir.y)) + dirReduce);

    dir = min(vec2( FXAA_SPAN_MAX,  FXAA_SPAN_MAX),
          max(vec2(-FXAA_SPAN_MAX, -FXAA_SPAN_MAX),
          dir * rcpDirMin)) / frameBufSize;

    vec3 rgbA = (1.0/2.0) * (
        texture(Texture0, TextureCoordsVarying.xy + dir * (1.0/3.0 - 0.5)).xyz +
        texture(Texture0, TextureCoordsVarying.xy + dir * (2.0/3.0 - 0.5)).xyz);
    vec3 rgbB = rgbA * (1.0/2.0) + (1.0/4.0) * (
        texture(Texture0, TextureCoordsVarying.xy + dir * (0.0/3.0 - 0.5)).xyz +
        texture(Texture0, TextureCoordsVarying.xy + dir * (3.0/3.0 - 0.5)).xyz);
    float lumaB = dot(rgbB, luma);

    if((lumaB < lumaMin) || (lumaB > lumaMax)){
        fragColor.xyz=rgbA;
    }else{
        fragColor.xyz=rgbB;
    }
}
"""


class OpenGLProgram {

    fun getProgramOES() : Int {
        return compileShaders(OES_GLSL_VERTEX_SHADER, OES_GLSL_FRAGMENT_SHADER);
    }

    fun getProgram(): Int {
        return compileShaders(GLSL_VERTEX_SHADER, GLSL_FRAGMENT_SHADER);
    }

    fun getProgramByName(name: String): Int {
        return compileProgramByName(name);
    }

    fun compileProgramByName(name: String): Int {

        if(name == "glsl") {
            return compileShaders(GLSL_VERTEX_SHADER, GLSL_FRAGMENT_SHADER);
        } else if(name == "glsl-fxaa") {
            return compileShaders(FXAA_VERTEX_SHADER, FXAA_FRAGMENT_SHADER);
        }

        throw Exception(" name: ${name} is not support ");
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