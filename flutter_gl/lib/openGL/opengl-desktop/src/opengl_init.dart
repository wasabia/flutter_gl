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

import 'opengl_header.dart';
import 'opengl_library.dart';

late final _library = loadLibrary();
GlCullFace glCullFace = loadFunction<GlCullFaceNative>(_library, 'glCullFace')
    .asFunction<GlCullFace>();
GlFrontFace glFrontFace =
    loadFunction<GlFrontFaceNative>(_library, 'glFrontFace')
        .asFunction<GlFrontFace>();
GlHint glHint =
    loadFunction<GlHintNative>(_library, 'glHint').asFunction<GlHint>();
GlLineWidth glLineWidth =
    loadFunction<GlLineWidthNative>(_library, 'glLineWidth')
        .asFunction<GlLineWidth>();
GlPointSize glPointSize =
    loadFunction<GlPointSizeNative>(_library, 'glPointSize')
        .asFunction<GlPointSize>();
GlPolygonMode glPolygonMode =
    loadFunction<GlPolygonModeNative>(_library, 'glPolygonMode')
        .asFunction<GlPolygonMode>();
GlScissor glScissor = loadFunction<GlScissorNative>(_library, 'glScissor')
    .asFunction<GlScissor>();
GlTexParameterf glTexParameterf =
    loadFunction<GlTexParameterfNative>(_library, 'glTexParameterf')
        .asFunction<GlTexParameterf>();
GlTexParameterfv glTexParameterfv =
    loadFunction<GlTexParameterfvNative>(_library, 'glTexParameterfv')
        .asFunction<GlTexParameterfv>();
GlTexParameteri glTexParameteri =
    loadFunction<GlTexParameteriNative>(_library, 'glTexParameteri')
        .asFunction<GlTexParameteri>();
GlTexParameteriv glTexParameteriv =
    loadFunction<GlTexParameterivNative>(_library, 'glTexParameteriv')
        .asFunction<GlTexParameteriv>();
GlTexImage1D glTexImage1D =
    loadFunction<GlTexImage1DNative>(_library, 'glTexImage1D')
        .asFunction<GlTexImage1D>();
GlTexImage2D glTexImage2D =
    loadFunction<GlTexImage2DNative>(_library, 'glTexImage2D')
        .asFunction<GlTexImage2D>();
GlDrawBuffer glDrawBuffer =
    loadFunction<GlDrawBufferNative>(_library, 'glDrawBuffer')
        .asFunction<GlDrawBuffer>();
GlClear glClear =
    loadFunction<GlClearNative>(_library, 'glClear').asFunction<GlClear>();
GlClearColor glClearColor =
    loadFunction<GlClearColorNative>(_library, 'glClearColor')
        .asFunction<GlClearColor>();
GlClearStencil glClearStencil =
    loadFunction<GlClearStencilNative>(_library, 'glClearStencil')
        .asFunction<GlClearStencil>();
GlClearDepth glClearDepth =
    loadFunction<GlClearDepthNative>(_library, 'glClearDepth')
        .asFunction<GlClearDepth>();
GlStencilMask glStencilMask =
    loadFunction<GlStencilMaskNative>(_library, 'glStencilMask')
        .asFunction<GlStencilMask>();
GlColorMask glColorMask =
    loadFunction<GlColorMaskNative>(_library, 'glColorMask')
        .asFunction<GlColorMask>();
GlDepthMask glDepthMask =
    loadFunction<GlDepthMaskNative>(_library, 'glDepthMask')
        .asFunction<GlDepthMask>();
GlDisable glDisable = loadFunction<GlDisableNative>(_library, 'glDisable')
    .asFunction<GlDisable>();
GlEnable glEnable =
    loadFunction<GlEnableNative>(_library, 'glEnable').asFunction<GlEnable>();
GlFinish glFinish =
    loadFunction<GlFinishNative>(_library, 'glFinish').asFunction<GlFinish>();
GlFlush glFlush =
    loadFunction<GlFlushNative>(_library, 'glFlush').asFunction<GlFlush>();
GlBlendFunc glBlendFunc =
    loadFunction<GlBlendFuncNative>(_library, 'glBlendFunc')
        .asFunction<GlBlendFunc>();
GlLogicOp glLogicOp = loadFunction<GlLogicOpNative>(_library, 'glLogicOp')
    .asFunction<GlLogicOp>();
GlStencilFunc glStencilFunc =
    loadFunction<GlStencilFuncNative>(_library, 'glStencilFunc')
        .asFunction<GlStencilFunc>();
GlStencilOp glStencilOp =
    loadFunction<GlStencilOpNative>(_library, 'glStencilOp')
        .asFunction<GlStencilOp>();
GlDepthFunc glDepthFunc =
    loadFunction<GlDepthFuncNative>(_library, 'glDepthFunc')
        .asFunction<GlDepthFunc>();
GlPixelStoref glPixelStoref =
    loadFunction<GlPixelStorefNative>(_library, 'glPixelStoref')
        .asFunction<GlPixelStoref>();
GlPixelStorei glPixelStorei =
    loadFunction<GlPixelStoreiNative>(_library, 'glPixelStorei')
        .asFunction<GlPixelStorei>();
GlReadBuffer glReadBuffer =
    loadFunction<GlReadBufferNative>(_library, 'glReadBuffer')
        .asFunction<GlReadBuffer>();
GlReadPixels glReadPixels =
    loadFunction<GlReadPixelsNative>(_library, 'glReadPixels')
        .asFunction<GlReadPixels>();
GlGetBooleanv glGetBooleanv =
    loadFunction<GlGetBooleanvNative>(_library, 'glGetBooleanv')
        .asFunction<GlGetBooleanv>();
GlGetDoublev glGetDoublev =
    loadFunction<GlGetDoublevNative>(_library, 'glGetDoublev')
        .asFunction<GlGetDoublev>();
GlGetError glGetError = loadFunction<GlGetErrorNative>(_library, 'glGetError')
    .asFunction<GlGetError>();
GlGetFloatv glGetFloatv =
    loadFunction<GlGetFloatvNative>(_library, 'glGetFloatv')
        .asFunction<GlGetFloatv>();
GlGetIntegerv glGetIntegerv =
    loadFunction<GlGetIntegervNative>(_library, 'glGetIntegerv')
        .asFunction<GlGetIntegerv>();
GlGetString glGetString =
    loadFunction<GlGetStringNative>(_library, 'glGetString')
        .asFunction<GlGetString>();
GlGetTexImage glGetTexImage =
    loadFunction<GlGetTexImageNative>(_library, 'glGetTexImage')
        .asFunction<GlGetTexImage>();
GlGetTexParameterfv glGetTexParameterfv =
    loadFunction<GlGetTexParameterfvNative>(_library, 'glGetTexParameterfv')
        .asFunction<GlGetTexParameterfv>();
GlGetTexParameteriv glGetTexParameteriv =
    loadFunction<GlGetTexParameterivNative>(_library, 'glGetTexParameteriv')
        .asFunction<GlGetTexParameteriv>();
GlGetTexLevelParameterfv glGetTexLevelParameterfv =
    loadFunction<GlGetTexLevelParameterfvNative>(
            _library, 'glGetTexLevelParameterfv')
        .asFunction<GlGetTexLevelParameterfv>();
GlGetTexLevelParameteriv glGetTexLevelParameteriv =
    loadFunction<GlGetTexLevelParameterivNative>(
            _library, 'glGetTexLevelParameteriv')
        .asFunction<GlGetTexLevelParameteriv>();
GlIsEnabled glIsEnabled =
    loadFunction<GlIsEnabledNative>(_library, 'glIsEnabled')
        .asFunction<GlIsEnabled>();
GlDepthRange glDepthRange =
    loadFunction<GlDepthRangeNative>(_library, 'glDepthRange')
        .asFunction<GlDepthRange>();
GlViewport glViewport = loadFunction<GlViewportNative>(_library, 'glViewport')
    .asFunction<GlViewport>();
GlDrawArrays glDrawArrays =
    loadFunction<GlDrawArraysNative>(_library, 'glDrawArrays')
        .asFunction<GlDrawArrays>();
GlDrawElements glDrawElements =
    loadFunction<GlDrawElementsNative>(_library, 'glDrawElements')
        .asFunction<GlDrawElements>();
GlGetPointerv glGetPointerv =
    loadFunction<GlGetPointervNative>(_library, 'glGetPointerv')
        .asFunction<GlGetPointerv>();
GlPolygonOffset glPolygonOffset =
    loadFunction<GlPolygonOffsetNative>(_library, 'glPolygonOffset')
        .asFunction<GlPolygonOffset>();
GlCopyTexImage1D glCopyTexImage1D =
    loadFunction<GlCopyTexImage1DNative>(_library, 'glCopyTexImage1D')
        .asFunction<GlCopyTexImage1D>();
GlCopyTexImage2D glCopyTexImage2D =
    loadFunction<GlCopyTexImage2DNative>(_library, 'glCopyTexImage2D')
        .asFunction<GlCopyTexImage2D>();
GlCopyTexSubImage1D glCopyTexSubImage1D =
    loadFunction<GlCopyTexSubImage1DNative>(_library, 'glCopyTexSubImage1D')
        .asFunction<GlCopyTexSubImage1D>();
GlCopyTexSubImage2D glCopyTexSubImage2D =
    loadFunction<GlCopyTexSubImage2DNative>(_library, 'glCopyTexSubImage2D')
        .asFunction<GlCopyTexSubImage2D>();
GlTexSubImage1D glTexSubImage1D =
    loadFunction<GlTexSubImage1DNative>(_library, 'glTexSubImage1D')
        .asFunction<GlTexSubImage1D>();
GlTexSubImage2D glTexSubImage2D =
    loadFunction<GlTexSubImage2DNative>(_library, 'glTexSubImage2D')
        .asFunction<GlTexSubImage2D>();
GlBindTexture glBindTexture =
    loadFunction<GlBindTextureNative>(_library, 'glBindTexture')
        .asFunction<GlBindTexture>();
GlDeleteTextures glDeleteTextures =
    loadFunction<GlDeleteTexturesNative>(_library, 'glDeleteTextures')
        .asFunction<GlDeleteTextures>();
GlGenTextures glGenTextures =
    loadFunction<GlGenTexturesNative>(_library, 'glGenTextures')
        .asFunction<GlGenTextures>();
GlIsTexture glIsTexture =
    loadFunction<GlIsTextureNative>(_library, 'glIsTexture')
        .asFunction<GlIsTexture>();
GlDrawRangeElements glDrawRangeElements =
    loadFunction<GlDrawRangeElementsNative>(_library, 'glDrawRangeElements')
        .asFunction<GlDrawRangeElements>();
GlTexImage3D glTexImage3D =
    loadFunction<GlTexImage3DNative>(_library, 'glTexImage3D')
        .asFunction<GlTexImage3D>();
GlTexSubImage3D glTexSubImage3D =
    loadFunction<GlTexSubImage3DNative>(_library, 'glTexSubImage3D')
        .asFunction<GlTexSubImage3D>();
GlCopyTexSubImage3D glCopyTexSubImage3D =
    loadFunction<GlCopyTexSubImage3DNative>(_library, 'glCopyTexSubImage3D')
        .asFunction<GlCopyTexSubImage3D>();
GlActiveTexture glActiveTexture =
    loadFunction<GlActiveTextureNative>(_library, 'glActiveTexture')
        .asFunction<GlActiveTexture>();
GlSampleCoverage glSampleCoverage =
    loadFunction<GlSampleCoverageNative>(_library, 'glSampleCoverage')
        .asFunction<GlSampleCoverage>();
GlCompressedTexImage3D glCompressedTexImage3D =
    loadFunction<GlCompressedTexImage3DNative>(
            _library, 'glCompressedTexImage3D')
        .asFunction<GlCompressedTexImage3D>();
GlCompressedTexImage2D glCompressedTexImage2D =
    loadFunction<GlCompressedTexImage2DNative>(
            _library, 'glCompressedTexImage2D')
        .asFunction<GlCompressedTexImage2D>();
GlCompressedTexImage1D glCompressedTexImage1D =
    loadFunction<GlCompressedTexImage1DNative>(
            _library, 'glCompressedTexImage1D')
        .asFunction<GlCompressedTexImage1D>();
GlCompressedTexSubImage3D glCompressedTexSubImage3D =
    loadFunction<GlCompressedTexSubImage3DNative>(
            _library, 'glCompressedTexSubImage3D')
        .asFunction<GlCompressedTexSubImage3D>();
GlCompressedTexSubImage2D glCompressedTexSubImage2D =
    loadFunction<GlCompressedTexSubImage2DNative>(
            _library, 'glCompressedTexSubImage2D')
        .asFunction<GlCompressedTexSubImage2D>();
GlCompressedTexSubImage1D glCompressedTexSubImage1D =
    loadFunction<GlCompressedTexSubImage1DNative>(
            _library, 'glCompressedTexSubImage1D')
        .asFunction<GlCompressedTexSubImage1D>();
GlGetCompressedTexImage glGetCompressedTexImage =
    loadFunction<GlGetCompressedTexImageNative>(
            _library, 'glGetCompressedTexImage')
        .asFunction<GlGetCompressedTexImage>();
GlBlendFuncSeparate glBlendFuncSeparate =
    loadFunction<GlBlendFuncSeparateNative>(_library, 'glBlendFuncSeparate')
        .asFunction<GlBlendFuncSeparate>();
GlMultiDrawArrays glMultiDrawArrays =
    loadFunction<GlMultiDrawArraysNative>(_library, 'glMultiDrawArrays')
        .asFunction<GlMultiDrawArrays>();
GlMultiDrawElements glMultiDrawElements =
    loadFunction<GlMultiDrawElementsNative>(_library, 'glMultiDrawElements')
        .asFunction<GlMultiDrawElements>();
GlPointParameterf glPointParameterf =
    loadFunction<GlPointParameterfNative>(_library, 'glPointParameterf')
        .asFunction<GlPointParameterf>();
GlPointParameterfv glPointParameterfv =
    loadFunction<GlPointParameterfvNative>(_library, 'glPointParameterfv')
        .asFunction<GlPointParameterfv>();
GlPointParameteri glPointParameteri =
    loadFunction<GlPointParameteriNative>(_library, 'glPointParameteri')
        .asFunction<GlPointParameteri>();
GlPointParameteriv glPointParameteriv =
    loadFunction<GlPointParameterivNative>(_library, 'glPointParameteriv')
        .asFunction<GlPointParameteriv>();
GlBlendColor glBlendColor =
    loadFunction<GlBlendColorNative>(_library, 'glBlendColor')
        .asFunction<GlBlendColor>();
GlBlendEquation glBlendEquation =
    loadFunction<GlBlendEquationNative>(_library, 'glBlendEquation')
        .asFunction<GlBlendEquation>();
GlGenQueries glGenQueries =
    loadFunction<GlGenQueriesNative>(_library, 'glGenQueries')
        .asFunction<GlGenQueries>();
GlDeleteQueries glDeleteQueries =
    loadFunction<GlDeleteQueriesNative>(_library, 'glDeleteQueries')
        .asFunction<GlDeleteQueries>();
GlIsQuery glIsQuery = loadFunction<GlIsQueryNative>(_library, 'glIsQuery')
    .asFunction<GlIsQuery>();
GlBeginQuery glBeginQuery =
    loadFunction<GlBeginQueryNative>(_library, 'glBeginQuery')
        .asFunction<GlBeginQuery>();
GlEndQuery glEndQuery = loadFunction<GlEndQueryNative>(_library, 'glEndQuery')
    .asFunction<GlEndQuery>();
GlGetQueryiv glGetQueryiv =
    loadFunction<GlGetQueryivNative>(_library, 'glGetQueryiv')
        .asFunction<GlGetQueryiv>();
GlGetQueryObjectiv glGetQueryObjectiv =
    loadFunction<GlGetQueryObjectivNative>(_library, 'glGetQueryObjectiv')
        .asFunction<GlGetQueryObjectiv>();
GlGetQueryObjectuiv glGetQueryObjectuiv =
    loadFunction<GlGetQueryObjectuivNative>(_library, 'glGetQueryObjectuiv')
        .asFunction<GlGetQueryObjectuiv>();
GlBindBuffer glBindBuffer =
    loadFunction<GlBindBufferNative>(_library, 'glBindBuffer')
        .asFunction<GlBindBuffer>();
GlDeleteBuffers glDeleteBuffers =
    loadFunction<GlDeleteBuffersNative>(_library, 'glDeleteBuffers')
        .asFunction<GlDeleteBuffers>();
GlGenBuffers glGenBuffers =
    loadFunction<GlGenBuffersNative>(_library, 'glGenBuffers')
        .asFunction<GlGenBuffers>();
GlIsBuffer glIsBuffer = loadFunction<GlIsBufferNative>(_library, 'glIsBuffer')
    .asFunction<GlIsBuffer>();
GlBufferData glBufferData =
    loadFunction<GlBufferDataNative>(_library, 'glBufferData')
        .asFunction<GlBufferData>();
GlBufferSubData glBufferSubData =
    loadFunction<GlBufferSubDataNative>(_library, 'glBufferSubData')
        .asFunction<GlBufferSubData>();
GlGetBufferSubData glGetBufferSubData =
    loadFunction<GlGetBufferSubDataNative>(_library, 'glGetBufferSubData')
        .asFunction<GlGetBufferSubData>();
GlMapBuffer glMapBuffer =
    loadFunction<GlMapBufferNative>(_library, 'glMapBuffer')
        .asFunction<GlMapBuffer>();
GlUnmapBuffer glUnmapBuffer =
    loadFunction<GlUnmapBufferNative>(_library, 'glUnmapBuffer')
        .asFunction<GlUnmapBuffer>();
GlGetBufferParameteriv glGetBufferParameteriv =
    loadFunction<GlGetBufferParameterivNative>(
            _library, 'glGetBufferParameteriv')
        .asFunction<GlGetBufferParameteriv>();
GlGetBufferPointerv glGetBufferPointerv =
    loadFunction<GlGetBufferPointervNative>(_library, 'glGetBufferPointerv')
        .asFunction<GlGetBufferPointerv>();
GlBlendEquationSeparate glBlendEquationSeparate =
    loadFunction<GlBlendEquationSeparateNative>(
            _library, 'glBlendEquationSeparate')
        .asFunction<GlBlendEquationSeparate>();
GlDrawBuffers glDrawBuffers =
    loadFunction<GlDrawBuffersNative>(_library, 'glDrawBuffers')
        .asFunction<GlDrawBuffers>();
GlStencilOpSeparate glStencilOpSeparate =
    loadFunction<GlStencilOpSeparateNative>(_library, 'glStencilOpSeparate')
        .asFunction<GlStencilOpSeparate>();
GlStencilFuncSeparate glStencilFuncSeparate =
    loadFunction<GlStencilFuncSeparateNative>(_library, 'glStencilFuncSeparate')
        .asFunction<GlStencilFuncSeparate>();
GlStencilMaskSeparate glStencilMaskSeparate =
    loadFunction<GlStencilMaskSeparateNative>(_library, 'glStencilMaskSeparate')
        .asFunction<GlStencilMaskSeparate>();
GlAttachShader glAttachShader =
    loadFunction<GlAttachShaderNative>(_library, 'glAttachShader')
        .asFunction<GlAttachShader>();
GlBindAttribLocation glBindAttribLocation =
    loadFunction<GlBindAttribLocationNative>(_library, 'glBindAttribLocation')
        .asFunction<GlBindAttribLocation>();
GlCompileShader glCompileShader =
    loadFunction<GlCompileShaderNative>(_library, 'glCompileShader')
        .asFunction<GlCompileShader>();
GlCreateProgram glCreateProgram =
    loadFunction<GlCreateProgramNative>(_library, 'glCreateProgram')
        .asFunction<GlCreateProgram>();
GlCreateShader glCreateShader =
    loadFunction<GlCreateShaderNative>(_library, 'glCreateShader')
        .asFunction<GlCreateShader>();
GlDeleteProgram glDeleteProgram =
    loadFunction<GlDeleteProgramNative>(_library, 'glDeleteProgram')
        .asFunction<GlDeleteProgram>();
GlDeleteShader glDeleteShader =
    loadFunction<GlDeleteShaderNative>(_library, 'glDeleteShader')
        .asFunction<GlDeleteShader>();
GlDetachShader glDetachShader =
    loadFunction<GlDetachShaderNative>(_library, 'glDetachShader')
        .asFunction<GlDetachShader>();
GlDisableVertexAttribArray glDisableVertexAttribArray =
    loadFunction<GlDisableVertexAttribArrayNative>(
            _library, 'glDisableVertexAttribArray')
        .asFunction<GlDisableVertexAttribArray>();
GlEnableVertexAttribArray glEnableVertexAttribArray =
    loadFunction<GlEnableVertexAttribArrayNative>(
            _library, 'glEnableVertexAttribArray')
        .asFunction<GlEnableVertexAttribArray>();
GlGetActiveAttrib glGetActiveAttrib =
    loadFunction<GlGetActiveAttribNative>(_library, 'glGetActiveAttrib')
        .asFunction<GlGetActiveAttrib>();
GlGetActiveUniform glGetActiveUniform =
    loadFunction<GlGetActiveUniformNative>(_library, 'glGetActiveUniform')
        .asFunction<GlGetActiveUniform>();
GlGetAttachedShaders glGetAttachedShaders =
    loadFunction<GlGetAttachedShadersNative>(_library, 'glGetAttachedShaders')
        .asFunction<GlGetAttachedShaders>();
GlGetAttribLocation glGetAttribLocation =
    loadFunction<GlGetAttribLocationNative>(_library, 'glGetAttribLocation')
        .asFunction<GlGetAttribLocation>();
GlGetProgramiv glGetProgramiv =
    loadFunction<GlGetProgramivNative>(_library, 'glGetProgramiv')
        .asFunction<GlGetProgramiv>();
GlGetProgramInfoLog glGetProgramInfoLog =
    loadFunction<GlGetProgramInfoLogNative>(_library, 'glGetProgramInfoLog')
        .asFunction<GlGetProgramInfoLog>();
GlGetShaderiv glGetShaderiv =
    loadFunction<GlGetShaderivNative>(_library, 'glGetShaderiv')
        .asFunction<GlGetShaderiv>();
GlGetShaderInfoLog glGetShaderInfoLog =
    loadFunction<GlGetShaderInfoLogNative>(_library, 'glGetShaderInfoLog')
        .asFunction<GlGetShaderInfoLog>();
GlGetShaderSource glGetShaderSource =
    loadFunction<GlGetShaderSourceNative>(_library, 'glGetShaderSource')
        .asFunction<GlGetShaderSource>();
GlGetUniformLocation glGetUniformLocation =
    loadFunction<GlGetUniformLocationNative>(_library, 'glGetUniformLocation')
        .asFunction<GlGetUniformLocation>();
GlGetUniformfv glGetUniformfv =
    loadFunction<GlGetUniformfvNative>(_library, 'glGetUniformfv')
        .asFunction<GlGetUniformfv>();
GlGetUniformiv glGetUniformiv =
    loadFunction<GlGetUniformivNative>(_library, 'glGetUniformiv')
        .asFunction<GlGetUniformiv>();
GlGetVertexAttribdv glGetVertexAttribdv =
    loadFunction<GlGetVertexAttribdvNative>(_library, 'glGetVertexAttribdv')
        .asFunction<GlGetVertexAttribdv>();
GlGetVertexAttribfv glGetVertexAttribfv =
    loadFunction<GlGetVertexAttribfvNative>(_library, 'glGetVertexAttribfv')
        .asFunction<GlGetVertexAttribfv>();
GlGetVertexAttribiv glGetVertexAttribiv =
    loadFunction<GlGetVertexAttribivNative>(_library, 'glGetVertexAttribiv')
        .asFunction<GlGetVertexAttribiv>();
GlGetVertexAttribPointerv glGetVertexAttribPointerv =
    loadFunction<GlGetVertexAttribPointervNative>(
            _library, 'glGetVertexAttribPointerv')
        .asFunction<GlGetVertexAttribPointerv>();
GlIsProgram glIsProgram =
    loadFunction<GlIsProgramNative>(_library, 'glIsProgram')
        .asFunction<GlIsProgram>();
GlIsShader glIsShader = loadFunction<GlIsShaderNative>(_library, 'glIsShader')
    .asFunction<GlIsShader>();
GlLinkProgram glLinkProgram =
    loadFunction<GlLinkProgramNative>(_library, 'glLinkProgram')
        .asFunction<GlLinkProgram>();
GlShaderSource glShaderSource =
    loadFunction<GlShaderSourceNative>(_library, 'glShaderSource')
        .asFunction<GlShaderSource>();
GlUseProgram glUseProgram =
    loadFunction<GlUseProgramNative>(_library, 'glUseProgram')
        .asFunction<GlUseProgram>();
GlUniform1f glUniform1f =
    loadFunction<GlUniform1fNative>(_library, 'glUniform1f')
        .asFunction<GlUniform1f>();
GlUniform2f glUniform2f =
    loadFunction<GlUniform2fNative>(_library, 'glUniform2f')
        .asFunction<GlUniform2f>();
GlUniform3f glUniform3f =
    loadFunction<GlUniform3fNative>(_library, 'glUniform3f')
        .asFunction<GlUniform3f>();
GlUniform4f glUniform4f =
    loadFunction<GlUniform4fNative>(_library, 'glUniform4f')
        .asFunction<GlUniform4f>();
GlUniform1i glUniform1i =
    loadFunction<GlUniform1iNative>(_library, 'glUniform1i')
        .asFunction<GlUniform1i>();
GlUniform2i glUniform2i =
    loadFunction<GlUniform2iNative>(_library, 'glUniform2i')
        .asFunction<GlUniform2i>();
GlUniform3i glUniform3i =
    loadFunction<GlUniform3iNative>(_library, 'glUniform3i')
        .asFunction<GlUniform3i>();
GlUniform4i glUniform4i =
    loadFunction<GlUniform4iNative>(_library, 'glUniform4i')
        .asFunction<GlUniform4i>();
GlUniform1fv glUniform1fv =
    loadFunction<GlUniform1fvNative>(_library, 'glUniform1fv')
        .asFunction<GlUniform1fv>();
GlUniform2fv glUniform2fv =
    loadFunction<GlUniform2fvNative>(_library, 'glUniform2fv')
        .asFunction<GlUniform2fv>();
GlUniform3fv glUniform3fv =
    loadFunction<GlUniform3fvNative>(_library, 'glUniform3fv')
        .asFunction<GlUniform3fv>();
GlUniform4fv glUniform4fv =
    loadFunction<GlUniform4fvNative>(_library, 'glUniform4fv')
        .asFunction<GlUniform4fv>();
GlUniform1iv glUniform1iv =
    loadFunction<GlUniform1ivNative>(_library, 'glUniform1iv')
        .asFunction<GlUniform1iv>();
GlUniform2iv glUniform2iv =
    loadFunction<GlUniform2ivNative>(_library, 'glUniform2iv')
        .asFunction<GlUniform2iv>();
GlUniform3iv glUniform3iv =
    loadFunction<GlUniform3ivNative>(_library, 'glUniform3iv')
        .asFunction<GlUniform3iv>();
GlUniform4iv glUniform4iv =
    loadFunction<GlUniform4ivNative>(_library, 'glUniform4iv')
        .asFunction<GlUniform4iv>();
GlUniformMatrix2fv glUniformMatrix2fv =
    loadFunction<GlUniformMatrix2fvNative>(_library, 'glUniformMatrix2fv')
        .asFunction<GlUniformMatrix2fv>();
GlUniformMatrix3fv glUniformMatrix3fv =
    loadFunction<GlUniformMatrix3fvNative>(_library, 'glUniformMatrix3fv')
        .asFunction<GlUniformMatrix3fv>();
GlUniformMatrix4fv glUniformMatrix4fv =
    loadFunction<GlUniformMatrix4fvNative>(_library, 'glUniformMatrix4fv')
        .asFunction<GlUniformMatrix4fv>();
GlValidateProgram glValidateProgram =
    loadFunction<GlValidateProgramNative>(_library, 'glValidateProgram')
        .asFunction<GlValidateProgram>();
GlVertexAttrib1d glVertexAttrib1d =
    loadFunction<GlVertexAttrib1dNative>(_library, 'glVertexAttrib1d')
        .asFunction<GlVertexAttrib1d>();
GlVertexAttrib1dv glVertexAttrib1dv =
    loadFunction<GlVertexAttrib1dvNative>(_library, 'glVertexAttrib1dv')
        .asFunction<GlVertexAttrib1dv>();
GlVertexAttrib1f glVertexAttrib1f =
    loadFunction<GlVertexAttrib1fNative>(_library, 'glVertexAttrib1f')
        .asFunction<GlVertexAttrib1f>();
GlVertexAttrib1fv glVertexAttrib1fv =
    loadFunction<GlVertexAttrib1fvNative>(_library, 'glVertexAttrib1fv')
        .asFunction<GlVertexAttrib1fv>();
GlVertexAttrib1s glVertexAttrib1s =
    loadFunction<GlVertexAttrib1sNative>(_library, 'glVertexAttrib1s')
        .asFunction<GlVertexAttrib1s>();
GlVertexAttrib1sv glVertexAttrib1sv =
    loadFunction<GlVertexAttrib1svNative>(_library, 'glVertexAttrib1sv')
        .asFunction<GlVertexAttrib1sv>();
GlVertexAttrib2d glVertexAttrib2d =
    loadFunction<GlVertexAttrib2dNative>(_library, 'glVertexAttrib2d')
        .asFunction<GlVertexAttrib2d>();
GlVertexAttrib2dv glVertexAttrib2dv =
    loadFunction<GlVertexAttrib2dvNative>(_library, 'glVertexAttrib2dv')
        .asFunction<GlVertexAttrib2dv>();
GlVertexAttrib2f glVertexAttrib2f =
    loadFunction<GlVertexAttrib2fNative>(_library, 'glVertexAttrib2f')
        .asFunction<GlVertexAttrib2f>();
GlVertexAttrib2fv glVertexAttrib2fv =
    loadFunction<GlVertexAttrib2fvNative>(_library, 'glVertexAttrib2fv')
        .asFunction<GlVertexAttrib2fv>();
GlVertexAttrib2s glVertexAttrib2s =
    loadFunction<GlVertexAttrib2sNative>(_library, 'glVertexAttrib2s')
        .asFunction<GlVertexAttrib2s>();
GlVertexAttrib2sv glVertexAttrib2sv =
    loadFunction<GlVertexAttrib2svNative>(_library, 'glVertexAttrib2sv')
        .asFunction<GlVertexAttrib2sv>();
GlVertexAttrib3d glVertexAttrib3d =
    loadFunction<GlVertexAttrib3dNative>(_library, 'glVertexAttrib3d')
        .asFunction<GlVertexAttrib3d>();
GlVertexAttrib3dv glVertexAttrib3dv =
    loadFunction<GlVertexAttrib3dvNative>(_library, 'glVertexAttrib3dv')
        .asFunction<GlVertexAttrib3dv>();
GlVertexAttrib3f glVertexAttrib3f =
    loadFunction<GlVertexAttrib3fNative>(_library, 'glVertexAttrib3f')
        .asFunction<GlVertexAttrib3f>();
GlVertexAttrib3fv glVertexAttrib3fv =
    loadFunction<GlVertexAttrib3fvNative>(_library, 'glVertexAttrib3fv')
        .asFunction<GlVertexAttrib3fv>();
GlVertexAttrib3s glVertexAttrib3s =
    loadFunction<GlVertexAttrib3sNative>(_library, 'glVertexAttrib3s')
        .asFunction<GlVertexAttrib3s>();
GlVertexAttrib3sv glVertexAttrib3sv =
    loadFunction<GlVertexAttrib3svNative>(_library, 'glVertexAttrib3sv')
        .asFunction<GlVertexAttrib3sv>();
GlVertexAttrib4Nbv glVertexAttrib4Nbv =
    loadFunction<GlVertexAttrib4NbvNative>(_library, 'glVertexAttrib4Nbv')
        .asFunction<GlVertexAttrib4Nbv>();
GlVertexAttrib4Niv glVertexAttrib4Niv =
    loadFunction<GlVertexAttrib4NivNative>(_library, 'glVertexAttrib4Niv')
        .asFunction<GlVertexAttrib4Niv>();
GlVertexAttrib4Nsv glVertexAttrib4Nsv =
    loadFunction<GlVertexAttrib4NsvNative>(_library, 'glVertexAttrib4Nsv')
        .asFunction<GlVertexAttrib4Nsv>();
GlVertexAttrib4Nub glVertexAttrib4Nub =
    loadFunction<GlVertexAttrib4NubNative>(_library, 'glVertexAttrib4Nub')
        .asFunction<GlVertexAttrib4Nub>();
GlVertexAttrib4Nubv glVertexAttrib4Nubv =
    loadFunction<GlVertexAttrib4NubvNative>(_library, 'glVertexAttrib4Nubv')
        .asFunction<GlVertexAttrib4Nubv>();
GlVertexAttrib4Nuiv glVertexAttrib4Nuiv =
    loadFunction<GlVertexAttrib4NuivNative>(_library, 'glVertexAttrib4Nuiv')
        .asFunction<GlVertexAttrib4Nuiv>();
GlVertexAttrib4Nusv glVertexAttrib4Nusv =
    loadFunction<GlVertexAttrib4NusvNative>(_library, 'glVertexAttrib4Nusv')
        .asFunction<GlVertexAttrib4Nusv>();
GlVertexAttrib4bv glVertexAttrib4bv =
    loadFunction<GlVertexAttrib4bvNative>(_library, 'glVertexAttrib4bv')
        .asFunction<GlVertexAttrib4bv>();
GlVertexAttrib4d glVertexAttrib4d =
    loadFunction<GlVertexAttrib4dNative>(_library, 'glVertexAttrib4d')
        .asFunction<GlVertexAttrib4d>();
GlVertexAttrib4dv glVertexAttrib4dv =
    loadFunction<GlVertexAttrib4dvNative>(_library, 'glVertexAttrib4dv')
        .asFunction<GlVertexAttrib4dv>();
GlVertexAttrib4f glVertexAttrib4f =
    loadFunction<GlVertexAttrib4fNative>(_library, 'glVertexAttrib4f')
        .asFunction<GlVertexAttrib4f>();
GlVertexAttrib4fv glVertexAttrib4fv =
    loadFunction<GlVertexAttrib4fvNative>(_library, 'glVertexAttrib4fv')
        .asFunction<GlVertexAttrib4fv>();
GlVertexAttrib4iv glVertexAttrib4iv =
    loadFunction<GlVertexAttrib4ivNative>(_library, 'glVertexAttrib4iv')
        .asFunction<GlVertexAttrib4iv>();
GlVertexAttrib4s glVertexAttrib4s =
    loadFunction<GlVertexAttrib4sNative>(_library, 'glVertexAttrib4s')
        .asFunction<GlVertexAttrib4s>();
GlVertexAttrib4sv glVertexAttrib4sv =
    loadFunction<GlVertexAttrib4svNative>(_library, 'glVertexAttrib4sv')
        .asFunction<GlVertexAttrib4sv>();
GlVertexAttrib4ubv glVertexAttrib4ubv =
    loadFunction<GlVertexAttrib4ubvNative>(_library, 'glVertexAttrib4ubv')
        .asFunction<GlVertexAttrib4ubv>();
GlVertexAttrib4uiv glVertexAttrib4uiv =
    loadFunction<GlVertexAttrib4uivNative>(_library, 'glVertexAttrib4uiv')
        .asFunction<GlVertexAttrib4uiv>();
GlVertexAttrib4usv glVertexAttrib4usv =
    loadFunction<GlVertexAttrib4usvNative>(_library, 'glVertexAttrib4usv')
        .asFunction<GlVertexAttrib4usv>();
GlVertexAttribPointer glVertexAttribPointer =
    loadFunction<GlVertexAttribPointerNative>(_library, 'glVertexAttribPointer')
        .asFunction<GlVertexAttribPointer>();
GlUniformMatrix2x3fv glUniformMatrix2x3fv =
    loadFunction<GlUniformMatrix2x3fvNative>(_library, 'glUniformMatrix2x3fv')
        .asFunction<GlUniformMatrix2x3fv>();
GlUniformMatrix3x2fv glUniformMatrix3x2fv =
    loadFunction<GlUniformMatrix3x2fvNative>(_library, 'glUniformMatrix3x2fv')
        .asFunction<GlUniformMatrix3x2fv>();
