import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:flutter_gl/native-array/index.dart';
import 'package:flutter_gl/openGL/opengl/OpenGLContextDesktop.dart';

import 'OpenGL30Constant.dart';
import 'opengl_es_bindings/src/gles_bindings.dart';

getContext(Map<String, dynamic> parameters) {
  if (Platform.isWindows) {
    return OpenGLContextDesktop(parameters);
  } else {
    return OpenGLContextES(parameters);
  }
}

class OpenGLContextES extends OpenGL30Constant {
  late dynamic gl;

  OpenGLContextES(Map<String, dynamic> parameters) {
    this.gl = parameters["gl"];
  }

  void scissor(int x, int y, int z, int w) {
    return gl.glScissor(x, y, z, w);
  }

  void viewport(int x, int y, int z, int w) {
    return gl.glViewport(x, y, z, w);
  }

  Map<String, int> getShaderPrecisionFormat() {
    return {'rangeMin': 1, 'rangeMax': 1, 'precision': 1};
  }

  List<String> getExtension(String key) {
    if (Platform.isMacOS) {
      return getExtensionMacos(key);
    }

    Pointer _v = gl.glGetString(EXTENSIONS);

    String _vstr = _v.cast<Utf8>().toDartString();
    List<String> _extensions = _vstr.split(" ");

    return _extensions;
  }

  List<String> getExtensionMacos(String key) {
    List<String> _extensions = [];
    var nExtension = getIntegerv(NUM_EXTENSIONS);
    for (int i = 0; i < nExtension; i++) {
      _extensions.add(getStringi(GL_EXTENSIONS, i));
    }

    return _extensions;
  }

  String getStringi(int key, int index) {
    Pointer _v = gl.glGetStringi(key, index);
    return _v.cast<Utf8>().toDartString();
  }

  String getString(int key) {
    Pointer _v = gl.glGetString(key);
    return _v.cast<Utf8>().toDartString();
  }

  getParameter(key) {
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
      GL_SCISSOR_BOX,
      GL_VIEWPORT,
      MAX_TEXTURE_MAX_ANISOTROPY_EXT
    ];

