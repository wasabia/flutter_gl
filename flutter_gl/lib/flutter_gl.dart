
import 'dart:async';


import 'package:flutter_gl_platform_interface/flutter_gl_platform_interface.dart';

import 'openGL/OpenGL.dart';


export './openGL/OpenGL.dart';


class FlutterGlPlugin extends FlutterGlPlatform {
  late dynamic openGL;
  late int width;
  late int height;
  late num dpr;
  late List<int> egls;

  dynamic get gl => openGL.gl;

  // for web
  dynamic get element => openGL.element;

  FlutterGlPlugin(int width, int height, {num dpr = 1.0}) {
    this.width = width;
    this.height = height;
    this.dpr = dpr;
  }

  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options, bool renderToVideo = false}) async {
    Map<String, dynamic> _options = {
      "width": width,
      "height": height,
      "dpr": dpr
    };
    
    _options.addAll(options ?? {});

    final resp = await FlutterGlPlatform.instance.initialize(options: _options, renderToVideo: renderToVideo);
    textureId = resp["textureId"];

    // used for web
    _options["divId"] = textureId.toString();
    openGL = OpenGL().init(_options);

    return resp;
  }

  prepareContext() async {
    egls = await FlutterGlPlatform.instance.getEgl(this.textureId!);
    openGL.makeCurrent(egls);
  }

  Future<List<int>> getEgl(int textureId) async {
    var result = List<int>.from(await FlutterGlPlatform.instance.getEgl(textureId));
    return result;
  }
  

  Future<bool> updateTexture(sourceTexture) {
    return FlutterGlPlatform.instance.updateTexture(sourceTexture);
  }

  dispose() {
    return FlutterGlPlatform.instance.dispose();
  }


}