GlUniformMatrix2x4fv glUniformMatrix2x4fv =
    loadFunction<GlUniformMatrix2x4fvNative>(_library, 'glUniformMatrix2x4fv')
        .asFunction<GlUniformMatrix2x4fv>();
GlUniformMatrix4x2fv glUniformMatrix4x2fv =
    loadFunction<GlUniformMatrix4x2fvNative>(_library, 'glUniformMatrix4x2fv')
        .asFunction<GlUniformMatrix4x2fv>();
GlUniformMatrix3x4fv glUniformMatrix3x4fv =
    loadFunction<GlUniformMatrix3x4fvNative>(_library, 'glUniformMatrix3x4fv')
        .asFunction<GlUniformMatrix3x4fv>();
GlUniformMatrix4x3fv glUniformMatrix4x3fv =
    loadFunction<GlUniformMatrix4x3fvNative>(_library, 'glUniformMatrix4x3fv')
        .asFunction<GlUniformMatrix4x3fv>();
GlColorMaski glColorMaski =
    loadFunction<GlColorMaskiNative>(_library, 'glColorMaski')
        .asFunction<GlColorMaski>();
GlGetBooleani_v glGetBooleani_v =
    loadFunction<GlGetBooleani_vNative>(_library, 'glGetBooleani_v')
        .asFunction<GlGetBooleani_v>();
GlGetIntegeri_v glGetIntegeri_v =
    loadFunction<GlGetIntegeri_vNative>(_library, 'glGetIntegeri_v')
        .asFunction<GlGetIntegeri_v>();
GlEnablei glEnablei = loadFunction<GlEnableiNative>(_library, 'glEnablei')
    .asFunction<GlEnablei>();
GlDisablei glDisablei = loadFunction<GlDisableiNative>(_library, 'glDisablei')
    .asFunction<GlDisablei>();
GlIsEnabledi glIsEnabledi =
    loadFunction<GlIsEnablediNative>(_library, 'glIsEnabledi')
        .asFunction<GlIsEnabledi>();
GlBeginTransformFeedback glBeginTransformFeedback =
    loadFunction<GlBeginTransformFeedbackNative>(
            _library, 'glBeginTransformFeedback')
        .asFunction<GlBeginTransformFeedback>();
GlEndTransformFeedback glEndTransformFeedback =
    loadFunction<GlEndTransformFeedbackNative>(
            _library, 'glEndTransformFeedback')
        .asFunction<GlEndTransformFeedback>();
GlBindBufferRange glBindBufferRange =
    loadFunction<GlBindBufferRangeNative>(_library, 'glBindBufferRange')
        .asFunction<GlBindBufferRange>();
GlBindBufferBase glBindBufferBase =
    loadFunction<GlBindBufferBaseNative>(_library, 'glBindBufferBase')
        .asFunction<GlBindBufferBase>();
GlTransformFeedbackVaryings glTransformFeedbackVaryings =
    loadFunction<GlTransformFeedbackVaryingsNative>(
            _library, 'glTransformFeedbackVaryings')
        .asFunction<GlTransformFeedbackVaryings>();
GlGetTransformFeedbackVarying glGetTransformFeedbackVarying =
    loadFunction<GlGetTransformFeedbackVaryingNative>(
            _library, 'glGetTransformFeedbackVarying')
        .asFunction<GlGetTransformFeedbackVarying>();
GlClampColor glClampColor =
    loadFunction<GlClampColorNative>(_library, 'glClampColor')
        .asFunction<GlClampColor>();
GlBeginConditionalRender glBeginConditionalRender =
    loadFunction<GlBeginConditionalRenderNative>(
            _library, 'glBeginConditionalRender')
        .asFunction<GlBeginConditionalRender>();
GlEndConditionalRender glEndConditionalRender =
    loadFunction<GlEndConditionalRenderNative>(
            _library, 'glEndConditionalRender')
        .asFunction<GlEndConditionalRender>();
GlVertexAttribIPointer glVertexAttribIPointer =
    loadFunction<GlVertexAttribIPointerNative>(
            _library, 'glVertexAttribIPointer')
        .asFunction<GlVertexAttribIPointer>();
GlGetVertexAttribIiv glGetVertexAttribIiv =
    loadFunction<GlGetVertexAttribIivNative>(_library, 'glGetVertexAttribIiv')
        .asFunction<GlGetVertexAttribIiv>();
GlGetVertexAttribIuiv glGetVertexAttribIuiv =
    loadFunction<GlGetVertexAttribIuivNative>(_library, 'glGetVertexAttribIuiv')
        .asFunction<GlGetVertexAttribIuiv>();
GlVertexAttribI1i glVertexAttribI1i =
    loadFunction<GlVertexAttribI1iNative>(_library, 'glVertexAttribI1i')
        .asFunction<GlVertexAttribI1i>();
GlVertexAttribI2i glVertexAttribI2i =
    loadFunction<GlVertexAttribI2iNative>(_library, 'glVertexAttribI2i')
        .asFunction<GlVertexAttribI2i>();
GlVertexAttribI3i glVertexAttribI3i =
    loadFunction<GlVertexAttribI3iNative>(_library, 'glVertexAttribI3i')
        .asFunction<GlVertexAttribI3i>();
GlVertexAttribI4i glVertexAttribI4i =
    loadFunction<GlVertexAttribI4iNative>(_library, 'glVertexAttribI4i')
        .asFunction<GlVertexAttribI4i>();
GlVertexAttribI1ui glVertexAttribI1ui =
    loadFunction<GlVertexAttribI1uiNative>(_library, 'glVertexAttribI1ui')
        .asFunction<GlVertexAttribI1ui>();
GlVertexAttribI2ui glVertexAttribI2ui =
    loadFunction<GlVertexAttribI2uiNative>(_library, 'glVertexAttribI2ui')
        .asFunction<GlVertexAttribI2ui>();
GlVertexAttribI3ui glVertexAttribI3ui =
    loadFunction<GlVertexAttribI3uiNative>(_library, 'glVertexAttribI3ui')
        .asFunction<GlVertexAttribI3ui>();
GlVertexAttribI4ui glVertexAttribI4ui =
    loadFunction<GlVertexAttribI4uiNative>(_library, 'glVertexAttribI4ui')
        .asFunction<GlVertexAttribI4ui>();
GlVertexAttribI1iv glVertexAttribI1iv =
    loadFunction<GlVertexAttribI1ivNative>(_library, 'glVertexAttribI1iv')
        .asFunction<GlVertexAttribI1iv>();
GlVertexAttribI2iv glVertexAttribI2iv =
    loadFunction<GlVertexAttribI2ivNative>(_library, 'glVertexAttribI2iv')
        .asFunction<GlVertexAttribI2iv>();
GlVertexAttribI3iv glVertexAttribI3iv =
    loadFunction<GlVertexAttribI3ivNative>(_library, 'glVertexAttribI3iv')
        .asFunction<GlVertexAttribI3iv>();
GlVertexAttribI4iv glVertexAttribI4iv =
    loadFunction<GlVertexAttribI4ivNative>(_library, 'glVertexAttribI4iv')
        .asFunction<GlVertexAttribI4iv>();
GlVertexAttribI1uiv glVertexAttribI1uiv =
    loadFunction<GlVertexAttribI1uivNative>(_library, 'glVertexAttribI1uiv')
        .asFunction<GlVertexAttribI1uiv>();
GlVertexAttribI2uiv glVertexAttribI2uiv =
    loadFunction<GlVertexAttribI2uivNative>(_library, 'glVertexAttribI2uiv')
        .asFunction<GlVertexAttribI2uiv>();
GlVertexAttribI3uiv glVertexAttribI3uiv =
    loadFunction<GlVertexAttribI3uivNative>(_library, 'glVertexAttribI3uiv')
        .asFunction<GlVertexAttribI3uiv>();
GlVertexAttribI4uiv glVertexAttribI4uiv =
    loadFunction<GlVertexAttribI4uivNative>(_library, 'glVertexAttribI4uiv')
        .asFunction<GlVertexAttribI4uiv>();
GlVertexAttribI4bv glVertexAttribI4bv =
    loadFunction<GlVertexAttribI4bvNative>(_library, 'glVertexAttribI4bv')
        .asFunction<GlVertexAttribI4bv>();
GlVertexAttribI4sv glVertexAttribI4sv =
    loadFunction<GlVertexAttribI4svNative>(_library, 'glVertexAttribI4sv')
        .asFunction<GlVertexAttribI4sv>();
GlVertexAttribI4ubv glVertexAttribI4ubv =
    loadFunction<GlVertexAttribI4ubvNative>(_library, 'glVertexAttribI4ubv')
        .asFunction<GlVertexAttribI4ubv>();
GlVertexAttribI4usv glVertexAttribI4usv =
    loadFunction<GlVertexAttribI4usvNative>(_library, 'glVertexAttribI4usv')
        .asFunction<GlVertexAttribI4usv>();
GlGetUniformuiv glGetUniformuiv =
    loadFunction<GlGetUniformuivNative>(_library, 'glGetUniformuiv')
        .asFunction<GlGetUniformuiv>();
GlBindFragDataLocation glBindFragDataLocation =
    loadFunction<GlBindFragDataLocationNative>(
            _library, 'glBindFragDataLocation')
        .asFunction<GlBindFragDataLocation>();
GlGetFragDataLocation glGetFragDataLocation =
    loadFunction<GlGetFragDataLocationNative>(_library, 'glGetFragDataLocation')
        .asFunction<GlGetFragDataLocation>();
GlUniform1ui glUniform1ui =
    loadFunction<GlUniform1uiNative>(_library, 'glUniform1ui')
        .asFunction<GlUniform1ui>();
GlUniform2ui glUniform2ui =
    loadFunction<GlUniform2uiNative>(_library, 'glUniform2ui')
        .asFunction<GlUniform2ui>();
GlUniform3ui glUniform3ui =
    loadFunction<GlUniform3uiNative>(_library, 'glUniform3ui')
        .asFunction<GlUniform3ui>();
GlUniform4ui glUniform4ui =
    loadFunction<GlUniform4uiNative>(_library, 'glUniform4ui')
        .asFunction<GlUniform4ui>();
GlUniform1uiv glUniform1uiv =
    loadFunction<GlUniform1uivNative>(_library, 'glUniform1uiv')
        .asFunction<GlUniform1uiv>();
GlUniform2uiv glUniform2uiv =
    loadFunction<GlUniform2uivNative>(_library, 'glUniform2uiv')
        .asFunction<GlUniform2uiv>();
GlUniform3uiv glUniform3uiv =
    loadFunction<GlUniform3uivNative>(_library, 'glUniform3uiv')
        .asFunction<GlUniform3uiv>();
GlUniform4uiv glUniform4uiv =
    loadFunction<GlUniform4uivNative>(_library, 'glUniform4uiv')
        .asFunction<GlUniform4uiv>();
GlTexParameterIiv glTexParameterIiv =
    loadFunction<GlTexParameterIivNative>(_library, 'glTexParameterIiv')
        .asFunction<GlTexParameterIiv>();
GlTexParameterIuiv glTexParameterIuiv =
    loadFunction<GlTexParameterIuivNative>(_library, 'glTexParameterIuiv')
        .asFunction<GlTexParameterIuiv>();
GlGetTexParameterIiv glGetTexParameterIiv =
    loadFunction<GlGetTexParameterIivNative>(_library, 'glGetTexParameterIiv')
        .asFunction<GlGetTexParameterIiv>();
GlGetTexParameterIuiv glGetTexParameterIuiv =
    loadFunction<GlGetTexParameterIuivNative>(_library, 'glGetTexParameterIuiv')
        .asFunction<GlGetTexParameterIuiv>();
GlClearBufferiv glClearBufferiv =
    loadFunction<GlClearBufferivNative>(_library, 'glClearBufferiv')
        .asFunction<GlClearBufferiv>();
GlClearBufferuiv glClearBufferuiv =
    loadFunction<GlClearBufferuivNative>(_library, 'glClearBufferuiv')
        .asFunction<GlClearBufferuiv>();
GlClearBufferfv glClearBufferfv =
    loadFunction<GlClearBufferfvNative>(_library, 'glClearBufferfv')
        .asFunction<GlClearBufferfv>();
GlClearBufferfi glClearBufferfi =
    loadFunction<GlClearBufferfiNative>(_library, 'glClearBufferfi')
        .asFunction<GlClearBufferfi>();
GlGetStringi glGetStringi =
    loadFunction<GlGetStringiNative>(_library, 'glGetStringi')
        .asFunction<GlGetStringi>();
GlIsRenderbuffer glIsRenderbuffer =
    loadFunction<GlIsRenderbufferNative>(_library, 'glIsRenderbuffer')
        .asFunction<GlIsRenderbuffer>();
GlBindRenderbuffer glBindRenderbuffer =
    loadFunction<GlBindRenderbufferNative>(_library, 'glBindRenderbuffer')
        .asFunction<GlBindRenderbuffer>();
GlDeleteRenderbuffers glDeleteRenderbuffers =
    loadFunction<GlDeleteRenderbuffersNative>(_library, 'glDeleteRenderbuffers')
        .asFunction<GlDeleteRenderbuffers>();
GlGenRenderbuffers glGenRenderbuffers =
    loadFunction<GlGenRenderbuffersNative>(_library, 'glGenRenderbuffers')
        .asFunction<GlGenRenderbuffers>();
GlRenderbufferStorage glRenderbufferStorage =
    loadFunction<GlRenderbufferStorageNative>(_library, 'glRenderbufferStorage')
        .asFunction<GlRenderbufferStorage>();
GlGetRenderbufferParameteriv glGetRenderbufferParameteriv =
    loadFunction<GlGetRenderbufferParameterivNative>(
            _library, 'glGetRenderbufferParameteriv')
        .asFunction<GlGetRenderbufferParameteriv>();
GlIsFramebuffer glIsFramebuffer =
    loadFunction<GlIsFramebufferNative>(_library, 'glIsFramebuffer')
        .asFunction<GlIsFramebuffer>();
GlBindFramebuffer glBindFramebuffer =
    loadFunction<GlBindFramebufferNative>(_library, 'glBindFramebuffer')
        .asFunction<GlBindFramebuffer>();
GlDeleteFramebuffers glDeleteFramebuffers =
    loadFunction<GlDeleteFramebuffersNative>(_library, 'glDeleteFramebuffers')
        .asFunction<GlDeleteFramebuffers>();
GlGenFramebuffers glGenFramebuffers =
    loadFunction<GlGenFramebuffersNative>(_library, 'glGenFramebuffers')
        .asFunction<GlGenFramebuffers>();
GlCheckFramebufferStatus glCheckFramebufferStatus =
    loadFunction<GlCheckFramebufferStatusNative>(
            _library, 'glCheckFramebufferStatus')
        .asFunction<GlCheckFramebufferStatus>();
GlFramebufferTexture1D glFramebufferTexture1D =
    loadFunction<GlFramebufferTexture1DNative>(
            _library, 'glFramebufferTexture1D')
        .asFunction<GlFramebufferTexture1D>();
GlFramebufferTexture2D glFramebufferTexture2D =
    loadFunction<GlFramebufferTexture2DNative>(
            _library, 'glFramebufferTexture2D')
        .asFunction<GlFramebufferTexture2D>();
GlFramebufferTexture3D glFramebufferTexture3D =
    loadFunction<GlFramebufferTexture3DNative>(
            _library, 'glFramebufferTexture3D')
        .asFunction<GlFramebufferTexture3D>();
GlFramebufferRenderbuffer glFramebufferRenderbuffer =
    loadFunction<GlFramebufferRenderbufferNative>(
            _library, 'glFramebufferRenderbuffer')
        .asFunction<GlFramebufferRenderbuffer>();
GlGetFramebufferAttachmentParameteriv glGetFramebufferAttachmentParameteriv =
    loadFunction<GlGetFramebufferAttachmentParameterivNative>(
            _library, 'glGetFramebufferAttachmentParameteriv')
        .asFunction<GlGetFramebufferAttachmentParameteriv>();
GlGenerateMipmap glGenerateMipmap =
    loadFunction<GlGenerateMipmapNative>(_library, 'glGenerateMipmap')
        .asFunction<GlGenerateMipmap>();
GlBlitFramebuffer glBlitFramebuffer =
    loadFunction<GlBlitFramebufferNative>(_library, 'glBlitFramebuffer')
        .asFunction<GlBlitFramebuffer>();
GlRenderbufferStorageMultisample glRenderbufferStorageMultisample =
    loadFunction<GlRenderbufferStorageMultisampleNative>(
            _library, 'glRenderbufferStorageMultisample')
        .asFunction<GlRenderbufferStorageMultisample>();
GlFramebufferTextureLayer glFramebufferTextureLayer =
    loadFunction<GlFramebufferTextureLayerNative>(
            _library, 'glFramebufferTextureLayer')
        .asFunction<GlFramebufferTextureLayer>();
GlMapBufferRange glMapBufferRange =
    loadFunction<GlMapBufferRangeNative>(_library, 'glMapBufferRange')
        .asFunction<GlMapBufferRange>();
GlFlushMappedBufferRange glFlushMappedBufferRange =
    loadFunction<GlFlushMappedBufferRangeNative>(
            _library, 'glFlushMappedBufferRange')
        .asFunction<GlFlushMappedBufferRange>();
GlBindVertexArray glBindVertexArray =
    loadFunction<GlBindVertexArrayNative>(_library, 'glBindVertexArray')
        .asFunction<GlBindVertexArray>();
GlDeleteVertexArrays glDeleteVertexArrays =
    loadFunction<GlDeleteVertexArraysNative>(_library, 'glDeleteVertexArrays')
        .asFunction<GlDeleteVertexArrays>();
GlGenVertexArrays glGenVertexArrays =
    loadFunction<GlGenVertexArraysNative>(_library, 'glGenVertexArrays')
        .asFunction<GlGenVertexArrays>();
GlIsVertexArray glIsVertexArray =
    loadFunction<GlIsVertexArrayNative>(_library, 'glIsVertexArray')
        .asFunction<GlIsVertexArray>();
GlDrawArraysInstanced glDrawArraysInstanced =
    loadFunction<GlDrawArraysInstancedNative>(_library, 'glDrawArraysInstanced')
        .asFunction<GlDrawArraysInstanced>();
GlDrawElementsInstanced glDrawElementsInstanced =
    loadFunction<GlDrawElementsInstancedNative>(
            _library, 'glDrawElementsInstanced')
        .asFunction<GlDrawElementsInstanced>();
GlTexBuffer glTexBuffer =
    loadFunction<GlTexBufferNative>(_library, 'glTexBuffer')
        .asFunction<GlTexBuffer>();
GlPrimitiveRestartIndex glPrimitiveRestartIndex =
    loadFunction<GlPrimitiveRestartIndexNative>(
            _library, 'glPrimitiveRestartIndex')
        .asFunction<GlPrimitiveRestartIndex>();
GlCopyBufferSubData glCopyBufferSubData =
    loadFunction<GlCopyBufferSubDataNative>(_library, 'glCopyBufferSubData')
        .asFunction<GlCopyBufferSubData>();
GlGetUniformIndices glGetUniformIndices =
    loadFunction<GlGetUniformIndicesNative>(_library, 'glGetUniformIndices')
        .asFunction<GlGetUniformIndices>();
GlGetActiveUniformsiv glGetActiveUniformsiv =
    loadFunction<GlGetActiveUniformsivNative>(_library, 'glGetActiveUniformsiv')
        .asFunction<GlGetActiveUniformsiv>();
GlGetActiveUniformName glGetActiveUniformName =
    loadFunction<GlGetActiveUniformNameNative>(
            _library, 'glGetActiveUniformName')
        .asFunction<GlGetActiveUniformName>();
GlGetUniformBlockIndex glGetUniformBlockIndex =
    loadFunction<GlGetUniformBlockIndexNative>(
            _library, 'glGetUniformBlockIndex')
        .asFunction<GlGetUniformBlockIndex>();
GlGetActiveUniformBlockiv glGetActiveUniformBlockiv =
    loadFunction<GlGetActiveUniformBlockivNative>(
            _library, 'glGetActiveUniformBlockiv')
        .asFunction<GlGetActiveUniformBlockiv>();
GlGetActiveUniformBlockName glGetActiveUniformBlockName =
    loadFunction<GlGetActiveUniformBlockNameNative>(
            _library, 'glGetActiveUniformBlockName')
        .asFunction<GlGetActiveUniformBlockName>();
GlUniformBlockBinding glUniformBlockBinding =
    loadFunction<GlUniformBlockBindingNative>(_library, 'glUniformBlockBinding')
        .asFunction<GlUniformBlockBinding>();
GlDrawElementsBaseVertex glDrawElementsBaseVertex =
    loadFunction<GlDrawElementsBaseVertexNative>(
            _library, 'glDrawElementsBaseVertex')
        .asFunction<GlDrawElementsBaseVertex>();
GlDrawRangeElementsBaseVertex glDrawRangeElementsBaseVertex =
    loadFunction<GlDrawRangeElementsBaseVertexNative>(
            _library, 'glDrawRangeElementsBaseVertex')
        .asFunction<GlDrawRangeElementsBaseVertex>();
GlDrawElementsInstancedBaseVertex glDrawElementsInstancedBaseVertex =
    loadFunction<GlDrawElementsInstancedBaseVertexNative>(
            _library, 'glDrawElementsInstancedBaseVertex')
        .asFunction<GlDrawElementsInstancedBaseVertex>();
GlMultiDrawElementsBaseVertex glMultiDrawElementsBaseVertex =
    loadFunction<GlMultiDrawElementsBaseVertexNative>(
            _library, 'glMultiDrawElementsBaseVertex')
        .asFunction<GlMultiDrawElementsBaseVertex>();
GlProvokingVertex glProvokingVertex =
    loadFunction<GlProvokingVertexNative>(_library, 'glProvokingVertex')
        .asFunction<GlProvokingVertex>();
GlFenceSync glFenceSync =
    loadFunction<GlFenceSyncNative>(_library, 'glFenceSync')
        .asFunction<GlFenceSync>();
GlIsSync glIsSync =
    loadFunction<GlIsSyncNative>(_library, 'glIsSync').asFunction<GlIsSync>();
GlDeleteSync glDeleteSync =
    loadFunction<GlDeleteSyncNative>(_library, 'glDeleteSync')
        .asFunction<GlDeleteSync>();
GlClientWaitSync glClientWaitSync =
    loadFunction<GlClientWaitSyncNative>(_library, 'glClientWaitSync')
        .asFunction<GlClientWaitSync>();
GlWaitSync glWaitSync = loadFunction<GlWaitSyncNative>(_library, 'glWaitSync')
    .asFunction<GlWaitSync>();
GlGetInteger64v glGetInteger64v =
    loadFunction<GlGetInteger64vNative>(_library, 'glGetInteger64v')
        .asFunction<GlGetInteger64v>();
GlGetSynciv glGetSynciv =
    loadFunction<GlGetSyncivNative>(_library, 'glGetSynciv')
        .asFunction<GlGetSynciv>();
GlGetInteger64i_v glGetInteger64i_v =
    loadFunction<GlGetInteger64i_vNative>(_library, 'glGetInteger64i_v')
        .asFunction<GlGetInteger64i_v>();
GlGetBufferParameteri64v glGetBufferParameteri64v =
    loadFunction<GlGetBufferParameteri64vNative>(
            _library, 'glGetBufferParameteri64v')
        .asFunction<GlGetBufferParameteri64v>();
GlFramebufferTexture glFramebufferTexture =
    loadFunction<GlFramebufferTextureNative>(_library, 'glFramebufferTexture')
        .asFunction<GlFramebufferTexture>();
GlTexImage2DMultisample glTexImage2DMultisample =
    loadFunction<GlTexImage2DMultisampleNative>(
            _library, 'glTexImage2DMultisample')
        .asFunction<GlTexImage2DMultisample>();
GlTexImage3DMultisample glTexImage3DMultisample =
    loadFunction<GlTexImage3DMultisampleNative>(
            _library, 'glTexImage3DMultisample')
        .asFunction<GlTexImage3DMultisample>();
GlGetMultisamplefv glGetMultisamplefv =
    loadFunction<GlGetMultisamplefvNative>(_library, 'glGetMultisamplefv')
        .asFunction<GlGetMultisamplefv>();
GlSampleMaski glSampleMaski =
    loadFunction<GlSampleMaskiNative>(_library, 'glSampleMaski')
        .asFunction<GlSampleMaski>();
GlBindFragDataLocationIndexed glBindFragDataLocationIndexed =
    loadFunction<GlBindFragDataLocationIndexedNative>(
            _library, 'glBindFragDataLocationIndexed')
        .asFunction<GlBindFragDataLocationIndexed>();
GlGetFragDataIndex glGetFragDataIndex =
    loadFunction<GlGetFragDataIndexNative>(_library, 'glGetFragDataIndex')
        .asFunction<GlGetFragDataIndex>();
GlGenSamplers glGenSamplers =
    loadFunction<GlGenSamplersNative>(_library, 'glGenSamplers')
        .asFunction<GlGenSamplers>();
GlDeleteSamplers glDeleteSamplers =
    loadFunction<GlDeleteSamplersNative>(_library, 'glDeleteSamplers')
        .asFunction<GlDeleteSamplers>();
GlIsSampler glIsSampler =
    loadFunction<GlIsSamplerNative>(_library, 'glIsSampler')
        .asFunction<GlIsSampler>();
GlBindSampler glBindSampler =
    loadFunction<GlBindSamplerNative>(_library, 'glBindSampler')
        .asFunction<GlBindSampler>();
GlSamplerParameteri glSamplerParameteri =
    loadFunction<GlSamplerParameteriNative>(_library, 'glSamplerParameteri')
        .asFunction<GlSamplerParameteri>();
GlSamplerParameteriv glSamplerParameteriv =
    loadFunction<GlSamplerParameterivNative>(_library, 'glSamplerParameteriv')
        .asFunction<GlSamplerParameteriv>();
GlSamplerParameterf glSamplerParameterf =
    loadFunction<GlSamplerParameterfNative>(_library, 'glSamplerParameterf')
        .asFunction<GlSamplerParameterf>();
GlSamplerParameterfv glSamplerParameterfv =
    loadFunction<GlSamplerParameterfvNative>(_library, 'glSamplerParameterfv')
        .asFunction<GlSamplerParameterfv>();
GlSamplerParameterIiv glSamplerParameterIiv =
    loadFunction<GlSamplerParameterIivNative>(_library, 'glSamplerParameterIiv')
        .asFunction<GlSamplerParameterIiv>();
GlSamplerParameterIuiv glSamplerParameterIuiv =
    loadFunction<GlSamplerParameterIuivNative>(
            _library, 'glSamplerParameterIuiv')
        .asFunction<GlSamplerParameterIuiv>();
GlGetSamplerParameteriv glGetSamplerParameteriv =
    loadFunction<GlGetSamplerParameterivNative>(
            _library, 'glGetSamplerParameteriv')
        .asFunction<GlGetSamplerParameteriv>();
GlGetSamplerParameterIiv glGetSamplerParameterIiv =
    loadFunction<GlGetSamplerParameterIivNative>(
            _library, 'glGetSamplerParameterIiv')
        .asFunction<GlGetSamplerParameterIiv>();
GlGetSamplerParameterfv glGetSamplerParameterfv =
    loadFunction<GlGetSamplerParameterfvNative>(
            _library, 'glGetSamplerParameterfv')
        .asFunction<GlGetSamplerParameterfv>();
GlGetSamplerParameterIuiv glGetSamplerParameterIuiv =
    loadFunction<GlGetSamplerParameterIuivNative>(
            _library, 'glGetSamplerParameterIuiv')
        .asFunction<GlGetSamplerParameterIuiv>();
GlQueryCounter glQueryCounter =
    loadFunction<GlQueryCounterNative>(_library, 'glQueryCounter')
        .asFunction<GlQueryCounter>();
GlGetQueryObjecti64v glGetQueryObjecti64v =
    loadFunction<GlGetQueryObjecti64vNative>(_library, 'glGetQueryObjecti64v')
        .asFunction<GlGetQueryObjecti64v>();
GlGetQueryObjectui64v glGetQueryObjectui64v =
    loadFunction<GlGetQueryObjectui64vNative>(_library, 'glGetQueryObjectui64v')
        .asFunction<GlGetQueryObjectui64v>();
GlVertexAttribDivisor glVertexAttribDivisor =
    loadFunction<GlVertexAttribDivisorNative>(_library, 'glVertexAttribDivisor')
        .asFunction<GlVertexAttribDivisor>();
GlVertexAttribP1ui glVertexAttribP1ui =
    loadFunction<GlVertexAttribP1uiNative>(_library, 'glVertexAttribP1ui')
        .asFunction<GlVertexAttribP1ui>();
GlVertexAttribP1uiv glVertexAttribP1uiv =
    loadFunction<GlVertexAttribP1uivNative>(_library, 'glVertexAttribP1uiv')
        .asFunction<GlVertexAttribP1uiv>();
GlVertexAttribP2ui glVertexAttribP2ui =
    loadFunction<GlVertexAttribP2uiNative>(_library, 'glVertexAttribP2ui')
        .asFunction<GlVertexAttribP2ui>();
GlVertexAttribP2uiv glVertexAttribP2uiv =
    loadFunction<GlVertexAttribP2uivNative>(_library, 'glVertexAttribP2uiv')
        .asFunction<GlVertexAttribP2uiv>();
GlVertexAttribP3ui glVertexAttribP3ui =
    loadFunction<GlVertexAttribP3uiNative>(_library, 'glVertexAttribP3ui')
        .asFunction<GlVertexAttribP3ui>();
GlVertexAttribP3uiv glVertexAttribP3uiv =
    loadFunction<GlVertexAttribP3uivNative>(_library, 'glVertexAttribP3uiv')
        .asFunction<GlVertexAttribP3uiv>();
GlVertexAttribP4ui glVertexAttribP4ui =
    loadFunction<GlVertexAttribP4uiNative>(_library, 'glVertexAttribP4ui')
        .asFunction<GlVertexAttribP4ui>();
GlVertexAttribP4uiv glVertexAttribP4uiv =
    loadFunction<GlVertexAttribP4uivNative>(_library, 'glVertexAttribP4uiv')
        .asFunction<GlVertexAttribP4uiv>();
GlMinSampleShading glMinSampleShading =
    loadFunction<GlMinSampleShadingNative>(_library, 'glMinSampleShading')
        .asFunction<GlMinSampleShading>();
GlBlendEquationi glBlendEquationi =
    loadFunction<GlBlendEquationiNative>(_library, 'glBlendEquationi')
        .asFunction<GlBlendEquationi>();
GlBlendEquationSeparatei glBlendEquationSeparatei =
    loadFunction<GlBlendEquationSeparateiNative>(
            _library, 'glBlendEquationSeparatei')
        .asFunction<GlBlendEquationSeparatei>();
GlBlendFunci glBlendFunci =
    loadFunction<GlBlendFunciNative>(_library, 'glBlendFunci')
        .asFunction<GlBlendFunci>();
GlBlendFuncSeparatei glBlendFuncSeparatei =
    loadFunction<GlBlendFuncSeparateiNative>(_library, 'glBlendFuncSeparatei')
        .asFunction<GlBlendFuncSeparatei>();
GlDrawArraysIndirect glDrawArraysIndirect =
    loadFunction<GlDrawArraysIndirectNative>(_library, 'glDrawArraysIndirect')
        .asFunction<GlDrawArraysIndirect>();
GlDrawElementsIndirect glDrawElementsIndirect =
    loadFunction<GlDrawElementsIndirectNative>(
            _library, 'glDrawElementsIndirect')
        .asFunction<GlDrawElementsIndirect>();
GlUniform1d glUniform1d =
    loadFunction<GlUniform1dNative>(_library, 'glUniform1d')
        .asFunction<GlUniform1d>();
GlUniform2d glUniform2d =
    loadFunction<GlUniform2dNative>(_library, 'glUniform2d')
        .asFunction<GlUniform2d>();
GlUniform3d glUniform3d =
    loadFunction<GlUniform3dNative>(_library, 'glUniform3d')
        .asFunction<GlUniform3d>();
GlUniform4d glUniform4d =
    loadFunction<GlUniform4dNative>(_library, 'glUniform4d')
        .asFunction<GlUniform4d>();
GlUniform1dv glUniform1dv =
    loadFunction<GlUniform1dvNative>(_library, 'glUniform1dv')
        .asFunction<GlUniform1dv>();
GlUniform2dv glUniform2dv =
    loadFunction<GlUniform2dvNative>(_library, 'glUniform2dv')
        .asFunction<GlUniform2dv>();
GlUniform3dv glUniform3dv =
    loadFunction<GlUniform3dvNative>(_library, 'glUniform3dv')
        .asFunction<GlUniform3dv>();
GlUniform4dv glUniform4dv =
    loadFunction<GlUniform4dvNative>(_library, 'glUniform4dv')
        .asFunction<GlUniform4dv>();
GlUniformMatrix2dv glUniformMatrix2dv =
    loadFunction<GlUniformMatrix2dvNative>(_library, 'glUniformMatrix2dv')
        .asFunction<GlUniformMatrix2dv>();
GlUniformMatrix3dv glUniformMatrix3dv =
    loadFunction<GlUniformMatrix3dvNative>(_library, 'glUniformMatrix3dv')
        .asFunction<GlUniformMatrix3dv>();
GlUniformMatrix4dv glUniformMatrix4dv =
    loadFunction<GlUniformMatrix4dvNative>(_library, 'glUniformMatrix4dv')
        .asFunction<GlUniformMatrix4dv>();
GlUniformMatrix2x3dv glUniformMatrix2x3dv =
    loadFunction<GlUniformMatrix2x3dvNative>(_library, 'glUniformMatrix2x3dv')
        .asFunction<GlUniformMatrix2x3dv>();
GlUniformMatrix2x4dv glUniformMatrix2x4dv =
    loadFunction<GlUniformMatrix2x4dvNative>(_library, 'glUniformMatrix2x4dv')
        .asFunction<GlUniformMatrix2x4dv>();
GlUniformMatrix3x2dv glUniformMatrix3x2dv =
    loadFunction<GlUniformMatrix3x2dvNative>(_library, 'glUniformMatrix3x2dv')
        .asFunction<GlUniformMatrix3x2dv>();
GlUniformMatrix3x4dv glUniformMatrix3x4dv =
    loadFunction<GlUniformMatrix3x4dvNative>(_library, 'glUniformMatrix3x4dv')
        .asFunction<GlUniformMatrix3x4dv>();
GlUniformMatrix4x2dv glUniformMatrix4x2dv =
    loadFunction<GlUniformMatrix4x2dvNative>(_library, 'glUniformMatrix4x2dv')
        .asFunction<GlUniformMatrix4x2dv>();
GlUniformMatrix4x3dv glUniformMatrix4x3dv =
    loadFunction<GlUniformMatrix4x3dvNative>(_library, 'glUniformMatrix4x3dv')
        .asFunction<GlUniformMatrix4x3dv>();
GlGetUniformdv glGetUniformdv =
    loadFunction<GlGetUniformdvNative>(_library, 'glGetUniformdv')
        .asFunction<GlGetUniformdv>();
GlGetSubroutineUniformLocation glGetSubroutineUniformLocation =
    loadFunction<GlGetSubroutineUniformLocationNative>(
            _library, 'glGetSubroutineUniformLocation')
        .asFunction<GlGetSubroutineUniformLocation>();
GlGetSubroutineIndex glGetSubroutineIndex =
    loadFunction<GlGetSubroutineIndexNative>(_library, 'glGetSubroutineIndex')
        .asFunction<GlGetSubroutineIndex>();
GlGetActiveSubroutineUniformiv glGetActiveSubroutineUniformiv =
    loadFunction<GlGetActiveSubroutineUniformivNative>(
            _library, 'glGetActiveSubroutineUniformiv')
        .asFunction<GlGetActiveSubroutineUniformiv>();
GlGetActiveSubroutineUniformName glGetActiveSubroutineUniformName =
    loadFunction<GlGetActiveSubroutineUniformNameNative>(
            _library, 'glGetActiveSubroutineUniformName')
        .asFunction<GlGetActiveSubroutineUniformName>();
GlGetActiveSubroutineName glGetActiveSubroutineName =
    loadFunction<GlGetActiveSubroutineNameNative>(
            _library, 'glGetActiveSubroutineName')
        .asFunction<GlGetActiveSubroutineName>();
