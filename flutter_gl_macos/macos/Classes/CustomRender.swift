import FlutterMacOS

import OpenGL
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
  
  
  var cglPixelFormat: CGLPixelFormatObj;
  
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
  
    self.cglPixelFormat = self.eAGLShareContext!.pixelFormat.cglPixelFormatObj!
    
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
 
    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
    
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

    self.createCVBufferWithSize(
      size: CGSize(width: glWidth, height: glHeight),
      context: context
    );
    
    checkGlError(op: "EglEnv initGL 11...")
    
    
    glBindTexture(CVOpenGLTextureGetTarget(texture!), CVOpenGLTextureGetName(texture!));
      
    checkGlError(op: "EglEnv initGL 21...")
      
    //s开启混合
    glEnable(GLenum(GL_BLEND));
    glBlendFunc(GLenum(GL_ONE), GLenum(GL_ONE_MINUS_SRC_ALPHA));
    
    glEnable(GLenum(GL_CULL_FACE));
    
    glViewport(0, 0, GLsizei(glWidth), GLsizei(glHeight));
    

    checkGlError(op: "EglEnv initGL 10...")
    // s多重采样
    //    glEnable(GLenum(GL_MULTISAMPLE));
    
    var colorRenderBuffer: GLuint = GLuint();
    
    glGenRenderbuffers(1, &colorRenderBuffer);
    glBindRenderbuffer(GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    glRenderbufferStorage(GLenum(GL_RENDERBUFFER), GLenum(GL_DEPTH24_STENCIL8), GLsizei(glWidth), GLsizei(glHeight));
    
    checkGlError(op: "EglEnv initGL 201...")

    glGenFramebuffers(1, &frameBuffer);
    
    checkGlError(op: "EglEnv initGL 202...")
    
    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
    
    checkGlError(op: "EglEnv initGL 2031...")
    
    glFramebufferTexture2D(GLenum(GL_FRAMEBUFFER), GLenum(GL_COLOR_ATTACHMENT0), GLenum(GL_TEXTURE_2D), CVOpenGLTextureGetName(texture!), 0);
    
    checkGlError(op: "EglEnv initGL 203...")
    
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_DEPTH_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_STENCIL_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    if(glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER)) != GL_FRAMEBUFFER_COMPLETE) {
      print("failed to make complete framebuffer object \(glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER)))");
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
    let err: CVReturn = CVOpenGLTextureCacheCreate(kCFAllocatorDefault, nil, context.cglContextObj!, self.cglPixelFormat, nil, &textureCache);
      
    let attrs = [
      kCVPixelBufferPixelFormatTypeKey: NSNumber(value: kCVPixelFormatType_32BGRA),
      kCVPixelBufferOpenGLCompatibilityKey: true,
      kCVPixelBufferMetalCompatibilityKey: true
    ] as CFDictionary
    
    let cv2: CVReturn = CVPixelBufferCreate(kCFAllocatorDefault, Int(size.width), Int(size.height),
                                            kCVPixelFormatType_32BGRA, attrs, &targetPixelBuffer);
    assert(cv2 == kCVReturnSuccess, "创建CVPixelBuffer失败")
    
    let cvr: CVReturn = CVOpenGLTextureCacheCreateTextureFromImage(kCFAllocatorDefault,
                                                                     textureCache!,
                                                                     targetPixelBuffer!,
                                                                     nil,
                                                                     &texture);
    
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

