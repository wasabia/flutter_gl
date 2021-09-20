# Flutter GL

Flutter GL can call OpenGL ES API with Dart

Support iOS,Android,Web

## OpenGL ES API
Now the api is similar to WebGL

## How to use
Now this is only support draw to FBO. then share the FBO texture to Native side.

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

// use this method to notify Flutter update Texture Widget
// sourceTextue is a texture which bind to FBO framebuffer
flutterGlPlugin.updateTexture(sourceTexture);
```

### Run Examples

Clone or download this repo

```
cd flutter_gl/flutter_gl/example

flutter run
```

## Screenshot

![screen0](https://user-images.githubusercontent.com/1768228/118112805-15a0b300-b418-11eb-81c0-c693cfca95aa.png)

![screen1](https://user-images.githubusercontent.com/1768228/118112813-176a7680-b418-11eb-8ff9-877b941048e1.png)

## Android

check the example project
copy the example/android/app/libs/aars/threeegl.aar
to your app android project same path


## Issues

File any issues, bugs, or feature requests.

## Contributing

Pull request please!
