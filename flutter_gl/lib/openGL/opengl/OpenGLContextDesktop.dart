import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:flutter_gl/native-array/index.dart';
import 'package:flutter_gl/openGL/opengl/OpenGL30Constant.dart';
import 'package:flutter_gl/openGL/opengl-desktop/opengl.dart';

getContext(Map<String, dynamic> parameters) {
  return OpenGLContextDesktop(parameters);
}

class OpenGLContextDesktop extends OpenGL30Constant {
  late dynamic gl;

  OpenGLContextDesktop(Map<String, dynamic> parameters) {
    this.gl = parameters["gl"];
  }

  void scissor(int x, int y, int z, int w) {
    return glScissor(x, y, z, w);
  }

  void viewport(int x, int y, int z, int w) {
    return glViewport(x, y, z, w);
  }

  Map<String, int> getShaderPrecisionFormat() {
    return {'rangeMin': 1, 'rangeMax': 1, 'precision': 1};
  }

  List<String> getExtension(String key) {
    if (Platform.isMacOS || Platform.isWindows) {
      return getExtensionDesktop(key);
    }

    Pointer _v = glGetString(EXTENSIONS);

    String _vstr = _v.cast<Utf8>().toDartString();
    List<String> _extensions = _vstr.split(" ");

    return _extensions;
  }

  List<String> getExtensionDesktop(String key) {
    List<String> _extensions = [];
    var nExtension = getIntegerv(NUM_EXTENSIONS);
    for (int i = 0; i < nExtension; i++) {
      _extensions.add(getStringi(EXTENSIONS, i));
    }

    return _extensions;
  }

  String getStringi(int key, int index) {
    Pointer _v = glGetStringi(key, index);
    return _v.cast<Utf8>().toDartString();
  }

  String getString(int key) {
    Pointer _v = glGetString(key);
    return _v.cast<Utf8>().toDartString();
  }

  int getParameter(int key) {
    // print("OpenGL getParameter key: ${key} ");

    List<int> _intValues = [
      MAX_TEXTURE_IMAGE_UNITS,
      MAX_VERTEX_TEXTURE_IMAGE_UNITS,
      MAX_TEXTURE_SIZE,
      MAX_CUBE_MAP_TEXTURE_SIZE,
      MAX_VERTEX_ATTRIBS,
      MAX_VERTEX_UNIFORM_VECTORS,
      MAX_VARYING_VECTORS,
      MAX_FRAGMENT_UNIFORM_VECTORS,
      MAX_SAMPLES,
      MAX_COMBINED_TEXTURE_IMAGE_UNITS,
      SCISSOR_BOX,
      VIEWPORT
    ];

    if (_intValues.indexOf(key) >= 0) {
      final v = calloc<Int32>(4);
      glGetIntegerv(key, v);
      return v.value;
    } else {
      throw (" OpenGL getParameter key: ${key} is not support ");
    }
  }

  int createTexture() {
    final vPointer = calloc<Uint32>();
    glGenTextures(1, vPointer);
    int _v = vPointer.value;
    calloc.free(vPointer);
    return _v;
  }

  void genTextures(int v0, Pointer<Uint32> v1) {
    return glGenTextures(v0, v1);
  }

  void bindTexture(int type, int texture) {
    return glBindTexture(type, texture);
  }

  void bindTexture2(int texture) {
    return glBindTexture(TEXTURE_2D, texture);
  }

  void activeTexture(int v0) {
    return glActiveTexture(v0);
  }

  void texParameteri(int v0, int v1, int v2) {
    return glTexParameteri(v0, v1, v2);
  }

  void texImage2D(int target, int level, int internalformat, int width,
      int height, int border, int format, int type, data) {
    return glTexImage2D(target, level, internalformat, width, height, border,
        format, type, getData(data));
  }

  void texImage2D_NOSIZE(
      int target, int level, int internalformat, int format, int type, data) {
    return texImage2D(
        target, level, internalformat, 0, 0, 0, format, type, getData(data));
  }

  void texImage3D(int target, int level, int internalformat, int width,
      int height,
      int depth, int border, int format, int type, data) {
    if (data is NativeArray) {
      texImage3DNative(target, level, internalformat, width, height, depth,
          border, format, type, data);
    } else {
      texImage3DNormal(target, level, internalformat, width, height, depth,
          border, format, type, data);
    }
  }

