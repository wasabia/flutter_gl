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

  late dynamic openGL;

  late List<int> egls;

  dynamic get gl => openGL.gl;

  // for web
  dynamic get element => openGL.element;

  /// Launches the given [url]. Completes to [true] if the launch was successful.
  Future<String?> get platformVersion {
    throw UnimplementedError('platformVersion has not been implemented.');
  }

  Future<Map<String, dynamic>> initialize_interface(
      {Map<String, dynamic>? options}) async {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<List<int>> getEgl_interface(int textureId) async {
    throw UnimplementedError('getEgl() has not been implemented.');
  }

  Future updateTexture_interface(int textureId, sourceTexture) async {
    throw UnimplementedError('updateTexture() has not been implemented.');
  }

  void dispose_interface(int textureId) {
    throw UnimplementedError('dispose() has not been implemented.');
  }
}
