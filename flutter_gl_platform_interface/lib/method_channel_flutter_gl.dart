import 'dart:async';
import 'package:flutter/services.dart';
import 'flutter_gl_platform_interface.dart';

const MethodChannel _channel = MethodChannel('flutter_gl');

/// An implementation of [FlutterGlPlatform] that uses method channels.
class MethodChannelFlutterGl extends FlutterGlPlatform {

  bool get isInitialized => this.textureId != null;

  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options, bool renderToVideo = false}) async {
    final resp = await _channel.invokeMethod(
      'initialize',
      <String, dynamic>{
        'options': options,
        'renderToVideo': renderToVideo
      },
    );

    this.textureId = resp["textureId"];

    return Map<String, dynamic>.from(resp);
  }

  Future<List<int>> getEgl(int textureId) async {
    final _args = {
      "textureId": textureId
    };

    final _result = await _channel.invokeMethod('getEgl', _args);

    return List<int>.from(_result);
  }

  Future<Map<String, dynamic>> initVideo(Map<String, dynamic> info) async {
    final Map<String, dynamic> _args = {
      "textureId": textureId
    };

    _args.addAll(info);

    final _result = await _channel.invokeMethod('initVideo', _args);

    return Map<String, dynamic>.from(_result);
  }

  Future<bool> updateTexture(sourceTexture) async {
    final _args = {
      "textureId": textureId,
      "sourceTexture": sourceTexture
    };

    final _result = await _channel.invokeMethod('updateTexture', _args);

    return _result;
  }

  getFrameAt(String filePath, num time) async {
    final _args = {
      'textureId': textureId, 
      'filePath': filePath, 
      'time': time
    };

    final _result = await _channel.invokeMethod('getFrameAt', _args);

    return _result;
  }

  getFrameFileAt(String filePath, num time, String framePath) async {
    final _args = {
      'textureId': textureId, 
      'filePath': filePath, 
      'time': time, 
      'framePath': framePath
    };
    _channel.invokeMethod('getFrameFileAt', _args);
  }

  dispose() {

    this.isDisposed = true;

    final _args = {
      "textureId": textureId
    };
    _channel.invokeMethod('dispose', _args);
  }

}