  void texImage3DNative(
      int target,
      int level,
      int internalformat,
      int width,
      int height,
      int depth,
      int border,
      int format,
      int type,
      NativeArray data) {
    var nativeBuffer = data.data;
    glTexImage3D(target, level, internalformat, width, height, depth, border,
        format, type, nativeBuffer.cast<Void>());
  }

  void texImage3DNormal(int target, int level, int internalformat, int width,
      int height, int depth, int border, int format, int type, data) {
    Pointer<Int8> nativeBuffer;
    if (data != null) {
      nativeBuffer = calloc<Int8>(data.length);
      nativeBuffer.asTypedList(data.length).setAll(0, data);
      glTexImage3D(target, level, internalformat, width, height, depth, border,
          format, type, nativeBuffer.cast<Void>());
      calloc.free(nativeBuffer);
    } else {
      glTexImage3D(target, level, internalformat, width, height, depth, border,
          format, type, nullptr);
    }
  }

  void depthFunc(int v0) {
    return glDepthFunc(v0);
  }

  void depthMask(bool v0) {
    return glDepthMask(v0 ? 1 : 0);
  }

  void enable(int v0) {
    return glEnable(v0);
  }

  void disable(int v0) {
    return glDisable(v0);
  }

  void blendEquation(int v0) {
    return glBlendEquation(v0);
  }

  void useProgram(int v0) {
    return glUseProgram(v0);
  }

  void blendFuncSeparate(int v0, int v1, int v2, int v3) {
    return glBlendFuncSeparate(v0, v1, v2, v3);
  }

  void blendFunc(int v0, int v1) {
    return glBlendFunc(v0, v1);
  }

  void blendEquationSeparate(int var0, int var1) {
    return glBlendEquationSeparate(var0, var1);
  }

  void frontFace(int v0) {
    return glFrontFace(v0);
  }

  void cullFace(int v0) {
    return glCullFace(v0);
  }

  void lineWidth(num v0) {
    return glLineWidth(v0.toDouble());
  }

  void polygonOffset(double v0, double v1) {
    return glPolygonOffset(v0, v1);
  }

  stencilMask(v0) {
    print(" OpenGL stencilMask ...  ");
  }

  stencilFunc(v0, v1, v2) {
    print(" OpenGL stencilFunc ...  ");
  }

  stencilOp(v0, v1, v2) {
    print(" OpenGL stencilOp ...  ");
  }

  void clearStencil(int v0) {
    return glClearStencil(v0);
  }

  void clearDepth(num v0) {
    return glClearDepthf(v0.toDouble());
  }

  void colorMask(bool v0, bool v1, bool v2, bool v3) {
    return glColorMask(v0 ? 1 : 0, v1 ? 1 : 0, v2 ? 1 : 0, v3 ? 1 : 0);
  }

  void clearColor(num r, num g, num b, num a) {
    return glClearColor(r.toDouble(), g.toDouble(), b.toDouble(), a.toDouble());
  }

  void compressedTexImage2D(int target, int level, int internalformat,
      int width, int height, int border, int imageSize, data) {
    return texImage2D(target, level, internalformat, width, height, border, 0,
        imageSize, data);
  }

  void generateMipmap(int v0) {
    return glGenerateMipmap(v0);
  }

  void deleteTexture(int v0) {
    var _texturesList = [v0];
    final ptr = calloc<Uint32>(_texturesList.length);
    ptr.asTypedList(1).setAll(0, _texturesList);
    glDeleteTextures(1, ptr);
    calloc.free(ptr);
  }

  void deleteFramebuffer(int v0) {
    var _list = [v0];
    final ptr = calloc<Uint32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    glDeleteFramebuffers(1, ptr);
    calloc.free(ptr);
  }

  void deleteRenderbuffer(int v0) {
    var _list = [v0];
    final ptr = calloc<Uint32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    glDeleteRenderbuffers(1, ptr);
    calloc.free(ptr);
  }

  void texParameterf(int target, int pname, double param) {
    return glTexParameterf(target, pname, param);
  }

  pixelStorei(v0, v1) {
    return glPixelStorei(v0, v1);
  }

  getContextAttributes() {
    return getContextAttributes();
  }

