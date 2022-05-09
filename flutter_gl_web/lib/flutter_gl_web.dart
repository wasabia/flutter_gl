import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_gl_platform_interface/flutter_gl_platform_interface.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// FlutterGl web implementation
class FlutterGlPlugin extends FlutterGlPlatform {
  late int _divId;

  /// A constructor that allows tests to override the window object used by the plugin.
  FlutterGlPlugin({@visibleForTesting Window? debugWindow}) {}

  static void registerWith(Registrar registrar) {
    FlutterGlPlatform.instance = FlutterGlPlugin();
  }

  /// initialize plugin
  Future<Map<String, dynamic>> initialize_interface(
      {Map<String, dynamic>? options}) async {
    _divId = DateTime.now().microsecondsSinceEpoch;
    this.textureId = _divId;

    num _ratio = window.devicePixelRatio;

    Map<String, dynamic> _resp = {"textureId": _divId, "dpr": _ratio};

    return _resp;
  }

  /// getEgl no meaning in web
  Future<List<int>> getEgl_interface(int textureId) async {
    // web no need do something
    return [];
  }

  /// updateTexture no meaning in web
  updateTexture_interface(int textureId, sourceTexture) async {
    // web no need do something
    return Future.sync(() => true);
  }

  /// dispose no meaning in web?
  dispose_interface(int textureId) {
    // on web what should dispose ???
  }
}
