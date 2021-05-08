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

  /// Registers this class as the default instance of [UrlLauncherPlatform].
  static void registerWith(Registrar registrar) {
    FlutterGlPlatform.instance = FlutterGlPlugin();
  }



  Future<Map<String, dynamic>> initialize({Map<String, dynamic>? options, bool renderToVideo = false}) async {
    
    /// 这里使用时间作为唯一标识
    _divId = DateTime.now().microsecondsSinceEpoch;

    num _ratio = window.devicePixelRatio;

    Map<String, dynamic> _resp = {
      "textureId": _divId,
      "dpr": _ratio
    };

    return _resp;
  }

  Future<bool> render(int textureId, Map<String, dynamic> data, double time, {Map<String, dynamic>? options, bool preload = false}) async {
    return true;
  }



  Future<List<int>> getEgl(int textureId) async {
    // web no need do something
    return [];
  }

  Future<bool> updateTexture(int textureId, sourceTexture) {
    // web no need do something
    // web端不需要更新 移动端需要通知Texture Widget刷新
    return Future.sync(() => true);
  }

  @override
  dispose() {
    // TODO: implement dispose
    return super.dispose();
  }

  /// Opens the given [url] in the specified [webOnlyWindowName].
  ///
  /// Returns the newly created window.
  // @visibleForTesting
  // html.WindowBase openNewWindow(String url, {String webOnlyWindowName}) {
  //   // We need to open mailto, tel and sms urls on the _top window context on safari browsers.
  //   // See https://github.com/flutter/flutter/issues/51461 for reference.
  //   final target = webOnlyWindowName ??
  //       ((_isSafari && _isSafariTargetTopScheme(url)) ? '_top' : '');
  //   return _window.open(url, target);
  // }

  // Future<bool> canLaunch(String url) {
    // return Future<bool>.value(_supportedSchemes.contains(_getUrlScheme(url)));
  // }

  // @override
  // Future<bool> launch(
  //   String url, {
  //   @required bool useSafariVC,
  //   @required bool useWebView,
  //   @required bool enableJavaScript,
  //   @required bool enableDomStorage,
  //   @required bool universalLinksOnly,
  //   @required Map<String, String> headers,
  //   String webOnlyWindowName,
  // }) {
  //   return Future<bool>.value(
  //       openNewWindow(url, webOnlyWindowName: webOnlyWindowName) != null);
  // }
}
