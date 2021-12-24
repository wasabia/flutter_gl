import 'dart:ffi';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:flutter_gl/flutter_gl.dart';

import 'OpenGL30Constant.dart';
import 'opengl_es_bindings/src/gles_bindings.dart';

getContext(Map<String, dynamic> parameters) {
  return OpenGLContextES(parameters);
}

class OpenGLContextES extends OpenGL30Constant {
  // TODO need free memory
  List<Pointer<Uint32>> _uint32pointers = [];

  late dynamic gl;

  OpenGLContextES(Map<String, dynamic> parameters) {
    print(" OpenGLContextES ");
    print(parameters);

    this.gl = parameters["gl"];
  }

  scissor(x, y, z, w) {
    return gl.glScissor(x, y, z, w);
  }

  viewport(x, y, z, w) {
    return gl.glViewport(x, y, z, w);
  }

  getShaderPrecisionFormat() {
    return {'rangeMin': 1, 'rangeMax': 1, 'precision': 1};
  }

  getExtension(String key) {
    Pointer _v = gl.glGetString(EXTENSIONS);
    print("OpenGLES getExtension key: ${key} _v: ${_v} ");
    
    String _vstr = _v.cast<Utf8>().toDartString();
    List<String> _extensions = _vstr.split(" ");

    return _extensions;
  }

  getString(int key) {
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
      GL_VIEWPORT
    ];

