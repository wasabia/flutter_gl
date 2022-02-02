#include "OpenGLProgram.h"



GLuint OpenGLProgram::getProgram() {

    char *vertex_shader = "#version 410\n"
    "precision mediump float;\n"
    "in vec4 Position;\n"
    "in vec2 TextureCoords;\n"
    "out vec2 TextureCoordsVarying;\n"
    "void main (void) {\n"
        "gl_Position = Position;\n"
        "TextureCoordsVarying = TextureCoords;\n"
    "}\0";

    char *fragment_shader = "#version 410\n"   
    "precision mediump float;\n"
    "uniform sampler2D Texture0;\n"
    "in vec2 TextureCoordsVarying;\n"
    "out vec4 fragColor;\n"
    "void main (void) {\n"
        "vec4 mask = texture(Texture0, TextureCoordsVarying);\n"
        "fragColor = vec4(mask.rgb, mask.a);\n"
    "}\0";

    return compileShaders(vertex_shader, fragment_shader);
}


GLuint OpenGLProgram::compileShaders(char *vertex_shader, char *fragment_shader) {

    GLuint vertexShader = compileShader(vertex_shader, GLenum(GL_VERTEX_SHADER));
    GLuint fragmentShader = compileShader(fragment_shader, GLenum(GL_FRAGMENT_SHADER));

    GLuint programHandle = glCreateProgram();


    glAttachShader(programHandle, vertexShader);
    glAttachShader(programHandle, fragmentShader);
    glLinkProgram(programHandle);

    int linkSuccess;
    glGetProgramiv(programHandle, GLenum(GL_LINK_STATUS), &linkSuccess);
    if (!linkSuccess) {
        char infoLog[512];
        glGetProgramInfoLog(GLuint(programHandle), 512, NULL, infoLog);
        
        // let shaderLogString = NSString(utf8String: shaderLog)!

    }

    return programHandle;
}

unsigned int OpenGLProgram::compileShader(char *shader, GLenum shaderType) {
    return compileShaderCode(shader, shaderType);
}

unsigned int OpenGLProgram::compileShaderCode(char *shaderCode, GLenum type) {
    unsigned int shaderHandle = glCreateShader(type);

    glShaderSource(shaderHandle, 1, &shaderCode, NULL);
    glCompileShader(shaderHandle);

    int compileSuccess;
    glGetShaderiv(shaderHandle, GLenum(GL_COMPILE_STATUS), &compileSuccess);
    if(!compileSuccess) {
        char infoLog[512];
        glGetShaderInfoLog(GLuint(shaderHandle), 512, NULL, infoLog);
        
    //    std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;

    }

    return shaderHandle;

}


// func dispose() {
// // TODO
// }
