import FlutterMacOS

import OpenGL
import OpenGL.GL
import GLKit


import three3d_egl_osx


// 1.定义一个闭包类型
typealias newFrameBlock = () -> Void;

public class CustomRender: NSObject, FlutterTexture {

  var width: Double;
  var height: Double;
  
  var onNewFrame: newFrameBlock;
  var targetPixelBuffer: CVPixelBuffer?;
  var textureCache: CVOpenGLTextureCache?;
  var texture: CVOpenGLTexture? = nil;

  var eAGLShareContext: NSOpenGLContext?;
  var eglEnv: EglEnv?;
  var dartEglEnv: EglEnv?;

  var worker: RenderWorker? = nil;
  var frameBuffer: GLuint = 0;
  var disposed: Bool = false;
  

  var frameTexture: GLuint = 0;

  var screenScale: Double;
  
  var options: Dictionary<String, Any>;
  
  
  
  init(options: Dictionary<String, Any>, renderToVideo: Bool, onNewFrame: @escaping newFrameBlock) {
    self.options = options;
    self.width = options["width"] as! Double;
    self.height = options["height"] as! Double;
    self.onNewFrame = onNewFrame;
    
    self.screenScale = options["dpr"] as! Double;
    
    let attr = [
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAOpenGLProfile),
        NSOpenGLPixelFormatAttribute(NSOpenGLProfileVersion3_2Core),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAColorSize), 24,
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAAlphaSize), 8,
        NSOpenGLPixelFormatAttribute(NSOpenGLPFADoubleBuffer),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFADepthSize), 32,
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAMultisample),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFASampleBuffers), 1,
        NSOpenGLPixelFormatAttribute(NSOpenGLPFASamples), 4,
        0
    ]

    let format = NSOpenGLPixelFormat(attributes: attr)
    self.eAGLShareContext = NSOpenGLContext(format: format!, share: nil)
  
    
    super.init();
    
   
    
    self.setup();
  }
  
  
  func setup() {
    initEGL();

    
    self.worker = RenderWorker();


    self.worker!.setup();
  }
  
  func getEgl() -> Array<Int64> {
    var _egls = [Int64](repeating: 0, count: 6);
    

    _egls[2] = self.eglEnv!.getContext();
    _egls[5] = self.dartEglEnv!.getContext();
    
  
    return _egls;
  }
  
  func updateTexture(sourceTexture: Int64) -> Bool {
    
    print(" Render.updateTexture sourceTexture: \(sourceTexture)  ")
 
//    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
    glBindFramebufferEXT(GLenum(GL_FRAMEBUFFER_EXT), frameBuffer);
    
//    self.worker!.renderTexture(texture: GLuint(sourceTexture), matrix: nil, isFBO: false);

    glClearColor( GLclampf(1.0), GLclampf(0.0), GLclampf(1.0), GLclampf(1.0) );
    glClear(GLbitfield(GL_COLOR_BUFFER_BIT));
    
    glFinish();
    self.onNewFrame();
    
    return true;
  }
  
  public func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
  
      var pixelBuffer: CVPixelBuffer? = nil;
      pixelBuffer = targetPixelBuffer;
      if(pixelBuffer != nil) {
        let result = Unmanaged.passRetained(pixelBuffer!);
        return result;
      } else {
        print("pixelBuffer is nil.... ");
        return nil;
      }
    }
  
  
  // ==================================
  func initEGL() {
    let glWidth = width * Double(self.screenScale);
    let glHeight = height * Double(self.screenScale);

    
    
    self.eglEnv = EglEnv();
    self.dartEglEnv = EglEnv();

    self.eglEnv!.setupRender(shareContext: eAGLShareContext);
    self.dartEglEnv!.setupRender(shareContext: eAGLShareContext);

    self.eglEnv!.makeCurrent();

    ThreeEgl.setContext(key: self.dartEglEnv!.getContext(), context: self.dartEglEnv!.context!);
  
    ThreeEgl.setContext(key: 3, context: eAGLShareContext!);

    
    var size: GLint = 0;
    glGetIntegerv(GLenum(GL_MAX_TEXTURE_SIZE), &size);
    print("GL_MAX_TEXTURE_SIZE: \(size) ")
    
    initGL(context: self.eglEnv!.context!);
 
  }
  
  func initGL(context: NSOpenGLContext) {
    
    let glWidth = width * Double(self.screenScale);
    let glHeight = height * Double(self.screenScale);
    
    print("FlutterGL initGL  glWidth \(glWidth) glHeight: \(glHeight)  screenScale: \(screenScale)  ");

    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("00110 failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    self.createCVBufferWithSize(
      size: CGSize(width: glWidth, height: glHeight),
      context: context
    );
    
    glEnable(GLenum(GL_BLEND));
    glBlendFunc(GLenum(GL_ONE), GLenum(GL_ONE_MINUS_SRC_ALPHA));
    
    glEnable(GLenum(GL_CULL_FACE));
    
    glViewport(0, 0, GLsizei(glWidth), GLsizei(glHeight));
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("0010 failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
   
    var colorRenderBuffer: GLuint = GLuint();
    glGenRenderbuffersEXT(1, &colorRenderBuffer);
    glBindRenderbufferEXT(GLenum(GL_RENDERBUFFER_EXT), colorRenderBuffer);
    glRenderbufferStorageEXT(GLenum(GL_RENDERBUFFER_EXT), GLenum(GL_DEPTH24_STENCIL8_EXT), GLsizei(glWidth), GLsizei(glHeight));
    
    checkGlError(op: "EglEnv initGL 201...")
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("001 failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    glGenFramebuffersEXT(1, &frameBuffer);
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("001112 failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    
    glBindFramebufferEXT(GLenum(GL_FRAMEBUFFER_EXT), frameBuffer);
    
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("001111 failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    glBindTexture(CVOpenGLTextureGetTarget(texture!), CVOpenGLTextureGetName(texture!));
      
    checkGlError(op: "EglEnv initGL 21...")
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("000 failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    glFramebufferTexture2DEXT(GLenum(GL_FRAMEBUFFER_EXT), GLenum(GL_COLOR_ATTACHMENT0_EXT), GLenum(GL_TEXTURE_2D), CVOpenGLTextureGetName(texture!), 0);
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("failed to make complete framebuffer object glFramebufferTexture2DEXT \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    print(" CVOpenGLTextureGetName(texture!) \(CVOpenGLTextureGetName(texture!))  texture: \(texture)")
    
    checkGlError(op: "EglEnv initGL 203...")
    
    
    glFramebufferRenderbufferEXT(GLenum(GL_FRAMEBUFFER_EXT), GLenum(GL_DEPTH_ATTACHMENT_EXT), GLenum(GL_RENDERBUFFER_EXT), colorRenderBuffer);
    glFramebufferRenderbufferEXT(GLenum(GL_FRAMEBUFFER_EXT), GLenum(GL_STENCIL_ATTACHMENT_EXT), GLenum(GL_RENDERBUFFER_EXT), colorRenderBuffer);
    
    if(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)) != GL_FRAMEBUFFER_COMPLETE_EXT) {
      print("failed to make complete framebuffer object \(glCheckFramebufferStatusEXT(GLenum(GL_FRAMEBUFFER_EXT)))");
    }
    
    checkGlError(op: "EglEnv initGL 20...")
  }
  
  //检查每一步操作是否有错误的方法
  func checkGlError(op: String) {
    let error = glGetError();
    if (error != GL_NO_ERROR) {
      print("GL_ERROR", "\(op): glError \(error)")
    }
  }
  
  func createCVBufferWithSize(size: CGSize, context: NSOpenGLContext) {
    let err: CVReturn = CVOpenGLTextureCacheCreate(kCFAllocatorDefault, nil, context.cglContextObj!, context.pixelFormat.cglPixelFormatObj!, nil, &textureCache);
      
    let attrs = [
      kCVPixelBufferPixelFormatTypeKey: NSNumber(value: kCVPixelFormatType_32BGRA),
      kCVPixelBufferOpenGLCompatibilityKey: true,
      kCVPixelBufferMetalCompatibilityKey: true,
      kCVPixelBufferIOSurfacePropertiesKey: [:],
      kCVPixelBufferIOSurfaceOpenGLFBOCompatibilityKey: true,
      kCVPixelBufferOpenGLTextureCacheCompatibilityKey: true
    ] as CFDictionary
    
    let cv2: CVReturn = CVPixelBufferCreate(kCFAllocatorDefault, Int(size.width), Int(size.height),
                                            kCVPixelFormatType_32BGRA, attrs, &targetPixelBuffer);
    assert(cv2 == kCVReturnSuccess, "创建CVPixelBuffer失败")
    
    let cvr: CVReturn = CVOpenGLTextureCacheCreateTextureFromImage(kCFAllocatorDefault,
                                                                     textureCache!,
                                                                     targetPixelBuffer!,
                                                                     nil,
                                                                     &texture);
    
    
    glBindTexture(CVOpenGLTextureGetTarget(texture!), CVOpenGLTextureGetName(texture!));
    glTexParameteri(GLenum(GL_TEXTURE_2D), GLenum(GL_TEXTURE_MAG_FILTER), GL_LINEAR);
    glTexParameteri(GLenum(GL_TEXTURE_2D), GLenum(GL_TEXTURE_MIN_FILTER), GL_LINEAR);
    
    assert(cvr == kCVReturnSuccess, "创建 CVOpenGLTextureCacheCreateTextureFromImage 失败")
    
      
  }

  
  func dispose() {
    self.disposed = true;
    
    ThreeEgl.remove(key: self.eglEnv!.getContext());
    ThreeEgl.remove(key: self.dartEglEnv!.getContext());
    ThreeEgl.remove(key: 3);

    self.eAGLShareContext = nil;
    
    self.eglEnv!.dispose();
    self.dartEglEnv!.dispose();
    
    self.eglEnv = nil;
    self.dartEglEnv = nil;
  }
  
}