    if (_intValues.indexOf(key) >= 0) {
      final v = calloc<Int32>(4);
      gl.glGetIntegerv(key, v);
      return v.value;
    } else {
      throw (" OpenGL getParameter key: ${key} is not support ");
    }
  }

  createTexture() {
    final vPointer = calloc<Uint32>();
    gl.glGenTextures(1, vPointer);
    int _v = vPointer.value;
    calloc.free(vPointer);
    return _v;
  }

  genTextures(v0, v1) {
    return gl.glGenTextures(v0, v1);
  }

  bindTexture(type, texture) {
    return gl.glBindTexture(type, texture);
  }

  bindTexture2(texture) {
    return gl.glBindTexture(TEXTURE_2D, texture);
  }


  activeTexture(v0) {
    return gl.glActiveTexture(v0);
  }

  texParameteri(v0, v1, v2) {
    return gl.glTexParameteri(v0, v1, v2);
  }

  texImage2D(target, level, internalformat, width, height, border, format, type,
      data) {
    if(data is NativeArray) {
      textImage2DNative(target, level, internalformat, width, height, border, format, type,
      data);
    } else {
      textImage2DNormal(target, level, internalformat, width, height, border, format, type,
      data);
    }
  }

  textImage2DNative(target, level, internalformat, width, height, border, format, type,
      NativeArray data) {
    var nativeBuffer = data.data;
    gl.glTexImage2D(target, level, internalformat, width, height,
      border, format, type, nativeBuffer.cast<Void>());
  }

  textImage2DNormal(target, level, internalformat, width, height, border, format, type,
      data) {
    Pointer<Int8> nativeBuffer;
    if (data != null) {
      nativeBuffer = calloc<Int8>(data.length);
      nativeBuffer.asTypedList(data.length).setAll(0, data);
      gl.glTexImage2D(target, level, internalformat, width, height,
        border, format, type, nativeBuffer.cast<Void>());
      calloc.free(nativeBuffer);
    } else {
      gl.glTexImage2D(target, level, internalformat, width, height,
        border, format, type, nullptr);
    }
  }



  texImage2D_NOSIZE(target, level, internalformat, format, type, data) {
    if(data is NativeArray) {
      texImage2D_NOSIZENative(target, level, internalformat, format, type, data);
    } else {
      texImage2D_NOSIZENormal(target, level, internalformat, format, type, data);
    }
  }

  texImage2D_NOSIZENormal(target, level, internalformat, format, type, data) {
    Pointer<Int8> nativeBuffer;
    if (data != null) {
      nativeBuffer = calloc<Int8>(data.length);
      nativeBuffer.asTypedList(data.length).setAll(0, data);
      gl.texImage2D(target, level, internalformat, format, type, nativeBuffer.cast<Void>());
      calloc.free(nativeBuffer);
    } else {
      gl.texImage2D(target, level, internalformat, format, type, nullptr);
    }

    return ;
  }

  texImage2D_NOSIZENative(target, level, internalformat, format, type, data) {
    var nativeBuffer = data.data;
    return gl.texImage2D(target, level, internalformat, format, type, nativeBuffer.cast<Void>());
  }

  texImage3D(int target, int level, int internalformat, int width, int height, int depth, int border,
      int format, int type, data) {
    if(data is NativeArray) {
      texImage3DNative(target, level, internalformat, width, height, depth, border, format, type, data);
    } else {
      texImage3DNormal(target, level, internalformat, width, height, depth, border, format, type, data);
    }
  }

  texImage3DNative(int target, int level, int internalformat, int width, int height, int depth, int border,
      int format, int type, NativeArray data) {
    var nativeBuffer = data.data;
    gl.glTexImage3D(target, level, internalformat, width, height, depth, border,
    format, type, nativeBuffer.cast<Void>());
  }

  texImage3DNormal(int target, int level, int internalformat, int width, int height, int depth, int border,
      int format, int type, data) {
    Pointer<Int8> nativeBuffer;
    if (data != null) {
      nativeBuffer = calloc<Int8>(data.length);
      nativeBuffer.asTypedList(data.length).setAll(0, data);
      gl.glTexImage3D(target, level, internalformat, width, height, depth, border,
      format, type, nativeBuffer.cast<Void>());
      calloc.free(nativeBuffer);
    } else {
      gl.glTexImage3D(target, level, internalformat, width, height, depth, border,
      format, type, nullptr);
    }
  }

  depthFunc(v0) {
    return gl.glDepthFunc(v0);
  }

  depthMask(bool v0) {
    return gl.glDepthMask(v0 ? 1 : 0);
  }

  enable(v0) {
    return gl.glEnable(v0);
  }

  disable(v0) {
    return gl.glDisable(v0);
  }

  blendEquation(v0) {
    return gl.glBlendEquation(v0);
  }

  useProgram(v0) {
    return gl.glUseProgram(v0);
  }

  blendFuncSeparate(v0, v1, v2, v3) {
    return gl.glBlendFuncSeparate(v0, v1, v2, v3);
  }

  blendFunc(v0, v1) {
    return gl.glBlendFunc(v0, v1);
  }

  blendEquationSeparate(var0, var1) {
    return gl.glBlendEquationSeparate(var0, var1);
  }

  frontFace(v0) {
    return gl.glFrontFace(v0);
  }

  cullFace(v0) {
    return gl.glCullFace(v0);
  }

  lineWidth(num v0) {
    return gl.glLineWidth(v0.toDouble());
  }

  polygonOffset(v0, v1) {
    return gl.glPolygonOffset(v0, v1);
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

  clearStencil(v0) {
    return gl.glClearStencil(v0);
  }

  clearDepth(num v0) {
    return gl.glClearDepthf(v0.toDouble());
  }

  colorMask(bool v0, bool v1, bool v2, bool v3) {
    return gl.glColorMask(v0 ? 1 : 0, v1 ? 1 : 0, v2 ? 1 : 0, v3 ? 1 : 0);
  }

  clearColor(num r, num g, num b, num a) {
    return gl.glClearColor(
        r.toDouble(), g.toDouble(), b.toDouble(), a.toDouble());
  }

  compressedTexImage2D(
      target, level, internalformat, width, height, border, imageSize, data) {
    return gl.texImage2D(
        target, level, internalformat, width, height, border, imageSize, data);
  }

  generateMipmap(v0) {
    return gl.glGenerateMipmap(v0);
  }

  deleteTexture(int v0) {

    var _texturesList = [v0];
    final ptr = calloc<Int32>(_texturesList.length);
    ptr.asTypedList(1).setAll(0, _texturesList);
    gl.glDeleteTextures(1, ptr);
    calloc.free(ptr);
  }

  deleteFramebuffer(int v0) {
    var _list = [v0];
    final ptr = calloc<Int32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteFramebuffers(1, ptr);
    calloc.free(ptr);
  }

  deleteRenderbuffer(int v0) {
    var _list = [v0];
    final ptr = calloc<Int32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteRenderbuffers(1, ptr);
    calloc.free(ptr);
  }

  texParameterf(v0, v1, v2) {
    return gl.glTexParameterf(v0, v1, v2);
  }

  pixelStorei(v0, v1) {
    return gl.glPixelStorei(v0, v1);
  }

  getContextAttributes() {
    return gl.getContextAttributes();
  }

  getProgramParameter(v0, v1) {
    final status = calloc<Int32>();
    gl.glGetProgramiv(v0, v1, status);
    final _v = status.value;
    calloc.free(status);
    return _v;
  }

  getActiveUniform(v0, v1) {
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

  getActiveAttrib(v0, v1) {
   
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

  getUniformLocation(v0, String name) {
    final locationName = name.toNativeUtf8();
    final location = gl.glGetUniformLocation(v0, locationName.cast<Int8>());
    calloc.free(locationName);
    return location;
  }

  clear(v0) {
    return gl.glClear(v0);
  }

  createBuffer() {
    Pointer<Uint32> bufferId = calloc<Uint32>();
    gl.glGenBuffers(1, bufferId);
    int _v = bufferId.value;
    calloc.free(bufferId);
    return Buffer._create(_v);
  }


  deleteBuffer(Buffer v0) {
    var _buffersList = [v0.bufferId];
    final ptr = calloc<Uint32>(_buffersList.length);
    ptr.asTypedList(1).setAll(0, _buffersList);
    gl.glDeleteBuffers(1, ptr);
    calloc.free(ptr);
  }


  bindBuffer(v0, v1) {
    return gl.glBindBuffer(v0, v1.bufferId);
  }

  bufferData(int target, int size, data, int usage) {
    if(data is NativeArray) {
      bufferDataNative(target, size, data, usage);
    } else {
      bufferDataNormal(target, size, data, usage);
    }
  }

  bufferDataNative(int target, int size, NativeArray data, int usage) {
    var dataPtr = data.data;
    gl.glBufferData(target, size, dataPtr.cast<Void>(), usage);
  }

  bufferDataNormal(int target, int size, data, int usage) {
    var nativeBuffer = toPointer(data);
    gl.glBufferData(target, size, nativeBuffer.cast<Void>(), usage);
    calloc.free(nativeBuffer);
  }

  bufferSubData(target, offset, data, srcOffset, length) {
    if(data is NativeArray) {
      bufferSubDataNative(target, offset, data, srcOffset, length);
    } else {
      bufferSubDataNormal(target, offset, data, srcOffset, length);
    }
  }

  bufferSubDataNormal(target, offset, data, srcOffset, length) {
    int size = length;
    var dataPtr = toPointer(data);
    gl.glBufferSubData(target, offset, size, dataPtr.cast<Void>());
  }

  bufferSubDataNative(target, offset, NativeArray data, srcOffset, length) {
    int size = length;
    gl.glBufferSubData(target, offset, size, data.data.cast<Void>());
  }

  vertexAttribPointer(int index, int size, int type, bool normalized, int stride, int offset) {
    var offsetPointer = Pointer<Void>.fromAddress(offset);
    gl.glVertexAttribPointer(index, size, type, normalized ? 1 : 0, stride, offsetPointer.cast<Void>());
  }

  drawArrays(v0, v1, v2) {
    return gl.glDrawArrays(v0, v1, v2);
  }

  bindFramebuffer(v0, v1) {
    return gl.glBindFramebuffer(v0, v1 ?? 0);
  }

  checkFramebufferStatus(v0) {
    return gl.glCheckFramebufferStatus(v0);
  }

  framebufferTexture2D(v0, v1, v2, v3, v4) {
    return gl.glFramebufferTexture2D(v0, v1, v2, v3, v4);
  }

  readPixels(int x, int y, int width, int height, int format, int type, data) {
    if(data is NativeArray)  {
      readPixelsNative(x, y, width, height, format, type, data);
    } else {
      readPixelsNormal(x, y, width, height, format, type, data);
    }
  }

  readPixelsNative(int x, int y, int width, int height, int format, int type, NativeArray data) {
    final dataPtr = data.data;
    gl.glReadPixels(x, y, width, height, format, type, dataPtr);
  }

  readPixelsNormal(int x, int y, int width, int height, int format, int type, Uint8List data) {
    final dataPtr = toPointer(data);
    gl.glReadPixels(x, y, width, height, format, type, dataPtr);
    Uint8List _data = (dataPtr as Pointer<Uint8>).asTypedList(data.length);
    data.setAll(0, _data);
    calloc.free(dataPtr);
  }

  copyTexImage2D(v0, v1, v2, v3, v4, v5, v6, v7) {
    print(" OpenGL copyTexImage2D TODO...  ");
  }

  texSubImage2D(target, level, x, y, width, height, format, type, Uint8List data) {
    final dataPtr = toPointer(data);
    gl.glTexSubImage2D(target, level, x, y, width, height, format, type, dataPtr.cast<Void>());
    calloc.free(dataPtr);
  }

  texSubImage2D2(x, y, width, height, Uint8List data) {
    final dataPtr = toPointer(data);
    gl.glTexSubImage2D(TEXTURE_2D, 0, x, y, width, height, RGBA, UNSIGNED_BYTE, dataPtr);
    calloc.free(dataPtr);
  }

  compressedTexSubImage2D(v0, v1, v2, v3, v4, v5, v6, v7) {
    print(" OpenGL compressedTexSubImage2D ...  ");
  }

  bindRenderbuffer(v0, v1) {
    return gl.glBindRenderbuffer(v0, v1 ?? 0);
  }

  renderbufferStorageMultisample(target, samples, internalformat, width, height) {
    return gl.glRenderbufferStorageMultisample(target, samples, internalformat, width, height);
  }

  renderbufferStorage(v0, v1, v2, v3) {
    return gl.glRenderbufferStorage(v0, v1, v2, v3);
  }

  framebufferRenderbuffer(v0, v1, v2, v3) {
    return gl.glFramebufferRenderbuffer(v0, v1, v2, v3);
  }

  createRenderbuffer() {
    final v = calloc<Uint32>();
    gl.glGenRenderbuffers(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  genRenderbuffers(v0, v1) {
    return gl.glGenRenderbuffers(v0, v1);
  }

  createFramebuffer() {
    final v = calloc<Uint32>();
    gl.glGenFramebuffers(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  genFramebuffers(v0, v1) {
    return gl.glGenFramebuffers(v0, v1);
  }

  blitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter) {
    return gl.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
  }

  createVertexArray() {
    final v = calloc<Uint32>();
    gl.glGenVertexArrays(1, v);
    int _v = v.value;
    calloc.free(v);
    return _v;
  }

  createProgram() {
    return gl.glCreateProgram();
  }

  attachShader(v0, v1) {
    return gl.glAttachShader(v0, v1);
  }

  isProgram(v0) {
    return gl.glIsProgram(v0);
  }

  bindAttribLocation(v0, v1, v2) {
    return gl.glBindAttribLocation(v0, v1, v2);
  }

  linkProgram(v0) {
    return gl.glLinkProgram(v0);
  }

  getProgramInfoLog(v0) {
    var infoLen = calloc<Int32>();

    gl.glGetProgramiv(v0, INFO_LOG_LENGTH, infoLen);

    int _len = infoLen.value;
    calloc.free(infoLen);


    String message = '';

    if (infoLen.value > 0) {
      final infoLog = calloc<Int8>(_len);
      gl.glGetProgramInfoLog(v0, _len, nullptr, infoLog);
      
      message = "\nError compiling shader:\n${infoLog.cast<Utf8>().toDartString()}";
      calloc.free(infoLog);
      return message;
    } else {
      return;
    }
  }

  getShaderInfoLog(v0) {
    final infoLen = calloc<Int32>();
    gl.glGetShaderiv(v0, INFO_LOG_LENGTH, infoLen);

    int _len = infoLen.value;
    calloc.free(infoLen);

    String message = '';
    if (infoLen.value > 1) {
      final infoLog = calloc<Int8>(_len);

      gl.glGetShaderInfoLog(v0, _len, nullptr, infoLog);
      message = "\nError compiling shader:\n${infoLog.cast<Utf8>().toDartString()}";

      calloc.free(infoLog);
      return message;
    }
  }

  getError() {
    return gl.glGetError();
  }

  deleteShader(v0) {
    return gl.glDeleteShader(v0);
  }

  deleteProgram(v0) {
    return gl.glDeleteProgram(v0);
  }

  bindVertexArray(v0) {
    return gl.glBindVertexArray(v0);
  }

  deleteVertexArray(int v0) {
    var _list = [v0];
    final ptr = calloc<Uint32>(_list.length);
    ptr.asTypedList(1).setAll(0, _list);
    gl.glDeleteVertexArrays(1, ptr);
    calloc.free(ptr);
  }

  enableVertexAttribArray(v0) {
    return gl.glEnableVertexAttribArray(v0);
  }

  disableVertexAttribArray(v0) {
    return gl.glDisableVertexAttribArray(v0);
  }

  vertexAttribIPointer(v0, v1, v2, v3, v4) {
    return gl.vertexAttribIPointer(v0, v1, v2, v3, v4);
  }

  vertexAttrib2fv(v0, v1) {
    return gl.vertexAttrib2fv(v0, v1);
  }

  vertexAttrib3fv(v0, v1) {
    return gl.glVertexAttrib3fv(v0, v1);
  }

  vertexAttrib4fv(v0, v1) {
    return gl.glVertexAttrib4fv(v0, v1);
  }

  vertexAttrib1fv(v0, v1) {
    return gl.glVertexAttrib1fv(v0, v1);
  }

  drawElements(int mode, int count, int type, int offset) {
    var offSetPointer = Pointer<Void>.fromAddress(offset);
    gl.glDrawElements(mode, count, type, offSetPointer.cast<Void>());
    calloc.free(offSetPointer);
    return;
  }

  drawBuffers(buffers) {
   
    final ptr = calloc<Uint32>(buffers.length);
    ptr.asTypedList(buffers.length).setAll(0, List<int>.from(buffers));

    gl.glDrawBuffers(buffers.length, ptr);

    calloc.free(ptr);
    return;
  }

  drawElementsInstanced(mode, count, type, offset, instanceCount) {
    var offSetPointer = Pointer<Void>.fromAddress(offset);
    gl.glDrawElementsInstanced(mode, count, type, offSetPointer, instanceCount);
    calloc.free(offSetPointer);
    return;
  }

  createShader(type) {
    return gl.glCreateShader(type);
  }

  shaderSource(v0, String shaderSource) {
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

  getShaderParameter(v0, v1) {
    var _pointer = calloc<Int32>();
    gl.glGetShaderiv(v0, v1, _pointer);

    final _v = _pointer.value;
    calloc.free(_pointer);

    return _v;
  }

  getShaderSource(v0) {
    return gl.glGetShaderSource(v0);
  }

  uniformMatrix4fv(location, bool transpose, value) {
    if(value is NativeArray) {
      uniformMatrix4fvNative(location, transpose, value);
    } else {
      uniformMatrix4fvNormal(location, transpose, value);
    }
  }

  uniformMatrix4fvNormal(location, bool transpose, value) {
    var arrayPointer = toPointer(value);
    gl.glUniformMatrix4fv(location, value.length ~/ 16, transpose ? 1 : 0, arrayPointer);
    calloc.free(arrayPointer);
  }

  uniformMatrix4fvNative(location, bool transpose, NativeArray value) {
    gl.glUniformMatrix4fv(location, value.length ~/ 16, transpose ? 1 : 0, value.data);
  }


  uniform1i(v0, v1) {
    return gl.glUniform1i(v0, v1);
  }

  uniform3f(v0, num v1, num v2, num v3) {
    return gl.glUniform3f(v0, v1.toDouble(), v2.toDouble(), v3.toDouble());
  }

  uniform1fv(location, List<num> value) {
    print("OpenGLContextES uniform1fv value: ${value} ");
    var arrayPointer = toPointer(value);
    gl.glUniform1fv(location, value.length ~/ 1, arrayPointer);
    calloc.free(arrayPointer);
    return;
  }

  uniform3fv(location, value) {
    if(value is NativeArray) {
      uniform3fvNative(location, value);
    } else {
      uniform3fvNormal(location, value);
    }
  }

  uniform3fvNormal(location, List<num> value) {
    var arrayPointer = toPointer(value);
    gl.glUniform3fv(location, value.length ~/ 3, arrayPointer);
    calloc.free(arrayPointer);
  }

  uniform3fvNative(location, NativeArray value) {
    gl.glUniform3fv(location, value.length ~/ 3, value.data);
  }

  uniform1f(v0, num v1) {
    return gl.glUniform1f(v0, v1.toDouble());
  }

  uniformMatrix3fv(location, bool transpose, value) {
    if(value is NativeArray) {
      uniformMatrix3fvNative(location, transpose, value);
    } else {
      uniformMatrix3fvNormal(location, transpose, value);
    }
  }

  uniformMatrix3fvNormal(location, bool transpose, List<num> value) {
    var arrayPointer = toPointer(value);
    gl.glUniformMatrix3fv(
        location, value.length ~/ 9, transpose ? 1 : 0, arrayPointer);
    calloc.free(arrayPointer);
    return;
  }

  uniformMatrix3fvNative(location, bool transpose, NativeArray value) {
    
    gl.glUniformMatrix3fv(
        location, value.length ~/ 9, transpose ? 1 : 0, value.data);
  }

  getAttribLocation(program, String name) {
    final locationName = name.toNativeUtf8();
    final location = gl.glGetAttribLocation(program, locationName.cast<Int8>());
    calloc.free(locationName);
    return location;
  }

  uniform2f(v0, num v1, num v2) {
    return gl.glUniform2f(v0, v1.toDouble(), v2.toDouble());
  }

  uniform1iv(location, value) {
    int count = value.length;
    final valuePtr = calloc<Int32>(count);
    valuePtr.asTypedList(count).setAll(0, value);
    return gl.glUniform1iv(location, count, valuePtr);
  }

  uniform2iv(v0, v1) {
    return gl.glUniform2iv(v0, v1);
  }

  uniform3iv(v0, v1) {
    return gl.glUniform3iv(v0, v1);
  }

  uniform4iv(v0, v1) {
    return gl.glUniform4iv(v0, v1);
  }

  uniform4fv(location, List<num> value) {
    int count = value.length;
    final valuePtr = calloc<Float>(count);
    List<double> _values = value.map((e) => e.toDouble()).toList().cast();
    valuePtr.asTypedList(count).setAll(0, _values);

    // print("uniform4fv location: ${location} value: ${value} ");

    return gl.glUniform4fv(location, count ~/ 4, valuePtr.cast<Void>());
  }

  uniform4f(location, num v0, num v1, num v2, num v3) {
    return gl.glUniform4f(location, v0.toDouble(), v1.toDouble(), v2.toDouble(), v3.toDouble());
  }

  vertexAttribDivisor(index, divisor) {
    return gl.glVertexAttribDivisor(index, divisor);
  }

  flush() {
    return gl.glFlush();
  }

  finish() {
    return gl.glFinish();
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

  getIntegerv(int v0) {
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
  if(data is Float32List || data.runtimeType.toString() == "List<double>" || data.runtimeType.toString() == "_GrowableList<double>") {
    final ptr = calloc<Float>(data.length);
    ptr.asTypedList(data.length).setAll(0, data.toList());
    return ptr;

  } else if(data is Uint8List) {
    final ptr = calloc<Uint8>(data.length);
    ptr.asTypedList(data.length).setAll(0, data.map((e) => e));
    return ptr;
  } else {
    throw(" flutter_gl OpenGLContextES.dart toPointer ${data.runtimeType} TODO ");
  }
}