  getProgramParameter(v0, v1) {
    final status = calloc<Int32>();
    glGetProgramiv(v0, v1, status);
    final _v = status.value;
    calloc.free(status);
    return _v;
  }

  getActiveUniform(v0, v1) {
    var length = calloc<Int32>();
    var size = calloc<Int32>();
    var type = calloc<Uint32>();
    var name = calloc<Int8>(100);

    glGetActiveUniform(v0, v1, 99, length, size, type, name);

    int _type = type.value;
    String _name = name.cast<Utf8>().toDartString();
    int _size = size.value;
    int _length = length.value;

    calloc.free(type);
    calloc.free(name);
    calloc.free(size);
    calloc.free(length);

    return ActiveInfo(_type, _name, _size);
  }

  getActiveAttrib(v0, v1) {
    var length = calloc<Int32>();
    var size = calloc<Int32>();
    var type = calloc<Uint32>();
    var name = calloc<Int8>(100);

    glGetActiveAttrib(v0, v1, 99, length, size, type, name);

    int _type = type.value;
    String _name = name.cast<Utf8>().toDartString();
    int _size = size.value;
    int _length = length.value;

    calloc.free(type);
    calloc.free(name);
    calloc.free(size);
    calloc.free(length);

    return ActiveInfo(_type, _name, _size);
  }

  getUniformLocation(v0, String name) {
    final locationName = name.toNativeUtf8();
    final location = glGetUniformLocation(v0, locationName.cast<Int8>());
    calloc.free(locationName);
    return location;
  }

  clear(v0) {
    return glClear(v0);
  }

  createBuffer() {
    Pointer<Uint32> bufferId = calloc<Uint32>();
    glGenBuffers(1, bufferId);
    int _v = bufferId.value;
    calloc.free(bufferId);
    return Buffer._create(_v);
  }

  createVertexArrays() {
    Pointer<Uint32> vao = calloc<Uint32>();
    glGenVertexArrays(1, vao);
    int _v = vao.value;
    calloc.free(vao);
    return _v;
  }

  deleteBuffer(Buffer v0) {
    var _buffersList = [v0.bufferId];
    final ptr = calloc<Uint32>(_buffersList.length);
    ptr.asTypedList(1).setAll(0, _buffersList);
    glDeleteBuffers(1, ptr);
    calloc.free(ptr);
  }

  bindBuffer(v0, v1) {
    return glBindBuffer(v0, v1.bufferId);
  }

  bufferData(int target, int size, data, int usage) {
    if (data is NativeArray) {
      bufferDataNative(target, size, data, usage);
    } else {
      bufferDataNormal(target, size, data, usage);
    }
  }

  bufferDataNative(int target, int size, NativeArray data, int usage) {
    var dataPtr = data.data;
    glBufferData(target, size, dataPtr.cast<Void>(), usage);
  }

  bufferDataNormal(int target, int size, data, int usage) {
    var nativeBuffer = toPointer(data);
    glBufferData(target, size, nativeBuffer.cast<Void>(), usage);
    calloc.free(nativeBuffer);
  }

  bufferSubData(target, offset, data, srcOffset, length) {
    if (data is NativeArray) {
      bufferSubDataNative(target, offset, data, srcOffset, length);
    } else {
      bufferSubDataNormal(target, offset, data, srcOffset, length);
    }
  }

  bufferSubDataNormal(target, offset, data, srcOffset, length) {
    int size = length;
    var dataPtr = toPointer(data);
    glBufferSubData(target, offset, size, dataPtr.cast<Void>());
  }

  bufferSubDataNative(target, offset, NativeArray data, srcOffset, length) {
    int size = length;
    glBufferSubData(target, offset, size, data.data.cast<Void>());
  }

  vertexAttribPointer(
      int index, int size, int type, bool normalized, int stride, int offset) {
    // var offsetPointer = Pointer<Void>.fromAddress(offset);
    glVertexAttribPointer(
        index, size, type, normalized ? 1 : 0, stride, offset);
  }

  drawArrays(v0, v1, v2) {
    return glDrawArrays(v0, v1, v2);
  }

  drawArraysInstanced(v0, v1, v2, v3) {
    return glDrawArraysInstanced(v0, v1, v2, v3);
  }

  bindFramebuffer(v0, v1) {
    return glBindFramebuffer(v0, v1 ?? 0);
  }

