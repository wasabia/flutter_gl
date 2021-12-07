import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_gl/flutter_gl.dart';





class ExampleDemoTest extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ExampleDemoTest> {
  
  late FlutterGlPlugin flutterGlPlugin;



  int? fboId;
  num dpr = 1.0;
  late double width;
  late double height;

  Size? screenSize;

  dynamic glProgram;

  dynamic sourceTexture;


  dynamic defaultFramebuffer;
  dynamic defaultFramebufferTexture;

  int n = 0;

  int t = DateTime.now().millisecondsSinceEpoch;

  @override
  void initState() {
    super.initState();
  
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    width = screenSize!.width;
    height = width;

    flutterGlPlugin = FlutterGlPlugin();

    Map<String, dynamic> _options = {
      "antialias": true,
      "alpha": false,
      "width": width.toInt(), 
      "height": height.toInt(),
      "dpr": dpr
    };
    
    await flutterGlPlugin.initialize(options: _options);
    // await flutterGlPlugin.prepareContext();
    // setupDefaultFBO();
    // sourceTexture = defaultFramebufferTexture;

    // setup();

    print(" flutterGlPlugin: textureid: ${flutterGlPlugin.textureId} ");

    setState(() { });

    // web need wait dom ok!!!
    Future.delayed(Duration(milliseconds: 100), () {
      setup();
    });
  
  }

  setup() async {
    // web no need use fbo
    if(!kIsWeb) {
      await flutterGlPlugin.prepareContext();

      setupDefaultFBO();
      sourceTexture = defaultFramebufferTexture;
    }
    
    
    prepare();

    animate();

    setState(() {});
    print(" setup done.... ");
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
                return flutterGlPlugin.isInitialized ? HtmlElementView(viewType: flutterGlPlugin.textureId!.toString()) : Container();
              } else {
                return flutterGlPlugin.isInitialized ? Texture(textureId: flutterGlPlugin.textureId!) : Container();
              }
            }
          )
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                render();
              }, 
              child: Text("Render")
            )
          ],
        )
      ],
    );
  }

  animate() {
    render();
    
    // Future.delayed(Duration(milliseconds: 40), () {
      
    //   animate();
    // });

  }

  setupDefaultFBO() {
    final _gl = flutterGlPlugin.gl;
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

  render() {  
    final _gl = flutterGlPlugin.gl;

    int _current = DateTime.now().millisecondsSinceEpoch;

    num _blue = sin((_current - t) / 500);

    // Clear canvas
    // _gl.clearColor(1.0, 0.0, _blue, 1.0);
    _gl.clear(_gl.COLOR_BUFFER_BIT);

     
    var colorLocation = _gl.getUniformLocation(glProgram, "u_color");
    print(" colorLocation: ${colorLocation} ");

    var u_color = List<num>.from([1.0, _blue, 0.0, 1.0]);

    _gl.uniform4fv(colorLocation, u_color);


    _gl.drawArrays(_gl.TRIANGLES, 0, n);

    _gl.finish();


    if(!kIsWeb) {
      flutterGlPlugin.updateTexture(sourceTexture);
    }


  }


  prepare() {
    final _gl = flutterGlPlugin.gl;

    var vs = """
    attribute vec4 a_Position;
    void main() {
      gl_Position = a_Position;
    }
    """;

    var fs = """
    precision mediump float;
    uniform vec4 u_color;
    void main() {
      gl_FragColor = u_color;
    }
    """;

    if (!initShaders(_gl, vs, fs)) {
        throw('Failed to intialize shaders.');
 
    }

    // Write the positions of vertices to a vertex shader
    n = initVertexBuffers(_gl);
    if (n < 0) {
        throw('Failed to set the positions of the vertices');
 
    }
  }


  initVertexBuffers(gl) {
      // Vertices
      var dim = 3;

      // 1. Use Float32Array
      var vertices0 = new Float32List.fromList([
          0.0, 0.5, 0.0,  // Vertice #1
          -0.5, -0.5, 0.0, // Vertice #2
          0.5, -0.5, 0.0 // Vertice #3
      ]);

      var vertices = Float32Array.from(vertices0);

      // 2. Use Float32List direct
      // var vertices = new Float32List.fromList([
      //   0.0, 0.5, 0.0,  // Vertice #1
      //   -0.5, -0.5, 0.0, // Vertice #2
      //   0.5, -0.5, 0.0 // Vertice #3
      // ]);


      // Create a buffer object
      var vertexBuffer = gl.createBuffer();
      if (vertexBuffer == null) {
          print('Failed to create the buffer object');
          return -1;
      }
      gl.bindBuffer(gl.ARRAY_BUFFER, vertexBuffer);

      gl.bufferData(gl.ARRAY_BUFFER, vertices.length * Float32List.bytesPerElement, vertices, gl.STATIC_DRAW);

      // Assign the vertices in buffer object to a_Position variable
      var a_Position = gl.getAttribLocation(glProgram, 'a_Position');
      if (a_Position < 0) {
          print('Failed to get the storage location of a_Position');
          return -1;
      }
      gl.vertexAttribPointer(a_Position, dim, gl.FLOAT, false, Float32List.bytesPerElement * 3, 0);
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
      print("getProgramParameter: ${_res}  ");
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

        print("makeShader getShaderParameter: ${_res}");

        if (_res == 0 || _res == false) {
            print("Error compiling shader: ${gl.getShaderInfoLog(shader)}");
            return;
        }
        return shader;
    }
 
}
