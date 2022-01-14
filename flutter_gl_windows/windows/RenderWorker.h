#include "OpenGLProgram.h"

class RenderWorker {

    public:
        void setup();
        GLuint vertexBuffer4FBO = 0;
        GLuint vertexBuffer = 0;
        GLuint program = 0;
        OpenGLProgram openGLProgram;
        GLuint getProgram();
        int renderTexture(int sourceTexture, bool isFBO);
        int drawTexture(GLuint texture, GLuint vertexBuffer);
        int checkGlError(int flag);

    private:
        
        void setupVBO();
        void setupVBO4FBO();

};