GlUniformSubroutinesuiv glUniformSubroutinesuiv =
    loadFunction<GlUniformSubroutinesuivNative>(
            _library, 'glUniformSubroutinesuiv')
        .asFunction<GlUniformSubroutinesuiv>();
GlGetUniformSubroutineuiv glGetUniformSubroutineuiv =
    loadFunction<GlGetUniformSubroutineuivNative>(
            _library, 'glGetUniformSubroutineuiv')
        .asFunction<GlGetUniformSubroutineuiv>();
GlGetProgramStageiv glGetProgramStageiv =
    loadFunction<GlGetProgramStageivNative>(_library, 'glGetProgramStageiv')
        .asFunction<GlGetProgramStageiv>();
GlPatchParameteri glPatchParameteri =
    loadFunction<GlPatchParameteriNative>(_library, 'glPatchParameteri')
        .asFunction<GlPatchParameteri>();
GlPatchParameterfv glPatchParameterfv =
    loadFunction<GlPatchParameterfvNative>(_library, 'glPatchParameterfv')
        .asFunction<GlPatchParameterfv>();
GlBindTransformFeedback glBindTransformFeedback =
    loadFunction<GlBindTransformFeedbackNative>(
            _library, 'glBindTransformFeedback')
        .asFunction<GlBindTransformFeedback>();
GlDeleteTransformFeedbacks glDeleteTransformFeedbacks =
    loadFunction<GlDeleteTransformFeedbacksNative>(
            _library, 'glDeleteTransformFeedbacks')
        .asFunction<GlDeleteTransformFeedbacks>();
GlGenTransformFeedbacks glGenTransformFeedbacks =
    loadFunction<GlGenTransformFeedbacksNative>(
            _library, 'glGenTransformFeedbacks')
        .asFunction<GlGenTransformFeedbacks>();
GlIsTransformFeedback glIsTransformFeedback =
    loadFunction<GlIsTransformFeedbackNative>(_library, 'glIsTransformFeedback')
        .asFunction<GlIsTransformFeedback>();
GlPauseTransformFeedback glPauseTransformFeedback =
    loadFunction<GlPauseTransformFeedbackNative>(
            _library, 'glPauseTransformFeedback')
        .asFunction<GlPauseTransformFeedback>();
GlResumeTransformFeedback glResumeTransformFeedback =
    loadFunction<GlResumeTransformFeedbackNative>(
            _library, 'glResumeTransformFeedback')
        .asFunction<GlResumeTransformFeedback>();
GlDrawTransformFeedback glDrawTransformFeedback =
    loadFunction<GlDrawTransformFeedbackNative>(
            _library, 'glDrawTransformFeedback')
        .asFunction<GlDrawTransformFeedback>();
GlDrawTransformFeedbackStream glDrawTransformFeedbackStream =
    loadFunction<GlDrawTransformFeedbackStreamNative>(
            _library, 'glDrawTransformFeedbackStream')
        .asFunction<GlDrawTransformFeedbackStream>();
GlBeginQueryIndexed glBeginQueryIndexed =
    loadFunction<GlBeginQueryIndexedNative>(_library, 'glBeginQueryIndexed')
        .asFunction<GlBeginQueryIndexed>();
GlEndQueryIndexed glEndQueryIndexed =
    loadFunction<GlEndQueryIndexedNative>(_library, 'glEndQueryIndexed')
        .asFunction<GlEndQueryIndexed>();
GlGetQueryIndexediv glGetQueryIndexediv =
    loadFunction<GlGetQueryIndexedivNative>(_library, 'glGetQueryIndexediv')
        .asFunction<GlGetQueryIndexediv>();
GlReleaseShaderCompiler glReleaseShaderCompiler =
    loadFunction<GlReleaseShaderCompilerNative>(
            _library, 'glReleaseShaderCompiler')
        .asFunction<GlReleaseShaderCompiler>();
GlShaderBinary glShaderBinary =
    loadFunction<GlShaderBinaryNative>(_library, 'glShaderBinary')
        .asFunction<GlShaderBinary>();
GlGetShaderPrecisionFormat glGetShaderPrecisionFormat =
    loadFunction<GlGetShaderPrecisionFormatNative>(
            _library, 'glGetShaderPrecisionFormat')
        .asFunction<GlGetShaderPrecisionFormat>();
GlDepthRangef glDepthRangef =
    loadFunction<GlDepthRangefNative>(_library, 'glDepthRangef')
        .asFunction<GlDepthRangef>();
GlClearDepthf glClearDepthf =
    loadFunction<GlClearDepthfNative>(_library, 'glClearDepthf')
        .asFunction<GlClearDepthf>();
GlGetProgramBinary glGetProgramBinary =
    loadFunction<GlGetProgramBinaryNative>(_library, 'glGetProgramBinary')
        .asFunction<GlGetProgramBinary>();
GlProgramBinary glProgramBinary =
    loadFunction<GlProgramBinaryNative>(_library, 'glProgramBinary')
        .asFunction<GlProgramBinary>();
GlProgramParameteri glProgramParameteri =
    loadFunction<GlProgramParameteriNative>(_library, 'glProgramParameteri')
        .asFunction<GlProgramParameteri>();
GlUseProgramStages glUseProgramStages =
    loadFunction<GlUseProgramStagesNative>(_library, 'glUseProgramStages')
        .asFunction<GlUseProgramStages>();
GlActiveShaderProgram glActiveShaderProgram =
    loadFunction<GlActiveShaderProgramNative>(_library, 'glActiveShaderProgram')
        .asFunction<GlActiveShaderProgram>();
GlCreateShaderProgramv glCreateShaderProgramv =
    loadFunction<GlCreateShaderProgramvNative>(
            _library, 'glCreateShaderProgramv')
        .asFunction<GlCreateShaderProgramv>();
GlBindProgramPipeline glBindProgramPipeline =
    loadFunction<GlBindProgramPipelineNative>(_library, 'glBindProgramPipeline')
        .asFunction<GlBindProgramPipeline>();
GlDeleteProgramPipelines glDeleteProgramPipelines =
    loadFunction<GlDeleteProgramPipelinesNative>(
            _library, 'glDeleteProgramPipelines')
        .asFunction<GlDeleteProgramPipelines>();
GlGenProgramPipelines glGenProgramPipelines =
    loadFunction<GlGenProgramPipelinesNative>(_library, 'glGenProgramPipelines')
        .asFunction<GlGenProgramPipelines>();
GlIsProgramPipeline glIsProgramPipeline =
    loadFunction<GlIsProgramPipelineNative>(_library, 'glIsProgramPipeline')
        .asFunction<GlIsProgramPipeline>();
GlGetProgramPipelineiv glGetProgramPipelineiv =
    loadFunction<GlGetProgramPipelineivNative>(
            _library, 'glGetProgramPipelineiv')
        .asFunction<GlGetProgramPipelineiv>();
GlProgramUniform1i glProgramUniform1i =
    loadFunction<GlProgramUniform1iNative>(_library, 'glProgramUniform1i')
        .asFunction<GlProgramUniform1i>();
GlProgramUniform1iv glProgramUniform1iv =
    loadFunction<GlProgramUniform1ivNative>(_library, 'glProgramUniform1iv')
        .asFunction<GlProgramUniform1iv>();
GlProgramUniform1f glProgramUniform1f =
    loadFunction<GlProgramUniform1fNative>(_library, 'glProgramUniform1f')
        .asFunction<GlProgramUniform1f>();
GlProgramUniform1fv glProgramUniform1fv =
    loadFunction<GlProgramUniform1fvNative>(_library, 'glProgramUniform1fv')
        .asFunction<GlProgramUniform1fv>();
GlProgramUniform1d glProgramUniform1d =
    loadFunction<GlProgramUniform1dNative>(_library, 'glProgramUniform1d')
        .asFunction<GlProgramUniform1d>();
GlProgramUniform1dv glProgramUniform1dv =
    loadFunction<GlProgramUniform1dvNative>(_library, 'glProgramUniform1dv')
        .asFunction<GlProgramUniform1dv>();
GlProgramUniform1ui glProgramUniform1ui =
    loadFunction<GlProgramUniform1uiNative>(_library, 'glProgramUniform1ui')
        .asFunction<GlProgramUniform1ui>();
GlProgramUniform1uiv glProgramUniform1uiv =
    loadFunction<GlProgramUniform1uivNative>(_library, 'glProgramUniform1uiv')
        .asFunction<GlProgramUniform1uiv>();
GlProgramUniform2i glProgramUniform2i =
    loadFunction<GlProgramUniform2iNative>(_library, 'glProgramUniform2i')
        .asFunction<GlProgramUniform2i>();
GlProgramUniform2iv glProgramUniform2iv =
    loadFunction<GlProgramUniform2ivNative>(_library, 'glProgramUniform2iv')
        .asFunction<GlProgramUniform2iv>();
GlProgramUniform2f glProgramUniform2f =
    loadFunction<GlProgramUniform2fNative>(_library, 'glProgramUniform2f')
        .asFunction<GlProgramUniform2f>();
GlProgramUniform2fv glProgramUniform2fv =
    loadFunction<GlProgramUniform2fvNative>(_library, 'glProgramUniform2fv')
        .asFunction<GlProgramUniform2fv>();
GlProgramUniform2d glProgramUniform2d =
    loadFunction<GlProgramUniform2dNative>(_library, 'glProgramUniform2d')
        .asFunction<GlProgramUniform2d>();
GlProgramUniform2dv glProgramUniform2dv =
    loadFunction<GlProgramUniform2dvNative>(_library, 'glProgramUniform2dv')
        .asFunction<GlProgramUniform2dv>();
GlProgramUniform2ui glProgramUniform2ui =
    loadFunction<GlProgramUniform2uiNative>(_library, 'glProgramUniform2ui')
        .asFunction<GlProgramUniform2ui>();
GlProgramUniform2uiv glProgramUniform2uiv =
    loadFunction<GlProgramUniform2uivNative>(_library, 'glProgramUniform2uiv')
        .asFunction<GlProgramUniform2uiv>();
GlProgramUniform3i glProgramUniform3i =
    loadFunction<GlProgramUniform3iNative>(_library, 'glProgramUniform3i')
        .asFunction<GlProgramUniform3i>();
GlProgramUniform3iv glProgramUniform3iv =
    loadFunction<GlProgramUniform3ivNative>(_library, 'glProgramUniform3iv')
        .asFunction<GlProgramUniform3iv>();
GlProgramUniform3f glProgramUniform3f =
    loadFunction<GlProgramUniform3fNative>(_library, 'glProgramUniform3f')
        .asFunction<GlProgramUniform3f>();
GlProgramUniform3fv glProgramUniform3fv =
    loadFunction<GlProgramUniform3fvNative>(_library, 'glProgramUniform3fv')
        .asFunction<GlProgramUniform3fv>();
GlProgramUniform3d glProgramUniform3d =
    loadFunction<GlProgramUniform3dNative>(_library, 'glProgramUniform3d')
        .asFunction<GlProgramUniform3d>();
GlProgramUniform3dv glProgramUniform3dv =
    loadFunction<GlProgramUniform3dvNative>(_library, 'glProgramUniform3dv')
        .asFunction<GlProgramUniform3dv>();
GlProgramUniform3ui glProgramUniform3ui =
    loadFunction<GlProgramUniform3uiNative>(_library, 'glProgramUniform3ui')
        .asFunction<GlProgramUniform3ui>();
GlProgramUniform3uiv glProgramUniform3uiv =
    loadFunction<GlProgramUniform3uivNative>(_library, 'glProgramUniform3uiv')
        .asFunction<GlProgramUniform3uiv>();
GlProgramUniform4i glProgramUniform4i =
    loadFunction<GlProgramUniform4iNative>(_library, 'glProgramUniform4i')
        .asFunction<GlProgramUniform4i>();
GlProgramUniform4iv glProgramUniform4iv =
    loadFunction<GlProgramUniform4ivNative>(_library, 'glProgramUniform4iv')
        .asFunction<GlProgramUniform4iv>();
GlProgramUniform4f glProgramUniform4f =
    loadFunction<GlProgramUniform4fNative>(_library, 'glProgramUniform4f')
        .asFunction<GlProgramUniform4f>();
GlProgramUniform4fv glProgramUniform4fv =
    loadFunction<GlProgramUniform4fvNative>(_library, 'glProgramUniform4fv')
        .asFunction<GlProgramUniform4fv>();
GlProgramUniform4d glProgramUniform4d =
    loadFunction<GlProgramUniform4dNative>(_library, 'glProgramUniform4d')
        .asFunction<GlProgramUniform4d>();
GlProgramUniform4dv glProgramUniform4dv =
    loadFunction<GlProgramUniform4dvNative>(_library, 'glProgramUniform4dv')
        .asFunction<GlProgramUniform4dv>();
GlProgramUniform4ui glProgramUniform4ui =
    loadFunction<GlProgramUniform4uiNative>(_library, 'glProgramUniform4ui')
        .asFunction<GlProgramUniform4ui>();
GlProgramUniform4uiv glProgramUniform4uiv =
    loadFunction<GlProgramUniform4uivNative>(_library, 'glProgramUniform4uiv')
        .asFunction<GlProgramUniform4uiv>();
GlProgramUniformMatrix2fv glProgramUniformMatrix2fv =
    loadFunction<GlProgramUniformMatrix2fvNative>(
            _library, 'glProgramUniformMatrix2fv')
        .asFunction<GlProgramUniformMatrix2fv>();
GlProgramUniformMatrix3fv glProgramUniformMatrix3fv =
    loadFunction<GlProgramUniformMatrix3fvNative>(
            _library, 'glProgramUniformMatrix3fv')
        .asFunction<GlProgramUniformMatrix3fv>();
GlProgramUniformMatrix4fv glProgramUniformMatrix4fv =
    loadFunction<GlProgramUniformMatrix4fvNative>(
            _library, 'glProgramUniformMatrix4fv')
        .asFunction<GlProgramUniformMatrix4fv>();
GlProgramUniformMatrix2dv glProgramUniformMatrix2dv =
    loadFunction<GlProgramUniformMatrix2dvNative>(
            _library, 'glProgramUniformMatrix2dv')
        .asFunction<GlProgramUniformMatrix2dv>();
GlProgramUniformMatrix3dv glProgramUniformMatrix3dv =
    loadFunction<GlProgramUniformMatrix3dvNative>(
            _library, 'glProgramUniformMatrix3dv')
        .asFunction<GlProgramUniformMatrix3dv>();
GlProgramUniformMatrix4dv glProgramUniformMatrix4dv =
    loadFunction<GlProgramUniformMatrix4dvNative>(
            _library, 'glProgramUniformMatrix4dv')
        .asFunction<GlProgramUniformMatrix4dv>();
GlProgramUniformMatrix2x3fv glProgramUniformMatrix2x3fv =
    loadFunction<GlProgramUniformMatrix2x3fvNative>(
            _library, 'glProgramUniformMatrix2x3fv')
        .asFunction<GlProgramUniformMatrix2x3fv>();
GlProgramUniformMatrix3x2fv glProgramUniformMatrix3x2fv =
    loadFunction<GlProgramUniformMatrix3x2fvNative>(
            _library, 'glProgramUniformMatrix3x2fv')
        .asFunction<GlProgramUniformMatrix3x2fv>();
GlProgramUniformMatrix2x4fv glProgramUniformMatrix2x4fv =
    loadFunction<GlProgramUniformMatrix2x4fvNative>(
            _library, 'glProgramUniformMatrix2x4fv')
        .asFunction<GlProgramUniformMatrix2x4fv>();
GlProgramUniformMatrix4x2fv glProgramUniformMatrix4x2fv =
    loadFunction<GlProgramUniformMatrix4x2fvNative>(
            _library, 'glProgramUniformMatrix4x2fv')
        .asFunction<GlProgramUniformMatrix4x2fv>();
GlProgramUniformMatrix3x4fv glProgramUniformMatrix3x4fv =
    loadFunction<GlProgramUniformMatrix3x4fvNative>(
            _library, 'glProgramUniformMatrix3x4fv')
        .asFunction<GlProgramUniformMatrix3x4fv>();
GlProgramUniformMatrix4x3fv glProgramUniformMatrix4x3fv =
    loadFunction<GlProgramUniformMatrix4x3fvNative>(
            _library, 'glProgramUniformMatrix4x3fv')
        .asFunction<GlProgramUniformMatrix4x3fv>();
GlProgramUniformMatrix2x3dv glProgramUniformMatrix2x3dv =
    loadFunction<GlProgramUniformMatrix2x3dvNative>(
            _library, 'glProgramUniformMatrix2x3dv')
        .asFunction<GlProgramUniformMatrix2x3dv>();
GlProgramUniformMatrix3x2dv glProgramUniformMatrix3x2dv =
    loadFunction<GlProgramUniformMatrix3x2dvNative>(
            _library, 'glProgramUniformMatrix3x2dv')
        .asFunction<GlProgramUniformMatrix3x2dv>();
GlProgramUniformMatrix2x4dv glProgramUniformMatrix2x4dv =
    loadFunction<GlProgramUniformMatrix2x4dvNative>(
            _library, 'glProgramUniformMatrix2x4dv')
        .asFunction<GlProgramUniformMatrix2x4dv>();
GlProgramUniformMatrix4x2dv glProgramUniformMatrix4x2dv =
    loadFunction<GlProgramUniformMatrix4x2dvNative>(
            _library, 'glProgramUniformMatrix4x2dv')
        .asFunction<GlProgramUniformMatrix4x2dv>();
GlProgramUniformMatrix3x4dv glProgramUniformMatrix3x4dv =
    loadFunction<GlProgramUniformMatrix3x4dvNative>(
            _library, 'glProgramUniformMatrix3x4dv')
        .asFunction<GlProgramUniformMatrix3x4dv>();
GlProgramUniformMatrix4x3dv glProgramUniformMatrix4x3dv =
    loadFunction<GlProgramUniformMatrix4x3dvNative>(
            _library, 'glProgramUniformMatrix4x3dv')
        .asFunction<GlProgramUniformMatrix4x3dv>();
GlValidateProgramPipeline glValidateProgramPipeline =
    loadFunction<GlValidateProgramPipelineNative>(
            _library, 'glValidateProgramPipeline')
        .asFunction<GlValidateProgramPipeline>();
GlGetProgramPipelineInfoLog glGetProgramPipelineInfoLog =
    loadFunction<GlGetProgramPipelineInfoLogNative>(
            _library, 'glGetProgramPipelineInfoLog')
        .asFunction<GlGetProgramPipelineInfoLog>();
GlVertexAttribL1d glVertexAttribL1d =
    loadFunction<GlVertexAttribL1dNative>(_library, 'glVertexAttribL1d')
        .asFunction<GlVertexAttribL1d>();
GlVertexAttribL2d glVertexAttribL2d =
    loadFunction<GlVertexAttribL2dNative>(_library, 'glVertexAttribL2d')
        .asFunction<GlVertexAttribL2d>();
GlVertexAttribL3d glVertexAttribL3d =
    loadFunction<GlVertexAttribL3dNative>(_library, 'glVertexAttribL3d')
        .asFunction<GlVertexAttribL3d>();
GlVertexAttribL4d glVertexAttribL4d =
    loadFunction<GlVertexAttribL4dNative>(_library, 'glVertexAttribL4d')
        .asFunction<GlVertexAttribL4d>();
GlVertexAttribL1dv glVertexAttribL1dv =
    loadFunction<GlVertexAttribL1dvNative>(_library, 'glVertexAttribL1dv')
        .asFunction<GlVertexAttribL1dv>();
GlVertexAttribL2dv glVertexAttribL2dv =
    loadFunction<GlVertexAttribL2dvNative>(_library, 'glVertexAttribL2dv')
        .asFunction<GlVertexAttribL2dv>();
GlVertexAttribL3dv glVertexAttribL3dv =
    loadFunction<GlVertexAttribL3dvNative>(_library, 'glVertexAttribL3dv')
        .asFunction<GlVertexAttribL3dv>();
GlVertexAttribL4dv glVertexAttribL4dv =
    loadFunction<GlVertexAttribL4dvNative>(_library, 'glVertexAttribL4dv')
        .asFunction<GlVertexAttribL4dv>();
GlVertexAttribLPointer glVertexAttribLPointer =
    loadFunction<GlVertexAttribLPointerNative>(
            _library, 'glVertexAttribLPointer')
        .asFunction<GlVertexAttribLPointer>();
GlGetVertexAttribLdv glGetVertexAttribLdv =
    loadFunction<GlGetVertexAttribLdvNative>(_library, 'glGetVertexAttribLdv')
        .asFunction<GlGetVertexAttribLdv>();
GlViewportArrayv glViewportArrayv =
    loadFunction<GlViewportArrayvNative>(_library, 'glViewportArrayv')
        .asFunction<GlViewportArrayv>();
GlViewportIndexedf glViewportIndexedf =
    loadFunction<GlViewportIndexedfNative>(_library, 'glViewportIndexedf')
        .asFunction<GlViewportIndexedf>();
GlViewportIndexedfv glViewportIndexedfv =
    loadFunction<GlViewportIndexedfvNative>(_library, 'glViewportIndexedfv')
        .asFunction<GlViewportIndexedfv>();
GlScissorArrayv glScissorArrayv =
    loadFunction<GlScissorArrayvNative>(_library, 'glScissorArrayv')
        .asFunction<GlScissorArrayv>();
GlScissorIndexed glScissorIndexed =
    loadFunction<GlScissorIndexedNative>(_library, 'glScissorIndexed')
        .asFunction<GlScissorIndexed>();
GlScissorIndexedv glScissorIndexedv =
    loadFunction<GlScissorIndexedvNative>(_library, 'glScissorIndexedv')
        .asFunction<GlScissorIndexedv>();
GlDepthRangeArrayv glDepthRangeArrayv =
    loadFunction<GlDepthRangeArrayvNative>(_library, 'glDepthRangeArrayv')
        .asFunction<GlDepthRangeArrayv>();
GlDepthRangeIndexed glDepthRangeIndexed =
    loadFunction<GlDepthRangeIndexedNative>(_library, 'glDepthRangeIndexed')
        .asFunction<GlDepthRangeIndexed>();
GlGetFloati_v glGetFloati_v =
    loadFunction<GlGetFloati_vNative>(_library, 'glGetFloati_v')
        .asFunction<GlGetFloati_v>();
GlGetDoublei_v glGetDoublei_v =
    loadFunction<GlGetDoublei_vNative>(_library, 'glGetDoublei_v')
        .asFunction<GlGetDoublei_v>();
GlDrawArraysInstancedBaseInstance glDrawArraysInstancedBaseInstance =
    loadFunction<GlDrawArraysInstancedBaseInstanceNative>(
            _library, 'glDrawArraysInstancedBaseInstance')
        .asFunction<GlDrawArraysInstancedBaseInstance>();
GlDrawElementsInstancedBaseInstance glDrawElementsInstancedBaseInstance =
    loadFunction<GlDrawElementsInstancedBaseInstanceNative>(
            _library, 'glDrawElementsInstancedBaseInstance')
        .asFunction<GlDrawElementsInstancedBaseInstance>();
GlDrawElementsInstancedBaseVertexBaseInstance
    glDrawElementsInstancedBaseVertexBaseInstance =
    loadFunction<GlDrawElementsInstancedBaseVertexBaseInstanceNative>(
            _library, 'glDrawElementsInstancedBaseVertexBaseInstance')
        .asFunction<GlDrawElementsInstancedBaseVertexBaseInstance>();
GlGetInternalformativ glGetInternalformativ =
    loadFunction<GlGetInternalformativNative>(_library, 'glGetInternalformativ')
        .asFunction<GlGetInternalformativ>();
GlGetActiveAtomicCounterBufferiv glGetActiveAtomicCounterBufferiv =
    loadFunction<GlGetActiveAtomicCounterBufferivNative>(
            _library, 'glGetActiveAtomicCounterBufferiv')
        .asFunction<GlGetActiveAtomicCounterBufferiv>();
GlBindImageTexture glBindImageTexture =
    loadFunction<GlBindImageTextureNative>(_library, 'glBindImageTexture')
        .asFunction<GlBindImageTexture>();
GlMemoryBarrier glMemoryBarrier =
    loadFunction<GlMemoryBarrierNative>(_library, 'glMemoryBarrier')
        .asFunction<GlMemoryBarrier>();
GlTexStorage1D glTexStorage1D =
    loadFunction<GlTexStorage1DNative>(_library, 'glTexStorage1D')
        .asFunction<GlTexStorage1D>();
GlTexStorage2D glTexStorage2D =
    loadFunction<GlTexStorage2DNative>(_library, 'glTexStorage2D')
        .asFunction<GlTexStorage2D>();
GlTexStorage3D glTexStorage3D =
    loadFunction<GlTexStorage3DNative>(_library, 'glTexStorage3D')
        .asFunction<GlTexStorage3D>();
GlDrawTransformFeedbackInstanced glDrawTransformFeedbackInstanced =
    loadFunction<GlDrawTransformFeedbackInstancedNative>(
            _library, 'glDrawTransformFeedbackInstanced')
        .asFunction<GlDrawTransformFeedbackInstanced>();
GlDrawTransformFeedbackStreamInstanced glDrawTransformFeedbackStreamInstanced =
    loadFunction<GlDrawTransformFeedbackStreamInstancedNative>(
            _library, 'glDrawTransformFeedbackStreamInstanced')
        .asFunction<GlDrawTransformFeedbackStreamInstanced>();
GlClearBufferData glClearBufferData =
    loadFunction<GlClearBufferDataNative>(_library, 'glClearBufferData')
        .asFunction<GlClearBufferData>();
GlClearBufferSubData glClearBufferSubData =
    loadFunction<GlClearBufferSubDataNative>(_library, 'glClearBufferSubData')
        .asFunction<GlClearBufferSubData>();
GlDispatchCompute glDispatchCompute =
    loadFunction<GlDispatchComputeNative>(_library, 'glDispatchCompute')
        .asFunction<GlDispatchCompute>();
GlDispatchComputeIndirect glDispatchComputeIndirect =
    loadFunction<GlDispatchComputeIndirectNative>(
            _library, 'glDispatchComputeIndirect')
        .asFunction<GlDispatchComputeIndirect>();
GlCopyImageSubData glCopyImageSubData =
    loadFunction<GlCopyImageSubDataNative>(_library, 'glCopyImageSubData')
        .asFunction<GlCopyImageSubData>();
GlFramebufferParameteri glFramebufferParameteri =
    loadFunction<GlFramebufferParameteriNative>(
            _library, 'glFramebufferParameteri')
        .asFunction<GlFramebufferParameteri>();
GlGetFramebufferParameteriv glGetFramebufferParameteriv =
    loadFunction<GlGetFramebufferParameterivNative>(
            _library, 'glGetFramebufferParameteriv')
        .asFunction<GlGetFramebufferParameteriv>();
GlGetInternalformati64v glGetInternalformati64v =
    loadFunction<GlGetInternalformati64vNative>(
            _library, 'glGetInternalformati64v')
        .asFunction<GlGetInternalformati64v>();
GlInvalidateTexSubImage glInvalidateTexSubImage =
    loadFunction<GlInvalidateTexSubImageNative>(
            _library, 'glInvalidateTexSubImage')
        .asFunction<GlInvalidateTexSubImage>();
GlInvalidateTexImage glInvalidateTexImage =
    loadFunction<GlInvalidateTexImageNative>(_library, 'glInvalidateTexImage')
        .asFunction<GlInvalidateTexImage>();
GlInvalidateBufferSubData glInvalidateBufferSubData =
    loadFunction<GlInvalidateBufferSubDataNative>(
            _library, 'glInvalidateBufferSubData')
        .asFunction<GlInvalidateBufferSubData>();
GlInvalidateBufferData glInvalidateBufferData =
    loadFunction<GlInvalidateBufferDataNative>(
            _library, 'glInvalidateBufferData')
        .asFunction<GlInvalidateBufferData>();
GlInvalidateFramebuffer glInvalidateFramebuffer =
    loadFunction<GlInvalidateFramebufferNative>(
            _library, 'glInvalidateFramebuffer')
        .asFunction<GlInvalidateFramebuffer>();
GlInvalidateSubFramebuffer glInvalidateSubFramebuffer =
    loadFunction<GlInvalidateSubFramebufferNative>(
            _library, 'glInvalidateSubFramebuffer')
        .asFunction<GlInvalidateSubFramebuffer>();
GlMultiDrawArraysIndirect glMultiDrawArraysIndirect =
    loadFunction<GlMultiDrawArraysIndirectNative>(
            _library, 'glMultiDrawArraysIndirect')
        .asFunction<GlMultiDrawArraysIndirect>();
GlMultiDrawElementsIndirect glMultiDrawElementsIndirect =
    loadFunction<GlMultiDrawElementsIndirectNative>(
            _library, 'glMultiDrawElementsIndirect')
        .asFunction<GlMultiDrawElementsIndirect>();
GlGetProgramInterfaceiv glGetProgramInterfaceiv =
    loadFunction<GlGetProgramInterfaceivNative>(
            _library, 'glGetProgramInterfaceiv')
        .asFunction<GlGetProgramInterfaceiv>();
GlGetProgramResourceIndex glGetProgramResourceIndex =
    loadFunction<GlGetProgramResourceIndexNative>(
            _library, 'glGetProgramResourceIndex')
        .asFunction<GlGetProgramResourceIndex>();
GlGetProgramResourceName glGetProgramResourceName =
    loadFunction<GlGetProgramResourceNameNative>(
            _library, 'glGetProgramResourceName')
        .asFunction<GlGetProgramResourceName>();
GlGetProgramResourceiv glGetProgramResourceiv =
    loadFunction<GlGetProgramResourceivNative>(
            _library, 'glGetProgramResourceiv')
        .asFunction<GlGetProgramResourceiv>();
GlGetProgramResourceLocation glGetProgramResourceLocation =
    loadFunction<GlGetProgramResourceLocationNative>(
            _library, 'glGetProgramResourceLocation')
        .asFunction<GlGetProgramResourceLocation>();
GlGetProgramResourceLocationIndex glGetProgramResourceLocationIndex =
    loadFunction<GlGetProgramResourceLocationIndexNative>(
            _library, 'glGetProgramResourceLocationIndex')
        .asFunction<GlGetProgramResourceLocationIndex>();
GlShaderStorageBlockBinding glShaderStorageBlockBinding =
    loadFunction<GlShaderStorageBlockBindingNative>(
            _library, 'glShaderStorageBlockBinding')
        .asFunction<GlShaderStorageBlockBinding>();
GlTexBufferRange glTexBufferRange =
    loadFunction<GlTexBufferRangeNative>(_library, 'glTexBufferRange')
        .asFunction<GlTexBufferRange>();
GlTexStorage2DMultisample glTexStorage2DMultisample =
    loadFunction<GlTexStorage2DMultisampleNative>(
            _library, 'glTexStorage2DMultisample')
        .asFunction<GlTexStorage2DMultisample>();
GlTexStorage3DMultisample glTexStorage3DMultisample =
    loadFunction<GlTexStorage3DMultisampleNative>(
            _library, 'glTexStorage3DMultisample')
        .asFunction<GlTexStorage3DMultisample>();
GlTextureView glTextureView =
    loadFunction<GlTextureViewNative>(_library, 'glTextureView')
        .asFunction<GlTextureView>();
GlBindVertexBuffer glBindVertexBuffer =
    loadFunction<GlBindVertexBufferNative>(_library, 'glBindVertexBuffer')
        .asFunction<GlBindVertexBuffer>();
GlVertexAttribFormat glVertexAttribFormat =
    loadFunction<GlVertexAttribFormatNative>(_library, 'glVertexAttribFormat')
        .asFunction<GlVertexAttribFormat>();
GlVertexAttribIFormat glVertexAttribIFormat =
    loadFunction<GlVertexAttribIFormatNative>(_library, 'glVertexAttribIFormat')
        .asFunction<GlVertexAttribIFormat>();
GlVertexAttribLFormat glVertexAttribLFormat =
    loadFunction<GlVertexAttribLFormatNative>(_library, 'glVertexAttribLFormat')
        .asFunction<GlVertexAttribLFormat>();
GlVertexAttribBinding glVertexAttribBinding =
    loadFunction<GlVertexAttribBindingNative>(_library, 'glVertexAttribBinding')
        .asFunction<GlVertexAttribBinding>();
GlVertexBindingDivisor glVertexBindingDivisor =
    loadFunction<GlVertexBindingDivisorNative>(
            _library, 'glVertexBindingDivisor')
        .asFunction<GlVertexBindingDivisor>();
GlDebugMessageControl glDebugMessageControl =
    loadFunction<GlDebugMessageControlNative>(_library, 'glDebugMessageControl')
        .asFunction<GlDebugMessageControl>();
GlDebugMessageInsert glDebugMessageInsert =
    loadFunction<GlDebugMessageInsertNative>(_library, 'glDebugMessageInsert')
        .asFunction<GlDebugMessageInsert>();
GlDebugMessageCallback glDebugMessageCallback =
    loadFunction<GlDebugMessageCallbackNative>(
            _library, 'glDebugMessageCallback')
        .asFunction<GlDebugMessageCallback>();
GlGetDebugMessageLog glGetDebugMessageLog =
    loadFunction<GlGetDebugMessageLogNative>(_library, 'glGetDebugMessageLog')
        .asFunction<GlGetDebugMessageLog>();
GlPushDebugGroup glPushDebugGroup =
    loadFunction<GlPushDebugGroupNative>(_library, 'glPushDebugGroup')
        .asFunction<GlPushDebugGroup>();
GlPopDebugGroup glPopDebugGroup =
    loadFunction<GlPopDebugGroupNative>(_library, 'glPopDebugGroup')
        .asFunction<GlPopDebugGroup>();
GlObjectLabel glObjectLabel =
    loadFunction<GlObjectLabelNative>(_library, 'glObjectLabel')
        .asFunction<GlObjectLabel>();
GlGetObjectLabel glGetObjectLabel =
    loadFunction<GlGetObjectLabelNative>(_library, 'glGetObjectLabel')
        .asFunction<GlGetObjectLabel>();
GlObjectPtrLabel glObjectPtrLabel =
    loadFunction<GlObjectPtrLabelNative>(_library, 'glObjectPtrLabel')
        .asFunction<GlObjectPtrLabel>();
GlGetObjectPtrLabel glGetObjectPtrLabel =
    loadFunction<GlGetObjectPtrLabelNative>(_library, 'glGetObjectPtrLabel')
        .asFunction<GlGetObjectPtrLabel>();
GlBufferStorage glBufferStorage =
    loadFunction<GlBufferStorageNative>(_library, 'glBufferStorage')
        .asFunction<GlBufferStorage>();
GlClearTexImage glClearTexImage =
    loadFunction<GlClearTexImageNative>(_library, 'glClearTexImage')
        .asFunction<GlClearTexImage>();
GlClearTexSubImage glClearTexSubImage =
    loadFunction<GlClearTexSubImageNative>(_library, 'glClearTexSubImage')
        .asFunction<GlClearTexSubImage>();
GlBindBuffersBase glBindBuffersBase =
    loadFunction<GlBindBuffersBaseNative>(_library, 'glBindBuffersBase')
        .asFunction<GlBindBuffersBase>();
GlBindBuffersRange glBindBuffersRange =
    loadFunction<GlBindBuffersRangeNative>(_library, 'glBindBuffersRange')
        .asFunction<GlBindBuffersRange>();
GlBindTextures glBindTextures =
    loadFunction<GlBindTexturesNative>(_library, 'glBindTextures')
        .asFunction<GlBindTextures>();
GlBindSamplers glBindSamplers =
    loadFunction<GlBindSamplersNative>(_library, 'glBindSamplers')
        .asFunction<GlBindSamplers>();
GlBindImageTextures glBindImageTextures =
    loadFunction<GlBindImageTexturesNative>(_library, 'glBindImageTextures')
        .asFunction<GlBindImageTextures>();
GlBindVertexBuffers glBindVertexBuffers =
    loadFunction<GlBindVertexBuffersNative>(_library, 'glBindVertexBuffers')
        .asFunction<GlBindVertexBuffers>();
GlClipControl glClipControl =
    loadFunction<GlClipControlNative>(_library, 'glClipControl')
        .asFunction<GlClipControl>();
GlCreateTransformFeedbacks glCreateTransformFeedbacks =
    loadFunction<GlCreateTransformFeedbacksNative>(
            _library, 'glCreateTransformFeedbacks')
        .asFunction<GlCreateTransformFeedbacks>();
