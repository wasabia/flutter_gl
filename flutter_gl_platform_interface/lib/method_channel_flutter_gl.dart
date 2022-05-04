import 'dart:async';
import 'package:flutter/services.dart';
import 'flutter_gl_platform_interface.dart';

const MethodChannel _channel = MethodChannel('flutter_gl');

/// An implementation of [FlutterGlPlatform] that uses method channels.
class MethodChannelFlutterGl extends FlutterGlPlatform {
  bool get isInitialized => this.textureId != null;

  Future<Map<String, dynamic>> initialize_interface(
      {Map<String, dynamic>? options, bool renderToVideo = false}) async {
    final resp = await _channel.invokeMethod(
      'initialize',
      <String, dynamic>{'options': options, 'renderToVideo': renderToVideo},
    );

    this.textureId = resp["textureId"];

    return Map<String, dynamic>.from(resp);
  }

  Future<List<int>> getEgl_interface(int textureId) async {
    final _args = {"textureId": textureId};

    final _result = await _channel.invokeMethod('getEgl', _args);

    return List<int>.from(_result);
  }

  Future updateTexture_interface(int textureId, sourceTexture) async {
    final _args = {"textureId": textureId, "sourceTexture": sourceTexture};
    final _result = await _channel.invokeMethod('updateTexture', _args);
    return _result;
  }

  Future updateSize_interface(int textureId, Map<String, dynamic> options) async {
    final _args = {
      "textureId": textureId,
      "width": options["width"],
      "height": options["height"],
    };

    final _result = await _channel.invokeMethod('updateSize', _args);

    return _result;
  }

  void dispose_interface(int textureId) async {
    this.isDisposed = true;

    final _args = {"textureId": textureId};
    await _channel.invokeMethod('dispose', _args);
  }
}
