

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>
#include <windows.h>

#include <GLFW/glfw3.h>


class EglEnv {

    public:
        HGLRC context;
        HDC hdc;
        HWND m_hWnd;
        GLFWwindow* window;
        HGLRC getContext() { return context; }
        EglEnv() {}
        EglEnv(HWND m_hWnd);
        void setupRender(EglEnv* shareEglEnv);
        void makeCurrent();
        flutter::EncodableList getEgl();

};
