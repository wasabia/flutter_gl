#include "RenderWorker.h"


void RenderWorker::setup() {
    openGLProgram = OpenGLProgram();
    setupVBO();
    setupVBO4FBO();
}

int RenderWorker::renderTexture(int sourceTexture, bool isFBO) {

    GLuint _vertexBuffer;

    if(isFBO) {
        _vertexBuffer = vertexBuffer4FBO;
    } else {
        _vertexBuffer = vertexBuffer;
    }

    return drawTexture(sourceTexture, _vertexBuffer);
}


int RenderWorker::drawTexture(GLuint texture, GLuint vertexBuffer_) {

    // checkGlError(op: "drawTexture 01");

    GLuint _program = getProgram();
    glUseProgram(_program);

    
  
    GLuint _positionSlot = GLuint(glGetAttribLocation(_program, "Position"));
    GLuint _textureSlot = GLuint(glGetAttribLocation(_program, "TextureCoords"));

    GLuint _texture0Uniform = GLuint(glGetUniformLocation(_program, "Texture0"));


    // 将纹理 ID 传给着色器程序
    // 是否是
    glActiveTexture(GLenum(GL_TEXTURE8));
    glBindTexture(GLenum(GL_TEXTURE_2D), texture);
    glUniform1i(GLint(_texture0Uniform), 8);
    // 将 textureSlot 赋值为 0，而 0 与 GL_TEXTURE0 对应，这里如果写 1，上面也要改成 GL_TEXTURE1
    
    
    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer_);


    GLuint vao = GLuint(0);
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    glVertexAttribPointer(_positionSlot, 3, GLenum(GL_FLOAT), GLboolean(GL_FALSE), 5 * sizeof(float), (GLvoid*)0);
   
    // 设置顶点数据
    glEnableVertexAttribArray(_positionSlot);


    // 设置纹理数据
    glVertexAttribPointer(_textureSlot, 2, GLenum(GL_FLOAT), GLboolean(GL_FALSE), 5 * sizeof(float), (const GLvoid*)(3*sizeof(float)));

    glEnableVertexAttribArray(_textureSlot);

    // // 开始绘制
    glDrawArrays(GLenum(GL_TRIANGLE_STRIP), 0, 4);


    glDeleteVertexArrays(1, &vao);

    return 1;


    // checkGlError(op: "drawTexture 11");
}


GLuint RenderWorker::getProgram() {

    if(program == 0) {
        program = openGLProgram.getProgram();
    }

    return program;
}







void RenderWorker::setupVBO() {
    // 创建顶点缓存

    float vertices[] = {
        -1.0f,-1.0f,0.0f, 0.0f, 1.0f, // 左上角
        1.0f,-1.0f,0.0f, 1.0f,1.0f, // 左下角
        -1.0f,1.0f,0.0f, 0.0f,0.0f, // 右上角
        1.0f,1.0f,0.0f, 1.0f,0.0f // 右下角
    };

    glGenBuffers(1, &vertexBuffer);
    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer);

    glBufferData(GLenum(GL_ARRAY_BUFFER), sizeof(vertices), vertices, GLenum(GL_STATIC_DRAW));
}


void RenderWorker::setupVBO4FBO() {
    float vertices[] = {
        -1.0,-1.0,0.0, 0.0, 0.0,
        1.0,-1.0,0.0, 1.0,0.0,
        -1.0,1.0,0.0, 0.0,1.0,
        1.0,1.0,0.0, 1.0,1.0
    };

    glGenBuffers(1, &vertexBuffer4FBO);
    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer4FBO);
   
    glBufferData(GLenum(GL_ARRAY_BUFFER), sizeof(vertices), vertices, GLenum(GL_STATIC_DRAW));
}


//检查每一步操作是否有错误的方法
int RenderWorker::checkGlError(int flag) {
    int error = glGetError();
    if (error != GL_NO_ERROR) {
       return error;
    }

    return 0;
}


// func dispose() {
//     self.disposed = true;
// }
