
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:flutter_gl_macos/openGL/OpenGL-Base.dart';
import 'package:flutter_gl_macos/openGL/opengl/OpenGLContextDESKTOP.dart';
import 'package:flutter_gl_macos/openGL/opengl/opengl_es_bindings/opengl_es_bindings.dart';




getInstance(Map<String, dynamic> options) {
  return OpenGLDESKTOP(options);
}

class OpenGLDESKTOP extends OpenGLBase {
  int _display = 0;
  int _surface = 0;
  int _context = 0;

  Pointer<Uint32> frameBuffer =  malloc.allocate<Uint32>(sizeOf<Uint32>() * 1);
  Pointer<Uint32> frameBufferTexture =  malloc.allocate<Uint32>(sizeOf<Uint32>() * 1);
  Pointer<Uint32> renderBuffer =  malloc.allocate<Uint32>(sizeOf<Uint32>() * 1);

  int get defaultFrameBuffer => frameBuffer.value;
  int get defaultTexture => frameBufferTexture.value;


  late LibOpenGLES _libOpenGLES;
  late LibEGL _libEGL;
  dynamic? _gl;

  dynamic get gl {
    _gl ??= getContext({"gl": _libOpenGLES});
    return _gl;
  }

  LibEGL get egl => _libEGL;

  OpenGLDESKTOP(Map<String, dynamic> options) : super(options) {
    final DynamicLibrary? libEGL = getEglLibrary();
    final DynamicLibrary? libGLESv3 = getGLLibrary();

    _libOpenGLES = LibOpenGLES(libGLESv3!);
    _libEGL = LibEGL(libEGL!);
  }


  DynamicLibrary? getEglLibrary() {
    if (Platform.isMacOS) {
      return DynamicLibrary.process();
    }
  }

  DynamicLibrary? getGLLibrary() {
    if (Platform.isMacOS) {
      return DynamicLibrary.open("/System/Library/Frameworks/OpenGL.framework/Versions/Current/OpenGL");
    } else {
      throw UnsupportedError('unsupported platform ${Platform.operatingSystem}');
    }
  }

  makeCurrent(List<int> egls) {
    _display = egls[3];
    _surface = egls[4];
    _context = egls[5];

    // var _d = egl.eglTest();
    // print("makeCurrent egl test ${_d} ");
    var _result = egl.makeCurrent(_context);
    // print("ios makeCurrent _result: ${_result} ");
  }


  eglMakeCurrent(
    int display,
    int draw,
    int read,
    int context,
  ) {

    var _v = egl.eglMakeCurrent(display, draw, read, context);

  
    final nativeCallResult = _v == 1;

    if (nativeCallResult) {
      return;
    }

    throw ('Failed to make current using display [$display], draw [$draw], read [$read], context [$context].');
  }


  dispose() {
    // 切出当前的上下文
    eglMakeCurrent(_display, 0, 0, 0);

    print(" OpenGLES dispose .... ");
  }

}
