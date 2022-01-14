#include "EglEnv.h"


EglEnv::EglEnv(HWND m_hWnd) {
   
}

void EglEnv::setupRender(EglEnv* shareEglEnv) {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    
    glfwWindowHint(GLFW_VISIBLE, GLFW_FALSE);

    GLFWwindow* shareWindow = NULL;

    if(shareEglEnv != NULL) {
        shareWindow = shareEglEnv->window;
    }

    window = glfwCreateWindow(1, 1, "", NULL, shareWindow);
    if (window == NULL) {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return;
    }
  
}

void EglEnv::makeCurrent() {
    glfwMakeContextCurrent(window);
}