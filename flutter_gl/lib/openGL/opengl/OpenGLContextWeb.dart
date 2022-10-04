import 'dart:typed_data';
import 'package:flutter_gl/native-array/index.dart';

import 'OpenGL30Constant.dart';

getContext(Map<String, dynamic> parameters) {
  return OpenGLContextWeb(parameters);
}

class OpenGLContextWeb extends OpenGL30Constant {
  late dynamic gl;
  bool debug = true;

  OpenGLContextWeb(Map<String, dynamic> parameters) {
    print(" OpenGLContextWeb ");
    print(parameters);

    this.gl = parameters["gl"];
  }

  scissor(x, y, z, w) {
    return gl.scissor(x, y, z, w);
  }

  viewport(x, y, z, w) {
    return gl.viewport(x, y, z, w);
  }

  getShaderPrecisionFormat() {
    return {'rangeMin': 1, 'rangeMax': 1, 'precision': 1};
  }

  getExtension(String key) {
    return gl.getExtension(key);
  }

  getParameter(key) {
    return gl.getParameter(key);
  }

  getString(String key) {
    return gl.getParameter(key);
    ;
  }

  createTexture() {
    return gl.createTexture();
  }

  bindTexture(type, texture) {
    return gl.bindTexture(type, texture);
  }

  drawElementsInstanced(mode, count, type, offset, instanceCount) {
    return gl.drawElementsInstanced(mode, count, type, offset, instanceCount);
  }

  activeTexture(v0) {
    return gl.activeTexture(v0);
  }

  texParameteri(v0, v1, v2) {
    return gl.texParameteri(v0, v1, v2);
  }

  texImage2D(target, level, internalformat, width, height, border, format, type,
      data) {
    return gl.texImage2D(target, level, internalformat, width, height, border,
        format, type, getData(data));
  }

  texImage2D_NOSIZE(target, level, internalformat, format, type, data) {
    return gl.texImage2D(
        target, level, internalformat, format, type, getData(data));
  }

  texImage3D(target, level, internalformat, width, height, depth, border,
      format, type, data) {
    return gl.texImage3D(target, level, internalformat, width, height, depth,
        border, format, type, getData(data));
  }

  depthFunc(v0) {
    return gl.depthFunc(v0);
  }

  depthMask(bool v0) {
    return gl.depthMask(v0);
  }

  enable(v0) {
    return gl.enable(v0);
  }

  disable(v0) {
    return gl.disable(v0);
  }

  blendEquation(v0) {
    return gl.blendEquation(v0);
  }

  useProgram(v0) {
    return gl.useProgram(v0);
  }

  blendFuncSeparate(v0, v1, v2, v3) {
    return gl.blendFuncSeparate(v0, v1, v2, v3);
  }

  blendFunc(v0, v1) {
    return gl.blendFunc(v0, v1);
  }

  blendEquationSeparate(var0, var1) {
    return gl.blendEquationSeparate(var0, var1);
  }

  frontFace(v0) {
    return gl.frontFace(v0);
  }

  cullFace(v0) {
    return gl.cullFace(v0);
  }

  lineWidth(v0) {
    return gl.lineWidth(v0);
  }

  polygonOffset(v0, v1) {
    return gl.polygonOffset(v0, v1);
  }

  stencilMask(v0) {
    return gl.stencilMask(v0);
  }

  stencilFunc(v0, v1, v2) {
    return gl.stencilFunc(v0, v1, v2);
  }

  stencilOp(v0, v1, v2) {
    return gl.stencilOp(v0, v1, v2);
  }

  clearStencil(v0) {
    return gl.clearStencil(v0);
  }

  clearDepth(num v0) {
    return gl.clearDepth(v0);
  }

  colorMask(bool v0, bool v1, bool v2, bool v3) {
    return gl.colorMask(v0, v1, v2, v3);
  }

  clearColor(num r, num g, num b, num a) {
    return gl.clearColor(r, g, b, a);
  }

  compressedTexImage2D(
      target, level, internalformat, width, height, border, imageSize, data) {
    return gl.texImage2D(
        target, level, internalformat, width, height, border, imageSize, data);
  }

  generateMipmap(v0) {
    return gl.generateMipmap(v0);
  }

  deleteTexture(v0) {
    return gl.deleteTexture(v0);
  }

  deleteFramebuffer(v0) {
    return gl.deleteFramebuffer(v0);
  }

  deleteRenderbuffer(v0) {
    return gl.deleteRenderbuffer(v0);
  }

  void texParameterf(int target, int pname, double param) {
    return gl.texParameterf(target, pname, param);
  }

  pixelStorei(v0, v1) {
    return gl.pixelStorei(v0, v1);
  }

  getContextAttributes() {
    return gl.getContextAttributes();
  }

  getProgramParameter(v0, v1) {
    return gl.getProgramParameter(v0, v1);
  }

  getActiveUniform(v0, v1) {
    return gl.getActiveUniform(v0, v1);
  }

