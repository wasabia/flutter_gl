import FlutterMacOS

import OpenGL
import OpenGL.GL
import GLKit
import Cocoa


import three3d_egl_osx


// 1.定义一个闭包类型
typealias newFrameBlock = () -> Void;

public class CustomRender: NSObject, FlutterTexture {

  var width: Double;
  var height: Double;
  
  var onNewFrame: newFrameBlock;
  var targetPixelBuffer: CVPixelBuffer?;
  var textureCache: CVOpenGLTextureCache?;
  var textureRef: CVOpenGLTexture? = nil;
  var texture: GLuint = 0;
    
  var textureTarget = GL_TEXTURE_RECTANGLE;
  
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
    
//    let attr = [
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFAOpenGLProfile),
//        NSOpenGLPixelFormatAttribute(NSOpenGLProfileVersion3_2Core),
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFAColorSize), 24,
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFAAlphaSize), 8,
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFADoubleBuffer),
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFADepthSize), 32,
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFAMultisample),
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFASampleBuffers), 1,
//        NSOpenGLPixelFormatAttribute(NSOpenGLPFASamples), 4,
//        0
//    ]

    let attr = [
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAAllowOfflineRenderers),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAAccelerated),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFADoubleBuffer),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAMultisample),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFASampleBuffers), 1,
        NSOpenGLPixelFormatAttribute(NSOpenGLPFASamples), 4,
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAMinimumPolicy),
        NSOpenGLPixelFormatAttribute(NSOpenGLPFAOpenGLProfile),
        NSOpenGLPixelFormatAttribute(NSOpenGLProfileVersion3_2Core),
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
    
    var _context = self.eglEnv!.context!;
    
    CGLLockContext(_context.cglContextObj!);
    _context.makeCurrentContext();
    
    
    print(" Render.updateTexture sourceTexture: \(sourceTexture)  ")
 
    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
    
    glClearColor( GLclampf(1.0), GLclampf(0.0), GLclampf(0.0), GLclampf(1.0) );
    glClear(GLbitfield(GL_COLOR_BUFFER_BIT));

    self.worker!.renderTexture(texture: GLuint(sourceTexture), matrix: nil, isFBO: false);

//    var screenBottomRowBuffer = [UInt8](repeating: 0, count: Int(100 * 100 * 4));
//    glReadPixels(0, 0, GLsizei(100), GLsizei(100), GLenum(GL_RGBA), GLenum(GL_UNSIGNED_BYTE), &screenBottomRowBuffer);
//    print(" screenBottomRowBuffer \(screenBottomRowBuffer) ");
  
    
    glFinish();
    
    _context.flushBuffer();
    CGLUnlockContext(_context.cglContextObj!)
    
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
    

    // Enable the multithreading
    var err =  CGLEnable( eAGLShareContext!.cglContextObj!, kCGLCEMPEngine);
    if (err != kCGLNoError )
    {
      print(" CGLEnable  error 01 ");
    }
    
    err =  CGLEnable( self.eglEnv!.context!.cglContextObj!, kCGLCEMPEngine);
    if (err != kCGLNoError )
    {
      print(" CGLEnable  error 02 ");
    }
    
    err =  CGLEnable( self.dartEglEnv!.context!.cglContextObj!, kCGLCEMPEngine);
    if (err != kCGLNoError )
    {
      print(" CGLEnable  error 03 ");
    }

    
    var size: GLint = 0;
    glGetIntegerv(GLenum(GL_MAX_TEXTURE_SIZE), &size);
    print("GL_MAX_TEXTURE_SIZE: \(size) ")
    
    initGL(context: self.eglEnv!.context!);
 
  }
  
  func initGL(context: NSOpenGLContext) {
    
    let glWidth = width * Double(self.screenScale);
    let glHeight = height * Double(self.screenScale);
    
    print("FlutterGL initGL  glWidth \(glWidth) glHeight: \(glHeight)  screenScale: \(screenScale)  ");
    
    
    glGenFramebuffers(1, &frameBuffer);
    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer);
    

    self.createCVBufferWithSize(
      size: CGSize(width: glWidth, height: glHeight),
      context: context
    );
    texture = CVOpenGLTextureGetName(self.textureRef!);
    
//    glGenTextures(1, &texture);
//    textureTarget = GL_TEXTURE_2D;
    

    checkGlError(op: "glBindFramebuffer 2..")

    glBindTexture(GLenum(textureTarget), texture);
    glTexParameteri(GLenum(textureTarget), GLenum(GL_TEXTURE_MAG_FILTER), GL_LINEAR);
    glTexParameteri(GLenum(textureTarget), GLenum(GL_TEXTURE_MIN_FILTER), GL_LINEAR);
    
    checkGlError(op: "glBindFramebuffer 201..")
    
//    glEnable(GLenum(GL_BLEND));
//    glBlendFunc(GLenum(GL_ONE), GLenum(GL_ONE_MINUS_SRC_ALPHA));
//    glEnable(GLenum(GL_CULL_FACE));
    
    glViewport(0, 0, GLsizei(glWidth), GLsizei(glHeight));
    
    var colorRenderBuffer: GLuint = GLuint();
    glGenRenderbuffers(1, &colorRenderBuffer);
    glBindRenderbuffer(GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    glRenderbufferStorage(GLenum(GL_RENDERBUFFER), GLenum(GL_DEPTH24_STENCIL8), GLsizei(glWidth), GLsizei(glHeight));
    
    glFramebufferTexture2D(GLenum(GL_FRAMEBUFFER), GLenum(GL_COLOR_ATTACHMENT0), GLenum(textureTarget), texture, 0);
    
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_DEPTH_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_STENCIL_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    checkGlError(op: "glBindFramebuffer 3..")
    
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
      kCVPixelBufferOpenGLCompatibilityKey: true,
      kCVPixelBufferMetalCompatibilityKey: true
    ] as CFDictionary

    let cvret = CVPixelBufferCreate(kCFAllocatorDefault, Int(size.width), Int(size.height), kCVPixelFormatType_32BGRA, attrs, &targetPixelBuffer);
    assert(cvret == kCVReturnSuccess, "创建CVPixelBuffer失败")

    let cvret2 = CVOpenGLTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache!, targetPixelBuffer!,
                                                                     nil, &textureRef);

    assert(cvret2 == kCVReturnSuccess, "创建 CVOpenGLTextureCacheCreateTextureFromImage 失败")
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

