import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

import 'opengl/OpenGLContextES.dart'
    if (dart.library.js) 'opengl/OpenGLContextWeb.dart';

import 'OpenGL-Base.dart';
import 'opengl/opengl_es_bindings/opengl_es_bindings.dart';

getInstance(Map<String, dynamic> options) {
  return OpenGLES(options);
}

class OpenGLES extends OpenGLBase {
  int _display = 0;
  int _surface = 0;
  int _context = 0;

  Pointer<Uint32> frameBuffer = malloc.allocate<Uint32>(sizeOf<Uint32>() * 1);
  Pointer<Uint32> frameBufferTexture =
      malloc.allocate<Uint32>(sizeOf<Uint32>() * 1);
  Pointer<Uint32> renderBuffer = malloc.allocate<Uint32>(sizeOf<Uint32>() * 1);

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

  OpenGLES(Map<String, dynamic> options) : super(options) {
    final DynamicLibrary? libEGL = getEglLibrary();
    final DynamicLibrary? libGLESv3 = getGLLibrary();

    _libOpenGLES = LibOpenGLES(libGLESv3!);

    _libEGL = LibEGL(libEGL!);
  }

  DynamicLibrary? getEglLibrary() {
    if (Platform.isAndroid) {
      return DynamicLibrary.open("libEGL.so");
    } else if (Platform.isWindows) {
      return DynamicLibrary.open("flutter_gl_windows_plugin.dll");
    } else {
      return DynamicLibrary.process();
    }
  }

  DynamicLibrary? getGLLibrary() {
    if (Platform.isAndroid) {
      return DynamicLibrary.open("libGLESv3.so");
    } else if (Platform.isWindows) {
      return DynamicLibrary.open("Opengl32.dll");
    } else {
      return DynamicLibrary.process();
    }
  }

  makeCurrent(List<int> egls) {
    _display = egls[3];
    _surface = egls[4];
    _context = egls[5];

    if (Platform.isAndroid) {
      /// bind context to this thread. All following OpenGL calls from this thread will use this context
      eglMakeCurrent(_display, _surface, _surface, _context);
    } else if (Platform.isIOS || Platform.isMacOS || Platform.isWindows) {
      // var _d = egl.eglTest();
      // print("makeCurrent egl test ${_d} ");
      var _result = egl.makeCurrent(_context);
      // print("ios makeCurrent _result: ${_result} ");
    } else {
      throw (" OpenGL-ES.makeCurrent ${Platform.operatingSystem} is not support yet ");
    }
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
    print(" OpenGLES dispose .... TODO ");
  }
}
