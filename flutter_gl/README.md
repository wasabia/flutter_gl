# Flutter GL

cross-platform call OpenGL API by Dart through dart:ffi. Provides OpenGL with Texture Widget on Flutter. 

Support iOS, Android, Web, macOS, Windows

Linux TODO

Used by [three_dart](https://github.com/wasabia/three_dart)


## OpenGL API

the api is similar to WebGL

only support draw to FBO. then share the FBO texture to Native side.


### import

```
import 'package:flutter_gl/flutter_gl.dart';
```

### Usage

```
int width = 200;
int height = 200;
num dpr = 1.0;

flutterGlPlugin = FlutterGlPlugin();

Map<String, dynamic> _options = {
    "width": width, 
    "height": height, 
    "dpr": dpr,
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

### why use NativeArray replace Dart List

Dart List convert to ffi pointer need memeory copy.

### Run Examples

Clone or download this repo

```
cd flutter_gl/flutter_gl/example

flutter run
```

## share opengl context with flutter_gl

### Android

when init the plugin, save share opengl context with ThreeEgl,

```
ThreeEgl.setContext("shareContext", shareEglEnv.eglContext);
```

so you can get it use ThreeEgl lib, then create yourself opengl context share with "shareContext"

```
shareContext = ThreeEgl.getContext("shareContext");
```


### iOS

for iOS the key is 3 ... 
```
eAGLShareContext = ThreeEgl.getContext(key: 3);
```

### Web
no need ? just webgl

### Windows

not support get share context now


## Android

check the example project
copy the example/android/app/libs/aars/threeegl.aar
to your app android project same path

change minSdkVersion 24


## Screenshot

![screen0](https://user-images.githubusercontent.com/1768228/118112805-15a0b300-b418-11eb-81c0-c693cfca95aa.png)

![screen1](https://user-images.githubusercontent.com/1768228/118112813-176a7680-b418-11eb-8ff9-877b941048e1.png)


## Issues

File any issues, bugs, or feature requests.

## Contributing

Pull request please!