GlTransformFeedbackBufferBase glTransformFeedbackBufferBase =
    loadFunction<GlTransformFeedbackBufferBaseNative>(
            _library, 'glTransformFeedbackBufferBase')
        .asFunction<GlTransformFeedbackBufferBase>();
GlTransformFeedbackBufferRange glTransformFeedbackBufferRange =
    loadFunction<GlTransformFeedbackBufferRangeNative>(
            _library, 'glTransformFeedbackBufferRange')
        .asFunction<GlTransformFeedbackBufferRange>();
GlGetTransformFeedbackiv glGetTransformFeedbackiv =
    loadFunction<GlGetTransformFeedbackivNative>(
            _library, 'glGetTransformFeedbackiv')
        .asFunction<GlGetTransformFeedbackiv>();
GlGetTransformFeedbacki_v glGetTransformFeedbacki_v =
    loadFunction<GlGetTransformFeedbacki_vNative>(
            _library, 'glGetTransformFeedbacki_v')
        .asFunction<GlGetTransformFeedbacki_v>();
GlGetTransformFeedbacki64_v glGetTransformFeedbacki64_v =
    loadFunction<GlGetTransformFeedbacki64_vNative>(
            _library, 'glGetTransformFeedbacki64_v')
        .asFunction<GlGetTransformFeedbacki64_v>();
GlCreateBuffers glCreateBuffers =
    loadFunction<GlCreateBuffersNative>(_library, 'glCreateBuffers')
        .asFunction<GlCreateBuffers>();
GlNamedBufferStorage glNamedBufferStorage =
    loadFunction<GlNamedBufferStorageNative>(_library, 'glNamedBufferStorage')
        .asFunction<GlNamedBufferStorage>();
GlNamedBufferData glNamedBufferData =
    loadFunction<GlNamedBufferDataNative>(_library, 'glNamedBufferData')
        .asFunction<GlNamedBufferData>();
GlNamedBufferSubData glNamedBufferSubData =
    loadFunction<GlNamedBufferSubDataNative>(_library, 'glNamedBufferSubData')
        .asFunction<GlNamedBufferSubData>();
GlCopyNamedBufferSubData glCopyNamedBufferSubData =
    loadFunction<GlCopyNamedBufferSubDataNative>(
            _library, 'glCopyNamedBufferSubData')
        .asFunction<GlCopyNamedBufferSubData>();
GlClearNamedBufferData glClearNamedBufferData =
    loadFunction<GlClearNamedBufferDataNative>(
            _library, 'glClearNamedBufferData')
        .asFunction<GlClearNamedBufferData>();
GlClearNamedBufferSubData glClearNamedBufferSubData =
    loadFunction<GlClearNamedBufferSubDataNative>(
            _library, 'glClearNamedBufferSubData')
        .asFunction<GlClearNamedBufferSubData>();
GlMapNamedBuffer glMapNamedBuffer =
    loadFunction<GlMapNamedBufferNative>(_library, 'glMapNamedBuffer')
        .asFunction<GlMapNamedBuffer>();
GlMapNamedBufferRange glMapNamedBufferRange =
    loadFunction<GlMapNamedBufferRangeNative>(_library, 'glMapNamedBufferRange')
        .asFunction<GlMapNamedBufferRange>();
GlUnmapNamedBuffer glUnmapNamedBuffer =
    loadFunction<GlUnmapNamedBufferNative>(_library, 'glUnmapNamedBuffer')
        .asFunction<GlUnmapNamedBuffer>();
GlFlushMappedNamedBufferRange glFlushMappedNamedBufferRange =
    loadFunction<GlFlushMappedNamedBufferRangeNative>(
            _library, 'glFlushMappedNamedBufferRange')
        .asFunction<GlFlushMappedNamedBufferRange>();
GlGetNamedBufferParameteriv glGetNamedBufferParameteriv =
    loadFunction<GlGetNamedBufferParameterivNative>(
            _library, 'glGetNamedBufferParameteriv')
        .asFunction<GlGetNamedBufferParameteriv>();
GlGetNamedBufferParameteri64v glGetNamedBufferParameteri64v =
    loadFunction<GlGetNamedBufferParameteri64vNative>(
            _library, 'glGetNamedBufferParameteri64v')
        .asFunction<GlGetNamedBufferParameteri64v>();
GlGetNamedBufferPointerv glGetNamedBufferPointerv =
    loadFunction<GlGetNamedBufferPointervNative>(
            _library, 'glGetNamedBufferPointerv')
        .asFunction<GlGetNamedBufferPointerv>();
GlGetNamedBufferSubData glGetNamedBufferSubData =
    loadFunction<GlGetNamedBufferSubDataNative>(
            _library, 'glGetNamedBufferSubData')
        .asFunction<GlGetNamedBufferSubData>();
GlCreateFramebuffers glCreateFramebuffers =
    loadFunction<GlCreateFramebuffersNative>(_library, 'glCreateFramebuffers')
        .asFunction<GlCreateFramebuffers>();
GlNamedFramebufferRenderbuffer glNamedFramebufferRenderbuffer =
    loadFunction<GlNamedFramebufferRenderbufferNative>(
            _library, 'glNamedFramebufferRenderbuffer')
        .asFunction<GlNamedFramebufferRenderbuffer>();
GlNamedFramebufferParameteri glNamedFramebufferParameteri =
    loadFunction<GlNamedFramebufferParameteriNative>(
            _library, 'glNamedFramebufferParameteri')
        .asFunction<GlNamedFramebufferParameteri>();
GlNamedFramebufferTexture glNamedFramebufferTexture =
    loadFunction<GlNamedFramebufferTextureNative>(
            _library, 'glNamedFramebufferTexture')
        .asFunction<GlNamedFramebufferTexture>();
GlNamedFramebufferTextureLayer glNamedFramebufferTextureLayer =
    loadFunction<GlNamedFramebufferTextureLayerNative>(
            _library, 'glNamedFramebufferTextureLayer')
        .asFunction<GlNamedFramebufferTextureLayer>();
GlNamedFramebufferDrawBuffer glNamedFramebufferDrawBuffer =
    loadFunction<GlNamedFramebufferDrawBufferNative>(
            _library, 'glNamedFramebufferDrawBuffer')
        .asFunction<GlNamedFramebufferDrawBuffer>();
GlNamedFramebufferDrawBuffers glNamedFramebufferDrawBuffers =
    loadFunction<GlNamedFramebufferDrawBuffersNative>(
            _library, 'glNamedFramebufferDrawBuffers')
        .asFunction<GlNamedFramebufferDrawBuffers>();
GlNamedFramebufferReadBuffer glNamedFramebufferReadBuffer =
    loadFunction<GlNamedFramebufferReadBufferNative>(
            _library, 'glNamedFramebufferReadBuffer')
        .asFunction<GlNamedFramebufferReadBuffer>();
GlInvalidateNamedFramebufferData glInvalidateNamedFramebufferData =
    loadFunction<GlInvalidateNamedFramebufferDataNative>(
            _library, 'glInvalidateNamedFramebufferData')
        .asFunction<GlInvalidateNamedFramebufferData>();
GlInvalidateNamedFramebufferSubData glInvalidateNamedFramebufferSubData =
    loadFunction<GlInvalidateNamedFramebufferSubDataNative>(
            _library, 'glInvalidateNamedFramebufferSubData')
        .asFunction<GlInvalidateNamedFramebufferSubData>();
GlClearNamedFramebufferiv glClearNamedFramebufferiv =
    loadFunction<GlClearNamedFramebufferivNative>(
            _library, 'glClearNamedFramebufferiv')
        .asFunction<GlClearNamedFramebufferiv>();
GlClearNamedFramebufferuiv glClearNamedFramebufferuiv =
    loadFunction<GlClearNamedFramebufferuivNative>(
            _library, 'glClearNamedFramebufferuiv')
        .asFunction<GlClearNamedFramebufferuiv>();
GlClearNamedFramebufferfv glClearNamedFramebufferfv =
    loadFunction<GlClearNamedFramebufferfvNative>(
            _library, 'glClearNamedFramebufferfv')
        .asFunction<GlClearNamedFramebufferfv>();
GlClearNamedFramebufferfi glClearNamedFramebufferfi =
    loadFunction<GlClearNamedFramebufferfiNative>(
            _library, 'glClearNamedFramebufferfi')
        .asFunction<GlClearNamedFramebufferfi>();
GlBlitNamedFramebuffer glBlitNamedFramebuffer =
    loadFunction<GlBlitNamedFramebufferNative>(
            _library, 'glBlitNamedFramebuffer')
        .asFunction<GlBlitNamedFramebuffer>();
GlCheckNamedFramebufferStatus glCheckNamedFramebufferStatus =
    loadFunction<GlCheckNamedFramebufferStatusNative>(
            _library, 'glCheckNamedFramebufferStatus')
        .asFunction<GlCheckNamedFramebufferStatus>();
GlGetNamedFramebufferParameteriv glGetNamedFramebufferParameteriv =
    loadFunction<GlGetNamedFramebufferParameterivNative>(
            _library, 'glGetNamedFramebufferParameteriv')
        .asFunction<GlGetNamedFramebufferParameteriv>();
GlGetNamedFramebufferAttachmentParameteriv
    glGetNamedFramebufferAttachmentParameteriv =
    loadFunction<GlGetNamedFramebufferAttachmentParameterivNative>(
            _library, 'glGetNamedFramebufferAttachmentParameteriv')
        .asFunction<GlGetNamedFramebufferAttachmentParameteriv>();
GlCreateRenderbuffers glCreateRenderbuffers =
    loadFunction<GlCreateRenderbuffersNative>(_library, 'glCreateRenderbuffers')
        .asFunction<GlCreateRenderbuffers>();
GlNamedRenderbufferStorage glNamedRenderbufferStorage =
    loadFunction<GlNamedRenderbufferStorageNative>(
            _library, 'glNamedRenderbufferStorage')
        .asFunction<GlNamedRenderbufferStorage>();
GlNamedRenderbufferStorageMultisample glNamedRenderbufferStorageMultisample =
    loadFunction<GlNamedRenderbufferStorageMultisampleNative>(
            _library, 'glNamedRenderbufferStorageMultisample')
        .asFunction<GlNamedRenderbufferStorageMultisample>();
GlGetNamedRenderbufferParameteriv glGetNamedRenderbufferParameteriv =
    loadFunction<GlGetNamedRenderbufferParameterivNative>(
            _library, 'glGetNamedRenderbufferParameteriv')
        .asFunction<GlGetNamedRenderbufferParameteriv>();
GlCreateTextures glCreateTextures =
    loadFunction<GlCreateTexturesNative>(_library, 'glCreateTextures')
        .asFunction<GlCreateTextures>();
GlTextureBuffer glTextureBuffer =
    loadFunction<GlTextureBufferNative>(_library, 'glTextureBuffer')
        .asFunction<GlTextureBuffer>();
GlTextureBufferRange glTextureBufferRange =
    loadFunction<GlTextureBufferRangeNative>(_library, 'glTextureBufferRange')
        .asFunction<GlTextureBufferRange>();
GlTextureStorage1D glTextureStorage1D =
    loadFunction<GlTextureStorage1DNative>(_library, 'glTextureStorage1D')
        .asFunction<GlTextureStorage1D>();
GlTextureStorage2D glTextureStorage2D =
    loadFunction<GlTextureStorage2DNative>(_library, 'glTextureStorage2D')
        .asFunction<GlTextureStorage2D>();
GlTextureStorage3D glTextureStorage3D =
    loadFunction<GlTextureStorage3DNative>(_library, 'glTextureStorage3D')
        .asFunction<GlTextureStorage3D>();
GlTextureStorage2DMultisample glTextureStorage2DMultisample =
    loadFunction<GlTextureStorage2DMultisampleNative>(
            _library, 'glTextureStorage2DMultisample')
        .asFunction<GlTextureStorage2DMultisample>();
GlTextureStorage3DMultisample glTextureStorage3DMultisample =
    loadFunction<GlTextureStorage3DMultisampleNative>(
            _library, 'glTextureStorage3DMultisample')
        .asFunction<GlTextureStorage3DMultisample>();
GlTextureSubImage1D glTextureSubImage1D =
    loadFunction<GlTextureSubImage1DNative>(_library, 'glTextureSubImage1D')
        .asFunction<GlTextureSubImage1D>();
GlTextureSubImage2D glTextureSubImage2D =
    loadFunction<GlTextureSubImage2DNative>(_library, 'glTextureSubImage2D')
        .asFunction<GlTextureSubImage2D>();
GlTextureSubImage3D glTextureSubImage3D =
    loadFunction<GlTextureSubImage3DNative>(_library, 'glTextureSubImage3D')
        .asFunction<GlTextureSubImage3D>();
GlCompressedTextureSubImage1D glCompressedTextureSubImage1D =
    loadFunction<GlCompressedTextureSubImage1DNative>(
            _library, 'glCompressedTextureSubImage1D')
        .asFunction<GlCompressedTextureSubImage1D>();
GlCompressedTextureSubImage2D glCompressedTextureSubImage2D =
    loadFunction<GlCompressedTextureSubImage2DNative>(
            _library, 'glCompressedTextureSubImage2D')
        .asFunction<GlCompressedTextureSubImage2D>();
GlCompressedTextureSubImage3D glCompressedTextureSubImage3D =
    loadFunction<GlCompressedTextureSubImage3DNative>(
            _library, 'glCompressedTextureSubImage3D')
        .asFunction<GlCompressedTextureSubImage3D>();
GlCopyTextureSubImage1D glCopyTextureSubImage1D =
    loadFunction<GlCopyTextureSubImage1DNative>(
            _library, 'glCopyTextureSubImage1D')
        .asFunction<GlCopyTextureSubImage1D>();
GlCopyTextureSubImage2D glCopyTextureSubImage2D =
    loadFunction<GlCopyTextureSubImage2DNative>(
            _library, 'glCopyTextureSubImage2D')
        .asFunction<GlCopyTextureSubImage2D>();
GlCopyTextureSubImage3D glCopyTextureSubImage3D =
    loadFunction<GlCopyTextureSubImage3DNative>(
            _library, 'glCopyTextureSubImage3D')
        .asFunction<GlCopyTextureSubImage3D>();
GlTextureParameterf glTextureParameterf =
    loadFunction<GlTextureParameterfNative>(_library, 'glTextureParameterf')
        .asFunction<GlTextureParameterf>();
GlTextureParameterfv glTextureParameterfv =
    loadFunction<GlTextureParameterfvNative>(_library, 'glTextureParameterfv')
        .asFunction<GlTextureParameterfv>();
GlTextureParameteri glTextureParameteri =
    loadFunction<GlTextureParameteriNative>(_library, 'glTextureParameteri')
        .asFunction<GlTextureParameteri>();
GlTextureParameterIiv glTextureParameterIiv =
    loadFunction<GlTextureParameterIivNative>(_library, 'glTextureParameterIiv')
        .asFunction<GlTextureParameterIiv>();
GlTextureParameterIuiv glTextureParameterIuiv =
    loadFunction<GlTextureParameterIuivNative>(
            _library, 'glTextureParameterIuiv')
        .asFunction<GlTextureParameterIuiv>();
GlTextureParameteriv glTextureParameteriv =
    loadFunction<GlTextureParameterivNative>(_library, 'glTextureParameteriv')
        .asFunction<GlTextureParameteriv>();
GlGenerateTextureMipmap glGenerateTextureMipmap =
    loadFunction<GlGenerateTextureMipmapNative>(
            _library, 'glGenerateTextureMipmap')
        .asFunction<GlGenerateTextureMipmap>();
GlBindTextureUnit glBindTextureUnit =
    loadFunction<GlBindTextureUnitNative>(_library, 'glBindTextureUnit')
        .asFunction<GlBindTextureUnit>();
GlGetTextureImage glGetTextureImage =
    loadFunction<GlGetTextureImageNative>(_library, 'glGetTextureImage')
        .asFunction<GlGetTextureImage>();
GlGetCompressedTextureImage glGetCompressedTextureImage =
    loadFunction<GlGetCompressedTextureImageNative>(
            _library, 'glGetCompressedTextureImage')
        .asFunction<GlGetCompressedTextureImage>();
GlGetTextureLevelParameterfv glGetTextureLevelParameterfv =
    loadFunction<GlGetTextureLevelParameterfvNative>(
            _library, 'glGetTextureLevelParameterfv')
        .asFunction<GlGetTextureLevelParameterfv>();
GlGetTextureLevelParameteriv glGetTextureLevelParameteriv =
    loadFunction<GlGetTextureLevelParameterivNative>(
            _library, 'glGetTextureLevelParameteriv')
        .asFunction<GlGetTextureLevelParameteriv>();
GlGetTextureParameterfv glGetTextureParameterfv =
    loadFunction<GlGetTextureParameterfvNative>(
            _library, 'glGetTextureParameterfv')
        .asFunction<GlGetTextureParameterfv>();
GlGetTextureParameterIiv glGetTextureParameterIiv =
    loadFunction<GlGetTextureParameterIivNative>(
            _library, 'glGetTextureParameterIiv')
        .asFunction<GlGetTextureParameterIiv>();
GlGetTextureParameterIuiv glGetTextureParameterIuiv =
    loadFunction<GlGetTextureParameterIuivNative>(
            _library, 'glGetTextureParameterIuiv')
        .asFunction<GlGetTextureParameterIuiv>();
GlGetTextureParameteriv glGetTextureParameteriv =
    loadFunction<GlGetTextureParameterivNative>(
            _library, 'glGetTextureParameteriv')
        .asFunction<GlGetTextureParameteriv>();
GlCreateVertexArrays glCreateVertexArrays =
    loadFunction<GlCreateVertexArraysNative>(_library, 'glCreateVertexArrays')
        .asFunction<GlCreateVertexArrays>();
GlDisableVertexArrayAttrib glDisableVertexArrayAttrib =
    loadFunction<GlDisableVertexArrayAttribNative>(
            _library, 'glDisableVertexArrayAttrib')
        .asFunction<GlDisableVertexArrayAttrib>();
GlEnableVertexArrayAttrib glEnableVertexArrayAttrib =
    loadFunction<GlEnableVertexArrayAttribNative>(
            _library, 'glEnableVertexArrayAttrib')
        .asFunction<GlEnableVertexArrayAttrib>();
GlVertexArrayElementBuffer glVertexArrayElementBuffer =
    loadFunction<GlVertexArrayElementBufferNative>(
            _library, 'glVertexArrayElementBuffer')
        .asFunction<GlVertexArrayElementBuffer>();
GlVertexArrayVertexBuffer glVertexArrayVertexBuffer =
    loadFunction<GlVertexArrayVertexBufferNative>(
            _library, 'glVertexArrayVertexBuffer')
        .asFunction<GlVertexArrayVertexBuffer>();
GlVertexArrayVertexBuffers glVertexArrayVertexBuffers =
    loadFunction<GlVertexArrayVertexBuffersNative>(
            _library, 'glVertexArrayVertexBuffers')
        .asFunction<GlVertexArrayVertexBuffers>();
GlVertexArrayAttribBinding glVertexArrayAttribBinding =
    loadFunction<GlVertexArrayAttribBindingNative>(
            _library, 'glVertexArrayAttribBinding')
        .asFunction<GlVertexArrayAttribBinding>();
GlVertexArrayAttribFormat glVertexArrayAttribFormat =
    loadFunction<GlVertexArrayAttribFormatNative>(
            _library, 'glVertexArrayAttribFormat')
        .asFunction<GlVertexArrayAttribFormat>();
GlVertexArrayAttribIFormat glVertexArrayAttribIFormat =
    loadFunction<GlVertexArrayAttribIFormatNative>(
            _library, 'glVertexArrayAttribIFormat')
        .asFunction<GlVertexArrayAttribIFormat>();
GlVertexArrayAttribLFormat glVertexArrayAttribLFormat =
    loadFunction<GlVertexArrayAttribLFormatNative>(
            _library, 'glVertexArrayAttribLFormat')
        .asFunction<GlVertexArrayAttribLFormat>();
GlVertexArrayBindingDivisor glVertexArrayBindingDivisor =
    loadFunction<GlVertexArrayBindingDivisorNative>(
            _library, 'glVertexArrayBindingDivisor')
        .asFunction<GlVertexArrayBindingDivisor>();
GlGetVertexArrayiv glGetVertexArrayiv =
    loadFunction<GlGetVertexArrayivNative>(_library, 'glGetVertexArrayiv')
        .asFunction<GlGetVertexArrayiv>();
GlGetVertexArrayIndexediv glGetVertexArrayIndexediv =
    loadFunction<GlGetVertexArrayIndexedivNative>(
            _library, 'glGetVertexArrayIndexediv')
        .asFunction<GlGetVertexArrayIndexediv>();
GlGetVertexArrayIndexed64iv glGetVertexArrayIndexed64iv =
    loadFunction<GlGetVertexArrayIndexed64ivNative>(
            _library, 'glGetVertexArrayIndexed64iv')
        .asFunction<GlGetVertexArrayIndexed64iv>();
GlCreateSamplers glCreateSamplers =
    loadFunction<GlCreateSamplersNative>(_library, 'glCreateSamplers')
        .asFunction<GlCreateSamplers>();
GlCreateProgramPipelines glCreateProgramPipelines =
    loadFunction<GlCreateProgramPipelinesNative>(
            _library, 'glCreateProgramPipelines')
        .asFunction<GlCreateProgramPipelines>();
GlCreateQueries glCreateQueries =
    loadFunction<GlCreateQueriesNative>(_library, 'glCreateQueries')
        .asFunction<GlCreateQueries>();
GlGetQueryBufferObjecti64v glGetQueryBufferObjecti64v =
    loadFunction<GlGetQueryBufferObjecti64vNative>(
            _library, 'glGetQueryBufferObjecti64v')
        .asFunction<GlGetQueryBufferObjecti64v>();
GlGetQueryBufferObjectiv glGetQueryBufferObjectiv =
    loadFunction<GlGetQueryBufferObjectivNative>(
            _library, 'glGetQueryBufferObjectiv')
        .asFunction<GlGetQueryBufferObjectiv>();
GlGetQueryBufferObjectui64v glGetQueryBufferObjectui64v =
    loadFunction<GlGetQueryBufferObjectui64vNative>(
            _library, 'glGetQueryBufferObjectui64v')
        .asFunction<GlGetQueryBufferObjectui64v>();
GlGetQueryBufferObjectuiv glGetQueryBufferObjectuiv =
    loadFunction<GlGetQueryBufferObjectuivNative>(
            _library, 'glGetQueryBufferObjectuiv')
        .asFunction<GlGetQueryBufferObjectuiv>();
GlMemoryBarrierByRegion glMemoryBarrierByRegion =
    loadFunction<GlMemoryBarrierByRegionNative>(
            _library, 'glMemoryBarrierByRegion')
        .asFunction<GlMemoryBarrierByRegion>();
GlGetTextureSubImage glGetTextureSubImage =
    loadFunction<GlGetTextureSubImageNative>(_library, 'glGetTextureSubImage')
        .asFunction<GlGetTextureSubImage>();
GlGetCompressedTextureSubImage glGetCompressedTextureSubImage =
    loadFunction<GlGetCompressedTextureSubImageNative>(
            _library, 'glGetCompressedTextureSubImage')
        .asFunction<GlGetCompressedTextureSubImage>();
GlGetGraphicsResetStatus glGetGraphicsResetStatus =
    loadFunction<GlGetGraphicsResetStatusNative>(
            _library, 'glGetGraphicsResetStatus')
        .asFunction<GlGetGraphicsResetStatus>();
GlGetnCompressedTexImage glGetnCompressedTexImage =
    loadFunction<GlGetnCompressedTexImageNative>(
            _library, 'glGetnCompressedTexImage')
        .asFunction<GlGetnCompressedTexImage>();
GlGetnTexImage glGetnTexImage =
    loadFunction<GlGetnTexImageNative>(_library, 'glGetnTexImage')
        .asFunction<GlGetnTexImage>();
GlGetnUniformdv glGetnUniformdv =
    loadFunction<GlGetnUniformdvNative>(_library, 'glGetnUniformdv')
        .asFunction<GlGetnUniformdv>();
GlGetnUniformfv glGetnUniformfv =
    loadFunction<GlGetnUniformfvNative>(_library, 'glGetnUniformfv')
        .asFunction<GlGetnUniformfv>();
GlGetnUniformiv glGetnUniformiv =
    loadFunction<GlGetnUniformivNative>(_library, 'glGetnUniformiv')
        .asFunction<GlGetnUniformiv>();
GlGetnUniformuiv glGetnUniformuiv =
    loadFunction<GlGetnUniformuivNative>(_library, 'glGetnUniformuiv')
        .asFunction<GlGetnUniformuiv>();
GlReadnPixels glReadnPixels =
    loadFunction<GlReadnPixelsNative>(_library, 'glReadnPixels')
        .asFunction<GlReadnPixels>();
GlTextureBarrier glTextureBarrier =
    loadFunction<GlTextureBarrierNative>(_library, 'glTextureBarrier')
        .asFunction<GlTextureBarrier>();
GlSpecializeShader glSpecializeShader =
    loadFunction<GlSpecializeShaderNative>(_library, 'glSpecializeShader')
        .asFunction<GlSpecializeShader>();
GlMultiDrawArraysIndirectCount glMultiDrawArraysIndirectCount =
    loadFunction<GlMultiDrawArraysIndirectCountNative>(
            _library, 'glMultiDrawArraysIndirectCount')
        .asFunction<GlMultiDrawArraysIndirectCount>();
GlMultiDrawElementsIndirectCount glMultiDrawElementsIndirectCount =
    loadFunction<GlMultiDrawElementsIndirectCountNative>(
            _library, 'glMultiDrawElementsIndirectCount')
        .asFunction<GlMultiDrawElementsIndirectCount>();
GlPolygonOffsetClamp glPolygonOffsetClamp =
    loadFunction<GlPolygonOffsetClampNative>(_library, 'glPolygonOffsetClamp')
        .asFunction<GlPolygonOffsetClamp>();
GlPrimitiveBoundingBoxARB glPrimitiveBoundingBoxARB =
    loadFunction<GlPrimitiveBoundingBoxARBNative>(
            _library, 'glPrimitiveBoundingBoxARB')
        .asFunction<GlPrimitiveBoundingBoxARB>();
GlGetTextureHandleARB glGetTextureHandleARB =
    loadFunction<GlGetTextureHandleARBNative>(_library, 'glGetTextureHandleARB')
        .asFunction<GlGetTextureHandleARB>();
GlGetTextureSamplerHandleARB glGetTextureSamplerHandleARB =
    loadFunction<GlGetTextureSamplerHandleARBNative>(
            _library, 'glGetTextureSamplerHandleARB')
        .asFunction<GlGetTextureSamplerHandleARB>();
GlMakeTextureHandleResidentARB glMakeTextureHandleResidentARB =
    loadFunction<GlMakeTextureHandleResidentARBNative>(
            _library, 'glMakeTextureHandleResidentARB')
        .asFunction<GlMakeTextureHandleResidentARB>();
GlMakeTextureHandleNonResidentARB glMakeTextureHandleNonResidentARB =
    loadFunction<GlMakeTextureHandleNonResidentARBNative>(
            _library, 'glMakeTextureHandleNonResidentARB')
        .asFunction<GlMakeTextureHandleNonResidentARB>();
GlGetImageHandleARB glGetImageHandleARB =
    loadFunction<GlGetImageHandleARBNative>(_library, 'glGetImageHandleARB')
        .asFunction<GlGetImageHandleARB>();
GlMakeImageHandleResidentARB glMakeImageHandleResidentARB =
    loadFunction<GlMakeImageHandleResidentARBNative>(
            _library, 'glMakeImageHandleResidentARB')
        .asFunction<GlMakeImageHandleResidentARB>();
GlMakeImageHandleNonResidentARB glMakeImageHandleNonResidentARB =
    loadFunction<GlMakeImageHandleNonResidentARBNative>(
            _library, 'glMakeImageHandleNonResidentARB')
        .asFunction<GlMakeImageHandleNonResidentARB>();
GlUniformHandleui64ARB glUniformHandleui64ARB =
    loadFunction<GlUniformHandleui64ARBNative>(
            _library, 'glUniformHandleui64ARB')
        .asFunction<GlUniformHandleui64ARB>();
GlUniformHandleui64vARB glUniformHandleui64vARB =
    loadFunction<GlUniformHandleui64vARBNative>(
            _library, 'glUniformHandleui64vARB')
        .asFunction<GlUniformHandleui64vARB>();
GlProgramUniformHandleui64ARB glProgramUniformHandleui64ARB =
    loadFunction<GlProgramUniformHandleui64ARBNative>(
            _library, 'glProgramUniformHandleui64ARB')
        .asFunction<GlProgramUniformHandleui64ARB>();
GlProgramUniformHandleui64vARB glProgramUniformHandleui64vARB =
    loadFunction<GlProgramUniformHandleui64vARBNative>(
            _library, 'glProgramUniformHandleui64vARB')
        .asFunction<GlProgramUniformHandleui64vARB>();
GlIsTextureHandleResidentARB glIsTextureHandleResidentARB =
    loadFunction<GlIsTextureHandleResidentARBNative>(
            _library, 'glIsTextureHandleResidentARB')
        .asFunction<GlIsTextureHandleResidentARB>();
GlIsImageHandleResidentARB glIsImageHandleResidentARB =
    loadFunction<GlIsImageHandleResidentARBNative>(
            _library, 'glIsImageHandleResidentARB')
        .asFunction<GlIsImageHandleResidentARB>();
GlVertexAttribL1ui64ARB glVertexAttribL1ui64ARB =
    loadFunction<GlVertexAttribL1ui64ARBNative>(
            _library, 'glVertexAttribL1ui64ARB')
        .asFunction<GlVertexAttribL1ui64ARB>();
GlVertexAttribL1ui64vARB glVertexAttribL1ui64vARB =
    loadFunction<GlVertexAttribL1ui64vARBNative>(
            _library, 'glVertexAttribL1ui64vARB')
        .asFunction<GlVertexAttribL1ui64vARB>();
GlGetVertexAttribLui64vARB glGetVertexAttribLui64vARB =
    loadFunction<GlGetVertexAttribLui64vARBNative>(
            _library, 'glGetVertexAttribLui64vARB')
        .asFunction<GlGetVertexAttribLui64vARB>();
GlCreateSyncFromCLeventARB glCreateSyncFromCLeventARB =
    loadFunction<GlCreateSyncFromCLeventARBNative>(
            _library, 'glCreateSyncFromCLeventARB')
        .asFunction<GlCreateSyncFromCLeventARB>();
GlDispatchComputeGroupSizeARB glDispatchComputeGroupSizeARB =
    loadFunction<GlDispatchComputeGroupSizeARBNative>(
            _library, 'glDispatchComputeGroupSizeARB')
        .asFunction<GlDispatchComputeGroupSizeARB>();
GlDebugMessageControlARB glDebugMessageControlARB =
    loadFunction<GlDebugMessageControlARBNative>(
            _library, 'glDebugMessageControlARB')
        .asFunction<GlDebugMessageControlARB>();
GlDebugMessageInsertARB glDebugMessageInsertARB =
    loadFunction<GlDebugMessageInsertARBNative>(
            _library, 'glDebugMessageInsertARB')
        .asFunction<GlDebugMessageInsertARB>();
GlDebugMessageCallbackARB glDebugMessageCallbackARB =
    loadFunction<GlDebugMessageCallbackARBNative>(
            _library, 'glDebugMessageCallbackARB')
        .asFunction<GlDebugMessageCallbackARB>();
GlGetDebugMessageLogARB glGetDebugMessageLogARB =
    loadFunction<GlGetDebugMessageLogARBNative>(
            _library, 'glGetDebugMessageLogARB')
        .asFunction<GlGetDebugMessageLogARB>();
GlBlendEquationiARB glBlendEquationiARB =
    loadFunction<GlBlendEquationiARBNative>(_library, 'glBlendEquationiARB')
        .asFunction<GlBlendEquationiARB>();
GlBlendEquationSeparateiARB glBlendEquationSeparateiARB =
    loadFunction<GlBlendEquationSeparateiARBNative>(
            _library, 'glBlendEquationSeparateiARB')
        .asFunction<GlBlendEquationSeparateiARB>();
GlBlendFunciARB glBlendFunciARB =
    loadFunction<GlBlendFunciARBNative>(_library, 'glBlendFunciARB')
        .asFunction<GlBlendFunciARB>();
GlBlendFuncSeparateiARB glBlendFuncSeparateiARB =
    loadFunction<GlBlendFuncSeparateiARBNative>(
            _library, 'glBlendFuncSeparateiARB')
        .asFunction<GlBlendFuncSeparateiARB>();
GlDrawArraysInstancedARB glDrawArraysInstancedARB =
    loadFunction<GlDrawArraysInstancedARBNative>(
            _library, 'glDrawArraysInstancedARB')
        .asFunction<GlDrawArraysInstancedARB>();
GlDrawElementsInstancedARB glDrawElementsInstancedARB =
    loadFunction<GlDrawElementsInstancedARBNative>(
            _library, 'glDrawElementsInstancedARB')
        .asFunction<GlDrawElementsInstancedARB>();
GlProgramParameteriARB glProgramParameteriARB =
    loadFunction<GlProgramParameteriARBNative>(
            _library, 'glProgramParameteriARB')
        .asFunction<GlProgramParameteriARB>();
GlFramebufferTextureARB glFramebufferTextureARB =
    loadFunction<GlFramebufferTextureARBNative>(
            _library, 'glFramebufferTextureARB')
        .asFunction<GlFramebufferTextureARB>();
GlFramebufferTextureLayerARB glFramebufferTextureLayerARB =
    loadFunction<GlFramebufferTextureLayerARBNative>(
            _library, 'glFramebufferTextureLayerARB')
        .asFunction<GlFramebufferTextureLayerARB>();
GlFramebufferTextureFaceARB glFramebufferTextureFaceARB =
    loadFunction<GlFramebufferTextureFaceARBNative>(
            _library, 'glFramebufferTextureFaceARB')
        .asFunction<GlFramebufferTextureFaceARB>();
GlSpecializeShaderARB glSpecializeShaderARB =
    loadFunction<GlSpecializeShaderARBNative>(_library, 'glSpecializeShaderARB')
        .asFunction<GlSpecializeShaderARB>();
GlUniform1i64ARB glUniform1i64ARB =
    loadFunction<GlUniform1i64ARBNative>(_library, 'glUniform1i64ARB')
        .asFunction<GlUniform1i64ARB>();
GlUniform2i64ARB glUniform2i64ARB =
    loadFunction<GlUniform2i64ARBNative>(_library, 'glUniform2i64ARB')
        .asFunction<GlUniform2i64ARB>();
GlUniform3i64ARB glUniform3i64ARB =
    loadFunction<GlUniform3i64ARBNative>(_library, 'glUniform3i64ARB')
        .asFunction<GlUniform3i64ARB>();
GlUniform4i64ARB glUniform4i64ARB =
    loadFunction<GlUniform4i64ARBNative>(_library, 'glUniform4i64ARB')
        .asFunction<GlUniform4i64ARB>();
GlUniform1i64vARB glUniform1i64vARB =
    loadFunction<GlUniform1i64vARBNative>(_library, 'glUniform1i64vARB')
        .asFunction<GlUniform1i64vARB>();
GlUniform2i64vARB glUniform2i64vARB =
    loadFunction<GlUniform2i64vARBNative>(_library, 'glUniform2i64vARB')
        .asFunction<GlUniform2i64vARB>();
GlUniform3i64vARB glUniform3i64vARB =
    loadFunction<GlUniform3i64vARBNative>(_library, 'glUniform3i64vARB')
        .asFunction<GlUniform3i64vARB>();
GlUniform4i64vARB glUniform4i64vARB =
    loadFunction<GlUniform4i64vARBNative>(_library, 'glUniform4i64vARB')
        .asFunction<GlUniform4i64vARB>();
GlUniform1ui64ARB glUniform1ui64ARB =
    loadFunction<GlUniform1ui64ARBNative>(_library, 'glUniform1ui64ARB')
        .asFunction<GlUniform1ui64ARB>();
GlUniform2ui64ARB glUniform2ui64ARB =
    loadFunction<GlUniform2ui64ARBNative>(_library, 'glUniform2ui64ARB')
        .asFunction<GlUniform2ui64ARB>();