    if (_intValues.indexOf(key) >= 0) {
      final v = calloc<Int32>(4);
      gl.glGetIntegerv(key, v);
      return v.value;
    } else {
      throw (" OpenGL getParameter key: ${key} is not support ");
    }
  }

  int createTexture() {
    final vPointer = calloc<Uint32>();
    gl.glGenTextures(1, vPointer);
    int _v = vPointer.value;
    calloc.free(vPointer);
    return _v;
  }

  void genTextures(int v0, int v1) {
    return gl.glGenTextures(v0, v1);
  }

  void bindTexture(int type, int texture) {
    return gl.glBindTexture(type, texture);
  }

  void bindTexture2(int texture) {
    return gl.glBindTexture(TEXTURE_2D, texture);
  }

  void activeTexture(int v0) {
    return gl.glActiveTexture(v0);
  }

  void texParameteri(int v0, int v1, int v2) {
    return gl.glTexParameteri(v0, v1, v2);
  }

  void texImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type,
     NativeArray? data) {
    return gl.glTexImage2D(target, level, internalformat, width, height, border,
        format, type, (data?.data ?? nullptr).cast<Void>());
  }

  void texImage2D_NOSIZE(int target, int level, int internalformat, int format, int type, NativeArray data) {
    return gl.texImage2D(target, level, internalformat, format, type,
        data.data.cast<Void>());
  }

  void texImage3D(int target, int level, int internalformat, int width, int height,
      int depth, int border, int format, int type, NativeArray data) {
    gl.glTexImage3D(target, level, internalformat, width, height, depth, border,
        format, type, data.data.cast<Void>());
  }

  void depthFunc(int v0) {
    return gl.glDepthFunc(v0);
  }

  void depthMask(bool v0) {
    return gl.glDepthMask(v0 ? 1 : 0);
  }

  void enable(int v0) {
    return gl.glEnable(v0);
  }

  void disable(int v0) {
    return gl.glDisable(v0);
  }

  void blendEquation(int v0) {
    return gl.glBlendEquation(v0);
  }

  void useProgram(int v0) {
    return gl.glUseProgram(v0);
  }

  void blendFuncSeparate(int v0, int v1, int v2, int v3) {
    return gl.glBlendFuncSeparate(v0, v1, v2, v3);
  }

  void blendFunc(int v0, int v1) {
    return gl.glBlendFunc(v0, v1);
  }

  void blendEquationSeparate(int var0, int var1) {
    return gl.glBlendEquationSeparate(var0, var1);
  }

  void frontFace(int v0) {
    return gl.glFrontFace(v0);
  }

  void cullFace(int v0) {
    return gl.glCullFace(v0);
  }

  void lineWidth(double v0) {
    return gl.glLineWidth(v0);
  }

  void polygonOffset(int v0, int v1) {
    return gl.glPolygonOffset(v0, v1);
  }

  void stencilMask(int v0) {
    return gl.glStencilMask(v0);
  }

  void stencilFunc(int v0, int v1, int v2) {
    return gl.glStencilFunc(v0, v1, v2);
  }

  void stencilOp(int v0, int v1, int v2) {
    return gl.glStencilOp(v0, v1, v2);
  }

  void clearStencil(int v0) {
    return gl.glClearStencil(v0);
  }

  void clearDepth(int v0) {
    return gl.glClearDepthf(v0.toDouble());
  }

  void colorMask(bool v0, bool v1, bool v2, bool v3) {
    return gl.glColorMask(v0 ? 1 : 0, v1 ? 1 : 0, v2 ? 1 : 0, v3 ? 1 : 0);
  }

  void clearColor(double r, double g, double b, double a) {
    return gl.glClearColor(r, g, b, a);
  }

  void compressedTexImage2D(
      int target, int level, int internalformat, int width, int height, int border, int imageSize, NativeArray data) {
    return gl.texImage2D(
        target, level, internalformat, width, height, border, imageSize, data.data.cast<Void>());
  }

  void generateMipmap(int v0) {
    return gl.glGenerateMipmap(v0);
  }

  void deleteTexture(int v0) {
    var _texturesList = [v0];
    final ptr = calloc<Int32>(_texturesList.length);
    ptr.asTypedList(1).setAll(0, _texturesList);
    gl.glDeleteTextures(1, ptr);
    calloc.free(ptr);
  }

  void deleteFramebuffer(int v0) {
    var _list = [v0];
    final ptr = calloc<Int32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteFramebuffers(1, ptr);
    calloc.free(ptr);
  }

  void deleteRenderbuffer(int v0) {
    var _list = [v0];
    final ptr = calloc<Int32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteRenderbuffers(1, ptr);
    calloc.free(ptr);
  }

  void texParameterf(int target, int pname, double param) {
    return gl.glTexParameterf(target, pname, param);
  }

  void pixelStorei(int v0, int v1) {
    return gl.glPixelStorei(v0, v1);
  }

  getContextAttributes() {
    return gl.getContextAttributes();
  }

  getProgramParameter(int v0, int v1) {
    final status = calloc<Int32>();
    gl.glGetProgramiv(v0, v1, status);
    final _v = status.value;
    calloc.free(status);
    return _v;
  }

  ActiveInfo getActiveUniform(int v0, int v1) {
    var length = calloc<Int32>();
    var size = calloc<Int32>();
    var type = calloc<Uint32>();
    var name = calloc<Int8>(100);

    gl.glGetActiveUniform(v0, v1, 99, length, size, type, name);

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

  ActiveInfo getActiveAttrib(int v0, int v1) {
    var length = calloc<Int32>();
    var size = calloc<Int32>();
    var type = calloc<Uint32>();
    var name = calloc<Int8>(100);

    gl.glGetActiveAttrib(v0, v1, 99, length, size, type, name);

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

  int getUniformLocation(v0, String name) {
    final locationName = name.toNativeUtf8();
    final location = gl.glGetUniformLocation(v0, locationName.cast<Int8>());
    calloc.free(locationName);
    return location;
  }

  void clear(v0) {
    return gl.glClear(v0);
  }

  Buffer createBuffer() {
    Pointer<Uint32> bufferId = calloc<Uint32>();
    gl.glGenBuffers(1, bufferId);
    int _v = bufferId.value;
    calloc.free(bufferId);
    return Buffer._create(_v);
  }

  void deleteBuffer(Buffer v0) {
    var _buffersList = [v0.bufferId];
    final ptr = calloc<Uint32>(_buffersList.length);
    ptr.asTypedList(1).setAll(0, _buffersList);
    gl.glDeleteBuffers(1, ptr);
    calloc.free(ptr);
  }

  void bindBuffer(v0, v1) {
    return gl.glBindBuffer(v0, v1.bufferId);
  }

  void bufferData(int target, int size, data, int usage) {
    return gl.glBufferData(target, size, getData(data).cast<Void>(), usage);
  }

  void bufferSubData(int target, int offset, NativeArray data, int srcOffset, int length) {
    gl.glBufferSubData(target, offset, length, data.data.cast<Void>());
  }

  void vertexAttribPointer(
      int index, int size, int type, bool normalized, int stride, int offset) {
    var offsetPointer = Pointer<Void>.fromAddress(offset);
    gl.glVertexAttribPointer(index, size, type, normalized ? 1 : 0, stride,
        offsetPointer.cast<Void>());
  }

  void drawArrays(int v0, int v1, int v2) {
    return gl.glDrawArrays(v0, v1, v2);
  }

  void drawArraysInstanced(int v0, int v1, int v2, int v3) {
    return gl.glDrawArraysInstanced(v0, v1, v2, v3);
  }

  void bindFramebuffer(int v0, int? v1) {
    return gl.glBindFramebuffer(v0, v1 ?? 0);
  }

  void checkFramebufferStatus(int v0) {
    return gl.glCheckFramebufferStatus(v0);
  }

  void framebufferTexture2D(int v0, int v1, int v2, int v3, int v4) {
    return gl.glFramebufferTexture2D(v0, v1, v2, v3, v4);
  }

  void readPixels(int x, int y, int width, int height, int format, int type, NativeArray data) {
    // if (data is NativeArray) {
      readPixelsNative(x, y, width, height, format, type, data.data.cast<Void>());
    // } else {
    //   readPixelsNormal(x, y, width, height, format, type, data);
    // }
  }

  void readPixelsNative(int x, int y, int width, int height, int format, int type,
      NativeArray data) {
    final dataPtr = data.data;
    gl.glReadPixels(x, y, width, height, format, type, dataPtr);
  }

  void readPixelsNormal(int x, int y, int width, int height, int format, int type,
      Uint8List data) {
    final dataPtr = toPointer(data);
    gl.glReadPixels(x, y, width, height, format, type, dataPtr);
    Uint8List _data = (dataPtr as Pointer<Uint8>).asTypedList(data.length);
    data.setAll(0, _data);
    calloc.free(dataPtr);
  }

  void copyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border) {
    return gl.glCopyTexImage2D(
        target, level, internalformat, x, y, width, height, border);
  }

  void texSubImage2D(int target, int level, int x, int y, int width, int height, int format, int type, NativeArray data) {
    gl.glTexSubImage2D(
        target, level, x, y, width, height, format, type, data.data.cast<Void>());
  }

  void texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth,
      format, type, pixels) {
    return gl.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width.toInt(),
        height.toInt(), depth, format, type, getData(pixels).cast<Void>());
  }

  void compressedTexSubImage2D(target, level, xoffset, yoffset, width, height,
      format, imageSize, pixels) {
    return gl.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width,
        height, format, imageSize, pixels);
  }

  void bindRenderbuffer(int v0, int? v1) {
    return gl.glBindRenderbuffer(v0, v1 ?? 0);
  }

  void renderbufferStorageMultisample(
      target, samples, internalformat, int width, int height) {
    return gl.glRenderbufferStorageMultisample(
        target, samples, internalformat, width, height);
  }

  void renderbufferStorage(v0, v1, v2, v3) {
    return gl.glRenderbufferStorage(v0, v1, v2, v3);
  }

  void framebufferRenderbuffer(v0, v1, v2, v3) {
    return gl.glFramebufferRenderbuffer(v0, v1, v2, v3);
  }

  int createRenderbuffer() {
    final v = calloc<Uint32>();
    gl.glGenRenderbuffers(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  void genRenderbuffers(v0, v1) {
    return gl.glGenRenderbuffers(v0, v1);
  }

  int createFramebuffer() {
    final v = calloc<Uint32>();
    gl.glGenFramebuffers(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  void genFramebuffers(v0, v1) {
    return gl.glGenFramebuffers(v0, v1);
  }

  void blitFramebuffer(
      srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter) {
    return gl.glBlitFramebuffer(
        srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
  }

  int createVertexArray() {
    final v = calloc<Uint32>();
    gl.glGenVertexArrays(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  int createProgram() {
    return gl.glCreateProgram();
  }

  void attachShader(v0, v1) {
    return gl.glAttachShader(v0, v1);
  }

  bool isProgram(int v0) {
    return gl.glIsProgram(v0);
  }

  void bindAttribLocation(program, index, String name) {
    final _name = name.toNativeUtf8();
    gl.glBindAttribLocation(program, index, _name.cast<Int8>());
    calloc.free(_name);
  }

  void linkProgram(v0) {
    return gl.glLinkProgram(v0);
  }

  String getProgramInfoLog(v0) {
    var infoLen = calloc<Int32>();

    gl.glGetProgramiv(v0, INFO_LOG_LENGTH, infoLen);

    int _len = infoLen.value;
    calloc.free(infoLen);

    String message = '';

    if (_len > 0) {
      final infoLog = calloc<Int8>(_len);
      gl.glGetProgramInfoLog(v0, _len, nullptr, infoLog);

      message =
          "\nError compiling shader:\n${infoLog.cast<Utf8>().toDartString()}";
      calloc.free(infoLog);
      return message;
    } else {
      return "";
    }
  }

  String getShaderInfoLog(v0) {
    final infoLen = calloc<Int32>();
    gl.glGetShaderiv(v0, INFO_LOG_LENGTH, infoLen);

    int _len = infoLen.value;
    calloc.free(infoLen);

    String message = '';
    if (_len > 1) {
      final infoLog = calloc<Int8>(_len);

      gl.glGetShaderInfoLog(v0, _len, nullptr, infoLog);
      message =
          "\nError compiling shader:\n${infoLog.cast<Utf8>().toDartString()}";

      calloc.free(infoLog);
    }
    return message;
  }

  getError() {
    return gl.glGetError();
  }

  void deleteShader(v0) {
    return gl.glDeleteShader(v0);
  }

  void deleteProgram(v0) {
    return gl.glDeleteProgram(v0);
  }

  void bindVertexArray(v0) {
    return gl.glBindVertexArray(v0);
  }

  void deleteVertexArray(int v0) {
    var _list = [v0];
    final ptr = calloc<Uint32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteVertexArrays(1, ptr);
    calloc.free(ptr);
  }

  void enableVertexAttribArray(v0) {
    return gl.glEnableVertexAttribArray(v0);
  }

  void disableVertexAttribArray(v0) {
    return gl.glDisableVertexAttribArray(v0);
  }

  void vertexAttribIPointer(index, size, type, stride, pointer) {
    var _pointer = calloc<Int32>();
    _pointer.value = pointer;
    gl.glVertexAttribIPointer(index, size, type, stride, _pointer.cast<Void>());
  }

  void vertexAttrib2fv(v0, v1) {
    return gl.glVertexAttrib2fv(v0, v1);
  }

  void vertexAttrib3fv(v0, v1) {
    return gl.glVertexAttrib3fv(v0, v1);
  }

  void vertexAttrib4fv(v0, v1) {
    return gl.glVertexAttrib4fv(v0, v1);
  }

  void vertexAttrib1fv(v0, v1) {
    return gl.glVertexAttrib1fv(v0, v1);
  }

  void drawElements(int mode, int count, int type, int offset) {
    var offSetPointer = Pointer<Void>.fromAddress(offset);
    gl.glDrawElements(mode, count, type, offSetPointer.cast<Void>());
    calloc.free(offSetPointer);
  }

  void drawBuffers(buffers) {
    final ptr = calloc<Uint32>(buffers.length);
    ptr.asTypedList(buffers.length).setAll(0, List<int>.from(buffers));

    gl.glDrawBuffers(buffers.length, ptr);

    // calloc.free(ptr);
    // return;
  }

  void drawElementsInstanced(mode, count, type, offset, instanceCount) {
    var offSetPointer = Pointer<Void>.fromAddress(offset);
    gl.glDrawElementsInstanced(mode, count, type, offSetPointer, instanceCount);
    calloc.free(offSetPointer);
    return;
  }

  createShader(type) {
    return gl.glCreateShader(type);
  }

  void shaderSource(v0, String shaderSource) {
    var sourceString = shaderSource.toNativeUtf8();
    var arrayPointer = calloc<Pointer<Int8>>();
    arrayPointer.value = Pointer.fromAddress(sourceString.address);
    gl.glShaderSource(v0, 1, arrayPointer, nullptr);
    calloc.free(arrayPointer);
    calloc.free(sourceString);
  }

  compileShader(v0) {
    return gl.glCompileShader(v0);
  }

  int getShaderParameter(v0, v1) {
    var _pointer = calloc<Int32>();
    gl.glGetShaderiv(v0, v1, _pointer);

    final _v = _pointer.value;
    calloc.free(_pointer);

    return _v;
  }

  getShaderSource(v0) {
    return gl.glGetShaderSource(v0);
  }

  void uniformMatrix4fv(location, bool transpose, value) {
    if (value is NativeArray) {
      uniformMatrix4fvNative(location, transpose, value);
    } else {
      uniformMatrix4fvNormal(location, transpose, value);
    }
  }

  void uniformMatrix4fvNormal(location, bool transpose, value) {
    var arrayPointer = toPointer(value);
    gl.glUniformMatrix4fv(
        location, value.length ~/ 16, transpose ? 1 : 0, arrayPointer);
    calloc.free(arrayPointer);
  }

  void uniformMatrix4fvNative(location, bool transpose, NativeArray value) {
    gl.glUniformMatrix4fv(
        location, value.length ~/ 16, transpose ? 1 : 0, value.data);
  }

  void uniform1i(v0, v1) {
    return gl.glUniform1i(v0, v1);
  }

  void uniform3f(v0, num v1, num v2, num v3) {
    return gl.glUniform3f(v0, v1.toDouble(), v2.toDouble(), v3.toDouble());
  }

  void uniform1fv(location, List<num> value) {
    var arrayPointer = toPointer(value);
    gl.glUniform1fv(location, value.length ~/ 1, arrayPointer);
    calloc.free(arrayPointer);
    return;
  }

  void uniform2fv(location, NativeArray value) {
    return gl.glUniform2fv(location, value.length ~/ 2, value.data);
  }

  void uniform3fv(location, value) {
    if (value is NativeArray) {
      uniform3fvNative(location, value);
    } else {
      uniform3fvNormal(location, value);
    }
  }

  void uniform3fvNormal(location, List<num> value) {
    var arrayPointer = toPointer(value);
    gl.glUniform3fv(location, value.length ~/ 3, arrayPointer);
    calloc.free(arrayPointer);
  }

  void uniform3fvNative(location, NativeArray value) {
    gl.glUniform3fv(location, value.length ~/ 3, value.data);
  }

  void uniform1f(v0, num v1) {
    return gl.glUniform1f(v0, v1.toDouble());
  }

  void uniformMatrix3fv(location, bool transpose, value) {
    if (value is NativeArray) {
      uniformMatrix3fvNative(location, transpose, value);
    } else {
      uniformMatrix3fvNormal(location, transpose, value);
    }
  }

  void uniformMatrix3fvNormal(location, bool transpose, List<num> value) {
    var arrayPointer = toPointer(value);
    gl.glUniformMatrix3fv(
        location, value.length ~/ 9, transpose ? 1 : 0, arrayPointer);
    calloc.free(arrayPointer);
    return;
  }

  void uniformMatrix3fvNative(location, bool transpose, NativeArray value) {
    gl.glUniformMatrix3fv(
        location, value.length ~/ 9, transpose ? 1 : 0, value.data);
  }

  getAttribLocation(program, String name) {
    final locationName = name.toNativeUtf8();
    final location = gl.glGetAttribLocation(program, locationName.cast<Int8>());
    calloc.free(locationName);
    return location;
  }

  void uniform2f(v0, num v1, num v2) {
    return gl.glUniform2f(v0, v1.toDouble(), v2.toDouble());
  }

  void uniform1iv(location, value) {
    int count = value.length;
    final valuePtr = calloc<Int32>(count);
    valuePtr.asTypedList(count).setAll(0, value);
    return gl.glUniform1iv(location, count, valuePtr);
  }

  void uniform2iv(int location, int count, List<num> value) {
    int count = 2;
    final valuePtr = calloc<Int32>(count);
    valuePtr[0] = value[0].toInt();
    valuePtr[1] = value[1].toInt();

    return gl.glUniform2iv(location, count, valuePtr);
  }

  void uniform3iv(v0, v1) {
    return gl.glUniform3iv(v0, v1);
  }

  void uniform4iv(v0, v1) {
    return gl.glUniform4iv(v0, v1);
  }

  void uniform4fv(location, NativeArray value) {
    return gl.glUniform4fv(location, value.length ~/ 4, value.data.cast<Void>());
  }

  void uniform4f(location, num v0, num v1, num v2, num v3) {
    return gl.glUniform4f(
        location, v0.toDouble(), v1.toDouble(), v2.toDouble(), v3.toDouble());
  }

  void vertexAttribDivisor(index, divisor) {
    return gl.glVertexAttribDivisor(index, divisor);
  }

  void flush() {
    return gl.glFlush();
  }

  void finish() {
    return gl.glFinish();
  }

  void texStorage2D(int target, int levels, int internalformat, int width, int height) {
    return gl.glTexStorage2D(target, levels, internalformat, width, height);
  }

  void texStorage3D(target, levels, internalformat, int width, int height, depth) {
    return gl.glTexStorage3D(
        target, levels, internalformat, width, height, depth);
  }

  void bindBufferBase(int target, int index, int buffer) {
    return gl.glBindBufferBase(target, index, buffer);
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


  void invalidateFramebuffer(target, attachments) {
    // TODO  Failed to lookup symbol 'glInvalidateFramebuffer'
    // return gl.glInvalidateFramebuffer(target, attachments.length, toPointer(List<int>.from(attachments)) );
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
    gl.glReadPixels(x, y, width, height, GL_RGBA, GL_UNSIGNED_BYTE, ptr);

    final res = ptr.asTypedList(_len);

    calloc.free(ptr);

    return res;
  }

  int getIntegerv(int v0) {
    Pointer<Int32> ptr = calloc<Int32>();
    gl.glGetIntegerv(v0, ptr);

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
    final ptr = calloc<Float>(data.length);
    ptr
        .asTypedList(data.length)
        .setAll(0, List<double>.from(data.map((e) => e.toDouble())));
    return ptr;
  } else if (data is Uint8List) {
    final ptr = calloc<Uint8>(data.length);
    ptr.asTypedList(data.length).setAll(0, data.map((e) => e));
    return ptr;
  } else if (data is List<int>) {
    final ptr = calloc<Uint32>(data.length);
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