  checkFramebufferStatus(v0) {
    return glCheckFramebufferStatus(v0);
  }

  framebufferTexture2D(v0, v1, v2, v3, v4) {
    return glFramebufferTexture2D(v0, v1, v2, v3, v4);
  }

  readPixels(int x, int y, int width, int height, int format, int type, data) {
    if (data is NativeArray) {
      readPixelsNative(x, y, width, height, format, type, data);
    } else {
      readPixelsNormal(x, y, width, height, format, type, data);
    }
  }

  readPixelsNative(int x, int y, int width, int height, int format, int type,
      NativeArray data) {
    final dataPtr = data.data;
    glReadPixels(x, y, width, height, format, type, dataPtr);
  }

  readPixelsNormal(int x, int y, int width, int height, int format, int type,
      Uint8List data) {
    final dataPtr = toPointer(data);
    glReadPixels(x, y, width, height, format, type, dataPtr);
    Uint8List _data = (dataPtr as Pointer<Uint8>).asTypedList(data.length);
    data.setAll(0, _data);
    calloc.free(dataPtr);
  }

  copyTexImage2D(target, level, internalformat, x, y, width, height, border) {
    return glCopyTexImage2D(
        target, level, internalformat, x, y, width, height, border);
  }

  texSubImage2D(target, level, x, y, width, height, format, type, data) {
    final dataPtr = getData(data);
    glTexSubImage2D(target, level, x, y, width, height, format, type, dataPtr);
    // calloc.free(dataPtr);
  }

  texSubImage2D2(x, y, width, height, data) {
    final dataPtr = toPointer(data);
    glTexSubImage2D(
        TEXTURE_2D, 0, x, y, width, height, RGBA, UNSIGNED_BYTE, dataPtr);
    calloc.free(dataPtr);
  }

  texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth,
      format, type, pixels) {
    return glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width,
        height, depth, format, type, getData(pixels));
  }

  compressedTexSubImage2D(target, level, xoffset, yoffset, width, height,
      format, imageSize, pixels) {
    return glCompressedTexSubImage2D(target, level, xoffset, yoffset, width,
        height, format, imageSize, pixels);
  }

  bindRenderbuffer(v0, v1) {
    return glBindRenderbuffer(v0, v1 ?? 0);
  }

  renderbufferStorageMultisample(
      target, samples, internalformat, width, height) {
    return glRenderbufferStorageMultisample(
        target, samples, internalformat, width, height);
  }

  renderbufferStorage(v0, v1, v2, v3) {
    return glRenderbufferStorage(v0, v1, v2, v3);
  }

  framebufferRenderbuffer(v0, v1, v2, v3) {
    return glFramebufferRenderbuffer(v0, v1, v2, v3);
  }

  createRenderbuffer() {
    final v = calloc<Uint32>();
    glGenRenderbuffers(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  genRenderbuffers(v0, v1) {
    return glGenRenderbuffers(v0, v1);
  }

  createFramebuffer() {
    final v = calloc<Uint32>();
    glGenFramebuffers(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  genFramebuffers(v0, v1) {
    return glGenFramebuffers(v0, v1);
  }

  blitFramebuffer(
      srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter) {
    return glBlitFramebuffer(
        srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
  }

  createVertexArray() {
    final v = calloc<Uint32>();
    glGenVertexArrays(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  createProgram() {
    return glCreateProgram();
  }

  attachShader(v0, v1) {
    return glAttachShader(v0, v1);
  }

  isProgram(v0) {
    return glIsProgram(v0);
  }

  bindAttribLocation(program, index, String name) {
    final _name = name.toNativeUtf8();
    glBindAttribLocation(program, index, _name.cast<Int8>());
    calloc.free(_name);
  }

  linkProgram(v0) {
    return glLinkProgram(v0);
  }

  getProgramInfoLog(v0) {
    var infoLen = calloc<Int32>();

    glGetProgramiv(v0, INFO_LOG_LENGTH, infoLen);

    int _len = infoLen.value;
    calloc.free(infoLen);

    String message = '';

    if (infoLen.value > 0) {
      final infoLog = calloc<Int8>(_len);
      glGetProgramInfoLog(v0, _len, nullptr, infoLog);

      message =
          "\nError compiling shader:\n${infoLog.cast<Utf8>().toDartString()}";
      calloc.free(infoLog);
      return message;
    } else {
      return;
    }
  }

  getShaderInfoLog(v0) {
    final infoLen = calloc<Int32>();
    glGetShaderiv(v0, INFO_LOG_LENGTH, infoLen);

    int _len = infoLen.value;
    calloc.free(infoLen);

    String message = '';
    if (infoLen.value > 1) {
      final infoLog = calloc<Int8>(_len);

      glGetShaderInfoLog(v0, _len, nullptr, infoLog);
      message =
          "\nError compiling shader:\n${infoLog.cast<Utf8>().toDartString()}";

      calloc.free(infoLog);
      return message;
    }
  }

  getError() {
    return glGetError();
  }

  deleteShader(v0) {
    return glDeleteShader(v0);
  }

  deleteProgram(v0) {
    return glDeleteProgram(v0);
  }

  bindVertexArray(v0) {
    return glBindVertexArray(v0);
  }

  deleteVertexArray(int v0) {
    var _list = [v0];
    final ptr = calloc<Uint32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    glDeleteVertexArrays(1, ptr);
    calloc.free(ptr);
  }

  enableVertexAttribArray(v0) {
    return glEnableVertexAttribArray(v0);
  }

  disableVertexAttribArray(v0) {
    return glDisableVertexAttribArray(v0);
  }

  vertexAttribIPointer(v0, v1, v2, v3, v4) {
    return vertexAttribIPointer(v0, v1, v2, v3, v4);
  }

  vertexAttrib2fv(v0, v1) {
    return vertexAttrib2fv(v0, v1);
  }

  vertexAttrib3fv(v0, v1) {
    return glVertexAttrib3fv(v0, v1);
  }

  vertexAttrib4fv(v0, v1) {
    return glVertexAttrib4fv(v0, v1);
  }

  vertexAttrib1fv(v0, v1) {
    return glVertexAttrib1fv(v0, v1);
  }

  drawElements(int mode, int count, int type, int offset) {
    var offSetPointer = Pointer<Void>.fromAddress(offset);
    glDrawElements(mode, count, type, offSetPointer.cast<Void>());
    calloc.free(offSetPointer);
    return;
  }

  drawBuffers(buffers) {
    final ptr = calloc<Uint32>(buffers.length);
    ptr.asTypedList(buffers.length).setAll(0, List<int>.from(buffers));

    glDrawBuffers(buffers.length, ptr);

    calloc.free(ptr);
    return;
  }

  drawElementsInstanced(mode, count, type, offset, instanceCount) {
    var offSetPointer = Pointer<Void>.fromAddress(offset);
    glDrawElementsInstanced(mode, count, type, offSetPointer, instanceCount);
    calloc.free(offSetPointer);
    return;
  }

  createShader(type) {
    return glCreateShader(type);
  }

  shaderSource(v0, String shaderSource) {
    var sourceString = shaderSource.toNativeUtf8();
    var arrayPointer = calloc<Pointer<Int8>>();
    arrayPointer.value = Pointer.fromAddress(sourceString.address);
    glShaderSource(v0, 1, arrayPointer, nullptr);
    calloc.free(arrayPointer);
    calloc.free(sourceString);
  }

  compileShader(v0) {
    return glCompileShader(v0);
  }

  getShaderParameter(v0, v1) {
    var _pointer = calloc<Int32>();
    glGetShaderiv(v0, v1, _pointer);

    final _v = _pointer.value;
    calloc.free(_pointer);

    return _v;
  }

  getShaderSource(v0) {
    print(" OPENGL getShaderSource TODO  ");
    // return glGetShaderSource(v0);
  }

  uniformMatrix4fv(location, bool transpose, value) {
    if (value is NativeArray) {
      uniformMatrix4fvNative(location, transpose, value);
    } else {
      uniformMatrix4fvNormal(location, transpose, value);
    }
  }

  uniformMatrix4fvNormal(location, bool transpose, value) {
    var arrayPointer = toPointer(value);
    glUniformMatrix4fv(
        location, value.length ~/ 16, transpose ? 1 : 0, arrayPointer);
    calloc.free(arrayPointer);
  }

  uniformMatrix4fvNative(location, bool transpose, NativeArray value) {
    glUniformMatrix4fv(
        location, value.length ~/ 16, transpose ? 1 : 0, value.data);
  }

  uniform1i(v0, v1) {
    return glUniform1i(v0, v1);
  }

  uniform3f(v0, num v1, num v2, num v3) {
    return glUniform3f(v0, v1.toDouble(), v2.toDouble(), v3.toDouble());
  }

  uniform1fv(location, List<num> value) {
    var arrayPointer = toPointer(value);
    glUniform1fv(location, value.length ~/ 1, arrayPointer);
    calloc.free(arrayPointer);
    return;
  }

  void uniform2fv(location, NativeArray value) {
    return glUniform2fv(location, value.length ~/ 2, value.data);
  }

  uniform3fv(location, value) {
    if (value is NativeArray) {
      uniform3fvNative(location, value);
    } else {
      uniform3fvNormal(location, value);
    }
  }

  uniform3fvNormal(location, List<num> value) {
    var arrayPointer = toPointer(value);
    glUniform3fv(location, value.length ~/ 3, arrayPointer);
    calloc.free(arrayPointer);
  }

  uniform3fvNative(location, NativeArray value) {
    glUniform3fv(location, value.length ~/ 3, value.data);
  }

  uniform1f(v0, num v1) {
    return glUniform1f(v0, v1.toDouble());
  }

  uniformMatrix3fv(location, bool transpose, value) {
    if (value is NativeArray) {
      uniformMatrix3fvNative(location, transpose, value);
    } else {
      uniformMatrix3fvNormal(location, transpose, value);
    }
  }

  uniformMatrix3fvNormal(location, bool transpose, List<num> value) {
    var arrayPointer = toPointer(value);
    glUniformMatrix3fv(
        location, value.length ~/ 9, transpose ? 1 : 0, arrayPointer);
    calloc.free(arrayPointer);
    return;
  }

  uniformMatrix3fvNative(location, bool transpose, NativeArray value) {
    glUniformMatrix3fv(
        location, value.length ~/ 9, transpose ? 1 : 0, value.data);
  }

  getAttribLocation(program, String name) {
    final locationName = name.toNativeUtf8();
    final location = glGetAttribLocation(program, locationName.cast<Int8>());
    calloc.free(locationName);
    return location;
  }

  uniform2f(v0, num v1, num v2) {
    return glUniform2f(v0, v1.toDouble(), v2.toDouble());
  }

  uniform1iv(location, value) {
    int count = value.length;
    final valuePtr = calloc<Int32>(count);
    valuePtr.asTypedList(count).setAll(0, value);
    return glUniform1iv(location, count, valuePtr);
  }

  void uniform2iv(int location, int count, value) {
    return glUniform2iv(location, count, value);
  }

  uniform3iv(v0, v1) {
    return glUniform3iv(v0, 1, v1);
  }

  uniform4iv(v0, v1) {
    return glUniform4iv(v0, 1, v1);
  }

  uniform4fv(location, List<num> value) {
    int count = value.length;
    final valuePtr = calloc<Float>(count);
    List<double> _values = value.map((e) => e.toDouble()).toList().cast();
    valuePtr.asTypedList(count).setAll(0, _values);
    return glUniform4fv(location, count ~/ 4, valuePtr);
  }

  uniform4f(location, num v0, num v1, num v2, num v3) {
    return glUniform4f(
        location, v0.toDouble(), v1.toDouble(), v2.toDouble(), v3.toDouble());
  }

  vertexAttribDivisor(index, divisor) {
    return glVertexAttribDivisor(index, divisor);
  }

  void flush() {
    return glFlush();
  }

  void finish() {
    return glFinish();
  }

  void texStorage2D(target, levels, internalformat, width, height) {
    return glTexStorage2D(target, levels, internalformat, width, height);
  }

  void texStorage3D(target, levels, internalformat, width, height, depth) {
    return glTexStorage3D(target, levels, internalformat, width, height, depth);
  }
  
  void bindBufferBase(int target, int index, int buffer) {
    return glBindBufferBase(target, index, buffer);
  }

  createTransformFeedback() {
    final vPointer = calloc<Uint32>();
    gl.glGenTransformFeedbacks(1, vPointer);
    int _v = vPointer.value;
    calloc.free(vPointer);
    return _v;
  }
  bindTransformFeedback(target, transformFeedback) {
    return gl.glBindTransformFeedback(target, transformFeedback);
  }
  transformFeedbackVaryings(program, count, List<String> varyings, bufferMode) {
    final varyingsPtr = calloc<Pointer<Int8>>(varyings.length);

    int i = 0;
    for(final varying in varyings) {
      varyingsPtr[i] = varying.toNativeUtf8().cast<Int8>();
      i = i + 1;
    }

    final result = gl.glTransformFeedbackVaryings(program, count, varyingsPtr, bufferMode);
    calloc.free(varyingsPtr);

    return result;
  }
  deleteTransformFeedback(int transformFeedback) {
    var _list = [transformFeedback];
    final ptr = calloc<Int32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteTransformFeedbacks(1, ptr);
    calloc.free(ptr);
  }
  isTransformFeedback(transformFeedback) {
    return gl.glIsTransformFeedback(transformFeedback);
  }
  beginTransformFeedback(primitiveMode) {
    return gl.glBeginTransformFeedback(primitiveMode);
  }
  endTransformFeedback() {
    return gl.glEndTransformFeedback();
  }
  pauseTransformFeedback() {
    return gl.glPauseTransformFeedback();
  }
  resumeTransformFeedback() {
    return gl.glResumeTransformFeedback();
  }
  getTransformFeedbackVarying(program, index) {
    int maxLen = 100;
    var length = calloc<Int32>();
    var size = calloc<Int32>();
    var type = calloc<Uint32>();
    var name = calloc<Int8>(maxLen);

    gl.glGetTransformFeedbackVarying(program, index, maxLen - 1, length, size, type, name);

    int _type = type.value;
    String _name = name.cast<Utf8>().toDartString();
    int _size = size.value;
    int _length = length.value;

    calloc.free(type);
    calloc.free(name);
    calloc.free(size);
    calloc.free(length);

    return ActiveInfo(_type, _name, _size);
  }


  invalidateFramebuffer(target, attachments) {
    // TODO  Failed to lookup symbol 'glInvalidateFramebuffer'
    // return gl.glInvalidateFramebuffer(target, attachments.length, attachments);
  }

  // GLint x,
  // GLint y,
  // GLsizei width,
  // GLsizei height,
  // GLenum format,
  // GLenum type,
  // void * data
  Uint8List readCurrentPixels(int x, int y, int width, int height) {
    int _len = width * height * 4;
    Pointer<Uint8> ptr = malloc.allocate<Uint8>(sizeOf<Uint8>() * _len);
    glReadPixels(x, y, width, height, RGBA, UNSIGNED_BYTE, ptr);

    final res = ptr.asTypedList(_len);

    calloc.free(ptr);

    return res;
  }

  int getIntegerv(int v0) {
    Pointer<Int32> ptr = calloc<Int32>();
    glGetIntegerv(v0, ptr);

    int _v = ptr.value;
    calloc.free(ptr);

    return _v;
  }
}

class Buffer {
  final int bufferId;
  Buffer._create(this.bufferId);
}

class ActiveInfo {
  String name;
  int size;
  int type;
  ActiveInfo(this.type, this.name, this.size);
}

toPointer(data) {
  if (data is Float32List ||
      data.runtimeType.toString() == "List<double>" ||
      data.runtimeType.toString() == "List<num>" ||
      data.runtimeType.toString() == "_GrowableList<double>") {
    final Pointer<Float> ptr = calloc<Float>(data.length);
    ptr.asTypedList(data.length).setAll(0, List<double>.from(data));
    return ptr;
  } else if (data is Uint8List) {
    final Pointer<Uint8> ptr = calloc<Uint8>(data.length);
    ptr.asTypedList(data.length).setAll(0, data);
    return ptr;
  } else if (data is List<int>) {
    final Pointer<Uint32> ptr = calloc<Uint32>(data.length);
    ptr.asTypedList(data.length).setAll(0, data.map((e) => e));
    return ptr;
  } else {
    throw (" flutter_gl OpenGLContextES.dart toPointer ${data.runtimeType} TODO ");
  }
}

getData(data) {
  if (data == null) {
    return nullptr;
  }

  if (data is NativeArray) {
    return data.data.cast<Void>();
  } else {
    return toPointer(data);
  }
}
