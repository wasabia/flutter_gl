
// class FlutterGlMacos {
//   static const MethodChannel _channel = MethodChannel('flutter_gl_macos');

//   static Future<String?> get platformVersion async {
//     final String? version = await _channel.invokeMethod('getPlatformVersion');
//     return version;
//   }
// }


import 'dart:async';


import 'package:flutter_gl_macos/openGL/OpenGL.dart';
import 'package:flutter_gl_platform_interface/flutter_gl_platform_interface.dart';



class FlutterGlMacos extends FlutterGlPlatform {
  late dynamic openGL;

  late List<int> egls;

  dynamic get gl => openGL.gl;

  // for web
  dynamic get element => openGL.element;

  FlutterGlMacos() {

  }

  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options}) async {
    Map<String, dynamic> _options = {};
    
    _options.addAll(options ?? {});

    final resp = await FlutterGlPlatform.instance.initialize(options: _options);
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
