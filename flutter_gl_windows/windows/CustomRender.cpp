#include "CustomRender.h"


CustomRender::CustomRender(int width_, int height_, flutter::TextureRegistrar* texture_registrar, HWND m_hWnd)
    : texture_registrar_(texture_registrar) {
  texture_ =
      std::make_unique<flutter::TextureVariant>(flutter::PixelBufferTexture(
          [=](size_t width, size_t height) -> const FlutterDesktopPixelBuffer* {
            // return &flutter_pixel_buffer_;
            return this->CopyPixelBuffer(width, height);
          }));
  texture_id_ = texture_registrar_->RegisterTexture(texture_.get());
  width = width_;
  height = height_;

  int size = width * height * 4;
  pixels_.reset(new uint8_t[size]);
  flutter_pixel_buffer_ = std::make_unique<FlutterDesktopPixelBuffer>();
  flutter_pixel_buffer_->buffer = pixels_.get();
  flutter_pixel_buffer_->width = width;
  flutter_pixel_buffer_->height = height;
  
 

  initEGL();
}


FlutterDesktopPixelBuffer* CustomRender::CopyPixelBuffer(
    size_t width_, size_t height_)  {
  // mutex_.lock();
  // if ( flutter_pixel_buffer_.get() ) {
  //   if ( flutter_pixel_buffer.width != width ||
  //       flutter_pixel_buffer_->height != height ) {
  //     size_t buffer_size = (width * height) * 4;
  //     flutter_pixel_buffer_->width = width;
  //     flutter_pixel_buffer_->height = height;
  //   }

  //   // frame_->ConvertToARGB(RTCVideoFrame::Type::kABGR, rgb_buffer_.get(), 0,
  //   //                       (int)flutter_pixel_buffer_->width,
  //   //                       (int)flutter_pixel_buffer_->height);

   
  //   mutex_.unlock();
  //   return flutter_pixel_buffer_;
  // }
  // mutex_.unlock();
  // return nullptr;

  return flutter_pixel_buffer_.get();
}

flutter::EncodableList CustomRender::getEgls() {
  
  int size;
  glGetIntegerv(GL_MAX_TEXTURE_SIZE, &size);

  int majorver = 0, minorver = 0;
  glGetIntegerv(GL_MAJOR_VERSION, &majorver);
  glGetIntegerv(GL_MINOR_VERSION, &minorver);


  flutter::EncodableList flutterVector = flutter::EncodableList();

  flutterVector.emplace_back( flutter::EncodableValue( (int)0 ) );
  flutterVector.emplace_back( flutter::EncodableValue( (int)0 ) );
  flutterVector.emplace_back( flutter::EncodableValue( (int64_t)eglEnv.window ) );
  flutterVector.emplace_back( flutter::EncodableValue( (int)0 ) );
  flutterVector.emplace_back( flutter::EncodableValue( (int)0 ) );
  flutterVector.emplace_back( flutter::EncodableValue( (int64_t)dartEglEnv.window ) );

  

  return flutterVector;
}


void CustomRender::initEGL() {

  shareEglEnv = EglEnv( m_hWnd );
  eglEnv = EglEnv( m_hWnd );
  dartEglEnv = EglEnv( m_hWnd );

  shareEglEnv.setupRender(NULL);
  eglEnv.setupRender(&shareEglEnv);
  dartEglEnv.setupRender(&shareEglEnv);

  eglEnv.makeCurrent();

  // glad: load all OpenGL function pointers
  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return;
  }
 
  // ThreeEgl.setContext(key: self.dartEglEnv!.getContext(), context: self.dartEglEnv!.context!);
  // ThreeEgl.setContext(key: 3, context: eAGLShareContext!);

  initGL();
  // after glad load
  renderWorker = RenderWorker();
  renderWorker.setup();
}


void CustomRender::initGL() {
  glViewport(0, 0, GLsizei(width), GLsizei(height));
  
  
  glGenFramebuffers(1, &frameBuffer);
  glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);

  GLuint texture = 0;
  glGenTextures(1, &texture);
  
  glBindTexture(GLenum(GL_TEXTURE_2D), texture);
  glTexParameteri(GLenum(GL_TEXTURE_2D), GLenum(GL_TEXTURE_MAG_FILTER), GL_LINEAR);
  glTexParameteri(GLenum(GL_TEXTURE_2D), GLenum(GL_TEXTURE_MIN_FILTER), GL_LINEAR);
  
  glTexImage2D(GLenum(GL_TEXTURE_2D), 0, GLenum(GL_RGBA), GLsizei(width), GLsizei(height), 0, GLenum(GL_RGBA),
        GLenum(GL_UNSIGNED_BYTE), NULL);
 
  
  GLuint colorRenderBuffer = 0;
  glGenRenderbuffers(1, &colorRenderBuffer);
  glBindRenderbuffer(GLenum(GL_RENDERBUFFER), colorRenderBuffer);
  glRenderbufferStorage(GLenum(GL_RENDERBUFFER), GLenum(GL_DEPTH24_STENCIL8), GLsizei(width), GLsizei(height));
  
  glFramebufferTexture2D(GLenum(GL_FRAMEBUFFER), GLenum(GL_COLOR_ATTACHMENT0), GLenum(GL_TEXTURE_2D), texture, 0);
  
  glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_DEPTH_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
  glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_STENCIL_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
  
}

int CustomRender::updateTexture(int sourceTexture) {

  
  glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
  
  glClearColor( GLclampf(0.0), GLclampf(0.0), GLclampf(0.0), GLclampf(0.0) );
  glClear(GLbitfield(GL_COLOR_BUFFER_BIT));


  int data = renderWorker.renderTexture(sourceTexture, false);


  // use PBO better???
  uint8_t *buffer = pixels_.get();
  glReadPixels(0, 0, GLsizei(width), GLsizei(height), GL_RGBA, GL_UNSIGNED_BYTE, buffer);


  // flutter_pixel_buffer_->buffer = buffer;
  // flutter_pixel_buffer_->width = width;
  // flutter_pixel_buffer_->height = height;

  texture_registrar_->MarkTextureFrameAvailable(texture_id_);

  return data;
}