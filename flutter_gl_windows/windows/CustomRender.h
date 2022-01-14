#ifndef CustomRender_H_
#define CustomRender_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>
#include <mutex>
#include "RenderWorker.h"
#include "EglEnv.h"

class CustomRender {

    public:
        int width;
        int height;
        CustomRender(int width_, int height_, flutter::TextureRegistrar* texture_registrar, HWND m_hWnd);
        int64_t texture_id() const { return texture_id_; }
        RenderWorker renderWorker;
        flutter::EncodableList getEgls();
        void initEGL();
        void initGL();
        void prepare();
        int updateTexture(int sourceTexture);
        FlutterDesktopPixelBuffer* CopyPixelBuffer(size_t width_, size_t height_); 
        HWND m_hWnd;

        EglEnv shareEglEnv;
        EglEnv eglEnv;
        EglEnv dartEglEnv;
        
        GLuint frameBuffer = 0;

    private:
        std::unique_ptr<FlutterDesktopPixelBuffer> flutter_pixel_buffer_;
        std::unique_ptr<uint8_t> pixels_;

        flutter::TextureRegistrar* texture_registrar_ = nullptr;
        std::unique_ptr<flutter::TextureVariant> texture_ = nullptr;
        int64_t texture_id_;
        mutable std::mutex mutex_;
};




#endif