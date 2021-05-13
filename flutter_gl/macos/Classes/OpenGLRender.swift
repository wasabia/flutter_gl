import Flutter

import OpenGLES.ES3
import GLKit


import three3d_egl


// 1.定义一个闭包类型
typealias newFrameBlock = () -> Void;

public class OpenGLRender: NSObject, FlutterTexture {

  var width: Double;
  var height: Double;
  
  var onNewFrame: newFrameBlock;
  var targetPixelBuffer: CVPixelBuffer?;

  
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
    
    self.setup();    
  }
  
  
  func setup() {
    initEGL();

    
    self.worker = RenderWorker();

    self.worker!.frameBuffer = frameBuffer;
    self.worker!.setup();
  }
  
  func getEgl() -> Array<Int64> {
    var _egls = [Int64](repeating: 0, count: 6);
    
//    _egls[0] = Int64(self.eglEnv!.getDisplay());
//    _egls[1] = Int64(self.eglEnv!.getSurface());
    _egls[2] = self.eglEnv!.getContext();

//    _egls[3] = Int64(self.dartEglEnv!.getDisplay());
//    _egls[4] = Int64(self.dartEglEnv!.getSurface());
    _egls[5] = self.dartEglEnv!.getContext();
    
    
    print(" get egl ")
    print(_egls);
    

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
    let pixelBuffer = self.eglEnv!.copyPixelBuffer();

    return pixelBuffer;
  }
  
  
  // ==================================
  func initEGL() {
    let glWidth = width * Double(self.screenScale);
    let glHeight = height * Double(self.screenScale);

    self.eglEnv = EglEnv(width: glWidth, height: glHeight);
    self.dartEglEnv = EglEnv(width: glWidth, height: glHeight);

    self.eglEnv!.setupRender(shareContext: nil);
    self.dartEglEnv!.setupRender(shareContext: self.eglEnv!.context!);


    self.eglEnv!.buildWindowSurface();
    self.dartEglEnv!.buildWindowSurface();

    self.eglEnv!.makeCurrent();
    
    ThreeEgl.setContext(key: self.dartEglEnv!.getContext(), context: self.dartEglEnv!.context!);
  
    
    self.eglEnv!.initOpenGL();
    self.frameBuffer = self.eglEnv!.frameBuffer!;
    
  }
  
  

  

  
  func dispose() {
    self.disposed = true;
    
    ThreeEgl.remove(key: self.eglEnv!.getContext());
    ThreeEgl.remove(key: self.dartEglEnv!.getContext());
    
    self.eglEnv!.dispose();
    self.dartEglEnv!.dispose();
  }
  
}

