import 'dart:async';

import 'package:flutter/services.dart';

import 'flutter_gl_platform_interface.dart';

const MethodChannel _channel = MethodChannel('flutter_gl');

/// An implementation of [FlutterGlPlatform] that uses method channels.
class MethodChannelFlutterGl extends FlutterGlPlatform {

  bool get isInitialized => this.textureId != null;

  Future<String?> get platformVersion {
    return _channel.invokeMethod('platformVersion');
  }

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

  Future<bool> render(int textureId, Map<String, dynamic> data, double time, {Map<String, dynamic>? options, bool preload = false}) async {
    final _args = {
      "textureId": textureId, 
      "data": data, 
      "time": time,
      "options": options,
      "preload": preload
    };

    // print(" texture render... ");
    // print(_args);

    final _result = await _channel.invokeMethod('render', _args);
    return _result;
  }

  Future<List<int>> getEgl(int textureId) async {
    final _args = {
      "textureId": textureId
    };

    final _result = await _channel.invokeMethod('getEgl', _args);

    return List<int>.from(_result);
  }

  Future<bool> updateTexture(int textureId, sourceTexture) async {
    final _args = {
      "textureId": textureId,
      "sourceTexture": sourceTexture
    };

    final _result = await _channel.invokeMethod('updateTexture', _args);

    return _result;
  }

  dispose() {

    this.isDisposed = true;

    final _args = {
      "textureId": textureId
    };
    _channel.invokeMethod('dispose', _args);
  }



  Future<Null> initAsset(Map<String, dynamic> args) async {
    args["textureId"] = this.textureId;
    final _result = await _channel.invokeMethod('initAsset', args);
    return _result;
  }



  Future<Map<String, dynamic>> getInfo(String file_path) async {
    final _args = {'textureId': this.textureId, 'file_path': file_path};
    final _result = await _channel.invokeMethod('getInfo', _args);
    return Map<String, dynamic>.from(_result);
  }

  play() async {
    final _args = {'textureId': this.textureId};
    final _result = await _channel.invokeMethod('play', _args);
    return _result;
  }

  pause() async {
    final _args = {'textureId': this.textureId};
    final _result = await _channel.invokeMethod('pause', _args);
    return _result;
  }


  getFrameAt(String filePath, double time) {
    final _args = {'textureId': this.textureId, 'filePath': filePath, 'time': time};
    _channel.invokeMethod('getFrameAt', _args);
  }

  getFrameFileAt(String filePath, double time, String framePath) async {
    final _args = {'textureId': this.textureId, 'filePath': filePath, 'time': time, 'framePath': framePath};
    _channel.invokeMethod('getFrameFileAt', _args);
  }

  startRecord(String target, String filePath) async {
    final _args = {'textureId': this.textureId, 'filePath': filePath, 'target': target};
    final _result = await _channel.invokeMethod('startRecord', _args);
    return _result;
  }

  finishRecord(List<Map<String, dynamic>> audios) async {
    final _args = {'textureId': this.textureId, 'audios': audios};
    final _result = await _channel.invokeMethod('finishRecord', _args);
    return _result;
  }

  getSamples(String filePath, num width, num maxHeight) async {
    final _args = {
      'textureId': this.textureId,
      'filePath': filePath,
      'width': width,
      'maxHeight': maxHeight
    };

    _channel.invokeMethod('getSamples', _args);
  }

  extraAudio(String filePath, String audioPath) {
    final _args = {
      'filePath': filePath,
      'audioPath': audioPath
    };
    _channel.invokeMethod('extraAudio', _args);
  }

  Future<Map<String, dynamic>> getAudioInfo(String filePath) async {
    final _args = {
      'textureId': this.textureId,
      'filePath': filePath
    };
    final _result = await _channel.invokeMethod('getAudioInfo', _args);
    return Map<String, dynamic>.from(_result);
  }

  mergeVideoAndAudios(String videoPath, List<Map<String, dynamic>> audios) async {
    final _args = {
      'textureId': this.textureId,
      'videoPath': videoPath,
      'audios': audios,
    };
    final _result = await _channel.invokeMethod('mergeVideoAndAudios', _args);
    return _result;
  }

  Future<List<double>> calcText(Map<String, dynamic> args) async {
    final _args = {
      'textureId': this.textureId,
      'args': args
    };
    final _result = await _channel.invokeMethod('calcText', _args);
    return List<double>.from(_result);
  }


}