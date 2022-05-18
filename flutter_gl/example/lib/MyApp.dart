import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_gl_example/ExampleDemoTest.dart';
// import 'package:flutter_gl_example/ExampleDemoTest.dart';
import 'ExampleTriangle01.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //ExampleTriangle01  only fix for web if you want run on native app maybe need fix shader???
    return ExampleTriangle01();
    // return ExampleDemoTest();
  }
}
