import 'dart:ui' as ui;
import 'dart:html';

import './OpenGL-Base.dart';
import 'opengl/OpenGLContextES.dart'
    if (dart.library.js) 'opengl/OpenGLContextWeb.dart';

getInstance(Map<String, dynamic> options) {
  return OpenGLWeb(options);
}

class OpenGLWeb extends OpenGLBase {
  late int width;
  late int height;

  late String divId;
  num dpr = 1.0;
  dynamic _gl;
  bool _alpha = false;
  bool _antialias = false;

  dynamic get gl {
    _gl ??= getContext({
      "gl": this
          .element
          .getContext("webgl2", {"alpha": _alpha, "antialias": _antialias})
    });

    return _gl;
  }

  OpenGLWeb(Map<String, dynamic> options) : super(options) {
    this._alpha = options["alpha"] ?? false;
    this._antialias = options["antialias"] ?? false;
    this.width = options["width"];
    this.height = options["height"];
    this.divId = options["divId"];
    this.dpr = options["dpr"];

    final CanvasElement domElement = CanvasElement(
          width: (width * dpr).toInt(), height: (height * dpr).toInt())
        ..id = 'canvas-id';

    this.element = domElement;

    ui.platformViewRegistry.registerViewFactory(divId, (int viewId) {
      return domElement;
    });
  }

  makeCurrent(List<int> egls) {
    // web no need do something
  }
}
