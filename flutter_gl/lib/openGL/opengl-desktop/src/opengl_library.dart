//  Copyright 2019 root.ext@gmail.com
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

typedef GlGetProcAddressNative = Int64 Function(Pointer name);
typedef GlGetProcAddress = int Function(Pointer name);

GlGetProcAddress? _glGetProcAddress;

DynamicLibrary loadLibrary() {
  DynamicLibrary library;

  String name;
  if (Platform.isWindows) {
    name = 'Opengl32.dll';
  } else if (Platform.isLinux) {
    name = 'libGL.so.1';
  } else if (Platform.isMacOS) {
    name =
        '/System/Library/Frameworks/OpenGL.framework/Versions/Current/OpenGL';
  } else {
    throw UnsupportedError('unsupported platform ${Platform.operatingSystem}');
  }

  try {
    library = DynamicLibrary.open(name);
  } catch (ex) {
    throw Exception('failed to load OpenGL library $name');
  }

  String? glGetProcAddressName;
  if (Platform.isWindows) {
    glGetProcAddressName = 'wglGetProcAddress';
  } else if (Platform.isLinux) {
    glGetProcAddressName = 'glXGetProcAddress';
  }

  try {
    if (glGetProcAddressName != null) {
      final func = library.lookup(glGetProcAddressName);
      _glGetProcAddress =
          Pointer<NativeFunction<GlGetProcAddressNative>>.fromAddress(
                  func.address)
              .asFunction<GlGetProcAddress>();
    }
  } catch (ex) {
    throw Exception('failed to loookup $glGetProcAddressName function');
  }

  return library;
}

Pointer<NativeFunction<FN>> loadFunction<FN extends Function>(
    DynamicLibrary lib, String name) {
  Pointer<NativeFunction<FN>>? funcPointer;
  if (lib.providesSymbol(name)) {
    funcPointer = lib.lookup(name);
  } else {
    funcPointer = loadDynamicFunction(name);
  }
  return funcPointer;
}

Pointer<NativeFunction<FN>> loadDynamicFunction<FN extends Function>(
    String name) {
  if (_glGetProcAddress != null) {
    final address = _glGetProcAddress!(name.toNativeUtf8());
    return Pointer<NativeFunction<FN>>.fromAddress(address);
  } else {
    return Pointer<NativeFunction<FN>>.fromAddress(0);
  }
}
