import Flutter

import OpenGLES.ES3
import GLKit


import three3d_egl


// 1.定义一个闭包类型
typealias newFrameBlock = () -> Void;

public class CustomRender: NSObject, FlutterTexture {

  var width: Double;
  var height: Double;
  
  var onNewFrame: newFrameBlock;
  var targetPixelBuffer: CVPixelBuffer?;
  var textureCache: CVOpenGLESTextureCache?;
  var texture: CVOpenGLESTexture? = nil;

  var eAGLShareContext: EAGLContext?;
  var eglEnv: EglEnv?;
  var dartEglEnv: EglEnv?;

  var worker: RenderWorker? = nil;
  var frameBuffer: GLuint = 0;
  var disposed: Bool = false;


  var frameTexture: GLuint = 0;

  var screenScale: CGFloat;
  
  var options: Dictionary<String, Any>;
  
  init(options: Dictionary<String, Any>, renderToVideo: Bool, onNewFrame: @escaping newFrameBlock) {
    self.options = options;
    self.width = options["width"] as! Double;
    self.height = options["height"] as! Double;
    self.onNewFrame = onNewFrame;
    
    self.screenScale = UIScreen.main.scale;
    
    super.init();

    self.eAGLShareContext = EAGLContext.init(api: EAGLRenderingAPI.openGLES3);
    
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
  
    
    self.worker!.renderTexture(texture: GLuint(sourceTexture), matrix: nil, isFBO: false);

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

    
//    var size: GLint = 0;
//    glGetIntegerv(GLenum(GL_MAX_TEXTURE_SIZE), &size);
//    print("GL_MAX_TEXTURE_SIZE: \(size) ")
    
    initGL(context: self.eglEnv!.context!);
 
  }
  
  func initGL(context: EAGLContext) {
    
    let glWidth = width * Double(self.screenScale);
    let glHeight = height * Double(self.screenScale);
    
    print("FlutterGL initGL  glWidth \(glWidth) glHeight: \(glHeight)   ");

    self.createCVBufferWithSize(
      size: CGSize(width: glWidth, height: glHeight),
      context: context
    );
    
    checkGlError(op: "EglEnv initGL 11...")
    
    
    glBindTexture(CVOpenGLESTextureGetTarget(texture!), CVOpenGLESTextureGetName(texture!));
      
    checkGlError(op: "EglEnv initGL 2...")
      
    //s开启混合
    glEnable(GLenum(GL_BLEND));
    glBlendFunc(GLenum(GL_ONE), GLenum(GL_ONE_MINUS_SRC_ALPHA));
    
    glEnable(GLenum(GL_CULL_FACE));
    
    glViewport(0, 0, GLsizei(glWidth), GLsizei(glHeight));
    

    
    checkGlError(op: "EglEnv initGL 1...")
    // s多重采样
    //    glEnable(GLenum(GL_MULTISAMPLE));
    
    var colorRenderBuffer: GLuint = GLuint();
    
    glGenRenderbuffers(1, &colorRenderBuffer);
    glBindRenderbuffer(GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    glRenderbufferStorage(GLenum(GL_RENDERBUFFER), GLenum(GL_DEPTH24_STENCIL8), GLsizei(glWidth), GLsizei(glHeight));
    

    glGenFramebuffers(1, &frameBuffer);
    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
    glFramebufferTexture2D(GLenum(GL_FRAMEBUFFER), GLenum(GL_COLOR_ATTACHMENT0), GLenum(GL_TEXTURE_2D), CVOpenGLESTextureGetName(texture!), 0);
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_DEPTH_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_STENCIL_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    if(glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER)) != GL_FRAMEBUFFER_COMPLETE) {
      print("failed to make complete framebuffer object \(glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER)))");
    }
    
    checkGlError(op: "EglEnv initGL 2...")
  }
  
  //检查每一步操作是否有错误的方法
  func checkGlError(op: String) {
    let error = glGetError();
    if (error != GL_NO_ERROR) {
      print("ES30_ERROR", "\(op): glError \(error)")
    }
  }
  
  func createCVBufferWithSize(size: CGSize, context: EAGLContext) {
    let err: CVReturn = CVOpenGLESTextureCacheCreate(kCFAllocatorDefault, nil, context, nil, &textureCache);
      
    let attrs = [
      kCVPixelBufferPixelFormatTypeKey: NSNumber(value: kCVPixelFormatType_32BGRA),
      kCVPixelBufferOpenGLCompatibilityKey: kCFBooleanTrue,
      kCVPixelBufferOpenGLESCompatibilityKey: kCFBooleanTrue,
      kCVPixelBufferIOSurfacePropertiesKey: [:]
    ] as CFDictionary
    
    let cv2: CVReturn = CVPixelBufferCreate(kCFAllocatorDefault, Int(size.width), Int(size.height),
                                            kCVPixelFormatType_32BGRA, attrs, &targetPixelBuffer);
       
    
    let cvr: CVReturn = CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault,
                                                                     textureCache!,
                                                                     targetPixelBuffer!,
                                                                     nil,
                                                                     GLenum(GL_TEXTURE_2D),
                                                                     GL_RGBA,
                                                                     GLsizei(size.width),
                                                                     GLsizei(size.height),
                                                                     GLenum(GL_BGRA),
                                                                     GLenum(GL_UNSIGNED_BYTE),
                                                                     0,
                                                                     &texture);
    
      
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
    
    EAGLContext.setCurrent(nil);
  }
  
}

