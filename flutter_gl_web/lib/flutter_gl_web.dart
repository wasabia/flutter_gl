// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_gl_platform_interface/flutter_gl_platform_interface.dart';


import 'package:flutter_web_plugins/flutter_web_plugins.dart';


class FlutterGlPlugin extends FlutterGlPlatform {

  
  late int _divId;

  /// A constructor that allows tests to override the window object used by the plugin.
  FlutterGlPlugin({@visibleForTesting Window? debugWindow}) {
    
  }


  static void registerWith(Registrar registrar) {
    FlutterGlPlatform.instance = FlutterGlPlugin();
  }



  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options}) async {
    _divId = DateTime.now().microsecondsSinceEpoch;
    this.textureId = _divId;

    num _ratio = window.devicePixelRatio;

    Map<String, dynamic> _resp = {
      "textureId": _divId,
      "dpr": _ratio
    };

    return _resp;
  }

  Future<List<int>> getEgl(int textureId) async {
    // web no need do something
    return [];
  }

  updateTexture(sourceTexture) async {
    // web no need do something
    return Future.sync(() => true);
  }

}