GlUniform3ui64ARB glUniform3ui64ARB =
    loadFunction<GlUniform3ui64ARBNative>(_library, 'glUniform3ui64ARB')
        .asFunction<GlUniform3ui64ARB>();
GlUniform4ui64ARB glUniform4ui64ARB =
    loadFunction<GlUniform4ui64ARBNative>(_library, 'glUniform4ui64ARB')
        .asFunction<GlUniform4ui64ARB>();
GlUniform1ui64vARB glUniform1ui64vARB =
    loadFunction<GlUniform1ui64vARBNative>(_library, 'glUniform1ui64vARB')
        .asFunction<GlUniform1ui64vARB>();
GlUniform2ui64vARB glUniform2ui64vARB =
    loadFunction<GlUniform2ui64vARBNative>(_library, 'glUniform2ui64vARB')
        .asFunction<GlUniform2ui64vARB>();
GlUniform3ui64vARB glUniform3ui64vARB =
    loadFunction<GlUniform3ui64vARBNative>(_library, 'glUniform3ui64vARB')
        .asFunction<GlUniform3ui64vARB>();
GlUniform4ui64vARB glUniform4ui64vARB =
    loadFunction<GlUniform4ui64vARBNative>(_library, 'glUniform4ui64vARB')
        .asFunction<GlUniform4ui64vARB>();
GlGetUniformi64vARB glGetUniformi64vARB =
    loadFunction<GlGetUniformi64vARBNative>(_library, 'glGetUniformi64vARB')
        .asFunction<GlGetUniformi64vARB>();
GlGetUniformui64vARB glGetUniformui64vARB =
    loadFunction<GlGetUniformui64vARBNative>(_library, 'glGetUniformui64vARB')
        .asFunction<GlGetUniformui64vARB>();
GlGetnUniformi64vARB glGetnUniformi64vARB =
    loadFunction<GlGetnUniformi64vARBNative>(_library, 'glGetnUniformi64vARB')
        .asFunction<GlGetnUniformi64vARB>();
GlGetnUniformui64vARB glGetnUniformui64vARB =
    loadFunction<GlGetnUniformui64vARBNative>(_library, 'glGetnUniformui64vARB')
        .asFunction<GlGetnUniformui64vARB>();
GlProgramUniform1i64ARB glProgramUniform1i64ARB =
    loadFunction<GlProgramUniform1i64ARBNative>(
            _library, 'glProgramUniform1i64ARB')
        .asFunction<GlProgramUniform1i64ARB>();
GlProgramUniform2i64ARB glProgramUniform2i64ARB =
    loadFunction<GlProgramUniform2i64ARBNative>(
            _library, 'glProgramUniform2i64ARB')
        .asFunction<GlProgramUniform2i64ARB>();
GlProgramUniform3i64ARB glProgramUniform3i64ARB =
    loadFunction<GlProgramUniform3i64ARBNative>(
            _library, 'glProgramUniform3i64ARB')
        .asFunction<GlProgramUniform3i64ARB>();
GlProgramUniform4i64ARB glProgramUniform4i64ARB =
    loadFunction<GlProgramUniform4i64ARBNative>(
            _library, 'glProgramUniform4i64ARB')
        .asFunction<GlProgramUniform4i64ARB>();
GlProgramUniform1i64vARB glProgramUniform1i64vARB =
    loadFunction<GlProgramUniform1i64vARBNative>(
            _library, 'glProgramUniform1i64vARB')
        .asFunction<GlProgramUniform1i64vARB>();
GlProgramUniform2i64vARB glProgramUniform2i64vARB =
    loadFunction<GlProgramUniform2i64vARBNative>(
            _library, 'glProgramUniform2i64vARB')
        .asFunction<GlProgramUniform2i64vARB>();
GlProgramUniform3i64vARB glProgramUniform3i64vARB =
    loadFunction<GlProgramUniform3i64vARBNative>(
            _library, 'glProgramUniform3i64vARB')
        .asFunction<GlProgramUniform3i64vARB>();
GlProgramUniform4i64vARB glProgramUniform4i64vARB =
    loadFunction<GlProgramUniform4i64vARBNative>(
            _library, 'glProgramUniform4i64vARB')
        .asFunction<GlProgramUniform4i64vARB>();
GlProgramUniform1ui64ARB glProgramUniform1ui64ARB =
    loadFunction<GlProgramUniform1ui64ARBNative>(
            _library, 'glProgramUniform1ui64ARB')
        .asFunction<GlProgramUniform1ui64ARB>();
GlProgramUniform2ui64ARB glProgramUniform2ui64ARB =
    loadFunction<GlProgramUniform2ui64ARBNative>(
            _library, 'glProgramUniform2ui64ARB')
        .asFunction<GlProgramUniform2ui64ARB>();
GlProgramUniform3ui64ARB glProgramUniform3ui64ARB =
    loadFunction<GlProgramUniform3ui64ARBNative>(
            _library, 'glProgramUniform3ui64ARB')
        .asFunction<GlProgramUniform3ui64ARB>();
GlProgramUniform4ui64ARB glProgramUniform4ui64ARB =
    loadFunction<GlProgramUniform4ui64ARBNative>(
            _library, 'glProgramUniform4ui64ARB')
        .asFunction<GlProgramUniform4ui64ARB>();
GlProgramUniform1ui64vARB glProgramUniform1ui64vARB =
    loadFunction<GlProgramUniform1ui64vARBNative>(
            _library, 'glProgramUniform1ui64vARB')
        .asFunction<GlProgramUniform1ui64vARB>();
GlProgramUniform2ui64vARB glProgramUniform2ui64vARB =
    loadFunction<GlProgramUniform2ui64vARBNative>(
            _library, 'glProgramUniform2ui64vARB')
        .asFunction<GlProgramUniform2ui64vARB>();
GlProgramUniform3ui64vARB glProgramUniform3ui64vARB =
    loadFunction<GlProgramUniform3ui64vARBNative>(
            _library, 'glProgramUniform3ui64vARB')
        .asFunction<GlProgramUniform3ui64vARB>();
GlProgramUniform4ui64vARB glProgramUniform4ui64vARB =
    loadFunction<GlProgramUniform4ui64vARBNative>(
            _library, 'glProgramUniform4ui64vARB')
        .asFunction<GlProgramUniform4ui64vARB>();
GlMultiDrawArraysIndirectCountARB glMultiDrawArraysIndirectCountARB =
    loadFunction<GlMultiDrawArraysIndirectCountARBNative>(
            _library, 'glMultiDrawArraysIndirectCountARB')
        .asFunction<GlMultiDrawArraysIndirectCountARB>();
GlMultiDrawElementsIndirectCountARB glMultiDrawElementsIndirectCountARB =
    loadFunction<GlMultiDrawElementsIndirectCountARBNative>(
            _library, 'glMultiDrawElementsIndirectCountARB')
        .asFunction<GlMultiDrawElementsIndirectCountARB>();
GlVertexAttribDivisorARB glVertexAttribDivisorARB =
    loadFunction<GlVertexAttribDivisorARBNative>(
            _library, 'glVertexAttribDivisorARB')
        .asFunction<GlVertexAttribDivisorARB>();
GlMaxShaderCompilerThreadsARB glMaxShaderCompilerThreadsARB =
    loadFunction<GlMaxShaderCompilerThreadsARBNative>(
            _library, 'glMaxShaderCompilerThreadsARB')
        .asFunction<GlMaxShaderCompilerThreadsARB>();
GlGetGraphicsResetStatusARB glGetGraphicsResetStatusARB =
    loadFunction<GlGetGraphicsResetStatusARBNative>(
            _library, 'glGetGraphicsResetStatusARB')
        .asFunction<GlGetGraphicsResetStatusARB>();
GlGetnTexImageARB glGetnTexImageARB =
    loadFunction<GlGetnTexImageARBNative>(_library, 'glGetnTexImageARB')
        .asFunction<GlGetnTexImageARB>();
GlReadnPixelsARB glReadnPixelsARB =
    loadFunction<GlReadnPixelsARBNative>(_library, 'glReadnPixelsARB')
        .asFunction<GlReadnPixelsARB>();
GlGetnCompressedTexImageARB glGetnCompressedTexImageARB =
    loadFunction<GlGetnCompressedTexImageARBNative>(
            _library, 'glGetnCompressedTexImageARB')
        .asFunction<GlGetnCompressedTexImageARB>();
GlGetnUniformfvARB glGetnUniformfvARB =
    loadFunction<GlGetnUniformfvARBNative>(_library, 'glGetnUniformfvARB')
        .asFunction<GlGetnUniformfvARB>();
GlGetnUniformivARB glGetnUniformivARB =
    loadFunction<GlGetnUniformivARBNative>(_library, 'glGetnUniformivARB')
        .asFunction<GlGetnUniformivARB>();
GlGetnUniformuivARB glGetnUniformuivARB =
    loadFunction<GlGetnUniformuivARBNative>(_library, 'glGetnUniformuivARB')
        .asFunction<GlGetnUniformuivARB>();
GlGetnUniformdvARB glGetnUniformdvARB =
    loadFunction<GlGetnUniformdvARBNative>(_library, 'glGetnUniformdvARB')
        .asFunction<GlGetnUniformdvARB>();
GlFramebufferSampleLocationsfvARB glFramebufferSampleLocationsfvARB =
    loadFunction<GlFramebufferSampleLocationsfvARBNative>(
            _library, 'glFramebufferSampleLocationsfvARB')
        .asFunction<GlFramebufferSampleLocationsfvARB>();
GlNamedFramebufferSampleLocationsfvARB glNamedFramebufferSampleLocationsfvARB =
    loadFunction<GlNamedFramebufferSampleLocationsfvARBNative>(
            _library, 'glNamedFramebufferSampleLocationsfvARB')
        .asFunction<GlNamedFramebufferSampleLocationsfvARB>();
GlEvaluateDepthValuesARB glEvaluateDepthValuesARB =
    loadFunction<GlEvaluateDepthValuesARBNative>(
            _library, 'glEvaluateDepthValuesARB')
        .asFunction<GlEvaluateDepthValuesARB>();
GlMinSampleShadingARB glMinSampleShadingARB =
    loadFunction<GlMinSampleShadingARBNative>(_library, 'glMinSampleShadingARB')
        .asFunction<GlMinSampleShadingARB>();
GlNamedStringARB glNamedStringARB =
    loadFunction<GlNamedStringARBNative>(_library, 'glNamedStringARB')
        .asFunction<GlNamedStringARB>();
GlDeleteNamedStringARB glDeleteNamedStringARB =
    loadFunction<GlDeleteNamedStringARBNative>(
            _library, 'glDeleteNamedStringARB')
        .asFunction<GlDeleteNamedStringARB>();
GlCompileShaderIncludeARB glCompileShaderIncludeARB =
    loadFunction<GlCompileShaderIncludeARBNative>(
            _library, 'glCompileShaderIncludeARB')
        .asFunction<GlCompileShaderIncludeARB>();
GlIsNamedStringARB glIsNamedStringARB =
    loadFunction<GlIsNamedStringARBNative>(_library, 'glIsNamedStringARB')
        .asFunction<GlIsNamedStringARB>();
GlGetNamedStringARB glGetNamedStringARB =
    loadFunction<GlGetNamedStringARBNative>(_library, 'glGetNamedStringARB')
        .asFunction<GlGetNamedStringARB>();
GlGetNamedStringivARB glGetNamedStringivARB =
    loadFunction<GlGetNamedStringivARBNative>(_library, 'glGetNamedStringivARB')
        .asFunction<GlGetNamedStringivARB>();
GlBufferPageCommitmentARB glBufferPageCommitmentARB =
    loadFunction<GlBufferPageCommitmentARBNative>(
            _library, 'glBufferPageCommitmentARB')
        .asFunction<GlBufferPageCommitmentARB>();
GlNamedBufferPageCommitmentEXT glNamedBufferPageCommitmentEXT =
    loadFunction<GlNamedBufferPageCommitmentEXTNative>(
            _library, 'glNamedBufferPageCommitmentEXT')
        .asFunction<GlNamedBufferPageCommitmentEXT>();
GlNamedBufferPageCommitmentARB glNamedBufferPageCommitmentARB =
    loadFunction<GlNamedBufferPageCommitmentARBNative>(
            _library, 'glNamedBufferPageCommitmentARB')
        .asFunction<GlNamedBufferPageCommitmentARB>();
GlTexPageCommitmentARB glTexPageCommitmentARB =
    loadFunction<GlTexPageCommitmentARBNative>(
            _library, 'glTexPageCommitmentARB')
        .asFunction<GlTexPageCommitmentARB>();
GlTexBufferARB glTexBufferARB =
    loadFunction<GlTexBufferARBNative>(_library, 'glTexBufferARB')
        .asFunction<GlTexBufferARB>();
GlDepthRangeArraydvNV glDepthRangeArraydvNV =
    loadFunction<GlDepthRangeArraydvNVNative>(_library, 'glDepthRangeArraydvNV')
        .asFunction<GlDepthRangeArraydvNV>();
GlDepthRangeIndexeddNV glDepthRangeIndexeddNV =
    loadFunction<GlDepthRangeIndexeddNVNative>(
            _library, 'glDepthRangeIndexeddNV')
        .asFunction<GlDepthRangeIndexeddNV>();
GlBlendBarrierKHR glBlendBarrierKHR =
    loadFunction<GlBlendBarrierKHRNative>(_library, 'glBlendBarrierKHR')
        .asFunction<GlBlendBarrierKHR>();
GlMaxShaderCompilerThreadsKHR glMaxShaderCompilerThreadsKHR =
    loadFunction<GlMaxShaderCompilerThreadsKHRNative>(
            _library, 'glMaxShaderCompilerThreadsKHR')
        .asFunction<GlMaxShaderCompilerThreadsKHR>();
GlRenderbufferStorageMultisampleAdvancedAMD
    glRenderbufferStorageMultisampleAdvancedAMD =
    loadFunction<GlRenderbufferStorageMultisampleAdvancedAMDNative>(
            _library, 'glRenderbufferStorageMultisampleAdvancedAMD')
        .asFunction<GlRenderbufferStorageMultisampleAdvancedAMD>();
GlNamedRenderbufferStorageMultisampleAdvancedAMD
    glNamedRenderbufferStorageMultisampleAdvancedAMD =
    loadFunction<GlNamedRenderbufferStorageMultisampleAdvancedAMDNative>(
            _library, 'glNamedRenderbufferStorageMultisampleAdvancedAMD')
        .asFunction<GlNamedRenderbufferStorageMultisampleAdvancedAMD>();
GlGetPerfMonitorGroupsAMD glGetPerfMonitorGroupsAMD =
    loadFunction<GlGetPerfMonitorGroupsAMDNative>(
            _library, 'glGetPerfMonitorGroupsAMD')
        .asFunction<GlGetPerfMonitorGroupsAMD>();
GlGetPerfMonitorCountersAMD glGetPerfMonitorCountersAMD =
    loadFunction<GlGetPerfMonitorCountersAMDNative>(
            _library, 'glGetPerfMonitorCountersAMD')
        .asFunction<GlGetPerfMonitorCountersAMD>();
GlGetPerfMonitorGroupStringAMD glGetPerfMonitorGroupStringAMD =
    loadFunction<GlGetPerfMonitorGroupStringAMDNative>(
            _library, 'glGetPerfMonitorGroupStringAMD')
        .asFunction<GlGetPerfMonitorGroupStringAMD>();
GlGetPerfMonitorCounterStringAMD glGetPerfMonitorCounterStringAMD =
    loadFunction<GlGetPerfMonitorCounterStringAMDNative>(
            _library, 'glGetPerfMonitorCounterStringAMD')
        .asFunction<GlGetPerfMonitorCounterStringAMD>();
GlGetPerfMonitorCounterInfoAMD glGetPerfMonitorCounterInfoAMD =
    loadFunction<GlGetPerfMonitorCounterInfoAMDNative>(
            _library, 'glGetPerfMonitorCounterInfoAMD')
        .asFunction<GlGetPerfMonitorCounterInfoAMD>();
GlGenPerfMonitorsAMD glGenPerfMonitorsAMD =
    loadFunction<GlGenPerfMonitorsAMDNative>(_library, 'glGenPerfMonitorsAMD')
        .asFunction<GlGenPerfMonitorsAMD>();
GlDeletePerfMonitorsAMD glDeletePerfMonitorsAMD =
    loadFunction<GlDeletePerfMonitorsAMDNative>(
            _library, 'glDeletePerfMonitorsAMD')
        .asFunction<GlDeletePerfMonitorsAMD>();
GlSelectPerfMonitorCountersAMD glSelectPerfMonitorCountersAMD =
    loadFunction<GlSelectPerfMonitorCountersAMDNative>(
            _library, 'glSelectPerfMonitorCountersAMD')
        .asFunction<GlSelectPerfMonitorCountersAMD>();
GlBeginPerfMonitorAMD glBeginPerfMonitorAMD =
    loadFunction<GlBeginPerfMonitorAMDNative>(_library, 'glBeginPerfMonitorAMD')
        .asFunction<GlBeginPerfMonitorAMD>();
GlEndPerfMonitorAMD glEndPerfMonitorAMD =
    loadFunction<GlEndPerfMonitorAMDNative>(_library, 'glEndPerfMonitorAMD')
        .asFunction<GlEndPerfMonitorAMD>();
GlGetPerfMonitorCounterDataAMD glGetPerfMonitorCounterDataAMD =
    loadFunction<GlGetPerfMonitorCounterDataAMDNative>(
            _library, 'glGetPerfMonitorCounterDataAMD')
        .asFunction<GlGetPerfMonitorCounterDataAMD>();
GlEGLImageTargetTexStorageEXT glEGLImageTargetTexStorageEXT =
    loadFunction<GlEGLImageTargetTexStorageEXTNative>(
            _library, 'glEGLImageTargetTexStorageEXT')
        .asFunction<GlEGLImageTargetTexStorageEXT>();
GlEGLImageTargetTextureStorageEXT glEGLImageTargetTextureStorageEXT =
    loadFunction<GlEGLImageTargetTextureStorageEXTNative>(
            _library, 'glEGLImageTargetTextureStorageEXT')
        .asFunction<GlEGLImageTargetTextureStorageEXT>();
GlLabelObjectEXT glLabelObjectEXT =
    loadFunction<GlLabelObjectEXTNative>(_library, 'glLabelObjectEXT')
        .asFunction<GlLabelObjectEXT>();
GlGetObjectLabelEXT glGetObjectLabelEXT =
    loadFunction<GlGetObjectLabelEXTNative>(_library, 'glGetObjectLabelEXT')
        .asFunction<GlGetObjectLabelEXT>();
GlInsertEventMarkerEXT glInsertEventMarkerEXT =
    loadFunction<GlInsertEventMarkerEXTNative>(
            _library, 'glInsertEventMarkerEXT')
        .asFunction<GlInsertEventMarkerEXT>();
GlPushGroupMarkerEXT glPushGroupMarkerEXT =
    loadFunction<GlPushGroupMarkerEXTNative>(_library, 'glPushGroupMarkerEXT')
        .asFunction<GlPushGroupMarkerEXT>();
GlPopGroupMarkerEXT glPopGroupMarkerEXT =
    loadFunction<GlPopGroupMarkerEXTNative>(_library, 'glPopGroupMarkerEXT')
        .asFunction<GlPopGroupMarkerEXT>();
GlMatrixLoadfEXT glMatrixLoadfEXT =
    loadFunction<GlMatrixLoadfEXTNative>(_library, 'glMatrixLoadfEXT')
        .asFunction<GlMatrixLoadfEXT>();
GlMatrixLoaddEXT glMatrixLoaddEXT =
    loadFunction<GlMatrixLoaddEXTNative>(_library, 'glMatrixLoaddEXT')
        .asFunction<GlMatrixLoaddEXT>();
GlMatrixMultfEXT glMatrixMultfEXT =
    loadFunction<GlMatrixMultfEXTNative>(_library, 'glMatrixMultfEXT')
        .asFunction<GlMatrixMultfEXT>();
GlMatrixMultdEXT glMatrixMultdEXT =
    loadFunction<GlMatrixMultdEXTNative>(_library, 'glMatrixMultdEXT')
        .asFunction<GlMatrixMultdEXT>();
GlMatrixLoadIdentityEXT glMatrixLoadIdentityEXT =
    loadFunction<GlMatrixLoadIdentityEXTNative>(
            _library, 'glMatrixLoadIdentityEXT')
        .asFunction<GlMatrixLoadIdentityEXT>();
GlMatrixRotatefEXT glMatrixRotatefEXT =
    loadFunction<GlMatrixRotatefEXTNative>(_library, 'glMatrixRotatefEXT')
        .asFunction<GlMatrixRotatefEXT>();
GlMatrixRotatedEXT glMatrixRotatedEXT =
    loadFunction<GlMatrixRotatedEXTNative>(_library, 'glMatrixRotatedEXT')
        .asFunction<GlMatrixRotatedEXT>();
GlMatrixScalefEXT glMatrixScalefEXT =
    loadFunction<GlMatrixScalefEXTNative>(_library, 'glMatrixScalefEXT')
        .asFunction<GlMatrixScalefEXT>();
GlMatrixScaledEXT glMatrixScaledEXT =
    loadFunction<GlMatrixScaledEXTNative>(_library, 'glMatrixScaledEXT')
        .asFunction<GlMatrixScaledEXT>();
GlMatrixTranslatefEXT glMatrixTranslatefEXT =
    loadFunction<GlMatrixTranslatefEXTNative>(_library, 'glMatrixTranslatefEXT')
        .asFunction<GlMatrixTranslatefEXT>();
GlMatrixTranslatedEXT glMatrixTranslatedEXT =
    loadFunction<GlMatrixTranslatedEXTNative>(_library, 'glMatrixTranslatedEXT')
        .asFunction<GlMatrixTranslatedEXT>();
GlMatrixFrustumEXT glMatrixFrustumEXT =
    loadFunction<GlMatrixFrustumEXTNative>(_library, 'glMatrixFrustumEXT')
        .asFunction<GlMatrixFrustumEXT>();
GlMatrixOrthoEXT glMatrixOrthoEXT =
    loadFunction<GlMatrixOrthoEXTNative>(_library, 'glMatrixOrthoEXT')
        .asFunction<GlMatrixOrthoEXT>();
GlMatrixPopEXT glMatrixPopEXT =
    loadFunction<GlMatrixPopEXTNative>(_library, 'glMatrixPopEXT')
        .asFunction<GlMatrixPopEXT>();
GlMatrixPushEXT glMatrixPushEXT =
    loadFunction<GlMatrixPushEXTNative>(_library, 'glMatrixPushEXT')
        .asFunction<GlMatrixPushEXT>();
GlClientAttribDefaultEXT glClientAttribDefaultEXT =
    loadFunction<GlClientAttribDefaultEXTNative>(
            _library, 'glClientAttribDefaultEXT')
        .asFunction<GlClientAttribDefaultEXT>();
GlPushClientAttribDefaultEXT glPushClientAttribDefaultEXT =
    loadFunction<GlPushClientAttribDefaultEXTNative>(
            _library, 'glPushClientAttribDefaultEXT')
        .asFunction<GlPushClientAttribDefaultEXT>();
GlTextureParameterfEXT glTextureParameterfEXT =
    loadFunction<GlTextureParameterfEXTNative>(
            _library, 'glTextureParameterfEXT')
        .asFunction<GlTextureParameterfEXT>();
GlTextureParameterfvEXT glTextureParameterfvEXT =
    loadFunction<GlTextureParameterfvEXTNative>(
            _library, 'glTextureParameterfvEXT')
        .asFunction<GlTextureParameterfvEXT>();
GlTextureParameteriEXT glTextureParameteriEXT =
    loadFunction<GlTextureParameteriEXTNative>(
            _library, 'glTextureParameteriEXT')
        .asFunction<GlTextureParameteriEXT>();
GlTextureParameterivEXT glTextureParameterivEXT =
    loadFunction<GlTextureParameterivEXTNative>(
            _library, 'glTextureParameterivEXT')
        .asFunction<GlTextureParameterivEXT>();
GlTextureImage1DEXT glTextureImage1DEXT =
    loadFunction<GlTextureImage1DEXTNative>(_library, 'glTextureImage1DEXT')
        .asFunction<GlTextureImage1DEXT>();
GlTextureImage2DEXT glTextureImage2DEXT =
    loadFunction<GlTextureImage2DEXTNative>(_library, 'glTextureImage2DEXT')
        .asFunction<GlTextureImage2DEXT>();
GlTextureSubImage1DEXT glTextureSubImage1DEXT =
    loadFunction<GlTextureSubImage1DEXTNative>(
            _library, 'glTextureSubImage1DEXT')
        .asFunction<GlTextureSubImage1DEXT>();
GlTextureSubImage2DEXT glTextureSubImage2DEXT =
    loadFunction<GlTextureSubImage2DEXTNative>(
            _library, 'glTextureSubImage2DEXT')
        .asFunction<GlTextureSubImage2DEXT>();
GlCopyTextureImage1DEXT glCopyTextureImage1DEXT =
    loadFunction<GlCopyTextureImage1DEXTNative>(
            _library, 'glCopyTextureImage1DEXT')
        .asFunction<GlCopyTextureImage1DEXT>();
GlCopyTextureImage2DEXT glCopyTextureImage2DEXT =
    loadFunction<GlCopyTextureImage2DEXTNative>(
            _library, 'glCopyTextureImage2DEXT')
        .asFunction<GlCopyTextureImage2DEXT>();
GlCopyTextureSubImage1DEXT glCopyTextureSubImage1DEXT =
    loadFunction<GlCopyTextureSubImage1DEXTNative>(
            _library, 'glCopyTextureSubImage1DEXT')
        .asFunction<GlCopyTextureSubImage1DEXT>();
GlCopyTextureSubImage2DEXT glCopyTextureSubImage2DEXT =
    loadFunction<GlCopyTextureSubImage2DEXTNative>(
            _library, 'glCopyTextureSubImage2DEXT')
        .asFunction<GlCopyTextureSubImage2DEXT>();
GlGetTextureImageEXT glGetTextureImageEXT =
    loadFunction<GlGetTextureImageEXTNative>(_library, 'glGetTextureImageEXT')
        .asFunction<GlGetTextureImageEXT>();
GlGetTextureParameterfvEXT glGetTextureParameterfvEXT =
    loadFunction<GlGetTextureParameterfvEXTNative>(
            _library, 'glGetTextureParameterfvEXT')
        .asFunction<GlGetTextureParameterfvEXT>();
GlGetTextureParameterivEXT glGetTextureParameterivEXT =
    loadFunction<GlGetTextureParameterivEXTNative>(
            _library, 'glGetTextureParameterivEXT')
        .asFunction<GlGetTextureParameterivEXT>();
GlGetTextureLevelParameterfvEXT glGetTextureLevelParameterfvEXT =
    loadFunction<GlGetTextureLevelParameterfvEXTNative>(
            _library, 'glGetTextureLevelParameterfvEXT')
        .asFunction<GlGetTextureLevelParameterfvEXT>();
GlGetTextureLevelParameterivEXT glGetTextureLevelParameterivEXT =
    loadFunction<GlGetTextureLevelParameterivEXTNative>(
            _library, 'glGetTextureLevelParameterivEXT')
        .asFunction<GlGetTextureLevelParameterivEXT>();
GlTextureImage3DEXT glTextureImage3DEXT =
    loadFunction<GlTextureImage3DEXTNative>(_library, 'glTextureImage3DEXT')
        .asFunction<GlTextureImage3DEXT>();
GlTextureSubImage3DEXT glTextureSubImage3DEXT =
    loadFunction<GlTextureSubImage3DEXTNative>(
            _library, 'glTextureSubImage3DEXT')
        .asFunction<GlTextureSubImage3DEXT>();
GlCopyTextureSubImage3DEXT glCopyTextureSubImage3DEXT =
    loadFunction<GlCopyTextureSubImage3DEXTNative>(
            _library, 'glCopyTextureSubImage3DEXT')
        .asFunction<GlCopyTextureSubImage3DEXT>();
GlBindMultiTextureEXT glBindMultiTextureEXT =
    loadFunction<GlBindMultiTextureEXTNative>(_library, 'glBindMultiTextureEXT')
        .asFunction<GlBindMultiTextureEXT>();
GlMultiTexCoordPointerEXT glMultiTexCoordPointerEXT =
    loadFunction<GlMultiTexCoordPointerEXTNative>(
            _library, 'glMultiTexCoordPointerEXT')
        .asFunction<GlMultiTexCoordPointerEXT>();
GlMultiTexEnvfEXT glMultiTexEnvfEXT =
    loadFunction<GlMultiTexEnvfEXTNative>(_library, 'glMultiTexEnvfEXT')
        .asFunction<GlMultiTexEnvfEXT>();
GlMultiTexEnvfvEXT glMultiTexEnvfvEXT =
    loadFunction<GlMultiTexEnvfvEXTNative>(_library, 'glMultiTexEnvfvEXT')
        .asFunction<GlMultiTexEnvfvEXT>();
GlMultiTexEnviEXT glMultiTexEnviEXT =
    loadFunction<GlMultiTexEnviEXTNative>(_library, 'glMultiTexEnviEXT')
        .asFunction<GlMultiTexEnviEXT>();
GlMultiTexEnvivEXT glMultiTexEnvivEXT =
    loadFunction<GlMultiTexEnvivEXTNative>(_library, 'glMultiTexEnvivEXT')
        .asFunction<GlMultiTexEnvivEXT>();
GlMultiTexGendEXT glMultiTexGendEXT =
    loadFunction<GlMultiTexGendEXTNative>(_library, 'glMultiTexGendEXT')
        .asFunction<GlMultiTexGendEXT>();
GlMultiTexGendvEXT glMultiTexGendvEXT =
    loadFunction<GlMultiTexGendvEXTNative>(_library, 'glMultiTexGendvEXT')
        .asFunction<GlMultiTexGendvEXT>();
GlMultiTexGenfEXT glMultiTexGenfEXT =
    loadFunction<GlMultiTexGenfEXTNative>(_library, 'glMultiTexGenfEXT')
        .asFunction<GlMultiTexGenfEXT>();
GlMultiTexGenfvEXT glMultiTexGenfvEXT =
    loadFunction<GlMultiTexGenfvEXTNative>(_library, 'glMultiTexGenfvEXT')
        .asFunction<GlMultiTexGenfvEXT>();
GlMultiTexGeniEXT glMultiTexGeniEXT =
    loadFunction<GlMultiTexGeniEXTNative>(_library, 'glMultiTexGeniEXT')
        .asFunction<GlMultiTexGeniEXT>();
GlMultiTexGenivEXT glMultiTexGenivEXT =
    loadFunction<GlMultiTexGenivEXTNative>(_library, 'glMultiTexGenivEXT')
        .asFunction<GlMultiTexGenivEXT>();
GlGetMultiTexEnvfvEXT glGetMultiTexEnvfvEXT =
    loadFunction<GlGetMultiTexEnvfvEXTNative>(_library, 'glGetMultiTexEnvfvEXT')
        .asFunction<GlGetMultiTexEnvfvEXT>();
GlGetMultiTexEnvivEXT glGetMultiTexEnvivEXT =
    loadFunction<GlGetMultiTexEnvivEXTNative>(_library, 'glGetMultiTexEnvivEXT')
        .asFunction<GlGetMultiTexEnvivEXT>();
GlGetMultiTexGendvEXT glGetMultiTexGendvEXT =
    loadFunction<GlGetMultiTexGendvEXTNative>(_library, 'glGetMultiTexGendvEXT')
        .asFunction<GlGetMultiTexGendvEXT>();
GlGetMultiTexGenfvEXT glGetMultiTexGenfvEXT =
    loadFunction<GlGetMultiTexGenfvEXTNative>(_library, 'glGetMultiTexGenfvEXT')
        .asFunction<GlGetMultiTexGenfvEXT>();
GlGetMultiTexGenivEXT glGetMultiTexGenivEXT =
    loadFunction<GlGetMultiTexGenivEXTNative>(_library, 'glGetMultiTexGenivEXT')
        .asFunction<GlGetMultiTexGenivEXT>();
GlMultiTexParameteriEXT glMultiTexParameteriEXT =
    loadFunction<GlMultiTexParameteriEXTNative>(
            _library, 'glMultiTexParameteriEXT')
        .asFunction<GlMultiTexParameteriEXT>();
GlMultiTexParameterivEXT glMultiTexParameterivEXT =
    loadFunction<GlMultiTexParameterivEXTNative>(
            _library, 'glMultiTexParameterivEXT')
        .asFunction<GlMultiTexParameterivEXT>();
GlMultiTexParameterfEXT glMultiTexParameterfEXT =
    loadFunction<GlMultiTexParameterfEXTNative>(
            _library, 'glMultiTexParameterfEXT')
        .asFunction<GlMultiTexParameterfEXT>();
GlMultiTexParameterfvEXT glMultiTexParameterfvEXT =
    loadFunction<GlMultiTexParameterfvEXTNative>(
            _library, 'glMultiTexParameterfvEXT')
        .asFunction<GlMultiTexParameterfvEXT>();
GlMultiTexImage1DEXT glMultiTexImage1DEXT =
    loadFunction<GlMultiTexImage1DEXTNative>(_library, 'glMultiTexImage1DEXT')
        .asFunction<GlMultiTexImage1DEXT>();
GlMultiTexImage2DEXT glMultiTexImage2DEXT =
    loadFunction<GlMultiTexImage2DEXTNative>(_library, 'glMultiTexImage2DEXT')
        .asFunction<GlMultiTexImage2DEXT>();
GlMultiTexSubImage1DEXT glMultiTexSubImage1DEXT =
    loadFunction<GlMultiTexSubImage1DEXTNative>(
            _library, 'glMultiTexSubImage1DEXT')
        .asFunction<GlMultiTexSubImage1DEXT>();
GlMultiTexSubImage2DEXT glMultiTexSubImage2DEXT =
    loadFunction<GlMultiTexSubImage2DEXTNative>(
            _library, 'glMultiTexSubImage2DEXT')
        .asFunction<GlMultiTexSubImage2DEXT>();
GlCopyMultiTexImage1DEXT glCopyMultiTexImage1DEXT =
    loadFunction<GlCopyMultiTexImage1DEXTNative>(
            _library, 'glCopyMultiTexImage1DEXT')
        .asFunction<GlCopyMultiTexImage1DEXT>();
GlCopyMultiTexImage2DEXT glCopyMultiTexImage2DEXT =
    loadFunction<GlCopyMultiTexImage2DEXTNative>(
            _library, 'glCopyMultiTexImage2DEXT')
        .asFunction<GlCopyMultiTexImage2DEXT>();
GlCopyMultiTexSubImage1DEXT glCopyMultiTexSubImage1DEXT =
    loadFunction<GlCopyMultiTexSubImage1DEXTNative>(
            _library, 'glCopyMultiTexSubImage1DEXT')
        .asFunction<GlCopyMultiTexSubImage1DEXT>();
GlCopyMultiTexSubImage2DEXT glCopyMultiTexSubImage2DEXT =
    loadFunction<GlCopyMultiTexSubImage2DEXTNative>(
            _library, 'glCopyMultiTexSubImage2DEXT')
        .asFunction<GlCopyMultiTexSubImage2DEXT>();
GlGetMultiTexImageEXT glGetMultiTexImageEXT =
    loadFunction<GlGetMultiTexImageEXTNative>(_library, 'glGetMultiTexImageEXT')
        .asFunction<GlGetMultiTexImageEXT>();
GlGetMultiTexParameterfvEXT glGetMultiTexParameterfvEXT =
    loadFunction<GlGetMultiTexParameterfvEXTNative>(
            _library, 'glGetMultiTexParameterfvEXT')
        .asFunction<GlGetMultiTexParameterfvEXT>();
GlGetMultiTexParameterivEXT glGetMultiTexParameterivEXT =
    loadFunction<GlGetMultiTexParameterivEXTNative>(
            _library, 'glGetMultiTexParameterivEXT')
        .asFunction<GlGetMultiTexParameterivEXT>();
GlGetMultiTexLevelParameterfvEXT glGetMultiTexLevelParameterfvEXT =
    loadFunction<GlGetMultiTexLevelParameterfvEXTNative>(
            _library, 'glGetMultiTexLevelParameterfvEXT')
        .asFunction<GlGetMultiTexLevelParameterfvEXT>();
