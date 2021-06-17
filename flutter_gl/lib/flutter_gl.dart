
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
  
  Future<Map<String, dynamic>> initVideo(Map<String, dynamic> info) async {
    var result = Map<String, dynamic>.from(await FlutterGlPlatform.instance.initVideo(info));
    return result;
  }

  Future<bool> updateTexture(sourceTexture) {
    return FlutterGlPlatform.instance.updateTexture(sourceTexture);
  }

  updateSize(Map<String, dynamic> options) async {
    await FlutterGlPlatform.instance.updateSize(options);
    return;
  }

  getFrameAt(String filePath, num time) async {
    return FlutterGlPlatform.instance.getFrameAt(filePath, time);
  }

  getFrameFileAt(String filePath, num time, String framePath) async {
    return FlutterGlPlatform.instance.getFrameFileAt(filePath, time, framePath);
  }


  dispose() {
    return FlutterGlPlatform.instance.dispose();
  }


}
