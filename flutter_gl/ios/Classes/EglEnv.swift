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

  var context: EAGLContext?;
  

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
  
  func dispose() {
    self.context = nil;
  }
  
}