  getActiveAttrib(v0, v1) {
    return gl.getActiveAttrib(v0, v1);
  }

  getUniformLocation(v0, String name) {
    return gl.getUniformLocation(v0, name);
  }

  clear(v0) {
    return gl.clear(v0);
  }

  createBuffer() {
    return gl.createBuffer();
  }

  bindBuffer(v0, v1) {
    return gl.bindBuffer(v0, v1);
  }

  bufferData(int target, int size, data, int usage) {
    return gl.bufferData(target, getData(data), usage);
  }

  vertexAttribPointer(
      int index, int size, int type, bool normalized, int stride, int offset) {
    return gl.vertexAttribPointer(
        index, size, type, normalized, stride, offset);
  }

  drawArrays(v0, v1, v2) {
    return gl.drawArrays(v0, v1, v2);
  }

  drawArraysInstanced(v0, v1, v2, v3) {
    return gl.drawArraysInstanced(v0, v1, v2, v3);
  }

  bindFramebuffer(v0, v1) {
    return gl.bindFramebuffer(v0, v1);
  }

  checkFramebufferStatus(v0) {
    return gl.checkFramebufferStatus(v0);
  }

  framebufferTexture2D(v0, v1, v2, v3, v4) {
    return gl.framebufferTexture2D(v0, v1, v2, v3, v4);
  }

  readPixels(int x, int y, int width, int height, int format, int type, data) {
    gl.readPixels(x, y, width, height, format, type, getData(data));
  }

  isProgram(v0) {
    return gl.isProgram(v0);
  }

  copyTexImage2D(target, level, internalformat, x, y, width, height, border) {
    return gl.copyTexImage2D(
        target, level, internalformat, x, y, width, height, border);
  }

  texSubImage2D(
      target, level, xoffset, yoffset, width, height, format, type, data) {
    gl.texSubImage2D(target, level, xoffset, yoffset, width, height, format,
        type, getData(data));
  }

  texSubImage2D_NOSIZE(target, level, xoffset, yoffset, format, type, data) {
    return gl.texSubImage2D(
        target, level, xoffset, yoffset, format, type, data);
  }

  texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth,
      format, type, pixels) {
    return gl.texSubImage3D(target, level, xoffset, yoffset, zoffset, width,
        height, depth, format, type, getData(pixels));
  }

  compressedTexSubImage2D(
      target, level, xoffset, yoffset, width, height, format, pixels) {
    return gl.compressedTexSubImage2D(
        target, level, xoffset, yoffset, width, height, format, pixels);
  }

  bindRenderbuffer(v0, v1) {
    return gl.bindRenderbuffer(v0, v1);
  }

  renderbufferStorageMultisample(
      target, samples, internalformat, width, height) {
    return gl.renderbufferStorageMultisample(
        target, samples, internalformat, width, height);
  }

  renderbufferStorage(v0, v1, v2, v3) {
    return gl.renderbufferStorage(v0, v1, v2, v3);
  }

  framebufferRenderbuffer(v0, v1, v2, v3) {
    return gl.framebufferRenderbuffer(v0, v1, v2, v3);
  }

  createRenderbuffer() {
    return gl.createRenderbuffer();
  }

  createFramebuffer() {
    return gl.createFramebuffer();
  }

  blitFramebuffer(
      srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter) {
    return gl.blitFramebuffer(
        srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
  }

  bufferSubData(target, dstByteOffset, srcData, srcOffset, length) {
    return gl.bufferSubData(target, dstByteOffset, getData(srcData));
  }

  createVertexArray() {
    return gl.createVertexArray();
  }

  createProgram() {
    return gl.createProgram();
  }

  attachShader(v0, v1) {
    return gl.attachShader(v0, v1);
  }

  bindAttribLocation(program, index, name) {
    return gl.bindAttribLocation(program, index, name);
  }

  linkProgram(v0) {
    return gl.linkProgram(v0);
  }

  getProgramInfoLog(v0) {
    return gl.getProgramInfoLog(v0);
  }

  getShaderInfoLog(v0) {
    return gl.getShaderInfoLog(v0);
  }

  getError() {
    return gl.getError();
  }

  deleteShader(v0) {
    return gl.deleteShader(v0);
  }

  deleteProgram(v0) {
    return gl.deleteProgram(v0);
  }

  deleteBuffer(v0) {
    return gl.deleteBuffer(v0);
  }

  bindVertexArray(v0) {
    return gl.bindVertexArray(v0);
  }

  deleteVertexArray(v0) {
    return gl.deleteVertexArray(v0);
  }

  enableVertexAttribArray(v0) {
    return gl.enableVertexAttribArray(v0);
  }

  disableVertexAttribArray(v0) {
    return gl.disableVertexAttribArray(v0);
  }

  vertexAttribIPointer(v0, v1, v2, v3, v4) {
    return gl.vertexAttribIPointer(v0, v1, v2, v3, v4);
  }

  vertexAttrib2fv(v0, v1) {
    return gl.vertexAttrib2fv(v0, v1);
  }

  vertexAttrib3fv(v0, v1) {
    return gl.vertexAttrib3fv(v0, v1);
  }

  vertexAttrib4fv(v0, v1) {
    return gl.vertexAttrib4fv(v0, v1);
  }

  vertexAttrib1fv(v0, v1) {
    return gl.vertexAttrib1fv(v0, v1);
  }

  drawElements(int mode, int count, int type, int offset) {
    return gl.drawElements(mode, count, type, offset);
  }

  drawBuffers(List<int> buffers) {
    return gl.drawBuffers(buffers);
  }

  createShader(type) {
    return gl.createShader(type);
  }

  shaderSource(v0, String shaderSource) {
    return gl.shaderSource(v0, shaderSource);
  }

  compileShader(v0) {
    return gl.compileShader(v0);
  }

  getShaderParameter(v0, v1) {
    return gl.getShaderParameter(v0, v1);
  }

  getShaderSource(v0) {
    return gl.getShaderSource(v0);
  }

  uniformMatrix4fv(location, bool transpose, value) {
    return gl.uniformMatrix4fv(location, transpose, getData(value));
  }

  uniform1i(v0, v1) {
    return gl.uniform1i(v0, v1);
  }

  uniform3f(v0, num v1, num v2, num v3) {
    return gl.uniform3f(v0, v1, v2, v3);
  }

  uniform4f(location, num v0, num v1, num v2, num v3) {
    return gl.uniform4f(location, v0, v1, v2, v3);
  }

  uniform1fv(location, value) {
    if(value is NativeArray) {
      gl.uniform1fv(location, value.data);
    } else {
      gl.uniform1fv(location, value);
    }
  }

  uniform2fv(location, NativeArray value) {
    return gl.uniform2fv(location, value.data);
  }

  uniform3fv(location, NativeArray value) {
    return gl.uniform3fv(location, value.data);
  }

  uniform1f(v0, num v1) {
    return gl.uniform1f(v0, v1);
  }

  uniformMatrix3fv(location, bool transpose, NativeArray value) {
    return gl.uniformMatrix3fv(location, transpose, value.data);
  }

  getAttribLocation(program, String name) {
    return gl.getAttribLocation(program, name);
  }

  uniform2f(v0, num v1, num v2) {
    return gl.uniform2f(v0, v1, v2);
  }

  uniform1iv(location, value) {
    return gl.uniform1iv(location, value);
  }

  uniform2iv(location, int count, value) {
    return gl.uniform2iv(location, value);
  }

  uniform3iv(v0, v1) {
    return gl.uniform3iv(v0, v1);
  }

  uniform4iv(v0, v1) {
    return gl.uniform4iv(v0, v1);
  }

  uniform4fv(v0, v1) {
    if(v1 is NativeArray) {
      return gl.uniform4fv(v0, v1.data);
    } else {
      return gl.uniform4fv(v0, v1);
    }
  }

  vertexAttribDivisor(index, divisor) {
    return gl.vertexAttribDivisor(index, divisor);
  }

  flush() {
    return gl.flush();
  }

  finish() {
    return gl.finish();
  }

  texStorage2D(target, levels, internalformat, width, height) {
    return gl.texStorage2D(target, levels, internalformat, width, height);
  }

  texStorage3D(target, levels, internalformat, width, height, depth) {
    return gl.texStorage3D(
        target, levels, internalformat, width, height, depth);
  }

  createTransformFeedback() {
    return gl.createTransformFeedback();
  }
  bindTransformFeedback(target, transformFeedback) {
    return gl.bindTransformFeedback(target, transformFeedback);
  }
  transformFeedbackVaryings(program, count, varyings, bufferMode) {
    return gl.transformFeedbackVaryings(program, varyings, bufferMode);
  }
  deleteTransformFeedback(transformFeedback) {
    return gl.deleteTransformFeedback(transformFeedback);
  }
  isTransformFeedback(transformFeedback) {
    return gl.isTransformFeedback(transformFeedback);
  }
  beginTransformFeedback(primitiveMode) {
    return gl.beginTransformFeedback(primitiveMode);
  }
  endTransformFeedback() {
    return gl.endTransformFeedback();
  }
  pauseTransformFeedback() {
    return gl.pauseTransformFeedback();
  }
  resumeTransformFeedback() {
    return gl.resumeTransformFeedback();
  }
  getTransformFeedbackVarying(program, index) {
    return gl.getTransformFeedbackVarying(program, index);
  }

  invalidateFramebuffer(target, attachments) {
    return gl.invalidateFramebuffer(target, attachments);
  }

  Uint8List readCurrentPixels(int x, int y, int width, int height) {
    int _len = width * height * 4;
    var buffer = Uint8List(_len);
    gl.readPixels(x, y, width, height, RGBA, UNSIGNED_BYTE, buffer);
    return buffer;
  }
}

getData(data) {
  if (data == null) {
    return null;
  }

  if (data is NativeArray) {
    return data.data;
  } else {
    return data;
  }
}