GlGetMultiTexLevelParameterivEXT glGetMultiTexLevelParameterivEXT =
    loadFunction<GlGetMultiTexLevelParameterivEXTNative>(
            _library, 'glGetMultiTexLevelParameterivEXT')
        .asFunction<GlGetMultiTexLevelParameterivEXT>();
GlMultiTexImage3DEXT glMultiTexImage3DEXT =
    loadFunction<GlMultiTexImage3DEXTNative>(_library, 'glMultiTexImage3DEXT')
        .asFunction<GlMultiTexImage3DEXT>();
GlMultiTexSubImage3DEXT glMultiTexSubImage3DEXT =
    loadFunction<GlMultiTexSubImage3DEXTNative>(
            _library, 'glMultiTexSubImage3DEXT')
        .asFunction<GlMultiTexSubImage3DEXT>();
GlCopyMultiTexSubImage3DEXT glCopyMultiTexSubImage3DEXT =
    loadFunction<GlCopyMultiTexSubImage3DEXTNative>(
            _library, 'glCopyMultiTexSubImage3DEXT')
        .asFunction<GlCopyMultiTexSubImage3DEXT>();
GlEnableClientStateIndexedEXT glEnableClientStateIndexedEXT =
    loadFunction<GlEnableClientStateIndexedEXTNative>(
            _library, 'glEnableClientStateIndexedEXT')
        .asFunction<GlEnableClientStateIndexedEXT>();
GlDisableClientStateIndexedEXT glDisableClientStateIndexedEXT =
    loadFunction<GlDisableClientStateIndexedEXTNative>(
            _library, 'glDisableClientStateIndexedEXT')
        .asFunction<GlDisableClientStateIndexedEXT>();
GlGetFloatIndexedvEXT glGetFloatIndexedvEXT =
    loadFunction<GlGetFloatIndexedvEXTNative>(_library, 'glGetFloatIndexedvEXT')
        .asFunction<GlGetFloatIndexedvEXT>();
GlGetDoubleIndexedvEXT glGetDoubleIndexedvEXT =
    loadFunction<GlGetDoubleIndexedvEXTNative>(
            _library, 'glGetDoubleIndexedvEXT')
        .asFunction<GlGetDoubleIndexedvEXT>();
GlGetPointerIndexedvEXT glGetPointerIndexedvEXT =
    loadFunction<GlGetPointerIndexedvEXTNative>(
            _library, 'glGetPointerIndexedvEXT')
        .asFunction<GlGetPointerIndexedvEXT>();
GlEnableIndexedEXT glEnableIndexedEXT =
    loadFunction<GlEnableIndexedEXTNative>(_library, 'glEnableIndexedEXT')
        .asFunction<GlEnableIndexedEXT>();
GlDisableIndexedEXT glDisableIndexedEXT =
    loadFunction<GlDisableIndexedEXTNative>(_library, 'glDisableIndexedEXT')
        .asFunction<GlDisableIndexedEXT>();
GlIsEnabledIndexedEXT glIsEnabledIndexedEXT =
    loadFunction<GlIsEnabledIndexedEXTNative>(_library, 'glIsEnabledIndexedEXT')
        .asFunction<GlIsEnabledIndexedEXT>();
GlGetIntegerIndexedvEXT glGetIntegerIndexedvEXT =
    loadFunction<GlGetIntegerIndexedvEXTNative>(
            _library, 'glGetIntegerIndexedvEXT')
        .asFunction<GlGetIntegerIndexedvEXT>();
GlGetBooleanIndexedvEXT glGetBooleanIndexedvEXT =
    loadFunction<GlGetBooleanIndexedvEXTNative>(
            _library, 'glGetBooleanIndexedvEXT')
        .asFunction<GlGetBooleanIndexedvEXT>();
GlCompressedTextureImage3DEXT glCompressedTextureImage3DEXT =
    loadFunction<GlCompressedTextureImage3DEXTNative>(
            _library, 'glCompressedTextureImage3DEXT')
        .asFunction<GlCompressedTextureImage3DEXT>();
GlCompressedTextureImage2DEXT glCompressedTextureImage2DEXT =
    loadFunction<GlCompressedTextureImage2DEXTNative>(
            _library, 'glCompressedTextureImage2DEXT')
        .asFunction<GlCompressedTextureImage2DEXT>();
GlCompressedTextureImage1DEXT glCompressedTextureImage1DEXT =
    loadFunction<GlCompressedTextureImage1DEXTNative>(
            _library, 'glCompressedTextureImage1DEXT')
        .asFunction<GlCompressedTextureImage1DEXT>();
GlCompressedTextureSubImage3DEXT glCompressedTextureSubImage3DEXT =
    loadFunction<GlCompressedTextureSubImage3DEXTNative>(
            _library, 'glCompressedTextureSubImage3DEXT')
        .asFunction<GlCompressedTextureSubImage3DEXT>();
GlCompressedTextureSubImage2DEXT glCompressedTextureSubImage2DEXT =
    loadFunction<GlCompressedTextureSubImage2DEXTNative>(
            _library, 'glCompressedTextureSubImage2DEXT')
        .asFunction<GlCompressedTextureSubImage2DEXT>();
GlCompressedTextureSubImage1DEXT glCompressedTextureSubImage1DEXT =
    loadFunction<GlCompressedTextureSubImage1DEXTNative>(
            _library, 'glCompressedTextureSubImage1DEXT')
        .asFunction<GlCompressedTextureSubImage1DEXT>();
GlGetCompressedTextureImageEXT glGetCompressedTextureImageEXT =
    loadFunction<GlGetCompressedTextureImageEXTNative>(
            _library, 'glGetCompressedTextureImageEXT')
        .asFunction<GlGetCompressedTextureImageEXT>();
GlCompressedMultiTexImage3DEXT glCompressedMultiTexImage3DEXT =
    loadFunction<GlCompressedMultiTexImage3DEXTNative>(
            _library, 'glCompressedMultiTexImage3DEXT')
        .asFunction<GlCompressedMultiTexImage3DEXT>();
GlCompressedMultiTexImage2DEXT glCompressedMultiTexImage2DEXT =
    loadFunction<GlCompressedMultiTexImage2DEXTNative>(
            _library, 'glCompressedMultiTexImage2DEXT')
        .asFunction<GlCompressedMultiTexImage2DEXT>();
GlCompressedMultiTexImage1DEXT glCompressedMultiTexImage1DEXT =
    loadFunction<GlCompressedMultiTexImage1DEXTNative>(
            _library, 'glCompressedMultiTexImage1DEXT')
        .asFunction<GlCompressedMultiTexImage1DEXT>();
GlCompressedMultiTexSubImage3DEXT glCompressedMultiTexSubImage3DEXT =
    loadFunction<GlCompressedMultiTexSubImage3DEXTNative>(
            _library, 'glCompressedMultiTexSubImage3DEXT')
        .asFunction<GlCompressedMultiTexSubImage3DEXT>();
GlCompressedMultiTexSubImage2DEXT glCompressedMultiTexSubImage2DEXT =
    loadFunction<GlCompressedMultiTexSubImage2DEXTNative>(
            _library, 'glCompressedMultiTexSubImage2DEXT')
        .asFunction<GlCompressedMultiTexSubImage2DEXT>();
GlCompressedMultiTexSubImage1DEXT glCompressedMultiTexSubImage1DEXT =
    loadFunction<GlCompressedMultiTexSubImage1DEXTNative>(
            _library, 'glCompressedMultiTexSubImage1DEXT')
        .asFunction<GlCompressedMultiTexSubImage1DEXT>();
GlGetCompressedMultiTexImageEXT glGetCompressedMultiTexImageEXT =
    loadFunction<GlGetCompressedMultiTexImageEXTNative>(
            _library, 'glGetCompressedMultiTexImageEXT')
        .asFunction<GlGetCompressedMultiTexImageEXT>();
GlMatrixLoadTransposefEXT glMatrixLoadTransposefEXT =
    loadFunction<GlMatrixLoadTransposefEXTNative>(
            _library, 'glMatrixLoadTransposefEXT')
        .asFunction<GlMatrixLoadTransposefEXT>();
GlMatrixLoadTransposedEXT glMatrixLoadTransposedEXT =
    loadFunction<GlMatrixLoadTransposedEXTNative>(
            _library, 'glMatrixLoadTransposedEXT')
        .asFunction<GlMatrixLoadTransposedEXT>();
GlMatrixMultTransposefEXT glMatrixMultTransposefEXT =
    loadFunction<GlMatrixMultTransposefEXTNative>(
            _library, 'glMatrixMultTransposefEXT')
        .asFunction<GlMatrixMultTransposefEXT>();
GlMatrixMultTransposedEXT glMatrixMultTransposedEXT =
    loadFunction<GlMatrixMultTransposedEXTNative>(
            _library, 'glMatrixMultTransposedEXT')
        .asFunction<GlMatrixMultTransposedEXT>();
GlNamedBufferDataEXT glNamedBufferDataEXT =
    loadFunction<GlNamedBufferDataEXTNative>(_library, 'glNamedBufferDataEXT')
        .asFunction<GlNamedBufferDataEXT>();
GlNamedBufferSubDataEXT glNamedBufferSubDataEXT =
    loadFunction<GlNamedBufferSubDataEXTNative>(
            _library, 'glNamedBufferSubDataEXT')
        .asFunction<GlNamedBufferSubDataEXT>();
GlMapNamedBufferEXT glMapNamedBufferEXT =
    loadFunction<GlMapNamedBufferEXTNative>(_library, 'glMapNamedBufferEXT')
        .asFunction<GlMapNamedBufferEXT>();
GlUnmapNamedBufferEXT glUnmapNamedBufferEXT =
    loadFunction<GlUnmapNamedBufferEXTNative>(_library, 'glUnmapNamedBufferEXT')
        .asFunction<GlUnmapNamedBufferEXT>();
GlGetNamedBufferParameterivEXT glGetNamedBufferParameterivEXT =
    loadFunction<GlGetNamedBufferParameterivEXTNative>(
            _library, 'glGetNamedBufferParameterivEXT')
        .asFunction<GlGetNamedBufferParameterivEXT>();
GlGetNamedBufferPointervEXT glGetNamedBufferPointervEXT =
    loadFunction<GlGetNamedBufferPointervEXTNative>(
            _library, 'glGetNamedBufferPointervEXT')
        .asFunction<GlGetNamedBufferPointervEXT>();
GlGetNamedBufferSubDataEXT glGetNamedBufferSubDataEXT =
    loadFunction<GlGetNamedBufferSubDataEXTNative>(
            _library, 'glGetNamedBufferSubDataEXT')
        .asFunction<GlGetNamedBufferSubDataEXT>();
GlProgramUniform1fEXT glProgramUniform1fEXT =
    loadFunction<GlProgramUniform1fEXTNative>(_library, 'glProgramUniform1fEXT')
        .asFunction<GlProgramUniform1fEXT>();
GlProgramUniform2fEXT glProgramUniform2fEXT =
    loadFunction<GlProgramUniform2fEXTNative>(_library, 'glProgramUniform2fEXT')
        .asFunction<GlProgramUniform2fEXT>();
GlProgramUniform3fEXT glProgramUniform3fEXT =
    loadFunction<GlProgramUniform3fEXTNative>(_library, 'glProgramUniform3fEXT')
        .asFunction<GlProgramUniform3fEXT>();
GlProgramUniform4fEXT glProgramUniform4fEXT =
    loadFunction<GlProgramUniform4fEXTNative>(_library, 'glProgramUniform4fEXT')
        .asFunction<GlProgramUniform4fEXT>();
GlProgramUniform1iEXT glProgramUniform1iEXT =
    loadFunction<GlProgramUniform1iEXTNative>(_library, 'glProgramUniform1iEXT')
        .asFunction<GlProgramUniform1iEXT>();
GlProgramUniform2iEXT glProgramUniform2iEXT =
    loadFunction<GlProgramUniform2iEXTNative>(_library, 'glProgramUniform2iEXT')
        .asFunction<GlProgramUniform2iEXT>();
GlProgramUniform3iEXT glProgramUniform3iEXT =
    loadFunction<GlProgramUniform3iEXTNative>(_library, 'glProgramUniform3iEXT')
        .asFunction<GlProgramUniform3iEXT>();
GlProgramUniform4iEXT glProgramUniform4iEXT =
    loadFunction<GlProgramUniform4iEXTNative>(_library, 'glProgramUniform4iEXT')
        .asFunction<GlProgramUniform4iEXT>();
GlProgramUniform1fvEXT glProgramUniform1fvEXT =
    loadFunction<GlProgramUniform1fvEXTNative>(
            _library, 'glProgramUniform1fvEXT')
        .asFunction<GlProgramUniform1fvEXT>();
GlProgramUniform2fvEXT glProgramUniform2fvEXT =
    loadFunction<GlProgramUniform2fvEXTNative>(
            _library, 'glProgramUniform2fvEXT')
        .asFunction<GlProgramUniform2fvEXT>();
GlProgramUniform3fvEXT glProgramUniform3fvEXT =
    loadFunction<GlProgramUniform3fvEXTNative>(
            _library, 'glProgramUniform3fvEXT')
        .asFunction<GlProgramUniform3fvEXT>();
GlProgramUniform4fvEXT glProgramUniform4fvEXT =
    loadFunction<GlProgramUniform4fvEXTNative>(
            _library, 'glProgramUniform4fvEXT')
        .asFunction<GlProgramUniform4fvEXT>();
GlProgramUniform1ivEXT glProgramUniform1ivEXT =
    loadFunction<GlProgramUniform1ivEXTNative>(
            _library, 'glProgramUniform1ivEXT')
        .asFunction<GlProgramUniform1ivEXT>();
GlProgramUniform2ivEXT glProgramUniform2ivEXT =
    loadFunction<GlProgramUniform2ivEXTNative>(
            _library, 'glProgramUniform2ivEXT')
        .asFunction<GlProgramUniform2ivEXT>();
GlProgramUniform3ivEXT glProgramUniform3ivEXT =
    loadFunction<GlProgramUniform3ivEXTNative>(
            _library, 'glProgramUniform3ivEXT')
        .asFunction<GlProgramUniform3ivEXT>();
GlProgramUniform4ivEXT glProgramUniform4ivEXT =
    loadFunction<GlProgramUniform4ivEXTNative>(
            _library, 'glProgramUniform4ivEXT')
        .asFunction<GlProgramUniform4ivEXT>();
GlProgramUniformMatrix2fvEXT glProgramUniformMatrix2fvEXT =
    loadFunction<GlProgramUniformMatrix2fvEXTNative>(
            _library, 'glProgramUniformMatrix2fvEXT')
        .asFunction<GlProgramUniformMatrix2fvEXT>();
GlProgramUniformMatrix3fvEXT glProgramUniformMatrix3fvEXT =
    loadFunction<GlProgramUniformMatrix3fvEXTNative>(
            _library, 'glProgramUniformMatrix3fvEXT')
        .asFunction<GlProgramUniformMatrix3fvEXT>();
GlProgramUniformMatrix4fvEXT glProgramUniformMatrix4fvEXT =
    loadFunction<GlProgramUniformMatrix4fvEXTNative>(
            _library, 'glProgramUniformMatrix4fvEXT')
        .asFunction<GlProgramUniformMatrix4fvEXT>();
GlProgramUniformMatrix2x3fvEXT glProgramUniformMatrix2x3fvEXT =
    loadFunction<GlProgramUniformMatrix2x3fvEXTNative>(
            _library, 'glProgramUniformMatrix2x3fvEXT')
        .asFunction<GlProgramUniformMatrix2x3fvEXT>();
GlProgramUniformMatrix3x2fvEXT glProgramUniformMatrix3x2fvEXT =
    loadFunction<GlProgramUniformMatrix3x2fvEXTNative>(
            _library, 'glProgramUniformMatrix3x2fvEXT')
        .asFunction<GlProgramUniformMatrix3x2fvEXT>();
GlProgramUniformMatrix2x4fvEXT glProgramUniformMatrix2x4fvEXT =
    loadFunction<GlProgramUniformMatrix2x4fvEXTNative>(
            _library, 'glProgramUniformMatrix2x4fvEXT')
        .asFunction<GlProgramUniformMatrix2x4fvEXT>();
GlProgramUniformMatrix4x2fvEXT glProgramUniformMatrix4x2fvEXT =
    loadFunction<GlProgramUniformMatrix4x2fvEXTNative>(
            _library, 'glProgramUniformMatrix4x2fvEXT')
        .asFunction<GlProgramUniformMatrix4x2fvEXT>();
GlProgramUniformMatrix3x4fvEXT glProgramUniformMatrix3x4fvEXT =
    loadFunction<GlProgramUniformMatrix3x4fvEXTNative>(
            _library, 'glProgramUniformMatrix3x4fvEXT')
        .asFunction<GlProgramUniformMatrix3x4fvEXT>();
GlProgramUniformMatrix4x3fvEXT glProgramUniformMatrix4x3fvEXT =
    loadFunction<GlProgramUniformMatrix4x3fvEXTNative>(
            _library, 'glProgramUniformMatrix4x3fvEXT')
        .asFunction<GlProgramUniformMatrix4x3fvEXT>();
GlTextureBufferEXT glTextureBufferEXT =
    loadFunction<GlTextureBufferEXTNative>(_library, 'glTextureBufferEXT')
        .asFunction<GlTextureBufferEXT>();
GlMultiTexBufferEXT glMultiTexBufferEXT =
    loadFunction<GlMultiTexBufferEXTNative>(_library, 'glMultiTexBufferEXT')
        .asFunction<GlMultiTexBufferEXT>();
GlTextureParameterIivEXT glTextureParameterIivEXT =
    loadFunction<GlTextureParameterIivEXTNative>(
            _library, 'glTextureParameterIivEXT')
        .asFunction<GlTextureParameterIivEXT>();
GlTextureParameterIuivEXT glTextureParameterIuivEXT =
    loadFunction<GlTextureParameterIuivEXTNative>(
            _library, 'glTextureParameterIuivEXT')
        .asFunction<GlTextureParameterIuivEXT>();
GlGetTextureParameterIivEXT glGetTextureParameterIivEXT =
    loadFunction<GlGetTextureParameterIivEXTNative>(
            _library, 'glGetTextureParameterIivEXT')
        .asFunction<GlGetTextureParameterIivEXT>();
GlGetTextureParameterIuivEXT glGetTextureParameterIuivEXT =
    loadFunction<GlGetTextureParameterIuivEXTNative>(
            _library, 'glGetTextureParameterIuivEXT')
        .asFunction<GlGetTextureParameterIuivEXT>();
GlMultiTexParameterIivEXT glMultiTexParameterIivEXT =
    loadFunction<GlMultiTexParameterIivEXTNative>(
            _library, 'glMultiTexParameterIivEXT')
        .asFunction<GlMultiTexParameterIivEXT>();
GlMultiTexParameterIuivEXT glMultiTexParameterIuivEXT =
    loadFunction<GlMultiTexParameterIuivEXTNative>(
            _library, 'glMultiTexParameterIuivEXT')
        .asFunction<GlMultiTexParameterIuivEXT>();
GlGetMultiTexParameterIivEXT glGetMultiTexParameterIivEXT =
    loadFunction<GlGetMultiTexParameterIivEXTNative>(
            _library, 'glGetMultiTexParameterIivEXT')
        .asFunction<GlGetMultiTexParameterIivEXT>();
GlGetMultiTexParameterIuivEXT glGetMultiTexParameterIuivEXT =
    loadFunction<GlGetMultiTexParameterIuivEXTNative>(
            _library, 'glGetMultiTexParameterIuivEXT')
        .asFunction<GlGetMultiTexParameterIuivEXT>();
GlProgramUniform1uiEXT glProgramUniform1uiEXT =
    loadFunction<GlProgramUniform1uiEXTNative>(
            _library, 'glProgramUniform1uiEXT')
        .asFunction<GlProgramUniform1uiEXT>();
GlProgramUniform2uiEXT glProgramUniform2uiEXT =
    loadFunction<GlProgramUniform2uiEXTNative>(
            _library, 'glProgramUniform2uiEXT')
        .asFunction<GlProgramUniform2uiEXT>();
GlProgramUniform3uiEXT glProgramUniform3uiEXT =
    loadFunction<GlProgramUniform3uiEXTNative>(
            _library, 'glProgramUniform3uiEXT')
        .asFunction<GlProgramUniform3uiEXT>();
GlProgramUniform4uiEXT glProgramUniform4uiEXT =
    loadFunction<GlProgramUniform4uiEXTNative>(
            _library, 'glProgramUniform4uiEXT')
        .asFunction<GlProgramUniform4uiEXT>();
GlProgramUniform1uivEXT glProgramUniform1uivEXT =
    loadFunction<GlProgramUniform1uivEXTNative>(
            _library, 'glProgramUniform1uivEXT')
        .asFunction<GlProgramUniform1uivEXT>();
GlProgramUniform2uivEXT glProgramUniform2uivEXT =
    loadFunction<GlProgramUniform2uivEXTNative>(
            _library, 'glProgramUniform2uivEXT')
        .asFunction<GlProgramUniform2uivEXT>();
GlProgramUniform3uivEXT glProgramUniform3uivEXT =
    loadFunction<GlProgramUniform3uivEXTNative>(
            _library, 'glProgramUniform3uivEXT')
        .asFunction<GlProgramUniform3uivEXT>();
GlProgramUniform4uivEXT glProgramUniform4uivEXT =
    loadFunction<GlProgramUniform4uivEXTNative>(
            _library, 'glProgramUniform4uivEXT')
        .asFunction<GlProgramUniform4uivEXT>();
GlNamedProgramLocalParameters4fvEXT glNamedProgramLocalParameters4fvEXT =
    loadFunction<GlNamedProgramLocalParameters4fvEXTNative>(
            _library, 'glNamedProgramLocalParameters4fvEXT')
        .asFunction<GlNamedProgramLocalParameters4fvEXT>();
GlNamedProgramLocalParameterI4iEXT glNamedProgramLocalParameterI4iEXT =
    loadFunction<GlNamedProgramLocalParameterI4iEXTNative>(
            _library, 'glNamedProgramLocalParameterI4iEXT')
        .asFunction<GlNamedProgramLocalParameterI4iEXT>();
GlNamedProgramLocalParameterI4ivEXT glNamedProgramLocalParameterI4ivEXT =
    loadFunction<GlNamedProgramLocalParameterI4ivEXTNative>(
            _library, 'glNamedProgramLocalParameterI4ivEXT')
        .asFunction<GlNamedProgramLocalParameterI4ivEXT>();
GlNamedProgramLocalParametersI4ivEXT glNamedProgramLocalParametersI4ivEXT =
    loadFunction<GlNamedProgramLocalParametersI4ivEXTNative>(
            _library, 'glNamedProgramLocalParametersI4ivEXT')
        .asFunction<GlNamedProgramLocalParametersI4ivEXT>();
GlNamedProgramLocalParameterI4uiEXT glNamedProgramLocalParameterI4uiEXT =
    loadFunction<GlNamedProgramLocalParameterI4uiEXTNative>(
            _library, 'glNamedProgramLocalParameterI4uiEXT')
        .asFunction<GlNamedProgramLocalParameterI4uiEXT>();
GlNamedProgramLocalParameterI4uivEXT glNamedProgramLocalParameterI4uivEXT =
    loadFunction<GlNamedProgramLocalParameterI4uivEXTNative>(
            _library, 'glNamedProgramLocalParameterI4uivEXT')
        .asFunction<GlNamedProgramLocalParameterI4uivEXT>();
GlNamedProgramLocalParametersI4uivEXT glNamedProgramLocalParametersI4uivEXT =
    loadFunction<GlNamedProgramLocalParametersI4uivEXTNative>(
            _library, 'glNamedProgramLocalParametersI4uivEXT')
        .asFunction<GlNamedProgramLocalParametersI4uivEXT>();
GlGetNamedProgramLocalParameterIivEXT glGetNamedProgramLocalParameterIivEXT =
    loadFunction<GlGetNamedProgramLocalParameterIivEXTNative>(
            _library, 'glGetNamedProgramLocalParameterIivEXT')
        .asFunction<GlGetNamedProgramLocalParameterIivEXT>();
GlGetNamedProgramLocalParameterIuivEXT glGetNamedProgramLocalParameterIuivEXT =
    loadFunction<GlGetNamedProgramLocalParameterIuivEXTNative>(
            _library, 'glGetNamedProgramLocalParameterIuivEXT')
        .asFunction<GlGetNamedProgramLocalParameterIuivEXT>();
GlEnableClientStateiEXT glEnableClientStateiEXT =
    loadFunction<GlEnableClientStateiEXTNative>(
            _library, 'glEnableClientStateiEXT')
        .asFunction<GlEnableClientStateiEXT>();
GlDisableClientStateiEXT glDisableClientStateiEXT =
    loadFunction<GlDisableClientStateiEXTNative>(
            _library, 'glDisableClientStateiEXT')
        .asFunction<GlDisableClientStateiEXT>();
GlGetFloati_vEXT glGetFloati_vEXT =
    loadFunction<GlGetFloati_vEXTNative>(_library, 'glGetFloati_vEXT')
        .asFunction<GlGetFloati_vEXT>();
GlGetDoublei_vEXT glGetDoublei_vEXT =
    loadFunction<GlGetDoublei_vEXTNative>(_library, 'glGetDoublei_vEXT')
        .asFunction<GlGetDoublei_vEXT>();
GlGetPointeri_vEXT glGetPointeri_vEXT =
    loadFunction<GlGetPointeri_vEXTNative>(_library, 'glGetPointeri_vEXT')
        .asFunction<GlGetPointeri_vEXT>();
GlNamedProgramStringEXT glNamedProgramStringEXT =
    loadFunction<GlNamedProgramStringEXTNative>(
            _library, 'glNamedProgramStringEXT')
        .asFunction<GlNamedProgramStringEXT>();
GlNamedProgramLocalParameter4dEXT glNamedProgramLocalParameter4dEXT =
    loadFunction<GlNamedProgramLocalParameter4dEXTNative>(
            _library, 'glNamedProgramLocalParameter4dEXT')
        .asFunction<GlNamedProgramLocalParameter4dEXT>();
GlNamedProgramLocalParameter4dvEXT glNamedProgramLocalParameter4dvEXT =
    loadFunction<GlNamedProgramLocalParameter4dvEXTNative>(
            _library, 'glNamedProgramLocalParameter4dvEXT')
        .asFunction<GlNamedProgramLocalParameter4dvEXT>();
GlNamedProgramLocalParameter4fEXT glNamedProgramLocalParameter4fEXT =
    loadFunction<GlNamedProgramLocalParameter4fEXTNative>(
            _library, 'glNamedProgramLocalParameter4fEXT')
        .asFunction<GlNamedProgramLocalParameter4fEXT>();
GlNamedProgramLocalParameter4fvEXT glNamedProgramLocalParameter4fvEXT =
    loadFunction<GlNamedProgramLocalParameter4fvEXTNative>(
            _library, 'glNamedProgramLocalParameter4fvEXT')
        .asFunction<GlNamedProgramLocalParameter4fvEXT>();
GlGetNamedProgramLocalParameterdvEXT glGetNamedProgramLocalParameterdvEXT =
    loadFunction<GlGetNamedProgramLocalParameterdvEXTNative>(
            _library, 'glGetNamedProgramLocalParameterdvEXT')
        .asFunction<GlGetNamedProgramLocalParameterdvEXT>();
GlGetNamedProgramLocalParameterfvEXT glGetNamedProgramLocalParameterfvEXT =
    loadFunction<GlGetNamedProgramLocalParameterfvEXTNative>(
            _library, 'glGetNamedProgramLocalParameterfvEXT')
        .asFunction<GlGetNamedProgramLocalParameterfvEXT>();
GlGetNamedProgramivEXT glGetNamedProgramivEXT =
    loadFunction<GlGetNamedProgramivEXTNative>(
            _library, 'glGetNamedProgramivEXT')
        .asFunction<GlGetNamedProgramivEXT>();
GlGetNamedProgramStringEXT glGetNamedProgramStringEXT =
    loadFunction<GlGetNamedProgramStringEXTNative>(
            _library, 'glGetNamedProgramStringEXT')
        .asFunction<GlGetNamedProgramStringEXT>();
GlNamedRenderbufferStorageEXT glNamedRenderbufferStorageEXT =
    loadFunction<GlNamedRenderbufferStorageEXTNative>(
            _library, 'glNamedRenderbufferStorageEXT')
        .asFunction<GlNamedRenderbufferStorageEXT>();
GlGetNamedRenderbufferParameterivEXT glGetNamedRenderbufferParameterivEXT =
    loadFunction<GlGetNamedRenderbufferParameterivEXTNative>(
            _library, 'glGetNamedRenderbufferParameterivEXT')
        .asFunction<GlGetNamedRenderbufferParameterivEXT>();
GlNamedRenderbufferStorageMultisampleEXT
    glNamedRenderbufferStorageMultisampleEXT =
    loadFunction<GlNamedRenderbufferStorageMultisampleEXTNative>(
            _library, 'glNamedRenderbufferStorageMultisampleEXT')
        .asFunction<GlNamedRenderbufferStorageMultisampleEXT>();
GlNamedRenderbufferStorageMultisampleCoverageEXT
    glNamedRenderbufferStorageMultisampleCoverageEXT =
    loadFunction<GlNamedRenderbufferStorageMultisampleCoverageEXTNative>(
            _library, 'glNamedRenderbufferStorageMultisampleCoverageEXT')
        .asFunction<GlNamedRenderbufferStorageMultisampleCoverageEXT>();
GlCheckNamedFramebufferStatusEXT glCheckNamedFramebufferStatusEXT =
    loadFunction<GlCheckNamedFramebufferStatusEXTNative>(
            _library, 'glCheckNamedFramebufferStatusEXT')
        .asFunction<GlCheckNamedFramebufferStatusEXT>();
GlNamedFramebufferTexture1DEXT glNamedFramebufferTexture1DEXT =
    loadFunction<GlNamedFramebufferTexture1DEXTNative>(
            _library, 'glNamedFramebufferTexture1DEXT')
        .asFunction<GlNamedFramebufferTexture1DEXT>();
GlNamedFramebufferTexture2DEXT glNamedFramebufferTexture2DEXT =
    loadFunction<GlNamedFramebufferTexture2DEXTNative>(
            _library, 'glNamedFramebufferTexture2DEXT')
        .asFunction<GlNamedFramebufferTexture2DEXT>();
GlNamedFramebufferTexture3DEXT glNamedFramebufferTexture3DEXT =
    loadFunction<GlNamedFramebufferTexture3DEXTNative>(
            _library, 'glNamedFramebufferTexture3DEXT')
        .asFunction<GlNamedFramebufferTexture3DEXT>();
GlNamedFramebufferRenderbufferEXT glNamedFramebufferRenderbufferEXT =
    loadFunction<GlNamedFramebufferRenderbufferEXTNative>(
            _library, 'glNamedFramebufferRenderbufferEXT')
        .asFunction<GlNamedFramebufferRenderbufferEXT>();
GlGetNamedFramebufferAttachmentParameterivEXT
    glGetNamedFramebufferAttachmentParameterivEXT =
    loadFunction<GlGetNamedFramebufferAttachmentParameterivEXTNative>(
            _library, 'glGetNamedFramebufferAttachmentParameterivEXT')
        .asFunction<GlGetNamedFramebufferAttachmentParameterivEXT>();
GlGenerateTextureMipmapEXT glGenerateTextureMipmapEXT =
    loadFunction<GlGenerateTextureMipmapEXTNative>(
            _library, 'glGenerateTextureMipmapEXT')
        .asFunction<GlGenerateTextureMipmapEXT>();
GlGenerateMultiTexMipmapEXT glGenerateMultiTexMipmapEXT =
    loadFunction<GlGenerateMultiTexMipmapEXTNative>(
            _library, 'glGenerateMultiTexMipmapEXT')
        .asFunction<GlGenerateMultiTexMipmapEXT>();
GlFramebufferDrawBufferEXT glFramebufferDrawBufferEXT =
    loadFunction<GlFramebufferDrawBufferEXTNative>(
            _library, 'glFramebufferDrawBufferEXT')
        .asFunction<GlFramebufferDrawBufferEXT>();
GlFramebufferDrawBuffersEXT glFramebufferDrawBuffersEXT =
    loadFunction<GlFramebufferDrawBuffersEXTNative>(
            _library, 'glFramebufferDrawBuffersEXT')
        .asFunction<GlFramebufferDrawBuffersEXT>();
GlFramebufferReadBufferEXT glFramebufferReadBufferEXT =
    loadFunction<GlFramebufferReadBufferEXTNative>(
            _library, 'glFramebufferReadBufferEXT')
        .asFunction<GlFramebufferReadBufferEXT>();
GlGetFramebufferParameterivEXT glGetFramebufferParameterivEXT =
    loadFunction<GlGetFramebufferParameterivEXTNative>(
            _library, 'glGetFramebufferParameterivEXT')
        .asFunction<GlGetFramebufferParameterivEXT>();
GlNamedCopyBufferSubDataEXT glNamedCopyBufferSubDataEXT =
    loadFunction<GlNamedCopyBufferSubDataEXTNative>(
            _library, 'glNamedCopyBufferSubDataEXT')
        .asFunction<GlNamedCopyBufferSubDataEXT>();
GlNamedFramebufferTextureEXT glNamedFramebufferTextureEXT =
    loadFunction<GlNamedFramebufferTextureEXTNative>(
            _library, 'glNamedFramebufferTextureEXT')
        .asFunction<GlNamedFramebufferTextureEXT>();
GlNamedFramebufferTextureLayerEXT glNamedFramebufferTextureLayerEXT =
    loadFunction<GlNamedFramebufferTextureLayerEXTNative>(
            _library, 'glNamedFramebufferTextureLayerEXT')
        .asFunction<GlNamedFramebufferTextureLayerEXT>();
GlNamedFramebufferTextureFaceEXT glNamedFramebufferTextureFaceEXT =
    loadFunction<GlNamedFramebufferTextureFaceEXTNative>(
            _library, 'glNamedFramebufferTextureFaceEXT')
        .asFunction<GlNamedFramebufferTextureFaceEXT>();
GlTextureRenderbufferEXT glTextureRenderbufferEXT =
    loadFunction<GlTextureRenderbufferEXTNative>(
            _library, 'glTextureRenderbufferEXT')
        .asFunction<GlTextureRenderbufferEXT>();
GlMultiTexRenderbufferEXT glMultiTexRenderbufferEXT =
    loadFunction<GlMultiTexRenderbufferEXTNative>(
            _library, 'glMultiTexRenderbufferEXT')
        .asFunction<GlMultiTexRenderbufferEXT>();
GlVertexArrayVertexOffsetEXT glVertexArrayVertexOffsetEXT =
    loadFunction<GlVertexArrayVertexOffsetEXTNative>(
            _library, 'glVertexArrayVertexOffsetEXT')
        .asFunction<GlVertexArrayVertexOffsetEXT>();
GlVertexArrayColorOffsetEXT glVertexArrayColorOffsetEXT =
    loadFunction<GlVertexArrayColorOffsetEXTNative>(
            _library, 'glVertexArrayColorOffsetEXT')
        .asFunction<GlVertexArrayColorOffsetEXT>();
GlVertexArrayEdgeFlagOffsetEXT glVertexArrayEdgeFlagOffsetEXT =
    loadFunction<GlVertexArrayEdgeFlagOffsetEXTNative>(
            _library, 'glVertexArrayEdgeFlagOffsetEXT')
        .asFunction<GlVertexArrayEdgeFlagOffsetEXT>();
GlVertexArrayIndexOffsetEXT glVertexArrayIndexOffsetEXT =
    loadFunction<GlVertexArrayIndexOffsetEXTNative>(
            _library, 'glVertexArrayIndexOffsetEXT')
        .asFunction<GlVertexArrayIndexOffsetEXT>();
GlVertexArrayNormalOffsetEXT glVertexArrayNormalOffsetEXT =
    loadFunction<GlVertexArrayNormalOffsetEXTNative>(
            _library, 'glVertexArrayNormalOffsetEXT')
        .asFunction<GlVertexArrayNormalOffsetEXT>();
GlVertexArrayTexCoordOffsetEXT glVertexArrayTexCoordOffsetEXT =
    loadFunction<GlVertexArrayTexCoordOffsetEXTNative>(
            _library, 'glVertexArrayTexCoordOffsetEXT')
        .asFunction<GlVertexArrayTexCoordOffsetEXT>();
