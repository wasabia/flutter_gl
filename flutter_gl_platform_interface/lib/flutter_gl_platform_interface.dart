import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_flutter_gl.dart';

abstract class FlutterGlPlatform extends PlatformInterface {
  /// Constructs a FlutterGlPlatform.
  FlutterGlPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGlPlatform _instance = MethodChannelFlutterGl();

  /// The default instance of [FlutterGlPlatform] to use.
  ///
  /// Defaults to [MethodChannelUrlLauncher].
  static FlutterGlPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [FlutterGlPlatform] when they register themselves.
  static set instance(FlutterGlPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  int? textureId;
  bool isDisposed = false;
  bool get isInitialized => this.textureId != null;



  /// Launches the given [url]. Completes to [true] if the launch was successful.
  Future<String?> get platformVersion {
    throw UnimplementedError('platformVersion has not been implemented.');
  }


  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options, bool renderToVideo = false}) async {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<bool> render(int textureId, Map<String, dynamic> data, double time, {Map<String, dynamic>? options, bool preload = false}) async {
    throw UnimplementedError('render() has not been implemented.');
  }

  Future<List<int>> getEgl(int textureId) async {
    throw UnimplementedError('getEgl() has not been implemented.');
  }

  Future<bool> updateTexture(int textureId, sourceTexture) {
    throw UnimplementedError('updateTexture() has not been implemented.');
  }

  dispose() {
    throw UnimplementedError('dispose() has not been implemented.');
  }

  Future<Null> initAsset(Map<String, dynamic> args) async {

  }
  Future<Map<String, dynamic>> getInfo(String file_path) async {
    throw UnimplementedError('getInfo() has not been implemented.');
  }
  play() async {}
  pause() async {}
  getFrameAt(String filePath, double time){}
  getFrameFileAt(String filePath, double time, String framePath) async {}
  startRecord(String target, String filePath) async {}
  finishRecord(List<Map<String, dynamic>> audios) async {}
  getSamples(String filePath, num width, num maxHeight) async {}
  extraAudio(String filePath, String audioPath) {}
  Future<Map<String, dynamic>> getAudioInfo(String filePath) async { 
    throw UnimplementedError('getAudioInfo() has not been implemented.');
  }
  mergeVideoAndAudios(String videoPath, List<Map<String, dynamic>> audios) async {}
  Future<List<double>> calcText(Map<String, dynamic> args) async {
    throw UnimplementedError('calcText() has not been implemented.');
  }


}