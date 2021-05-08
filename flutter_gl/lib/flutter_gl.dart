
import 'dart:async';


import 'package:flutter_gl_platform_interface/flutter_gl_platform_interface.dart';


export './openGL/OpenGL.dart';


class FlutterGlPlugin extends FlutterGlPlatform {
 
  bool get isInitialized => FlutterGlPlatform.instance.isInitialized;

  int? get textureId => FlutterGlPlatform.instance.textureId;

  Future<String?> get platformVersion async {
    return FlutterGlPlatform.instance.platformVersion;
  }

  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options, bool renderToVideo = false}) async {
    
    return FlutterGlPlatform.instance.initialize(options: options, renderToVideo: renderToVideo);
  }

  Future<bool> render(int textureId, Map<String, dynamic> data, double time, {Map<String, dynamic>? options, bool preload = false}) async {
    return FlutterGlPlatform.instance.render(textureId, data, time, options: options, preload: preload);
  }

  Future<List<int>> getEgl(int textureId) async {
    var result = List<int>.from(await FlutterGlPlatform.instance.getEgl(textureId));
    return result;
  }
  

  Future<bool> updateTexture(int textureId, sourceTexture) {
    return FlutterGlPlatform.instance.updateTexture(textureId, sourceTexture);
  }

  dispose() {
    return FlutterGlPlatform.instance.dispose();
  }

  Future<Null> initAsset(Map<String, dynamic> args) async {
    return FlutterGlPlatform.instance.initAsset(args);
  }
  Future<Map<String, dynamic>> getInfo(String file_path) async {
    return FlutterGlPlatform.instance.getInfo(file_path);
  }
  play() async {
    return FlutterGlPlatform.instance.play();
  }
  pause() async {
    return FlutterGlPlatform.instance.pause();
  }
  getFrameAt(String filePath, double time){
    return FlutterGlPlatform.instance.getFrameAt(filePath, time);
  }
  getFrameFileAt(String filePath, double time, String framePath) async {
    return FlutterGlPlatform.instance.getFrameFileAt(filePath, time, framePath);
  }
  startRecord(String target, String filePath) async {
    return FlutterGlPlatform.instance.startRecord(target, filePath);
  }
  finishRecord(List<Map<String, dynamic>> audios) async {
    return FlutterGlPlatform.instance.finishRecord(audios);
  }
  getSamples(String filePath, num width, num maxHeight) async {
    return FlutterGlPlatform.instance.getSamples(filePath, width, maxHeight);
  }
  extraAudio(String filePath, String audioPath) {
    return FlutterGlPlatform.instance.extraAudio(filePath, audioPath);
  }
  Future<Map<String, dynamic>> getAudioInfo(String filePath) async { 
    return FlutterGlPlatform.instance.getAudioInfo(filePath);
  }
  mergeVideoAndAudios(String videoPath, List<Map<String, dynamic>> audios) async {
    return FlutterGlPlatform.instance.mergeVideoAndAudios(videoPath, audios);
  }
  Future<List<double>> calcText(Map<String, dynamic> args) async {
    return FlutterGlPlatform.instance.calcText(args);
  }

}
