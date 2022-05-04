import 'dart:async';

import 'package:flutter_gl_platform_interface/flutter_gl_platform_interface.dart';

import 'openGL/OpenGL.dart';
export './openGL/OpenGL.dart';
export './native-array/index.dart';

/// FlutterGlPlugin
///
/// flutterGlPlugin = FlutterGlPlugin();
/// Map<String, dynamic> _options = {
///     "width": width,
///     "height": height,
///     "antialias": true,
///     "alpha": false
/// };
/// await flutterGlPlugin.initialize(options: _options);
class FlutterGlPlugin extends FlutterGlPlatform {
  late dynamic openGL;

  late List<int> egls;

  dynamic get gl => openGL.gl;

  // for web
  dynamic get element => openGL.element;

  FlutterGlPlugin();

  Future<Map<String, dynamic>> initialize(
      {Map<String, dynamic>? options}) async {
    Map<String, dynamic> _options = {};

    _options.addAll(options ?? {});

    final resp = await FlutterGlPlatform.instance.initialize_interface(options: _options);
    textureId = resp["textureId"];

    // used for web
    _options["divId"] = textureId.toString();
    openGL = OpenGL().init(_options);

    return resp;
  }

  /// set opengl context for ffi thread
  prepareContext() async {
    egls = await FlutterGlPlatform.instance.getEgl_interface(this.textureId!);
    openGL.makeCurrent(egls);
  }

  /// get created opengl context from native
  Future<List<int>> getEgl(int textureId) async {
    var result =
        List<int>.from(await FlutterGlPlatform.instance.getEgl_interface(textureId));
    return result;
  }

  /// update texture to flutter
  Future updateTexture(sourceTexture) async {
    return await FlutterGlPlatform.instance.updateTexture_interface(this.textureId!, sourceTexture);
  }

  dispose() {
    return FlutterGlPlatform.instance.dispose_interface(this.textureId!);
  }
}
