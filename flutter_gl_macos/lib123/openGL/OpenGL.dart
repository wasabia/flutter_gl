


import 'package:flutter_gl_macos/openGL/OpenGL-Base.dart';
import 'package:flutter_gl_macos/openGL/OpenGL-DESKTOP.dart';

class OpenGL {
  
  OpenGLBase? _instance;

  OpenGLBase init(Map<String, dynamic> options) {
    _instance ??= getInstance(options);
    return _instance!;
  }
  
  dispose() {
    _instance?.dispose();
  }

}