GlVertexArrayMultiTexCoordOffsetEXT glVertexArrayMultiTexCoordOffsetEXT =
    loadFunction<GlVertexArrayMultiTexCoordOffsetEXTNative>(
            _library, 'glVertexArrayMultiTexCoordOffsetEXT')
        .asFunction<GlVertexArrayMultiTexCoordOffsetEXT>();
GlVertexArrayFogCoordOffsetEXT glVertexArrayFogCoordOffsetEXT =
    loadFunction<GlVertexArrayFogCoordOffsetEXTNative>(
            _library, 'glVertexArrayFogCoordOffsetEXT')
        .asFunction<GlVertexArrayFogCoordOffsetEXT>();
GlVertexArraySecondaryColorOffsetEXT glVertexArraySecondaryColorOffsetEXT =
    loadFunction<GlVertexArraySecondaryColorOffsetEXTNative>(
            _library, 'glVertexArraySecondaryColorOffsetEXT')
        .asFunction<GlVertexArraySecondaryColorOffsetEXT>();
GlVertexArrayVertexAttribOffsetEXT glVertexArrayVertexAttribOffsetEXT =
    loadFunction<GlVertexArrayVertexAttribOffsetEXTNative>(
            _library, 'glVertexArrayVertexAttribOffsetEXT')
        .asFunction<GlVertexArrayVertexAttribOffsetEXT>();
GlVertexArrayVertexAttribIOffsetEXT glVertexArrayVertexAttribIOffsetEXT =
    loadFunction<GlVertexArrayVertexAttribIOffsetEXTNative>(
            _library, 'glVertexArrayVertexAttribIOffsetEXT')
        .asFunction<GlVertexArrayVertexAttribIOffsetEXT>();
GlEnableVertexArrayEXT glEnableVertexArrayEXT =
    loadFunction<GlEnableVertexArrayEXTNative>(
            _library, 'glEnableVertexArrayEXT')
        .asFunction<GlEnableVertexArrayEXT>();
GlDisableVertexArrayEXT glDisableVertexArrayEXT =
    loadFunction<GlDisableVertexArrayEXTNative>(
            _library, 'glDisableVertexArrayEXT')
        .asFunction<GlDisableVertexArrayEXT>();
GlEnableVertexArrayAttribEXT glEnableVertexArrayAttribEXT =
    loadFunction<GlEnableVertexArrayAttribEXTNative>(
            _library, 'glEnableVertexArrayAttribEXT')
        .asFunction<GlEnableVertexArrayAttribEXT>();
GlDisableVertexArrayAttribEXT glDisableVertexArrayAttribEXT =
    loadFunction<GlDisableVertexArrayAttribEXTNative>(
            _library, 'glDisableVertexArrayAttribEXT')
        .asFunction<GlDisableVertexArrayAttribEXT>();
GlGetVertexArrayIntegervEXT glGetVertexArrayIntegervEXT =
    loadFunction<GlGetVertexArrayIntegervEXTNative>(
            _library, 'glGetVertexArrayIntegervEXT')
        .asFunction<GlGetVertexArrayIntegervEXT>();
GlGetVertexArrayPointervEXT glGetVertexArrayPointervEXT =
    loadFunction<GlGetVertexArrayPointervEXTNative>(
            _library, 'glGetVertexArrayPointervEXT')
        .asFunction<GlGetVertexArrayPointervEXT>();
GlGetVertexArrayIntegeri_vEXT glGetVertexArrayIntegeri_vEXT =
    loadFunction<GlGetVertexArrayIntegeri_vEXTNative>(
            _library, 'glGetVertexArrayIntegeri_vEXT')
        .asFunction<GlGetVertexArrayIntegeri_vEXT>();
GlGetVertexArrayPointeri_vEXT glGetVertexArrayPointeri_vEXT =
    loadFunction<GlGetVertexArrayPointeri_vEXTNative>(
            _library, 'glGetVertexArrayPointeri_vEXT')
        .asFunction<GlGetVertexArrayPointeri_vEXT>();
GlMapNamedBufferRangeEXT glMapNamedBufferRangeEXT =
    loadFunction<GlMapNamedBufferRangeEXTNative>(
            _library, 'glMapNamedBufferRangeEXT')
        .asFunction<GlMapNamedBufferRangeEXT>();
GlFlushMappedNamedBufferRangeEXT glFlushMappedNamedBufferRangeEXT =
    loadFunction<GlFlushMappedNamedBufferRangeEXTNative>(
            _library, 'glFlushMappedNamedBufferRangeEXT')
        .asFunction<GlFlushMappedNamedBufferRangeEXT>();
GlNamedBufferStorageEXT glNamedBufferStorageEXT =
    loadFunction<GlNamedBufferStorageEXTNative>(
            _library, 'glNamedBufferStorageEXT')
        .asFunction<GlNamedBufferStorageEXT>();
GlClearNamedBufferDataEXT glClearNamedBufferDataEXT =
    loadFunction<GlClearNamedBufferDataEXTNative>(
            _library, 'glClearNamedBufferDataEXT')
        .asFunction<GlClearNamedBufferDataEXT>();
GlClearNamedBufferSubDataEXT glClearNamedBufferSubDataEXT =
    loadFunction<GlClearNamedBufferSubDataEXTNative>(
            _library, 'glClearNamedBufferSubDataEXT')
        .asFunction<GlClearNamedBufferSubDataEXT>();
GlNamedFramebufferParameteriEXT glNamedFramebufferParameteriEXT =
    loadFunction<GlNamedFramebufferParameteriEXTNative>(
            _library, 'glNamedFramebufferParameteriEXT')
        .asFunction<GlNamedFramebufferParameteriEXT>();
GlGetNamedFramebufferParameterivEXT glGetNamedFramebufferParameterivEXT =
    loadFunction<GlGetNamedFramebufferParameterivEXTNative>(
            _library, 'glGetNamedFramebufferParameterivEXT')
        .asFunction<GlGetNamedFramebufferParameterivEXT>();
GlProgramUniform1dEXT glProgramUniform1dEXT =
    loadFunction<GlProgramUniform1dEXTNative>(_library, 'glProgramUniform1dEXT')
        .asFunction<GlProgramUniform1dEXT>();
GlProgramUniform2dEXT glProgramUniform2dEXT =
    loadFunction<GlProgramUniform2dEXTNative>(_library, 'glProgramUniform2dEXT')
        .asFunction<GlProgramUniform2dEXT>();
GlProgramUniform3dEXT glProgramUniform3dEXT =
    loadFunction<GlProgramUniform3dEXTNative>(_library, 'glProgramUniform3dEXT')
        .asFunction<GlProgramUniform3dEXT>();
GlProgramUniform4dEXT glProgramUniform4dEXT =
    loadFunction<GlProgramUniform4dEXTNative>(_library, 'glProgramUniform4dEXT')
        .asFunction<GlProgramUniform4dEXT>();
GlProgramUniform1dvEXT glProgramUniform1dvEXT =
    loadFunction<GlProgramUniform1dvEXTNative>(
            _library, 'glProgramUniform1dvEXT')
        .asFunction<GlProgramUniform1dvEXT>();
GlProgramUniform2dvEXT glProgramUniform2dvEXT =
    loadFunction<GlProgramUniform2dvEXTNative>(
            _library, 'glProgramUniform2dvEXT')
        .asFunction<GlProgramUniform2dvEXT>();
GlProgramUniform3dvEXT glProgramUniform3dvEXT =
    loadFunction<GlProgramUniform3dvEXTNative>(
            _library, 'glProgramUniform3dvEXT')
        .asFunction<GlProgramUniform3dvEXT>();
GlProgramUniform4dvEXT glProgramUniform4dvEXT =
    loadFunction<GlProgramUniform4dvEXTNative>(
            _library, 'glProgramUniform4dvEXT')
        .asFunction<GlProgramUniform4dvEXT>();
GlProgramUniformMatrix2dvEXT glProgramUniformMatrix2dvEXT =
    loadFunction<GlProgramUniformMatrix2dvEXTNative>(
            _library, 'glProgramUniformMatrix2dvEXT')
        .asFunction<GlProgramUniformMatrix2dvEXT>();
GlProgramUniformMatrix3dvEXT glProgramUniformMatrix3dvEXT =
    loadFunction<GlProgramUniformMatrix3dvEXTNative>(
            _library, 'glProgramUniformMatrix3dvEXT')
        .asFunction<GlProgramUniformMatrix3dvEXT>();
GlProgramUniformMatrix4dvEXT glProgramUniformMatrix4dvEXT =
    loadFunction<GlProgramUniformMatrix4dvEXTNative>(
            _library, 'glProgramUniformMatrix4dvEXT')
        .asFunction<GlProgramUniformMatrix4dvEXT>();
GlProgramUniformMatrix2x3dvEXT glProgramUniformMatrix2x3dvEXT =
    loadFunction<GlProgramUniformMatrix2x3dvEXTNative>(
            _library, 'glProgramUniformMatrix2x3dvEXT')
        .asFunction<GlProgramUniformMatrix2x3dvEXT>();
GlProgramUniformMatrix2x4dvEXT glProgramUniformMatrix2x4dvEXT =
    loadFunction<GlProgramUniformMatrix2x4dvEXTNative>(
            _library, 'glProgramUniformMatrix2x4dvEXT')
        .asFunction<GlProgramUniformMatrix2x4dvEXT>();
GlProgramUniformMatrix3x2dvEXT glProgramUniformMatrix3x2dvEXT =
    loadFunction<GlProgramUniformMatrix3x2dvEXTNative>(
            _library, 'glProgramUniformMatrix3x2dvEXT')
        .asFunction<GlProgramUniformMatrix3x2dvEXT>();
GlProgramUniformMatrix3x4dvEXT glProgramUniformMatrix3x4dvEXT =
    loadFunction<GlProgramUniformMatrix3x4dvEXTNative>(
            _library, 'glProgramUniformMatrix3x4dvEXT')
        .asFunction<GlProgramUniformMatrix3x4dvEXT>();
GlProgramUniformMatrix4x2dvEXT glProgramUniformMatrix4x2dvEXT =
    loadFunction<GlProgramUniformMatrix4x2dvEXTNative>(
            _library, 'glProgramUniformMatrix4x2dvEXT')
        .asFunction<GlProgramUniformMatrix4x2dvEXT>();
GlProgramUniformMatrix4x3dvEXT glProgramUniformMatrix4x3dvEXT =
    loadFunction<GlProgramUniformMatrix4x3dvEXTNative>(
            _library, 'glProgramUniformMatrix4x3dvEXT')
        .asFunction<GlProgramUniformMatrix4x3dvEXT>();
GlTextureBufferRangeEXT glTextureBufferRangeEXT =
    loadFunction<GlTextureBufferRangeEXTNative>(
            _library, 'glTextureBufferRangeEXT')
        .asFunction<GlTextureBufferRangeEXT>();
GlTextureStorage1DEXT glTextureStorage1DEXT =
    loadFunction<GlTextureStorage1DEXTNative>(_library, 'glTextureStorage1DEXT')
        .asFunction<GlTextureStorage1DEXT>();
GlTextureStorage2DEXT glTextureStorage2DEXT =
    loadFunction<GlTextureStorage2DEXTNative>(_library, 'glTextureStorage2DEXT')
        .asFunction<GlTextureStorage2DEXT>();
GlTextureStorage3DEXT glTextureStorage3DEXT =
    loadFunction<GlTextureStorage3DEXTNative>(_library, 'glTextureStorage3DEXT')
        .asFunction<GlTextureStorage3DEXT>();
GlTextureStorage2DMultisampleEXT glTextureStorage2DMultisampleEXT =
    loadFunction<GlTextureStorage2DMultisampleEXTNative>(
            _library, 'glTextureStorage2DMultisampleEXT')
        .asFunction<GlTextureStorage2DMultisampleEXT>();
GlTextureStorage3DMultisampleEXT glTextureStorage3DMultisampleEXT =
    loadFunction<GlTextureStorage3DMultisampleEXTNative>(
            _library, 'glTextureStorage3DMultisampleEXT')
        .asFunction<GlTextureStorage3DMultisampleEXT>();
GlVertexArrayBindVertexBufferEXT glVertexArrayBindVertexBufferEXT =
    loadFunction<GlVertexArrayBindVertexBufferEXTNative>(
            _library, 'glVertexArrayBindVertexBufferEXT')
        .asFunction<GlVertexArrayBindVertexBufferEXT>();
GlVertexArrayVertexAttribFormatEXT glVertexArrayVertexAttribFormatEXT =
    loadFunction<GlVertexArrayVertexAttribFormatEXTNative>(
            _library, 'glVertexArrayVertexAttribFormatEXT')
        .asFunction<GlVertexArrayVertexAttribFormatEXT>();
GlVertexArrayVertexAttribIFormatEXT glVertexArrayVertexAttribIFormatEXT =
    loadFunction<GlVertexArrayVertexAttribIFormatEXTNative>(
            _library, 'glVertexArrayVertexAttribIFormatEXT')
        .asFunction<GlVertexArrayVertexAttribIFormatEXT>();
GlVertexArrayVertexAttribLFormatEXT glVertexArrayVertexAttribLFormatEXT =
    loadFunction<GlVertexArrayVertexAttribLFormatEXTNative>(
            _library, 'glVertexArrayVertexAttribLFormatEXT')
        .asFunction<GlVertexArrayVertexAttribLFormatEXT>();
GlVertexArrayVertexAttribBindingEXT glVertexArrayVertexAttribBindingEXT =
    loadFunction<GlVertexArrayVertexAttribBindingEXTNative>(
            _library, 'glVertexArrayVertexAttribBindingEXT')
        .asFunction<GlVertexArrayVertexAttribBindingEXT>();
GlVertexArrayVertexBindingDivisorEXT glVertexArrayVertexBindingDivisorEXT =
    loadFunction<GlVertexArrayVertexBindingDivisorEXTNative>(
            _library, 'glVertexArrayVertexBindingDivisorEXT')
        .asFunction<GlVertexArrayVertexBindingDivisorEXT>();
GlVertexArrayVertexAttribLOffsetEXT glVertexArrayVertexAttribLOffsetEXT =
    loadFunction<GlVertexArrayVertexAttribLOffsetEXTNative>(
            _library, 'glVertexArrayVertexAttribLOffsetEXT')
        .asFunction<GlVertexArrayVertexAttribLOffsetEXT>();
GlTexturePageCommitmentEXT glTexturePageCommitmentEXT =
    loadFunction<GlTexturePageCommitmentEXTNative>(
            _library, 'glTexturePageCommitmentEXT')
        .asFunction<GlTexturePageCommitmentEXT>();
GlVertexArrayVertexAttribDivisorEXT glVertexArrayVertexAttribDivisorEXT =
    loadFunction<GlVertexArrayVertexAttribDivisorEXTNative>(
            _library, 'glVertexArrayVertexAttribDivisorEXT')
        .asFunction<GlVertexArrayVertexAttribDivisorEXT>();
GlDrawArraysInstancedEXT glDrawArraysInstancedEXT =
    loadFunction<GlDrawArraysInstancedEXTNative>(
            _library, 'glDrawArraysInstancedEXT')
        .asFunction<GlDrawArraysInstancedEXT>();
GlDrawElementsInstancedEXT glDrawElementsInstancedEXT =
    loadFunction<GlDrawElementsInstancedEXTNative>(
            _library, 'glDrawElementsInstancedEXT')
        .asFunction<GlDrawElementsInstancedEXT>();
GlPolygonOffsetClampEXT glPolygonOffsetClampEXT =
    loadFunction<GlPolygonOffsetClampEXTNative>(
            _library, 'glPolygonOffsetClampEXT')
        .asFunction<GlPolygonOffsetClampEXT>();
GlRasterSamplesEXT glRasterSamplesEXT =
    loadFunction<GlRasterSamplesEXTNative>(_library, 'glRasterSamplesEXT')
        .asFunction<GlRasterSamplesEXT>();
GlUseShaderProgramEXT glUseShaderProgramEXT =
    loadFunction<GlUseShaderProgramEXTNative>(_library, 'glUseShaderProgramEXT')
        .asFunction<GlUseShaderProgramEXT>();
GlActiveProgramEXT glActiveProgramEXT =
    loadFunction<GlActiveProgramEXTNative>(_library, 'glActiveProgramEXT')
        .asFunction<GlActiveProgramEXT>();
GlCreateShaderProgramEXT glCreateShaderProgramEXT =
    loadFunction<GlCreateShaderProgramEXTNative>(
            _library, 'glCreateShaderProgramEXT')
        .asFunction<GlCreateShaderProgramEXT>();
GlFramebufferFetchBarrierEXT glFramebufferFetchBarrierEXT =
    loadFunction<GlFramebufferFetchBarrierEXTNative>(
            _library, 'glFramebufferFetchBarrierEXT')
        .asFunction<GlFramebufferFetchBarrierEXT>();
GlWindowRectanglesEXT glWindowRectanglesEXT =
    loadFunction<GlWindowRectanglesEXTNative>(_library, 'glWindowRectanglesEXT')
        .asFunction<GlWindowRectanglesEXT>();
GlApplyFramebufferAttachmentCMAAINTEL glApplyFramebufferAttachmentCMAAINTEL =
    loadFunction<GlApplyFramebufferAttachmentCMAAINTELNative>(
            _library, 'glApplyFramebufferAttachmentCMAAINTEL')
        .asFunction<GlApplyFramebufferAttachmentCMAAINTEL>();
GlBeginPerfQueryINTEL glBeginPerfQueryINTEL =
    loadFunction<GlBeginPerfQueryINTELNative>(_library, 'glBeginPerfQueryINTEL')
        .asFunction<GlBeginPerfQueryINTEL>();
GlCreatePerfQueryINTEL glCreatePerfQueryINTEL =
    loadFunction<GlCreatePerfQueryINTELNative>(
            _library, 'glCreatePerfQueryINTEL')
        .asFunction<GlCreatePerfQueryINTEL>();
GlDeletePerfQueryINTEL glDeletePerfQueryINTEL =
    loadFunction<GlDeletePerfQueryINTELNative>(
            _library, 'glDeletePerfQueryINTEL')
        .asFunction<GlDeletePerfQueryINTEL>();
GlEndPerfQueryINTEL glEndPerfQueryINTEL =
    loadFunction<GlEndPerfQueryINTELNative>(_library, 'glEndPerfQueryINTEL')
        .asFunction<GlEndPerfQueryINTEL>();
GlGetFirstPerfQueryIdINTEL glGetFirstPerfQueryIdINTEL =
    loadFunction<GlGetFirstPerfQueryIdINTELNative>(
            _library, 'glGetFirstPerfQueryIdINTEL')
        .asFunction<GlGetFirstPerfQueryIdINTEL>();
GlGetNextPerfQueryIdINTEL glGetNextPerfQueryIdINTEL =
    loadFunction<GlGetNextPerfQueryIdINTELNative>(
            _library, 'glGetNextPerfQueryIdINTEL')
        .asFunction<GlGetNextPerfQueryIdINTEL>();
GlGetPerfCounterInfoINTEL glGetPerfCounterInfoINTEL =
    loadFunction<GlGetPerfCounterInfoINTELNative>(
            _library, 'glGetPerfCounterInfoINTEL')
        .asFunction<GlGetPerfCounterInfoINTEL>();
GlGetPerfQueryDataINTEL glGetPerfQueryDataINTEL =
    loadFunction<GlGetPerfQueryDataINTELNative>(
            _library, 'glGetPerfQueryDataINTEL')
        .asFunction<GlGetPerfQueryDataINTEL>();
GlGetPerfQueryIdByNameINTEL glGetPerfQueryIdByNameINTEL =
    loadFunction<GlGetPerfQueryIdByNameINTELNative>(
            _library, 'glGetPerfQueryIdByNameINTEL')
        .asFunction<GlGetPerfQueryIdByNameINTEL>();
GlGetPerfQueryInfoINTEL glGetPerfQueryInfoINTEL =
    loadFunction<GlGetPerfQueryInfoINTELNative>(
            _library, 'glGetPerfQueryInfoINTEL')
        .asFunction<GlGetPerfQueryInfoINTEL>();
GlFramebufferParameteriMESA glFramebufferParameteriMESA =
    loadFunction<GlFramebufferParameteriMESANative>(
            _library, 'glFramebufferParameteriMESA')
        .asFunction<GlFramebufferParameteriMESA>();
GlGetFramebufferParameterivMESA glGetFramebufferParameterivMESA =
    loadFunction<GlGetFramebufferParameterivMESANative>(
            _library, 'glGetFramebufferParameterivMESA')
        .asFunction<GlGetFramebufferParameterivMESA>();
GlMultiDrawArraysIndirectBindlessNV glMultiDrawArraysIndirectBindlessNV =
    loadFunction<GlMultiDrawArraysIndirectBindlessNVNative>(
            _library, 'glMultiDrawArraysIndirectBindlessNV')
        .asFunction<GlMultiDrawArraysIndirectBindlessNV>();
GlMultiDrawElementsIndirectBindlessNV glMultiDrawElementsIndirectBindlessNV =
    loadFunction<GlMultiDrawElementsIndirectBindlessNVNative>(
            _library, 'glMultiDrawElementsIndirectBindlessNV')
        .asFunction<GlMultiDrawElementsIndirectBindlessNV>();
GlMultiDrawArraysIndirectBindlessCountNV
    glMultiDrawArraysIndirectBindlessCountNV =
    loadFunction<GlMultiDrawArraysIndirectBindlessCountNVNative>(
            _library, 'glMultiDrawArraysIndirectBindlessCountNV')
        .asFunction<GlMultiDrawArraysIndirectBindlessCountNV>();
GlMultiDrawElementsIndirectBindlessCountNV
    glMultiDrawElementsIndirectBindlessCountNV =
    loadFunction<GlMultiDrawElementsIndirectBindlessCountNVNative>(
            _library, 'glMultiDrawElementsIndirectBindlessCountNV')
        .asFunction<GlMultiDrawElementsIndirectBindlessCountNV>();
GlGetTextureHandleNV glGetTextureHandleNV =
    loadFunction<GlGetTextureHandleNVNative>(_library, 'glGetTextureHandleNV')
        .asFunction<GlGetTextureHandleNV>();
GlGetTextureSamplerHandleNV glGetTextureSamplerHandleNV =
    loadFunction<GlGetTextureSamplerHandleNVNative>(
            _library, 'glGetTextureSamplerHandleNV')
        .asFunction<GlGetTextureSamplerHandleNV>();
GlMakeTextureHandleResidentNV glMakeTextureHandleResidentNV =
    loadFunction<GlMakeTextureHandleResidentNVNative>(
            _library, 'glMakeTextureHandleResidentNV')
        .asFunction<GlMakeTextureHandleResidentNV>();
GlMakeTextureHandleNonResidentNV glMakeTextureHandleNonResidentNV =
    loadFunction<GlMakeTextureHandleNonResidentNVNative>(
            _library, 'glMakeTextureHandleNonResidentNV')
        .asFunction<GlMakeTextureHandleNonResidentNV>();
GlGetImageHandleNV glGetImageHandleNV =
    loadFunction<GlGetImageHandleNVNative>(_library, 'glGetImageHandleNV')
        .asFunction<GlGetImageHandleNV>();
GlMakeImageHandleResidentNV glMakeImageHandleResidentNV =
    loadFunction<GlMakeImageHandleResidentNVNative>(
            _library, 'glMakeImageHandleResidentNV')
        .asFunction<GlMakeImageHandleResidentNV>();
GlMakeImageHandleNonResidentNV glMakeImageHandleNonResidentNV =
    loadFunction<GlMakeImageHandleNonResidentNVNative>(
            _library, 'glMakeImageHandleNonResidentNV')
        .asFunction<GlMakeImageHandleNonResidentNV>();
GlUniformHandleui64NV glUniformHandleui64NV =
    loadFunction<GlUniformHandleui64NVNative>(_library, 'glUniformHandleui64NV')
        .asFunction<GlUniformHandleui64NV>();
GlUniformHandleui64vNV glUniformHandleui64vNV =
    loadFunction<GlUniformHandleui64vNVNative>(
            _library, 'glUniformHandleui64vNV')
        .asFunction<GlUniformHandleui64vNV>();
GlProgramUniformHandleui64NV glProgramUniformHandleui64NV =
    loadFunction<GlProgramUniformHandleui64NVNative>(
            _library, 'glProgramUniformHandleui64NV')
        .asFunction<GlProgramUniformHandleui64NV>();
GlProgramUniformHandleui64vNV glProgramUniformHandleui64vNV =
    loadFunction<GlProgramUniformHandleui64vNVNative>(
            _library, 'glProgramUniformHandleui64vNV')
        .asFunction<GlProgramUniformHandleui64vNV>();
GlIsTextureHandleResidentNV glIsTextureHandleResidentNV =
    loadFunction<GlIsTextureHandleResidentNVNative>(
            _library, 'glIsTextureHandleResidentNV')
        .asFunction<GlIsTextureHandleResidentNV>();
GlIsImageHandleResidentNV glIsImageHandleResidentNV =
    loadFunction<GlIsImageHandleResidentNVNative>(
            _library, 'glIsImageHandleResidentNV')
        .asFunction<GlIsImageHandleResidentNV>();
GlBlendParameteriNV glBlendParameteriNV =
    loadFunction<GlBlendParameteriNVNative>(_library, 'glBlendParameteriNV')
        .asFunction<GlBlendParameteriNV>();
GlBlendBarrierNV glBlendBarrierNV =
    loadFunction<GlBlendBarrierNVNative>(_library, 'glBlendBarrierNV')
        .asFunction<GlBlendBarrierNV>();
GlViewportPositionWScaleNV glViewportPositionWScaleNV =
    loadFunction<GlViewportPositionWScaleNVNative>(
            _library, 'glViewportPositionWScaleNV')
        .asFunction<GlViewportPositionWScaleNV>();
GlCreateStatesNV glCreateStatesNV =
    loadFunction<GlCreateStatesNVNative>(_library, 'glCreateStatesNV')
        .asFunction<GlCreateStatesNV>();
GlDeleteStatesNV glDeleteStatesNV =
    loadFunction<GlDeleteStatesNVNative>(_library, 'glDeleteStatesNV')
        .asFunction<GlDeleteStatesNV>();
GlIsStateNV glIsStateNV =
    loadFunction<GlIsStateNVNative>(_library, 'glIsStateNV')
        .asFunction<GlIsStateNV>();
GlStateCaptureNV glStateCaptureNV =
    loadFunction<GlStateCaptureNVNative>(_library, 'glStateCaptureNV')
        .asFunction<GlStateCaptureNV>();
GlGetCommandHeaderNV glGetCommandHeaderNV =
    loadFunction<GlGetCommandHeaderNVNative>(_library, 'glGetCommandHeaderNV')
        .asFunction<GlGetCommandHeaderNV>();
GlGetStageIndexNV glGetStageIndexNV =
    loadFunction<GlGetStageIndexNVNative>(_library, 'glGetStageIndexNV')
        .asFunction<GlGetStageIndexNV>();
GlDrawCommandsNV glDrawCommandsNV =
    loadFunction<GlDrawCommandsNVNative>(_library, 'glDrawCommandsNV')
        .asFunction<GlDrawCommandsNV>();
GlDrawCommandsAddressNV glDrawCommandsAddressNV =
    loadFunction<GlDrawCommandsAddressNVNative>(
            _library, 'glDrawCommandsAddressNV')
        .asFunction<GlDrawCommandsAddressNV>();
GlDrawCommandsStatesNV glDrawCommandsStatesNV =
    loadFunction<GlDrawCommandsStatesNVNative>(
            _library, 'glDrawCommandsStatesNV')
        .asFunction<GlDrawCommandsStatesNV>();
GlDrawCommandsStatesAddressNV glDrawCommandsStatesAddressNV =
    loadFunction<GlDrawCommandsStatesAddressNVNative>(
            _library, 'glDrawCommandsStatesAddressNV')
        .asFunction<GlDrawCommandsStatesAddressNV>();
GlCreateCommandListsNV glCreateCommandListsNV =
    loadFunction<GlCreateCommandListsNVNative>(
            _library, 'glCreateCommandListsNV')
        .asFunction<GlCreateCommandListsNV>();
GlDeleteCommandListsNV glDeleteCommandListsNV =
    loadFunction<GlDeleteCommandListsNVNative>(
            _library, 'glDeleteCommandListsNV')
        .asFunction<GlDeleteCommandListsNV>();
GlIsCommandListNV glIsCommandListNV =
    loadFunction<GlIsCommandListNVNative>(_library, 'glIsCommandListNV')
        .asFunction<GlIsCommandListNV>();
GlListDrawCommandsStatesClientNV glListDrawCommandsStatesClientNV =
    loadFunction<GlListDrawCommandsStatesClientNVNative>(
            _library, 'glListDrawCommandsStatesClientNV')
        .asFunction<GlListDrawCommandsStatesClientNV>();
GlCommandListSegmentsNV glCommandListSegmentsNV =
    loadFunction<GlCommandListSegmentsNVNative>(
            _library, 'glCommandListSegmentsNV')
        .asFunction<GlCommandListSegmentsNV>();
GlCompileCommandListNV glCompileCommandListNV =
    loadFunction<GlCompileCommandListNVNative>(
            _library, 'glCompileCommandListNV')
        .asFunction<GlCompileCommandListNV>();
GlCallCommandListNV glCallCommandListNV =
    loadFunction<GlCallCommandListNVNative>(_library, 'glCallCommandListNV')
        .asFunction<GlCallCommandListNV>();
GlBeginConditionalRenderNV glBeginConditionalRenderNV =
    loadFunction<GlBeginConditionalRenderNVNative>(
            _library, 'glBeginConditionalRenderNV')
        .asFunction<GlBeginConditionalRenderNV>();
GlEndConditionalRenderNV glEndConditionalRenderNV =
    loadFunction<GlEndConditionalRenderNVNative>(
            _library, 'glEndConditionalRenderNV')
        .asFunction<GlEndConditionalRenderNV>();
GlSubpixelPrecisionBiasNV glSubpixelPrecisionBiasNV =
    loadFunction<GlSubpixelPrecisionBiasNVNative>(
            _library, 'glSubpixelPrecisionBiasNV')
        .asFunction<GlSubpixelPrecisionBiasNV>();
GlConservativeRasterParameterfNV glConservativeRasterParameterfNV =
    loadFunction<GlConservativeRasterParameterfNVNative>(
            _library, 'glConservativeRasterParameterfNV')
        .asFunction<GlConservativeRasterParameterfNV>();
GlConservativeRasterParameteriNV glConservativeRasterParameteriNV =
    loadFunction<GlConservativeRasterParameteriNVNative>(
            _library, 'glConservativeRasterParameteriNV')
        .asFunction<GlConservativeRasterParameteriNV>();
GlDepthRangedNV glDepthRangedNV =
    loadFunction<GlDepthRangedNVNative>(_library, 'glDepthRangedNV')
        .asFunction<GlDepthRangedNV>();
GlClearDepthdNV glClearDepthdNV =
    loadFunction<GlClearDepthdNVNative>(_library, 'glClearDepthdNV')
        .asFunction<GlClearDepthdNV>();
GlDepthBoundsdNV glDepthBoundsdNV =
    loadFunction<GlDepthBoundsdNVNative>(_library, 'glDepthBoundsdNV')
        .asFunction<GlDepthBoundsdNV>();
GlDrawVkImageNV glDrawVkImageNV =
    loadFunction<GlDrawVkImageNVNative>(_library, 'glDrawVkImageNV')
        .asFunction<GlDrawVkImageNV>();
GlGetVkProcAddrNV glGetVkProcAddrNV =
    loadFunction<GlGetVkProcAddrNVNative>(_library, 'glGetVkProcAddrNV')
        .asFunction<GlGetVkProcAddrNV>();
GlWaitVkSemaphoreNV glWaitVkSemaphoreNV =
    loadFunction<GlWaitVkSemaphoreNVNative>(_library, 'glWaitVkSemaphoreNV')
        .asFunction<GlWaitVkSemaphoreNV>();
GlSignalVkSemaphoreNV glSignalVkSemaphoreNV =
    loadFunction<GlSignalVkSemaphoreNVNative>(_library, 'glSignalVkSemaphoreNV')
        .asFunction<GlSignalVkSemaphoreNV>();
GlSignalVkFenceNV glSignalVkFenceNV =
    loadFunction<GlSignalVkFenceNVNative>(_library, 'glSignalVkFenceNV')
        .asFunction<GlSignalVkFenceNV>();
GlFragmentCoverageColorNV glFragmentCoverageColorNV =
    loadFunction<GlFragmentCoverageColorNVNative>(
            _library, 'glFragmentCoverageColorNV')
        .asFunction<GlFragmentCoverageColorNV>();
GlCoverageModulationTableNV glCoverageModulationTableNV =
    loadFunction<GlCoverageModulationTableNVNative>(
            _library, 'glCoverageModulationTableNV')
        .asFunction<GlCoverageModulationTableNV>();
GlGetCoverageModulationTableNV glGetCoverageModulationTableNV =
    loadFunction<GlGetCoverageModulationTableNVNative>(
            _library, 'glGetCoverageModulationTableNV')
        .asFunction<GlGetCoverageModulationTableNV>();
GlCoverageModulationNV glCoverageModulationNV =
    loadFunction<GlCoverageModulationNVNative>(
            _library, 'glCoverageModulationNV')
        .asFunction<GlCoverageModulationNV>();
GlRenderbufferStorageMultisampleCoverageNV
    glRenderbufferStorageMultisampleCoverageNV =
    loadFunction<GlRenderbufferStorageMultisampleCoverageNVNative>(
            _library, 'glRenderbufferStorageMultisampleCoverageNV')
        .asFunction<GlRenderbufferStorageMultisampleCoverageNV>();
GlUniform1i64NV glUniform1i64NV =
    loadFunction<GlUniform1i64NVNative>(_library, 'glUniform1i64NV')
        .asFunction<GlUniform1i64NV>();
GlUniform2i64NV glUniform2i64NV =
    loadFunction<GlUniform2i64NVNative>(_library, 'glUniform2i64NV')
        .asFunction<GlUniform2i64NV>();
GlUniform3i64NV glUniform3i64NV =
    loadFunction<GlUniform3i64NVNative>(_library, 'glUniform3i64NV')
        .asFunction<GlUniform3i64NV>();
GlUniform4i64NV glUniform4i64NV =
    loadFunction<GlUniform4i64NVNative>(_library, 'glUniform4i64NV')
        .asFunction<GlUniform4i64NV>();
GlUniform1i64vNV glUniform1i64vNV =
    loadFunction<GlUniform1i64vNVNative>(_library, 'glUniform1i64vNV')
        .asFunction<GlUniform1i64vNV>();
GlUniform2i64vNV glUniform2i64vNV =
    loadFunction<GlUniform2i64vNVNative>(_library, 'glUniform2i64vNV')
        .asFunction<GlUniform2i64vNV>();
GlUniform3i64vNV glUniform3i64vNV =
    loadFunction<GlUniform3i64vNVNative>(_library, 'glUniform3i64vNV')
        .asFunction<GlUniform3i64vNV>();
GlUniform4i64vNV glUniform4i64vNV =
    loadFunction<GlUniform4i64vNVNative>(_library, 'glUniform4i64vNV')
        .asFunction<GlUniform4i64vNV>();
GlUniform1ui64NV glUniform1ui64NV =
    loadFunction<GlUniform1ui64NVNative>(_library, 'glUniform1ui64NV')
        .asFunction<GlUniform1ui64NV>();
GlUniform2ui64NV glUniform2ui64NV =
    loadFunction<GlUniform2ui64NVNative>(_library, 'glUniform2ui64NV')
        .asFunction<GlUniform2ui64NV>();
GlUniform3ui64NV glUniform3ui64NV =
    loadFunction<GlUniform3ui64NVNative>(_library, 'glUniform3ui64NV')
        .asFunction<GlUniform3ui64NV>();
GlUniform4ui64NV glUniform4ui64NV =
    loadFunction<GlUniform4ui64NVNative>(_library, 'glUniform4ui64NV')
        .asFunction<GlUniform4ui64NV>();
GlUniform1ui64vNV glUniform1ui64vNV =
    loadFunction<GlUniform1ui64vNVNative>(_library, 'glUniform1ui64vNV')
        .asFunction<GlUniform1ui64vNV>();
GlUniform2ui64vNV glUniform2ui64vNV =
    loadFunction<GlUniform2ui64vNVNative>(_library, 'glUniform2ui64vNV')
        .asFunction<GlUniform2ui64vNV>();
