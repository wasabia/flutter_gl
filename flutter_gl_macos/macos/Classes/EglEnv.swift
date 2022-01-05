//
//  EglEnv.swift
//  flutter_gl
//
//  Created by 赵磊 on 2021/4/30.
//

import Foundation
import OpenGL



public class EglEnv : NSObject {

  var context: NSOpenGLContext?;
  

  func setupRender(shareContext: NSOpenGLContext?) {
    self.setUpEnv(shareContext: shareContext);
  }
  
  func setUpEnv(shareContext: NSOpenGLContext?) {

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
    self.context = NSOpenGLContext(format: format!, share: shareContext)

  }
  
  func makeCurrent() {
    self.context!.makeCurrentContext();
    self.context!.update();
  }
  
  func getContext() -> Int64 {
    var _p = self.context!;
    // todo two different context object hashValue is always different???
    return Int64(_p.hashValue);
  }
  
  func dispose() {
    self.context = nil;
  }
  
}
