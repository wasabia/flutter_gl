//
//  EglEnv.swift
//  flutter_gl
//
//  Created by 赵磊 on 2021/4/30.
//

import Foundation
import OpenGLES.EAGL
import OpenGLES.ES3


public class EglEnv : NSObject {
  var width: Double;
  var height: Double;
  var context: EAGLContext?;
  var textureCache: CVOpenGLESTextureCache?;
  var texture: CVOpenGLESTexture? = nil;
  var frameBuffer: GLuint?;
  var targetPixelBuffer: CVPixelBuffer?;
  
  init(width: Double, height: Double) {
    self.width = width;
    self.height = height;
  }
 
  func setupRender(shareContext: EAGLContext?) {
    self.setUpEnv(shareContext: shareContext);
  }
  
  func setUpEnv(shareContext: EAGLContext?) {
    if(shareContext == nil) {
      self.context = EAGLContext.init(api: EAGLRenderingAPI.openGLES3);
    } else {
      self.context = EAGLContext.init(api: shareContext!.api, sharegroup: shareContext!.sharegroup);
    }
  }
  
  func makeCurrent() {
    EAGLContext.setCurrent(self.context);
  }
  
  func getContext() -> Int64 {
    var _p = self.context!;
    // todo two different context object hashValue is always different???
    return Int64(_p.hashValue);
  }
  
  func buildWindowSurface() {
    
  }
  
  func initOpenGL() {
    initGL();
  }
  
  func initGL() {
    
    let glWidth: CGFloat = CGFloat(self.width);
    let glHeight: CGFloat = CGFloat(self.height);
    
    self.createCVBufferWithSize(
      size: CGSize(width: glWidth, height: glHeight),
      context: self.context!
    );
    
    
    
    glBindTexture(CVOpenGLESTextureGetTarget(texture!), CVOpenGLESTextureGetName(texture!));

      
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
    
    glViewport(0, 0, GLsizei(glWidth), GLsizei(glHeight));
    glRenderbufferStorage(GLenum(GL_RENDERBUFFER), GLenum(GL_DEPTH24_STENCIL8), GLsizei(glWidth), GLsizei(glHeight));
    
    frameBuffer = 0;
    glGenFramebuffers(1, &frameBuffer!);
    glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer!);
    glFramebufferTexture2D(GLenum(GL_FRAMEBUFFER), GLenum(GL_COLOR_ATTACHMENT0), GLenum(GL_TEXTURE_2D), CVOpenGLESTextureGetName(texture!), 0);
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_DEPTH_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    glFramebufferRenderbuffer(GLenum(GL_FRAMEBUFFER), GLenum(GL_STENCIL_ATTACHMENT), GLenum(GL_RENDERBUFFER), colorRenderBuffer);
    
    if(glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER)) != GL_FRAMEBUFFER_COMPLETE) {
      print("failed to make complete framebuffer object \(glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER)))");
    }
    
    checkGlError(op: "EglEnv initGL 2...")
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
  
  func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
        var pixelBuffer: CVPixelBuffer? = nil;
    
        pixelBuffer = targetPixelBuffer;
    
        if(pixelBuffer != nil) {
          let result = Unmanaged.passRetained(pixelBuffer!);
          return result;
        } else {
          return nil;
        }
  }
  
  
  //检查每一步操作是否有错误的方法
  func checkGlError(op: String) {
    let error = glGetError();
    if (error != GL_NO_ERROR) {
      print("ES30_ERROR", "\(op): glError \(error)")
    }
  }
  
  
  func dispose() {
    
  }
  
}