GlUniform3ui64vNV glUniform3ui64vNV =
    loadFunction<GlUniform3ui64vNVNative>(_library, 'glUniform3ui64vNV')
        .asFunction<GlUniform3ui64vNV>();
GlUniform4ui64vNV glUniform4ui64vNV =
    loadFunction<GlUniform4ui64vNVNative>(_library, 'glUniform4ui64vNV')
        .asFunction<GlUniform4ui64vNV>();
GlGetUniformi64vNV glGetUniformi64vNV =
    loadFunction<GlGetUniformi64vNVNative>(_library, 'glGetUniformi64vNV')
        .asFunction<GlGetUniformi64vNV>();
GlProgramUniform1i64NV glProgramUniform1i64NV =
    loadFunction<GlProgramUniform1i64NVNative>(
            _library, 'glProgramUniform1i64NV')
        .asFunction<GlProgramUniform1i64NV>();
GlProgramUniform2i64NV glProgramUniform2i64NV =
    loadFunction<GlProgramUniform2i64NVNative>(
            _library, 'glProgramUniform2i64NV')
        .asFunction<GlProgramUniform2i64NV>();
GlProgramUniform3i64NV glProgramUniform3i64NV =
    loadFunction<GlProgramUniform3i64NVNative>(
            _library, 'glProgramUniform3i64NV')
        .asFunction<GlProgramUniform3i64NV>();
GlProgramUniform4i64NV glProgramUniform4i64NV =
    loadFunction<GlProgramUniform4i64NVNative>(
            _library, 'glProgramUniform4i64NV')
        .asFunction<GlProgramUniform4i64NV>();
GlProgramUniform1i64vNV glProgramUniform1i64vNV =
    loadFunction<GlProgramUniform1i64vNVNative>(
            _library, 'glProgramUniform1i64vNV')
        .asFunction<GlProgramUniform1i64vNV>();
GlProgramUniform2i64vNV glProgramUniform2i64vNV =
    loadFunction<GlProgramUniform2i64vNVNative>(
            _library, 'glProgramUniform2i64vNV')
        .asFunction<GlProgramUniform2i64vNV>();
GlProgramUniform3i64vNV glProgramUniform3i64vNV =
    loadFunction<GlProgramUniform3i64vNVNative>(
            _library, 'glProgramUniform3i64vNV')
        .asFunction<GlProgramUniform3i64vNV>();
GlProgramUniform4i64vNV glProgramUniform4i64vNV =
    loadFunction<GlProgramUniform4i64vNVNative>(
            _library, 'glProgramUniform4i64vNV')
        .asFunction<GlProgramUniform4i64vNV>();
GlProgramUniform1ui64NV glProgramUniform1ui64NV =
    loadFunction<GlProgramUniform1ui64NVNative>(
            _library, 'glProgramUniform1ui64NV')
        .asFunction<GlProgramUniform1ui64NV>();
GlProgramUniform2ui64NV glProgramUniform2ui64NV =
    loadFunction<GlProgramUniform2ui64NVNative>(
            _library, 'glProgramUniform2ui64NV')
        .asFunction<GlProgramUniform2ui64NV>();
GlProgramUniform3ui64NV glProgramUniform3ui64NV =
    loadFunction<GlProgramUniform3ui64NVNative>(
            _library, 'glProgramUniform3ui64NV')
        .asFunction<GlProgramUniform3ui64NV>();
GlProgramUniform4ui64NV glProgramUniform4ui64NV =
    loadFunction<GlProgramUniform4ui64NVNative>(
            _library, 'glProgramUniform4ui64NV')
        .asFunction<GlProgramUniform4ui64NV>();
GlProgramUniform1ui64vNV glProgramUniform1ui64vNV =
    loadFunction<GlProgramUniform1ui64vNVNative>(
            _library, 'glProgramUniform1ui64vNV')
        .asFunction<GlProgramUniform1ui64vNV>();
GlProgramUniform2ui64vNV glProgramUniform2ui64vNV =
    loadFunction<GlProgramUniform2ui64vNVNative>(
            _library, 'glProgramUniform2ui64vNV')
        .asFunction<GlProgramUniform2ui64vNV>();
GlProgramUniform3ui64vNV glProgramUniform3ui64vNV =
    loadFunction<GlProgramUniform3ui64vNVNative>(
            _library, 'glProgramUniform3ui64vNV')
        .asFunction<GlProgramUniform3ui64vNV>();
GlProgramUniform4ui64vNV glProgramUniform4ui64vNV =
    loadFunction<GlProgramUniform4ui64vNVNative>(
            _library, 'glProgramUniform4ui64vNV')
        .asFunction<GlProgramUniform4ui64vNV>();
GlGetInternalformatSampleivNV glGetInternalformatSampleivNV =
    loadFunction<GlGetInternalformatSampleivNVNative>(
            _library, 'glGetInternalformatSampleivNV')
        .asFunction<GlGetInternalformatSampleivNV>();
GlGetMemoryObjectDetachedResourcesuivNV
    glGetMemoryObjectDetachedResourcesuivNV =
    loadFunction<GlGetMemoryObjectDetachedResourcesuivNVNative>(
            _library, 'glGetMemoryObjectDetachedResourcesuivNV')
        .asFunction<GlGetMemoryObjectDetachedResourcesuivNV>();
GlResetMemoryObjectParameterNV glResetMemoryObjectParameterNV =
    loadFunction<GlResetMemoryObjectParameterNVNative>(
            _library, 'glResetMemoryObjectParameterNV')
        .asFunction<GlResetMemoryObjectParameterNV>();
GlTexAttachMemoryNV glTexAttachMemoryNV =
    loadFunction<GlTexAttachMemoryNVNative>(_library, 'glTexAttachMemoryNV')
        .asFunction<GlTexAttachMemoryNV>();
GlBufferAttachMemoryNV glBufferAttachMemoryNV =
    loadFunction<GlBufferAttachMemoryNVNative>(
            _library, 'glBufferAttachMemoryNV')
        .asFunction<GlBufferAttachMemoryNV>();
GlTextureAttachMemoryNV glTextureAttachMemoryNV =
    loadFunction<GlTextureAttachMemoryNVNative>(
            _library, 'glTextureAttachMemoryNV')
        .asFunction<GlTextureAttachMemoryNV>();
GlNamedBufferAttachMemoryNV glNamedBufferAttachMemoryNV =
    loadFunction<GlNamedBufferAttachMemoryNVNative>(
            _library, 'glNamedBufferAttachMemoryNV')
        .asFunction<GlNamedBufferAttachMemoryNV>();
GlBufferPageCommitmentMemNV glBufferPageCommitmentMemNV =
    loadFunction<GlBufferPageCommitmentMemNVNative>(
            _library, 'glBufferPageCommitmentMemNV')
        .asFunction<GlBufferPageCommitmentMemNV>();
GlTexPageCommitmentMemNV glTexPageCommitmentMemNV =
    loadFunction<GlTexPageCommitmentMemNVNative>(
            _library, 'glTexPageCommitmentMemNV')
        .asFunction<GlTexPageCommitmentMemNV>();
GlNamedBufferPageCommitmentMemNV glNamedBufferPageCommitmentMemNV =
    loadFunction<GlNamedBufferPageCommitmentMemNVNative>(
            _library, 'glNamedBufferPageCommitmentMemNV')
        .asFunction<GlNamedBufferPageCommitmentMemNV>();
GlTexturePageCommitmentMemNV glTexturePageCommitmentMemNV =
    loadFunction<GlTexturePageCommitmentMemNVNative>(
            _library, 'glTexturePageCommitmentMemNV')
        .asFunction<GlTexturePageCommitmentMemNV>();
GlDrawMeshTasksNV glDrawMeshTasksNV =
    loadFunction<GlDrawMeshTasksNVNative>(_library, 'glDrawMeshTasksNV')
        .asFunction<GlDrawMeshTasksNV>();
GlDrawMeshTasksIndirectNV glDrawMeshTasksIndirectNV =
    loadFunction<GlDrawMeshTasksIndirectNVNative>(
            _library, 'glDrawMeshTasksIndirectNV')
        .asFunction<GlDrawMeshTasksIndirectNV>();
GlMultiDrawMeshTasksIndirectNV glMultiDrawMeshTasksIndirectNV =
    loadFunction<GlMultiDrawMeshTasksIndirectNVNative>(
            _library, 'glMultiDrawMeshTasksIndirectNV')
        .asFunction<GlMultiDrawMeshTasksIndirectNV>();
GlMultiDrawMeshTasksIndirectCountNV glMultiDrawMeshTasksIndirectCountNV =
    loadFunction<GlMultiDrawMeshTasksIndirectCountNVNative>(
            _library, 'glMultiDrawMeshTasksIndirectCountNV')
        .asFunction<GlMultiDrawMeshTasksIndirectCountNV>();
GlGenPathsNV glGenPathsNV =
    loadFunction<GlGenPathsNVNative>(_library, 'glGenPathsNV')
        .asFunction<GlGenPathsNV>();
GlDeletePathsNV glDeletePathsNV =
    loadFunction<GlDeletePathsNVNative>(_library, 'glDeletePathsNV')
        .asFunction<GlDeletePathsNV>();
GlIsPathNV glIsPathNV = loadFunction<GlIsPathNVNative>(_library, 'glIsPathNV')
    .asFunction<GlIsPathNV>();
GlPathCommandsNV glPathCommandsNV =
    loadFunction<GlPathCommandsNVNative>(_library, 'glPathCommandsNV')
        .asFunction<GlPathCommandsNV>();
GlPathCoordsNV glPathCoordsNV =
    loadFunction<GlPathCoordsNVNative>(_library, 'glPathCoordsNV')
        .asFunction<GlPathCoordsNV>();
GlPathSubCommandsNV glPathSubCommandsNV =
    loadFunction<GlPathSubCommandsNVNative>(_library, 'glPathSubCommandsNV')
        .asFunction<GlPathSubCommandsNV>();
GlPathSubCoordsNV glPathSubCoordsNV =
    loadFunction<GlPathSubCoordsNVNative>(_library, 'glPathSubCoordsNV')
        .asFunction<GlPathSubCoordsNV>();
GlPathStringNV glPathStringNV =
    loadFunction<GlPathStringNVNative>(_library, 'glPathStringNV')
        .asFunction<GlPathStringNV>();
GlPathGlyphsNV glPathGlyphsNV =
    loadFunction<GlPathGlyphsNVNative>(_library, 'glPathGlyphsNV')
        .asFunction<GlPathGlyphsNV>();
GlPathGlyphRangeNV glPathGlyphRangeNV =
    loadFunction<GlPathGlyphRangeNVNative>(_library, 'glPathGlyphRangeNV')
        .asFunction<GlPathGlyphRangeNV>();
GlWeightPathsNV glWeightPathsNV =
    loadFunction<GlWeightPathsNVNative>(_library, 'glWeightPathsNV')
        .asFunction<GlWeightPathsNV>();
GlCopyPathNV glCopyPathNV =
    loadFunction<GlCopyPathNVNative>(_library, 'glCopyPathNV')
        .asFunction<GlCopyPathNV>();
GlInterpolatePathsNV glInterpolatePathsNV =
    loadFunction<GlInterpolatePathsNVNative>(_library, 'glInterpolatePathsNV')
        .asFunction<GlInterpolatePathsNV>();
GlTransformPathNV glTransformPathNV =
    loadFunction<GlTransformPathNVNative>(_library, 'glTransformPathNV')
        .asFunction<GlTransformPathNV>();
GlPathParameterivNV glPathParameterivNV =
    loadFunction<GlPathParameterivNVNative>(_library, 'glPathParameterivNV')
        .asFunction<GlPathParameterivNV>();
GlPathParameteriNV glPathParameteriNV =
    loadFunction<GlPathParameteriNVNative>(_library, 'glPathParameteriNV')
        .asFunction<GlPathParameteriNV>();
GlPathParameterfvNV glPathParameterfvNV =
    loadFunction<GlPathParameterfvNVNative>(_library, 'glPathParameterfvNV')
        .asFunction<GlPathParameterfvNV>();
GlPathParameterfNV glPathParameterfNV =
    loadFunction<GlPathParameterfNVNative>(_library, 'glPathParameterfNV')
        .asFunction<GlPathParameterfNV>();
GlPathDashArrayNV glPathDashArrayNV =
    loadFunction<GlPathDashArrayNVNative>(_library, 'glPathDashArrayNV')
        .asFunction<GlPathDashArrayNV>();
GlPathStencilFuncNV glPathStencilFuncNV =
    loadFunction<GlPathStencilFuncNVNative>(_library, 'glPathStencilFuncNV')
        .asFunction<GlPathStencilFuncNV>();
GlPathStencilDepthOffsetNV glPathStencilDepthOffsetNV =
    loadFunction<GlPathStencilDepthOffsetNVNative>(
            _library, 'glPathStencilDepthOffsetNV')
        .asFunction<GlPathStencilDepthOffsetNV>();
GlStencilFillPathNV glStencilFillPathNV =
    loadFunction<GlStencilFillPathNVNative>(_library, 'glStencilFillPathNV')
        .asFunction<GlStencilFillPathNV>();
GlStencilStrokePathNV glStencilStrokePathNV =
    loadFunction<GlStencilStrokePathNVNative>(_library, 'glStencilStrokePathNV')
        .asFunction<GlStencilStrokePathNV>();
GlStencilFillPathInstancedNV glStencilFillPathInstancedNV =
    loadFunction<GlStencilFillPathInstancedNVNative>(
            _library, 'glStencilFillPathInstancedNV')
        .asFunction<GlStencilFillPathInstancedNV>();
GlStencilStrokePathInstancedNV glStencilStrokePathInstancedNV =
    loadFunction<GlStencilStrokePathInstancedNVNative>(
            _library, 'glStencilStrokePathInstancedNV')
        .asFunction<GlStencilStrokePathInstancedNV>();
GlPathCoverDepthFuncNV glPathCoverDepthFuncNV =
    loadFunction<GlPathCoverDepthFuncNVNative>(
            _library, 'glPathCoverDepthFuncNV')
        .asFunction<GlPathCoverDepthFuncNV>();
GlCoverFillPathNV glCoverFillPathNV =
    loadFunction<GlCoverFillPathNVNative>(_library, 'glCoverFillPathNV')
        .asFunction<GlCoverFillPathNV>();
GlCoverStrokePathNV glCoverStrokePathNV =
    loadFunction<GlCoverStrokePathNVNative>(_library, 'glCoverStrokePathNV')
        .asFunction<GlCoverStrokePathNV>();
GlCoverFillPathInstancedNV glCoverFillPathInstancedNV =
    loadFunction<GlCoverFillPathInstancedNVNative>(
            _library, 'glCoverFillPathInstancedNV')
        .asFunction<GlCoverFillPathInstancedNV>();
GlCoverStrokePathInstancedNV glCoverStrokePathInstancedNV =
    loadFunction<GlCoverStrokePathInstancedNVNative>(
            _library, 'glCoverStrokePathInstancedNV')
        .asFunction<GlCoverStrokePathInstancedNV>();
GlGetPathParameterivNV glGetPathParameterivNV =
    loadFunction<GlGetPathParameterivNVNative>(
            _library, 'glGetPathParameterivNV')
        .asFunction<GlGetPathParameterivNV>();
GlGetPathParameterfvNV glGetPathParameterfvNV =
    loadFunction<GlGetPathParameterfvNVNative>(
            _library, 'glGetPathParameterfvNV')
        .asFunction<GlGetPathParameterfvNV>();
GlGetPathCommandsNV glGetPathCommandsNV =
    loadFunction<GlGetPathCommandsNVNative>(_library, 'glGetPathCommandsNV')
        .asFunction<GlGetPathCommandsNV>();
GlGetPathCoordsNV glGetPathCoordsNV =
    loadFunction<GlGetPathCoordsNVNative>(_library, 'glGetPathCoordsNV')
        .asFunction<GlGetPathCoordsNV>();
GlGetPathDashArrayNV glGetPathDashArrayNV =
    loadFunction<GlGetPathDashArrayNVNative>(_library, 'glGetPathDashArrayNV')
        .asFunction<GlGetPathDashArrayNV>();
GlGetPathMetricsNV glGetPathMetricsNV =
    loadFunction<GlGetPathMetricsNVNative>(_library, 'glGetPathMetricsNV')
        .asFunction<GlGetPathMetricsNV>();
GlGetPathMetricRangeNV glGetPathMetricRangeNV =
    loadFunction<GlGetPathMetricRangeNVNative>(
            _library, 'glGetPathMetricRangeNV')
        .asFunction<GlGetPathMetricRangeNV>();
GlGetPathSpacingNV glGetPathSpacingNV =
    loadFunction<GlGetPathSpacingNVNative>(_library, 'glGetPathSpacingNV')
        .asFunction<GlGetPathSpacingNV>();
GlIsPointInFillPathNV glIsPointInFillPathNV =
    loadFunction<GlIsPointInFillPathNVNative>(_library, 'glIsPointInFillPathNV')
        .asFunction<GlIsPointInFillPathNV>();
GlIsPointInStrokePathNV glIsPointInStrokePathNV =
    loadFunction<GlIsPointInStrokePathNVNative>(
            _library, 'glIsPointInStrokePathNV')
        .asFunction<GlIsPointInStrokePathNV>();
GlGetPathLengthNV glGetPathLengthNV =
    loadFunction<GlGetPathLengthNVNative>(_library, 'glGetPathLengthNV')
        .asFunction<GlGetPathLengthNV>();
GlPointAlongPathNV glPointAlongPathNV =
    loadFunction<GlPointAlongPathNVNative>(_library, 'glPointAlongPathNV')
        .asFunction<GlPointAlongPathNV>();
GlMatrixLoad3x2fNV glMatrixLoad3x2fNV =
    loadFunction<GlMatrixLoad3x2fNVNative>(_library, 'glMatrixLoad3x2fNV')
        .asFunction<GlMatrixLoad3x2fNV>();
GlMatrixLoad3x3fNV glMatrixLoad3x3fNV =
    loadFunction<GlMatrixLoad3x3fNVNative>(_library, 'glMatrixLoad3x3fNV')
        .asFunction<GlMatrixLoad3x3fNV>();
GlMatrixLoadTranspose3x3fNV glMatrixLoadTranspose3x3fNV =
    loadFunction<GlMatrixLoadTranspose3x3fNVNative>(
            _library, 'glMatrixLoadTranspose3x3fNV')
        .asFunction<GlMatrixLoadTranspose3x3fNV>();
GlMatrixMult3x2fNV glMatrixMult3x2fNV =
    loadFunction<GlMatrixMult3x2fNVNative>(_library, 'glMatrixMult3x2fNV')
        .asFunction<GlMatrixMult3x2fNV>();
GlMatrixMult3x3fNV glMatrixMult3x3fNV =
    loadFunction<GlMatrixMult3x3fNVNative>(_library, 'glMatrixMult3x3fNV')
        .asFunction<GlMatrixMult3x3fNV>();
GlMatrixMultTranspose3x3fNV glMatrixMultTranspose3x3fNV =
    loadFunction<GlMatrixMultTranspose3x3fNVNative>(
            _library, 'glMatrixMultTranspose3x3fNV')
        .asFunction<GlMatrixMultTranspose3x3fNV>();
GlStencilThenCoverFillPathNV glStencilThenCoverFillPathNV =
    loadFunction<GlStencilThenCoverFillPathNVNative>(
            _library, 'glStencilThenCoverFillPathNV')
        .asFunction<GlStencilThenCoverFillPathNV>();
GlStencilThenCoverStrokePathNV glStencilThenCoverStrokePathNV =
    loadFunction<GlStencilThenCoverStrokePathNVNative>(
            _library, 'glStencilThenCoverStrokePathNV')
        .asFunction<GlStencilThenCoverStrokePathNV>();
GlStencilThenCoverFillPathInstancedNV glStencilThenCoverFillPathInstancedNV =
    loadFunction<GlStencilThenCoverFillPathInstancedNVNative>(
            _library, 'glStencilThenCoverFillPathInstancedNV')
        .asFunction<GlStencilThenCoverFillPathInstancedNV>();
GlStencilThenCoverStrokePathInstancedNV
    glStencilThenCoverStrokePathInstancedNV =
    loadFunction<GlStencilThenCoverStrokePathInstancedNVNative>(
            _library, 'glStencilThenCoverStrokePathInstancedNV')
        .asFunction<GlStencilThenCoverStrokePathInstancedNV>();
GlPathGlyphIndexRangeNV glPathGlyphIndexRangeNV =
    loadFunction<GlPathGlyphIndexRangeNVNative>(
            _library, 'glPathGlyphIndexRangeNV')
        .asFunction<GlPathGlyphIndexRangeNV>();
GlPathGlyphIndexArrayNV glPathGlyphIndexArrayNV =
    loadFunction<GlPathGlyphIndexArrayNVNative>(
            _library, 'glPathGlyphIndexArrayNV')
        .asFunction<GlPathGlyphIndexArrayNV>();
GlPathMemoryGlyphIndexArrayNV glPathMemoryGlyphIndexArrayNV =
    loadFunction<GlPathMemoryGlyphIndexArrayNVNative>(
            _library, 'glPathMemoryGlyphIndexArrayNV')
        .asFunction<GlPathMemoryGlyphIndexArrayNV>();
GlProgramPathFragmentInputGenNV glProgramPathFragmentInputGenNV =
    loadFunction<GlProgramPathFragmentInputGenNVNative>(
            _library, 'glProgramPathFragmentInputGenNV')
        .asFunction<GlProgramPathFragmentInputGenNV>();
GlGetProgramResourcefvNV glGetProgramResourcefvNV =
    loadFunction<GlGetProgramResourcefvNVNative>(
            _library, 'glGetProgramResourcefvNV')
        .asFunction<GlGetProgramResourcefvNV>();
GlFramebufferSampleLocationsfvNV glFramebufferSampleLocationsfvNV =
    loadFunction<GlFramebufferSampleLocationsfvNVNative>(
            _library, 'glFramebufferSampleLocationsfvNV')
        .asFunction<GlFramebufferSampleLocationsfvNV>();
GlNamedFramebufferSampleLocationsfvNV glNamedFramebufferSampleLocationsfvNV =
    loadFunction<GlNamedFramebufferSampleLocationsfvNVNative>(
            _library, 'glNamedFramebufferSampleLocationsfvNV')
        .asFunction<GlNamedFramebufferSampleLocationsfvNV>();
GlResolveDepthValuesNV glResolveDepthValuesNV =
    loadFunction<GlResolveDepthValuesNVNative>(
            _library, 'glResolveDepthValuesNV')
        .asFunction<GlResolveDepthValuesNV>();
GlScissorExclusiveNV glScissorExclusiveNV =
    loadFunction<GlScissorExclusiveNVNative>(_library, 'glScissorExclusiveNV')
        .asFunction<GlScissorExclusiveNV>();
GlScissorExclusiveArrayvNV glScissorExclusiveArrayvNV =
    loadFunction<GlScissorExclusiveArrayvNVNative>(
            _library, 'glScissorExclusiveArrayvNV')
        .asFunction<GlScissorExclusiveArrayvNV>();
GlMakeBufferResidentNV glMakeBufferResidentNV =
    loadFunction<GlMakeBufferResidentNVNative>(
            _library, 'glMakeBufferResidentNV')
        .asFunction<GlMakeBufferResidentNV>();
GlMakeBufferNonResidentNV glMakeBufferNonResidentNV =
    loadFunction<GlMakeBufferNonResidentNVNative>(
            _library, 'glMakeBufferNonResidentNV')
        .asFunction<GlMakeBufferNonResidentNV>();
GlIsBufferResidentNV glIsBufferResidentNV =
    loadFunction<GlIsBufferResidentNVNative>(_library, 'glIsBufferResidentNV')
        .asFunction<GlIsBufferResidentNV>();
GlMakeNamedBufferResidentNV glMakeNamedBufferResidentNV =
    loadFunction<GlMakeNamedBufferResidentNVNative>(
            _library, 'glMakeNamedBufferResidentNV')
        .asFunction<GlMakeNamedBufferResidentNV>();
GlMakeNamedBufferNonResidentNV glMakeNamedBufferNonResidentNV =
    loadFunction<GlMakeNamedBufferNonResidentNVNative>(
            _library, 'glMakeNamedBufferNonResidentNV')
        .asFunction<GlMakeNamedBufferNonResidentNV>();
GlIsNamedBufferResidentNV glIsNamedBufferResidentNV =
    loadFunction<GlIsNamedBufferResidentNVNative>(
            _library, 'glIsNamedBufferResidentNV')
        .asFunction<GlIsNamedBufferResidentNV>();
GlGetBufferParameterui64vNV glGetBufferParameterui64vNV =
    loadFunction<GlGetBufferParameterui64vNVNative>(
            _library, 'glGetBufferParameterui64vNV')
        .asFunction<GlGetBufferParameterui64vNV>();
GlGetNamedBufferParameterui64vNV glGetNamedBufferParameterui64vNV =
    loadFunction<GlGetNamedBufferParameterui64vNVNative>(
            _library, 'glGetNamedBufferParameterui64vNV')
        .asFunction<GlGetNamedBufferParameterui64vNV>();
GlGetIntegerui64vNV glGetIntegerui64vNV =
    loadFunction<GlGetIntegerui64vNVNative>(_library, 'glGetIntegerui64vNV')
        .asFunction<GlGetIntegerui64vNV>();
GlUniformui64NV glUniformui64NV =
    loadFunction<GlUniformui64NVNative>(_library, 'glUniformui64NV')
        .asFunction<GlUniformui64NV>();
GlUniformui64vNV glUniformui64vNV =
    loadFunction<GlUniformui64vNVNative>(_library, 'glUniformui64vNV')
        .asFunction<GlUniformui64vNV>();
GlGetUniformui64vNV glGetUniformui64vNV =
    loadFunction<GlGetUniformui64vNVNative>(_library, 'glGetUniformui64vNV')
        .asFunction<GlGetUniformui64vNV>();
GlProgramUniformui64NV glProgramUniformui64NV =
    loadFunction<GlProgramUniformui64NVNative>(
            _library, 'glProgramUniformui64NV')
        .asFunction<GlProgramUniformui64NV>();
GlProgramUniformui64vNV glProgramUniformui64vNV =
    loadFunction<GlProgramUniformui64vNVNative>(
            _library, 'glProgramUniformui64vNV')
        .asFunction<GlProgramUniformui64vNV>();
GlBindShadingRateImageNV glBindShadingRateImageNV =
    loadFunction<GlBindShadingRateImageNVNative>(
            _library, 'glBindShadingRateImageNV')
        .asFunction<GlBindShadingRateImageNV>();
GlGetShadingRateImagePaletteNV glGetShadingRateImagePaletteNV =
    loadFunction<GlGetShadingRateImagePaletteNVNative>(
            _library, 'glGetShadingRateImagePaletteNV')
        .asFunction<GlGetShadingRateImagePaletteNV>();
GlGetShadingRateSampleLocationivNV glGetShadingRateSampleLocationivNV =
    loadFunction<GlGetShadingRateSampleLocationivNVNative>(
            _library, 'glGetShadingRateSampleLocationivNV')
        .asFunction<GlGetShadingRateSampleLocationivNV>();
GlShadingRateImageBarrierNV glShadingRateImageBarrierNV =
    loadFunction<GlShadingRateImageBarrierNVNative>(
            _library, 'glShadingRateImageBarrierNV')
        .asFunction<GlShadingRateImageBarrierNV>();
GlShadingRateImagePaletteNV glShadingRateImagePaletteNV =
    loadFunction<GlShadingRateImagePaletteNVNative>(
            _library, 'glShadingRateImagePaletteNV')
        .asFunction<GlShadingRateImagePaletteNV>();
GlShadingRateSampleOrderNV glShadingRateSampleOrderNV =
    loadFunction<GlShadingRateSampleOrderNVNative>(
            _library, 'glShadingRateSampleOrderNV')
        .asFunction<GlShadingRateSampleOrderNV>();
GlShadingRateSampleOrderCustomNV glShadingRateSampleOrderCustomNV =
    loadFunction<GlShadingRateSampleOrderCustomNVNative>(
            _library, 'glShadingRateSampleOrderCustomNV')
        .asFunction<GlShadingRateSampleOrderCustomNV>();
GlTextureBarrierNV glTextureBarrierNV =
    loadFunction<GlTextureBarrierNVNative>(_library, 'glTextureBarrierNV')
        .asFunction<GlTextureBarrierNV>();
GlVertexAttribL1i64NV glVertexAttribL1i64NV =
    loadFunction<GlVertexAttribL1i64NVNative>(_library, 'glVertexAttribL1i64NV')
        .asFunction<GlVertexAttribL1i64NV>();
GlVertexAttribL2i64NV glVertexAttribL2i64NV =
    loadFunction<GlVertexAttribL2i64NVNative>(_library, 'glVertexAttribL2i64NV')
        .asFunction<GlVertexAttribL2i64NV>();
GlVertexAttribL3i64NV glVertexAttribL3i64NV =
    loadFunction<GlVertexAttribL3i64NVNative>(_library, 'glVertexAttribL3i64NV')
        .asFunction<GlVertexAttribL3i64NV>();
GlVertexAttribL4i64NV glVertexAttribL4i64NV =
    loadFunction<GlVertexAttribL4i64NVNative>(_library, 'glVertexAttribL4i64NV')
        .asFunction<GlVertexAttribL4i64NV>();
GlVertexAttribL1i64vNV glVertexAttribL1i64vNV =
    loadFunction<GlVertexAttribL1i64vNVNative>(
            _library, 'glVertexAttribL1i64vNV')
        .asFunction<GlVertexAttribL1i64vNV>();
GlVertexAttribL2i64vNV glVertexAttribL2i64vNV =
    loadFunction<GlVertexAttribL2i64vNVNative>(
            _library, 'glVertexAttribL2i64vNV')
        .asFunction<GlVertexAttribL2i64vNV>();
GlVertexAttribL3i64vNV glVertexAttribL3i64vNV =
    loadFunction<GlVertexAttribL3i64vNVNative>(
            _library, 'glVertexAttribL3i64vNV')
        .asFunction<GlVertexAttribL3i64vNV>();
GlVertexAttribL4i64vNV glVertexAttribL4i64vNV =
    loadFunction<GlVertexAttribL4i64vNVNative>(
            _library, 'glVertexAttribL4i64vNV')
        .asFunction<GlVertexAttribL4i64vNV>();
GlVertexAttribL1ui64NV glVertexAttribL1ui64NV =
    loadFunction<GlVertexAttribL1ui64NVNative>(
            _library, 'glVertexAttribL1ui64NV')
        .asFunction<GlVertexAttribL1ui64NV>();
GlVertexAttribL2ui64NV glVertexAttribL2ui64NV =
    loadFunction<GlVertexAttribL2ui64NVNative>(
            _library, 'glVertexAttribL2ui64NV')
        .asFunction<GlVertexAttribL2ui64NV>();
GlVertexAttribL3ui64NV glVertexAttribL3ui64NV =
    loadFunction<GlVertexAttribL3ui64NVNative>(
            _library, 'glVertexAttribL3ui64NV')
        .asFunction<GlVertexAttribL3ui64NV>();
GlVertexAttribL4ui64NV glVertexAttribL4ui64NV =
    loadFunction<GlVertexAttribL4ui64NVNative>(
            _library, 'glVertexAttribL4ui64NV')
        .asFunction<GlVertexAttribL4ui64NV>();
GlVertexAttribL1ui64vNV glVertexAttribL1ui64vNV =
    loadFunction<GlVertexAttribL1ui64vNVNative>(
            _library, 'glVertexAttribL1ui64vNV')
        .asFunction<GlVertexAttribL1ui64vNV>();
GlVertexAttribL2ui64vNV glVertexAttribL2ui64vNV =
    loadFunction<GlVertexAttribL2ui64vNVNative>(
            _library, 'glVertexAttribL2ui64vNV')
        .asFunction<GlVertexAttribL2ui64vNV>();
GlVertexAttribL3ui64vNV glVertexAttribL3ui64vNV =
    loadFunction<GlVertexAttribL3ui64vNVNative>(
            _library, 'glVertexAttribL3ui64vNV')
        .asFunction<GlVertexAttribL3ui64vNV>();
GlVertexAttribL4ui64vNV glVertexAttribL4ui64vNV =
    loadFunction<GlVertexAttribL4ui64vNVNative>(
            _library, 'glVertexAttribL4ui64vNV')
        .asFunction<GlVertexAttribL4ui64vNV>();
GlGetVertexAttribLi64vNV glGetVertexAttribLi64vNV =
    loadFunction<GlGetVertexAttribLi64vNVNative>(
            _library, 'glGetVertexAttribLi64vNV')
        .asFunction<GlGetVertexAttribLi64vNV>();
GlGetVertexAttribLui64vNV glGetVertexAttribLui64vNV =
    loadFunction<GlGetVertexAttribLui64vNVNative>(
            _library, 'glGetVertexAttribLui64vNV')
        .asFunction<GlGetVertexAttribLui64vNV>();
GlVertexAttribLFormatNV glVertexAttribLFormatNV =
    loadFunction<GlVertexAttribLFormatNVNative>(
            _library, 'glVertexAttribLFormatNV')
        .asFunction<GlVertexAttribLFormatNV>();
GlBufferAddressRangeNV glBufferAddressRangeNV =
    loadFunction<GlBufferAddressRangeNVNative>(
            _library, 'glBufferAddressRangeNV')
        .asFunction<GlBufferAddressRangeNV>();
GlVertexFormatNV glVertexFormatNV =
    loadFunction<GlVertexFormatNVNative>(_library, 'glVertexFormatNV')
        .asFunction<GlVertexFormatNV>();
GlNormalFormatNV glNormalFormatNV =
    loadFunction<GlNormalFormatNVNative>(_library, 'glNormalFormatNV')
        .asFunction<GlNormalFormatNV>();
GlColorFormatNV glColorFormatNV =
    loadFunction<GlColorFormatNVNative>(_library, 'glColorFormatNV')
        .asFunction<GlColorFormatNV>();
GlIndexFormatNV glIndexFormatNV =
    loadFunction<GlIndexFormatNVNative>(_library, 'glIndexFormatNV')
        .asFunction<GlIndexFormatNV>();
GlTexCoordFormatNV glTexCoordFormatNV =
    loadFunction<GlTexCoordFormatNVNative>(_library, 'glTexCoordFormatNV')
        .asFunction<GlTexCoordFormatNV>();
GlEdgeFlagFormatNV glEdgeFlagFormatNV =
    loadFunction<GlEdgeFlagFormatNVNative>(_library, 'glEdgeFlagFormatNV')
        .asFunction<GlEdgeFlagFormatNV>();
GlSecondaryColorFormatNV glSecondaryColorFormatNV =
    loadFunction<GlSecondaryColorFormatNVNative>(
            _library, 'glSecondaryColorFormatNV')
        .asFunction<GlSecondaryColorFormatNV>();
GlFogCoordFormatNV glFogCoordFormatNV =
    loadFunction<GlFogCoordFormatNVNative>(_library, 'glFogCoordFormatNV')
        .asFunction<GlFogCoordFormatNV>();
GlVertexAttribFormatNV glVertexAttribFormatNV =
    loadFunction<GlVertexAttribFormatNVNative>(
            _library, 'glVertexAttribFormatNV')
        .asFunction<GlVertexAttribFormatNV>();
GlVertexAttribIFormatNV glVertexAttribIFormatNV =
    loadFunction<GlVertexAttribIFormatNVNative>(
            _library, 'glVertexAttribIFormatNV')
        .asFunction<GlVertexAttribIFormatNV>();
GlGetIntegerui64i_vNV glGetIntegerui64i_vNV =
    loadFunction<GlGetIntegerui64i_vNVNative>(_library, 'glGetIntegerui64i_vNV')
        .asFunction<GlGetIntegerui64i_vNV>();
GlViewportSwizzleNV glViewportSwizzleNV =
    loadFunction<GlViewportSwizzleNVNative>(_library, 'glViewportSwizzleNV')
        .asFunction<GlViewportSwizzleNV>();
GlFramebufferTextureMultiviewOVR glFramebufferTextureMultiviewOVR =
    loadFunction<GlFramebufferTextureMultiviewOVRNative>(
            _library, 'glFramebufferTextureMultiviewOVR')
        .asFunction<GlFramebufferTextureMultiviewOVR>();
