import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_gl/flutter_gl.dart';





class MyApp01 extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp01> {
  
  late FlutterGlPlugin flutterGlPlugin;

  int? textureId;

  int? fboId;
  num dpr = 1.0;
  late double width;
  late double height;

  late dynamic openGL;

  Size? screenSize;

  dynamic glProgram;

  dynamic sourceTexture;
  dynamic? controls;

  int _t = DateTime.now().millisecondsSinceEpoch;

  ui.Image? _image;

  dynamic defaultFramebuffer;
  dynamic defaultFramebufferTexture;

  int n = 0;

  @override
  void initState() {
    super.initState();
  
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    flutterGlPlugin = FlutterGlPlugin();
    width = screenSize!.width;
    height = width;

    Map<String, dynamic> _options = {
      "width": width.toInt(), 
      "height": height.toInt(),
      "antialias": true,
      "alpha": false
    };
    
    final resp = await flutterGlPlugin.initialize(options: _options);

    textureId = resp["textureId"];


    _options["divId"] = textureId.toString();
    _options["dpr"] = dpr;

    openGL = OpenGL().init(_options);

    setState(() { });

    // TODO web wait dom ok!!!
    Future.delayed(Duration(milliseconds: 100), () {
      setupOpenGL(width.toInt(), height.toInt());
    });
  
  }

  setupOpenGL(int width, int height) async {

    List<int> egls = await flutterGlPlugin.getEgl(textureId!);
    print("setupOpenGL  width: ${width} height: ${height} ");
    openGL.initOpenGL(width, height, true, egls);

    if(!kIsWeb) {
      setupDefaultFBO();

      print(" setupDefaultFBO defaultFramebufferTexture: ${defaultFramebufferTexture}  ");
      sourceTexture = defaultFramebufferTexture;
    }
    
    prepare();

    // Future.delayed(Duration(milliseconds: 100), () {
    //   animate();
    // });



  }

