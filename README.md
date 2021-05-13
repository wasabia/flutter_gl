# Flutter GL

Flutter GL can call OpenGL ES API with Dart

Support iOS,Android,Web

## OpenGL ES API
Now the api is similar to WebGL

## How to use

### import

```
import 'package:flutter_gl/flutter_gl.dart';
```

### Usage

```
int width = 200;
int height = 200;
num dpr = 1.0;

flutterGlPlugin = FlutterGlPlugin(width, height, dpr: dpr);

Map<String, dynamic> _options = {
    "antialias": true,
    "alpha": false
};    
await flutterGlPlugin.initialize(options: _options);

// on web this need called after web canvas dom was added to document
await flutterGlPlugin.prepareContext();

// you can get gl by
gl = flutterGlPlugin.gl;

// then you can call OpenGL ES API by gl like
gl.clearColor(0.0, 0.0, 0.0, 1.0);
gl.clear(gl.COLOR_BUFFER_BIT);
```

### Run Examples

Clone or download this repo

```
cd flutter_gl/flutter_gl/example

flutter run
```

## Issues

File any issues, bugs, or feature requests.

## Contributing

Pull request please!