  initSize(BuildContext context) {
    if (screenSize != null) {
      return;
    }

    final mq = MediaQuery.of(context);

    screenSize = mq.size;
    dpr = mq.devicePixelRatio;

    print(" screenSize: ${screenSize} dpr: ${dpr} ");

    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example app'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            initSize(context);  
            return SingleChildScrollView(
              child: _build(context)
            );
          },
        ),
      ),
    );
  }

  Widget _build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: width,
          color: Colors.black,
          child: Builder(
            builder: (BuildContext context) {
              if(kIsWeb) {
                return textureId != null ? HtmlElementView(viewType: textureId!.toString()) : Container();
              } else {
                switch (defaultTargetPlatform) {
                  case TargetPlatform.android:
                    return textureId != null ? Texture(textureId: textureId!) : Container(
                      color: Colors.white,
                    );
                  case TargetPlatform.iOS:
                    // return widget on iOS.
                    return flutterGlPlugin.isInitialized ? Texture(textureId: textureId!) : Container();
                  default:
                    throw UnsupportedError("Unsupported platform view");
                }
              }
            }
          )
        ),
        Container(
          child: Row(
            children: [
              RaisedButton(
                child: Text("render"),
                onPressed: () {
                  render();
                }
              ),
              RaisedButton(
                child: Text("test"),
                onPressed: () {
                  test();
                }
              )
            ],
          ),
        )
      ],
    );
  }

  animate() {
    render();
    
    Future.delayed(Duration(milliseconds: 40), () {
      
      animate();
    });

  }

  setupDefaultFBO() {
    final _gl = openGL.gl;
    int glWidth = (width * dpr).toInt();
    int glHeight = (height * dpr).toInt();

    defaultFramebuffer = _gl.createFramebuffer();
    defaultFramebufferTexture = _gl.createTexture();
    _gl.activeTexture(_gl.TEXTURE0);

    _gl.bindTexture(_gl.TEXTURE_2D, defaultFramebufferTexture);
    _gl.texImage2D(_gl.TEXTURE_2D, 0, _gl.RGBA, glWidth, glHeight, 0, _gl.RGBA, _gl.UNSIGNED_BYTE, null);
    _gl.texParameteri(_gl.TEXTURE_2D, _gl.TEXTURE_MIN_FILTER, _gl.LINEAR);
    _gl.texParameteri(_gl.TEXTURE_2D, _gl.TEXTURE_MAG_FILTER, _gl.LINEAR);

    _gl.bindFramebuffer(_gl.FRAMEBUFFER, defaultFramebuffer);
    _gl.framebufferTexture2D(_gl.FRAMEBUFFER, _gl.COLOR_ATTACHMENT0, _gl.TEXTURE_2D, defaultFramebufferTexture, 0);

  }

  test() {
    int _t0 = DateTime.now().millisecondsSinceEpoch;

    int j = 0;

    for(var i = 0; i < 50000; i++) {
      // Draw
      j = j + i;
    }

    int _t1 = DateTime.now().millisecondsSinceEpoch;

    print(" render cost: ${_t1 - _t0} j: ${j}");
  }

  render() async {  
    final _gl = openGL.gl;

    int _t0 = DateTime.now().millisecondsSinceEpoch;

    // Clear canvas
    _gl.clearColor(0.0, 0.0, 0.0, 1.0);
    _gl.clear(_gl.COLOR_BUFFER_BIT);


    for(var i = 0; i < 5000; i++) {
      // Draw
      _gl.drawArrays(_gl.TRIANGLES, 0, n);
    }
    

    _gl.finish();

    int _t1 = DateTime.now().millisecondsSinceEpoch;

    print(" render cost: ${_t1 - _t0} ");

    flutterGlPlugin.updateTexture(textureId!, sourceTexture);
  }


  prepare() {
    final _gl = openGL.gl;

    var vs = """
    attribute vec4 a_Position;
    void main() {
        gl_Position = a_Position;
    }
    """;

    var fs = """
    void main() {
        gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
    }
    """;

    if (!initShaders(_gl, vs, fs)) {
        print('Failed to intialize shaders.');
        return;
    }

    // Write the positions of vertices to a vertex shader
    n = initVertexBuffers(_gl);
    if (n < 0) {
        print('Failed to set the positions of the vertices');
        return;
    }

    
  }


  initVertexBuffers(gl) {
      // Vertices
      var dim = 3;
      var vertices = new Float32List.fromList([
          0, 0.5, 0,  // Vertice #1
          -0.5, -0.5, 0, // Vertice #2
          0.5, -0.5, 0 // Vertice #3
      ]);

      // Create a buffer object
      var vertexBuffer = gl.createBuffer();
      if (vertexBuffer == null) {
          print('Failed to create the buffer object');
          return -1;
      }
      gl.bindBuffer(gl.ARRAY_BUFFER, vertexBuffer);
      gl.bufferData(gl.ARRAY_BUFFER, vertices, gl.STATIC_DRAW);

      // Assign the vertices in buffer object to a_Position variable
      var a_Position = gl.getAttribLocation(glProgram, 'a_Position');
      if (a_Position < 0) {
          print('Failed to get the storage location of a_Position');
          return -1;
      }
      gl.vertexAttribPointer(a_Position, dim, gl.FLOAT, false, 0, 0);
      gl.enableVertexAttribArray(a_Position);

      // Return number of vertices
      return (vertices.length / dim).toInt();
    }

    initShaders(gl, vs_source, fs_source) {
      // Compile shaders
      var vertexShader = makeShader(gl, vs_source, gl.VERTEX_SHADER);
      var fragmentShader = makeShader(gl, fs_source, gl.FRAGMENT_SHADER);

      // Create program
      glProgram = gl.createProgram();

      // Attach and link shaders to the program
      gl.attachShader(glProgram, vertexShader);
      gl.attachShader(glProgram, fragmentShader);
      gl.linkProgram(glProgram);
      var _res = gl.getProgramParameter(glProgram, gl.LINK_STATUS);
      if (_res == false || _res == 0) {
          print("Unable to initialize the shader program");
          return false;
      }

      // Use program
      gl.useProgram(glProgram);
  
      return true;
    }

    makeShader(gl, src, type) {
        var shader = gl.createShader(type);
        gl.shaderSource(shader, src);
        gl.compileShader(shader);
        var _res = gl.getShaderParameter(shader, gl.COMPILE_STATUS);
        if (_res == 0 || _res == false) {
            print("Error compiling shader: " + gl.getShaderInfoLog(shader));
            return;
        }
        return shader;
    }
 
}
