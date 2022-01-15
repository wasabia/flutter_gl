import 'dart:ffi' as ffi;

/// https://www.khronos.org/registry/OpenGL/index_es.php#headers3
class LibOpenGLES {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  LibOpenGLES(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  LibOpenGLES.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void glActiveTexture(
    int texture,
  ) {
    return _glActiveTexture(
      texture,
    );
  }

  late final _glActiveTexture_ptr =
      _lookup<ffi.NativeFunction<_c_glActiveTexture>>('glActiveTexture');
  late final _dart_glActiveTexture _glActiveTexture =
      _glActiveTexture_ptr.asFunction<_dart_glActiveTexture>();

  void glAttachShader(
    int program,
    int shader,
  ) {
    return _glAttachShader(
      program,
      shader,
    );
  }

  late final _glAttachShader_ptr =
      _lookup<ffi.NativeFunction<_c_glAttachShader>>('glAttachShader');
  late final _dart_glAttachShader _glAttachShader =
      _glAttachShader_ptr.asFunction<_dart_glAttachShader>();

  void glBindAttribLocation(
    int program,
    int index,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glBindAttribLocation(
      program,
      index,
      name,
    );
  }

  late final _glBindAttribLocation_ptr =
      _lookup<ffi.NativeFunction<_c_glBindAttribLocation>>(
          'glBindAttribLocation');
  late final _dart_glBindAttribLocation _glBindAttribLocation =
      _glBindAttribLocation_ptr.asFunction<_dart_glBindAttribLocation>();

  void glBindBuffer(
    int target,
    int buffer,
  ) {
    return _glBindBuffer(
      target,
      buffer,
    );
  }

  late final _glBindBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glBindBuffer>>('glBindBuffer');
  late final _dart_glBindBuffer _glBindBuffer =
      _glBindBuffer_ptr.asFunction<_dart_glBindBuffer>();

  void glBindFramebuffer(
    int target,
    int framebuffer,
  ) {
    return _glBindFramebuffer(
      target,
      framebuffer,
    );
  }

  late final _glBindFramebuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glBindFramebuffer>>('glBindFramebuffer');
  late final _dart_glBindFramebuffer _glBindFramebuffer =
      _glBindFramebuffer_ptr.asFunction<_dart_glBindFramebuffer>();

  void glBindRenderbuffer(
    int target,
    int renderbuffer,
  ) {
    return _glBindRenderbuffer(
      target,
      renderbuffer,
    );
  }

  late final _glBindRenderbuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glBindRenderbuffer>>('glBindRenderbuffer');
  late final _dart_glBindRenderbuffer _glBindRenderbuffer =
      _glBindRenderbuffer_ptr.asFunction<_dart_glBindRenderbuffer>();

  void glBindTexture(
    int target,
    int texture,
  ) {
    return _glBindTexture(
      target,
      texture,
    );
  }

  late final _glBindTexture_ptr =
      _lookup<ffi.NativeFunction<_c_glBindTexture>>('glBindTexture');
  late final _dart_glBindTexture _glBindTexture =
      _glBindTexture_ptr.asFunction<_dart_glBindTexture>();

  void glBlendColor(
    double red,
    double green,
    double blue,
    double alpha,
  ) {
    return _glBlendColor(
      red,
      green,
      blue,
      alpha,
    );
  }

  late final _glBlendColor_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendColor>>('glBlendColor');
  late final _dart_glBlendColor _glBlendColor =
      _glBlendColor_ptr.asFunction<_dart_glBlendColor>();

  void glBlendEquation(
    int mode,
  ) {
    return _glBlendEquation(
      mode,
    );
  }

  late final _glBlendEquation_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendEquation>>('glBlendEquation');
  late final _dart_glBlendEquation _glBlendEquation =
      _glBlendEquation_ptr.asFunction<_dart_glBlendEquation>();

  void glBlendEquationSeparate(
    int modeRGB,
    int modeAlpha,
  ) {
    return _glBlendEquationSeparate(
      modeRGB,
      modeAlpha,
    );
  }

  late final _glBlendEquationSeparate_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendEquationSeparate>>(
          'glBlendEquationSeparate');
  late final _dart_glBlendEquationSeparate _glBlendEquationSeparate =
      _glBlendEquationSeparate_ptr.asFunction<_dart_glBlendEquationSeparate>();

  void glBlendFunc(
    int sfactor,
    int dfactor,
  ) {
    return _glBlendFunc(
      sfactor,
      dfactor,
    );
  }

  late final _glBlendFunc_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendFunc>>('glBlendFunc');
  late final _dart_glBlendFunc _glBlendFunc =
      _glBlendFunc_ptr.asFunction<_dart_glBlendFunc>();

  void glBlendFuncSeparate(
    int sfactorRGB,
    int dfactorRGB,
    int sfactorAlpha,
    int dfactorAlpha,
  ) {
    return _glBlendFuncSeparate(
      sfactorRGB,
      dfactorRGB,
      sfactorAlpha,
      dfactorAlpha,
    );
  }

  late final _glBlendFuncSeparate_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendFuncSeparate>>(
          'glBlendFuncSeparate');
  late final _dart_glBlendFuncSeparate _glBlendFuncSeparate =
      _glBlendFuncSeparate_ptr.asFunction<_dart_glBlendFuncSeparate>();

  void glBufferData(
    int target,
    int size,
    ffi.Pointer<ffi.Void> data,
    int usage,
  ) {
    return _glBufferData(
      target,
      size,
      data,
      usage,
    );
  }

  late final _glBufferData_ptr =
      _lookup<ffi.NativeFunction<_c_glBufferData>>('glBufferData');
  late final _dart_glBufferData _glBufferData =
      _glBufferData_ptr.asFunction<_dart_glBufferData>();

  void glBufferSubData(
    int target,
    int offset,
    int size,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _glBufferSubData(
      target,
      offset,
      size,
      data,
    );
  }

  late final _glBufferSubData_ptr =
      _lookup<ffi.NativeFunction<_c_glBufferSubData>>('glBufferSubData');
  late final _dart_glBufferSubData _glBufferSubData =
      _glBufferSubData_ptr.asFunction<_dart_glBufferSubData>();

  int glCheckFramebufferStatus(
    int target,
  ) {
    return _glCheckFramebufferStatus(
      target,
    );
  }

  late final _glCheckFramebufferStatus_ptr =
      _lookup<ffi.NativeFunction<_c_glCheckFramebufferStatus>>(
          'glCheckFramebufferStatus');
  late final _dart_glCheckFramebufferStatus _glCheckFramebufferStatus =
      _glCheckFramebufferStatus_ptr
          .asFunction<_dart_glCheckFramebufferStatus>();

  void glClear(
    int mask,
  ) {
    return _glClear(
      mask,
    );
  }

  late final _glClear_ptr = _lookup<ffi.NativeFunction<_c_glClear>>('glClear');
  late final _dart_glClear _glClear = _glClear_ptr.asFunction<_dart_glClear>();

  void glClearColor(
    double red,
    double green,
    double blue,
    double alpha,
  ) {
    return _glClearColor(
      red,
      green,
      blue,
      alpha,
    );
  }

  late final _glClearColor_ptr =
      _lookup<ffi.NativeFunction<_c_glClearColor>>('glClearColor');
  late final _dart_glClearColor _glClearColor =
      _glClearColor_ptr.asFunction<_dart_glClearColor>();

  void glClearDepthf(
    double d,
  ) {
    return _glClearDepthf(
      d,
    );
  }

  late final _glClearDepthf_ptr =
      _lookup<ffi.NativeFunction<_c_glClearDepthf>>('glClearDepthf');
  late final _dart_glClearDepthf _glClearDepthf =
      _glClearDepthf_ptr.asFunction<_dart_glClearDepthf>();

  void glClearStencil(
    int s,
  ) {
    return _glClearStencil(
      s,
    );
  }

  late final _glClearStencil_ptr =
      _lookup<ffi.NativeFunction<_c_glClearStencil>>('glClearStencil');
  late final _dart_glClearStencil _glClearStencil =
      _glClearStencil_ptr.asFunction<_dart_glClearStencil>();

  void glColorMask(
    int red,
    int green,
    int blue,
    int alpha,
  ) {
    return _glColorMask(
      red,
      green,
      blue,
      alpha,
    );
  }

  late final _glColorMask_ptr =
      _lookup<ffi.NativeFunction<_c_glColorMask>>('glColorMask');
  late final _dart_glColorMask _glColorMask =
      _glColorMask_ptr.asFunction<_dart_glColorMask>();

  void glCompileShader(
    int shader,
  ) {
    return _glCompileShader(
      shader,
    );
  }

  late final _glCompileShader_ptr =
      _lookup<ffi.NativeFunction<_c_glCompileShader>>('glCompileShader');
  late final _dart_glCompileShader _glCompileShader =
      _glCompileShader_ptr.asFunction<_dart_glCompileShader>();

  void glCompressedTexImage2D(
    int target,
    int level,
    int internalformat,
    int width,
    int height,
    int border,
    int imageSize,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _glCompressedTexImage2D(
      target,
      level,
      internalformat,
      width,
      height,
      border,
      imageSize,
      data,
    );
  }

  late final _glCompressedTexImage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glCompressedTexImage2D>>(
          'glCompressedTexImage2D');
  late final _dart_glCompressedTexImage2D _glCompressedTexImage2D =
      _glCompressedTexImage2D_ptr.asFunction<_dart_glCompressedTexImage2D>();

  void glCompressedTexSubImage2D(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int width,
    int height,
    int format,
    int imageSize,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _glCompressedTexSubImage2D(
      target,
      level,
      xoffset,
      yoffset,
      width,
      height,
      format,
      imageSize,
      data,
    );
  }

  late final _glCompressedTexSubImage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glCompressedTexSubImage2D>>(
          'glCompressedTexSubImage2D');
  late final _dart_glCompressedTexSubImage2D _glCompressedTexSubImage2D =
      _glCompressedTexSubImage2D_ptr
          .asFunction<_dart_glCompressedTexSubImage2D>();

  void glCopyTexImage2D(
    int target,
    int level,
    int internalformat,
    int x,
    int y,
    int width,
    int height,
    int border,
  ) {
    return _glCopyTexImage2D(
      target,
      level,
      internalformat,
      x,
      y,
      width,
      height,
      border,
    );
  }

  late final _glCopyTexImage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glCopyTexImage2D>>('glCopyTexImage2D');
  late final _dart_glCopyTexImage2D _glCopyTexImage2D =
      _glCopyTexImage2D_ptr.asFunction<_dart_glCopyTexImage2D>();

  void glCopyTexSubImage2D(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int x,
    int y,
    int width,
    int height,
  ) {
    return _glCopyTexSubImage2D(
      target,
      level,
      xoffset,
      yoffset,
      x,
      y,
      width,
      height,
    );
  }

  late final _glCopyTexSubImage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glCopyTexSubImage2D>>(
          'glCopyTexSubImage2D');
  late final _dart_glCopyTexSubImage2D _glCopyTexSubImage2D =
      _glCopyTexSubImage2D_ptr.asFunction<_dart_glCopyTexSubImage2D>();

  int glCreateProgram() {
    return _glCreateProgram();
  }

  late final _glCreateProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glCreateProgram>>('glCreateProgram');
  late final _dart_glCreateProgram _glCreateProgram =
      _glCreateProgram_ptr.asFunction<_dart_glCreateProgram>();

  int glCreateShader(
    int type,
  ) {
    return _glCreateShader(
      type,
    );
  }

  late final _glCreateShader_ptr =
      _lookup<ffi.NativeFunction<_c_glCreateShader>>('glCreateShader');
  late final _dart_glCreateShader _glCreateShader =
      _glCreateShader_ptr.asFunction<_dart_glCreateShader>();

  void glCullFace(
    int mode,
  ) {
    return _glCullFace(
      mode,
    );
  }

  late final _glCullFace_ptr =
      _lookup<ffi.NativeFunction<_c_glCullFace>>('glCullFace');
  late final _dart_glCullFace _glCullFace =
      _glCullFace_ptr.asFunction<_dart_glCullFace>();

  void glDeleteBuffers(
    int n,
    ffi.Pointer<ffi.Uint32> buffers,
  ) {
    return _glDeleteBuffers(
      n,
      buffers,
    );
  }

  late final _glDeleteBuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteBuffers>>('glDeleteBuffers');
  late final _dart_glDeleteBuffers _glDeleteBuffers =
      _glDeleteBuffers_ptr.asFunction<_dart_glDeleteBuffers>();

  void glDeleteFramebuffers(
    int n,
    ffi.Pointer framebuffers,
  ) {
    return _glDeleteFramebuffers(
      n,
      framebuffers,
    );
  }

  late final _glDeleteFramebuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteFramebuffers>>(
          'glDeleteFramebuffers');
  late final _dart_glDeleteFramebuffers _glDeleteFramebuffers =
      _glDeleteFramebuffers_ptr.asFunction<_dart_glDeleteFramebuffers>();

  void glDeleteProgram(
    int program,
  ) {
    return _glDeleteProgram(
      program,
    );
  }

  late final _glDeleteProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteProgram>>('glDeleteProgram');
  late final _dart_glDeleteProgram _glDeleteProgram =
      _glDeleteProgram_ptr.asFunction<_dart_glDeleteProgram>();

  void glDeleteRenderbuffers(
    int n,
    ffi.Pointer renderbuffers,
  ) {
    return _glDeleteRenderbuffers(
      n,
      renderbuffers,
    );
  }

  late final _glDeleteRenderbuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteRenderbuffers>>(
          'glDeleteRenderbuffers');
  late final _dart_glDeleteRenderbuffers _glDeleteRenderbuffers =
      _glDeleteRenderbuffers_ptr.asFunction<_dart_glDeleteRenderbuffers>();

  void glDeleteShader(
    int shader,
  ) {
    return _glDeleteShader(
      shader,
    );
  }

  late final _glDeleteShader_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteShader>>('glDeleteShader');
  late final _dart_glDeleteShader _glDeleteShader =
      _glDeleteShader_ptr.asFunction<_dart_glDeleteShader>();

  void glDeleteTextures(
    int n,
    ffi.Pointer textures,
  ) {
    return _glDeleteTextures(
      n,
      textures,
    );
  }

  late final _glDeleteTextures_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteTextures>>('glDeleteTextures');
  late final _dart_glDeleteTextures _glDeleteTextures =
      _glDeleteTextures_ptr.asFunction<_dart_glDeleteTextures>();

  void glDepthFunc(
    int func,
  ) {
    return _glDepthFunc(
      func,
    );
  }

  late final _glDepthFunc_ptr =
      _lookup<ffi.NativeFunction<_c_glDepthFunc>>('glDepthFunc');
  late final _dart_glDepthFunc _glDepthFunc =
      _glDepthFunc_ptr.asFunction<_dart_glDepthFunc>();

  void glDepthMask(
    int flag,
  ) {
    return _glDepthMask(
      flag,
    );
  }

  late final _glDepthMask_ptr =
      _lookup<ffi.NativeFunction<_c_glDepthMask>>('glDepthMask');
  late final _dart_glDepthMask _glDepthMask =
      _glDepthMask_ptr.asFunction<_dart_glDepthMask>();

  void glDepthRangef(
    double n,
    double f,
  ) {
    return _glDepthRangef(
      n,
      f,
    );
  }

  late final _glDepthRangef_ptr =
      _lookup<ffi.NativeFunction<_c_glDepthRangef>>('glDepthRangef');
  late final _dart_glDepthRangef _glDepthRangef =
      _glDepthRangef_ptr.asFunction<_dart_glDepthRangef>();

  void glDetachShader(
    int program,
    int shader,
  ) {
    return _glDetachShader(
      program,
      shader,
    );
  }

  late final _glDetachShader_ptr =
      _lookup<ffi.NativeFunction<_c_glDetachShader>>('glDetachShader');
  late final _dart_glDetachShader _glDetachShader =
      _glDetachShader_ptr.asFunction<_dart_glDetachShader>();

  void glDisable(
    int cap,
  ) {
    return _glDisable(
      cap,
    );
  }

  late final _glDisable_ptr =
      _lookup<ffi.NativeFunction<_c_glDisable>>('glDisable');
  late final _dart_glDisable _glDisable =
      _glDisable_ptr.asFunction<_dart_glDisable>();

  void glDisableVertexAttribArray(
    int index,
  ) {
    return _glDisableVertexAttribArray(
      index,
    );
  }

  late final _glDisableVertexAttribArray_ptr =
      _lookup<ffi.NativeFunction<_c_glDisableVertexAttribArray>>(
          'glDisableVertexAttribArray');
  late final _dart_glDisableVertexAttribArray _glDisableVertexAttribArray =
      _glDisableVertexAttribArray_ptr
          .asFunction<_dart_glDisableVertexAttribArray>();

  void glDrawArrays(
    int mode,
    int first,
    int count,
  ) {
    return _glDrawArrays(
      mode,
      first,
      count,
    );
  }

  late final _glDrawArrays_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawArrays>>('glDrawArrays');
  late final _dart_glDrawArrays _glDrawArrays =
      _glDrawArrays_ptr.asFunction<_dart_glDrawArrays>();

  void glDrawElements(
    int mode,
    int count,
    int type,
    ffi.Pointer<ffi.Void> indices,
  ) {
    return _glDrawElements(
      mode,
      count,
      type,
      indices,
    );
  }

  late final _glDrawElements_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawElements>>('glDrawElements');
  late final _dart_glDrawElements _glDrawElements =
      _glDrawElements_ptr.asFunction<_dart_glDrawElements>();

  void glEnable(
    int cap,
  ) {
    return _glEnable(
      cap,
    );
  }

  late final _glEnable_ptr =
      _lookup<ffi.NativeFunction<_c_glEnable>>('glEnable');
  late final _dart_glEnable _glEnable =
      _glEnable_ptr.asFunction<_dart_glEnable>();

  void glEnableVertexAttribArray(
    int index,
  ) {
    return _glEnableVertexAttribArray(
      index,
    );
  }

  late final _glEnableVertexAttribArray_ptr =
      _lookup<ffi.NativeFunction<_c_glEnableVertexAttribArray>>(
          'glEnableVertexAttribArray');
  late final _dart_glEnableVertexAttribArray _glEnableVertexAttribArray =
      _glEnableVertexAttribArray_ptr
          .asFunction<_dart_glEnableVertexAttribArray>();

  void glFinish() {
    return _glFinish();
  }

  late final _glFinish_ptr =
      _lookup<ffi.NativeFunction<_c_glFinish>>('glFinish');
  late final _dart_glFinish _glFinish =
      _glFinish_ptr.asFunction<_dart_glFinish>();

  void glFlush() {
    return _glFlush();
  }

  late final _glFlush_ptr = _lookup<ffi.NativeFunction<_c_glFlush>>('glFlush');
  late final _dart_glFlush _glFlush = _glFlush_ptr.asFunction<_dart_glFlush>();

  void glFramebufferRenderbuffer(
    int target,
    int attachment,
    int renderbuffertarget,
    int renderbuffer,
  ) {
    return _glFramebufferRenderbuffer(
      target,
      attachment,
      renderbuffertarget,
      renderbuffer,
    );
  }

  late final _glFramebufferRenderbuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glFramebufferRenderbuffer>>(
          'glFramebufferRenderbuffer');
  late final _dart_glFramebufferRenderbuffer _glFramebufferRenderbuffer =
      _glFramebufferRenderbuffer_ptr
          .asFunction<_dart_glFramebufferRenderbuffer>();

  void glFramebufferTexture2D(
    int target,
    int attachment,
    int textarget,
    int texture,
    int level,
  ) {
    return _glFramebufferTexture2D(
      target,
      attachment,
      textarget,
      texture,
      level,
    );
  }

  late final _glFramebufferTexture2D_ptr =
      _lookup<ffi.NativeFunction<_c_glFramebufferTexture2D>>(
          'glFramebufferTexture2D');
  late final _dart_glFramebufferTexture2D _glFramebufferTexture2D =
      _glFramebufferTexture2D_ptr.asFunction<_dart_glFramebufferTexture2D>();

  void glFrontFace(
    int mode,
  ) {
    return _glFrontFace(
      mode,
    );
  }

  late final _glFrontFace_ptr =
      _lookup<ffi.NativeFunction<_c_glFrontFace>>('glFrontFace');
  late final _dart_glFrontFace _glFrontFace =
      _glFrontFace_ptr.asFunction<_dart_glFrontFace>();

  void glGenBuffers(
    int n,
    ffi.Pointer<ffi.Uint32> buffers,
  ) {
    return _glGenBuffers(
      n,
      buffers,
    );
  }

  late final _glGenBuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glGenBuffers>>('glGenBuffers');
  late final _dart_glGenBuffers _glGenBuffers =
      _glGenBuffers_ptr.asFunction<_dart_glGenBuffers>();

  void glGenerateMipmap(
    int target,
  ) {
    return _glGenerateMipmap(
      target,
    );
  }

  late final _glGenerateMipmap_ptr =
      _lookup<ffi.NativeFunction<_c_glGenerateMipmap>>('glGenerateMipmap');
  late final _dart_glGenerateMipmap _glGenerateMipmap =
      _glGenerateMipmap_ptr.asFunction<_dart_glGenerateMipmap>();

  void glGenFramebuffers(
    int n,
    ffi.Pointer<ffi.Uint32> framebuffers,
  ) {
    return _glGenFramebuffers(
      n,
      framebuffers,
    );
  }

  late final _glGenFramebuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glGenFramebuffers>>('glGenFramebuffers');
  late final _dart_glGenFramebuffers _glGenFramebuffers =
      _glGenFramebuffers_ptr.asFunction<_dart_glGenFramebuffers>();

  void glGenRenderbuffers(
    int n,
    ffi.Pointer<ffi.Uint32> renderbuffers,
  ) {
    return _glGenRenderbuffers(
      n,
      renderbuffers,
    );
  }

  late final _glGenRenderbuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glGenRenderbuffers>>('glGenRenderbuffers');
  late final _dart_glGenRenderbuffers _glGenRenderbuffers =
      _glGenRenderbuffers_ptr.asFunction<_dart_glGenRenderbuffers>();

  void glGenTextures(
    int n,
    ffi.Pointer<ffi.Uint32> textures,
  ) {
    return _glGenTextures(
      n,
      textures,
    );
  }

  late final _glGenTextures_ptr =
      _lookup<ffi.NativeFunction<_c_glGenTextures>>('glGenTextures');
  late final _dart_glGenTextures _glGenTextures =
      _glGenTextures_ptr.asFunction<_dart_glGenTextures>();

  void glGetActiveAttrib(
    int program,
    int index,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int32> size,
    ffi.Pointer<ffi.Uint32> type,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetActiveAttrib(
      program,
      index,
      bufSize,
      length,
      size,
      type,
      name,
    );
  }

  late final _glGetActiveAttrib_ptr =
      _lookup<ffi.NativeFunction<_c_glGetActiveAttrib>>('glGetActiveAttrib');
  late final _dart_glGetActiveAttrib _glGetActiveAttrib =
      _glGetActiveAttrib_ptr.asFunction<_dart_glGetActiveAttrib>();

  void glGetActiveUniform(
    int program,
    int index,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int32> size,
    ffi.Pointer<ffi.Uint32> type,
    ffi.Pointer name,
  ) {
    return _glGetActiveUniform(
      program,
      index,
      bufSize,
      length,
      size,
      type,
      name,
    );
  }

  late final _glGetActiveUniform_ptr =
      _lookup<ffi.NativeFunction<_c_glGetActiveUniform>>('glGetActiveUniform');
  late final _dart_glGetActiveUniform _glGetActiveUniform =
      _glGetActiveUniform_ptr.asFunction<_dart_glGetActiveUniform>();

  void glGetAttachedShaders(
    int program,
    int maxCount,
    ffi.Pointer<ffi.Int32> count,
    ffi.Pointer<ffi.Uint32> shaders,
  ) {
    return _glGetAttachedShaders(
      program,
      maxCount,
      count,
      shaders,
    );
  }

  late final _glGetAttachedShaders_ptr =
      _lookup<ffi.NativeFunction<_c_glGetAttachedShaders>>(
          'glGetAttachedShaders');
  late final _dart_glGetAttachedShaders _glGetAttachedShaders =
      _glGetAttachedShaders_ptr.asFunction<_dart_glGetAttachedShaders>();

  int glGetAttribLocation(
    int program,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetAttribLocation(
      program,
      name,
    );
  }

  late final _glGetAttribLocation_ptr =
      _lookup<ffi.NativeFunction<_c_glGetAttribLocation>>(
          'glGetAttribLocation');
  late final _dart_glGetAttribLocation _glGetAttribLocation =
      _glGetAttribLocation_ptr.asFunction<_dart_glGetAttribLocation>();

  void glGetBooleanv(
    int pname,
    ffi.Pointer<ffi.Uint8> data,
  ) {
    return _glGetBooleanv(
      pname,
      data,
    );
  }

  late final _glGetBooleanv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetBooleanv>>('glGetBooleanv');
  late final _dart_glGetBooleanv _glGetBooleanv =
      _glGetBooleanv_ptr.asFunction<_dart_glGetBooleanv>();

  void glGetBufferParameteriv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetBufferParameteriv(
      target,
      pname,
      params,
    );
  }

  late final _glGetBufferParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetBufferParameteriv>>(
          'glGetBufferParameteriv');
  late final _dart_glGetBufferParameteriv _glGetBufferParameteriv =
      _glGetBufferParameteriv_ptr.asFunction<_dart_glGetBufferParameteriv>();

  int glGetError() {
    return _glGetError();
  }

  late final _glGetError_ptr =
      _lookup<ffi.NativeFunction<_c_glGetError>>('glGetError');
  late final _dart_glGetError _glGetError =
      _glGetError_ptr.asFunction<_dart_glGetError>();

  void glGetFloatv(
    int pname,
    ffi.Pointer<ffi.Float> data,
  ) {
    return _glGetFloatv(
      pname,
      data,
    );
  }

  late final _glGetFloatv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetFloatv>>('glGetFloatv');
  late final _dart_glGetFloatv _glGetFloatv =
      _glGetFloatv_ptr.asFunction<_dart_glGetFloatv>();

  void glGetFramebufferAttachmentParameteriv(
    int target,
    int attachment,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetFramebufferAttachmentParameteriv(
      target,
      attachment,
      pname,
      params,
    );
  }

  late final _glGetFramebufferAttachmentParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetFramebufferAttachmentParameteriv>>(
          'glGetFramebufferAttachmentParameteriv');
  late final _dart_glGetFramebufferAttachmentParameteriv
      _glGetFramebufferAttachmentParameteriv =
      _glGetFramebufferAttachmentParameteriv_ptr
          .asFunction<_dart_glGetFramebufferAttachmentParameteriv>();

  void glGetIntegerv(
    int pname,
    ffi.Pointer<ffi.Int32> data,
  ) {
    return _glGetIntegerv(
      pname,
      data,
    );
  }

  late final _glGetIntegerv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetIntegerv>>('glGetIntegerv');
  late final _dart_glGetIntegerv _glGetIntegerv =
      _glGetIntegerv_ptr.asFunction<_dart_glGetIntegerv>();

  void glGetProgramiv(
    int program,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetProgramiv(
      program,
      pname,
      params,
    );
  }

  late final _glGetProgramiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramiv>>('glGetProgramiv');
  late final _dart_glGetProgramiv _glGetProgramiv =
      _glGetProgramiv_ptr.asFunction<_dart_glGetProgramiv>();

  void glGetProgramInfoLog(
    int program,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> infoLog,
  ) {
    return _glGetProgramInfoLog(
      program,
      bufSize,
      length,
      infoLog,
    );
  }

  late final _glGetProgramInfoLog_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramInfoLog>>(
          'glGetProgramInfoLog');
  late final _dart_glGetProgramInfoLog _glGetProgramInfoLog =
      _glGetProgramInfoLog_ptr.asFunction<_dart_glGetProgramInfoLog>();

  void glGetRenderbufferParameteriv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetRenderbufferParameteriv(
      target,
      pname,
      params,
    );
  }

  late final _glGetRenderbufferParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetRenderbufferParameteriv>>(
          'glGetRenderbufferParameteriv');
  late final _dart_glGetRenderbufferParameteriv _glGetRenderbufferParameteriv =
      _glGetRenderbufferParameteriv_ptr
          .asFunction<_dart_glGetRenderbufferParameteriv>();

  void glGetShaderiv(
    int shader,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetShaderiv(
      shader,
      pname,
      params,
    );
  }

  late final _glGetShaderiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetShaderiv>>('glGetShaderiv');
  late final _dart_glGetShaderiv _glGetShaderiv =
      _glGetShaderiv_ptr.asFunction<_dart_glGetShaderiv>();

  void glGetShaderInfoLog(
    int shader,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> infoLog,
  ) {
    return _glGetShaderInfoLog(
      shader,
      bufSize,
      length,
      infoLog,
    );
  }

  late final _glGetShaderInfoLog_ptr =
      _lookup<ffi.NativeFunction<_c_glGetShaderInfoLog>>('glGetShaderInfoLog');
  late final _dart_glGetShaderInfoLog _glGetShaderInfoLog =
      _glGetShaderInfoLog_ptr.asFunction<_dart_glGetShaderInfoLog>();

  void glGetShaderPrecisionFormat(
    int shadertype,
    int precisiontype,
    ffi.Pointer<ffi.Int32> range,
    ffi.Pointer<ffi.Int32> precision,
  ) {
    return _glGetShaderPrecisionFormat(
      shadertype,
      precisiontype,
      range,
      precision,
    );
  }

  late final _glGetShaderPrecisionFormat_ptr =
      _lookup<ffi.NativeFunction<_c_glGetShaderPrecisionFormat>>(
          'glGetShaderPrecisionFormat');
  late final _dart_glGetShaderPrecisionFormat _glGetShaderPrecisionFormat =
      _glGetShaderPrecisionFormat_ptr
          .asFunction<_dart_glGetShaderPrecisionFormat>();

  void glGetShaderSource(
    int shader,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> source,
  ) {
    return _glGetShaderSource(
      shader,
      bufSize,
      length,
      source,
    );
  }

  late final _glGetShaderSource_ptr =
      _lookup<ffi.NativeFunction<_c_glGetShaderSource>>('glGetShaderSource');
  late final _dart_glGetShaderSource _glGetShaderSource =
      _glGetShaderSource_ptr.asFunction<_dart_glGetShaderSource>();

  ffi.Pointer glGetString(
    int name,
  ) {
    return _glGetString(
      name,
    );
  }

  late final _glGetString_ptr =
      _lookup<ffi.NativeFunction<_c_glGetString>>('glGetString');
  late final _dart_glGetString _glGetString =
      _glGetString_ptr.asFunction<_dart_glGetString>();

  void glGetTexParameterfv(
    int target,
    int pname,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glGetTexParameterfv(
      target,
      pname,
      params,
    );
  }

  late final _glGetTexParameterfv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTexParameterfv>>(
          'glGetTexParameterfv');
  late final _dart_glGetTexParameterfv _glGetTexParameterfv =
      _glGetTexParameterfv_ptr.asFunction<_dart_glGetTexParameterfv>();

  void glGetTexParameteriv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetTexParameteriv(
      target,
      pname,
      params,
    );
  }

  late final _glGetTexParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTexParameteriv>>(
          'glGetTexParameteriv');
  late final _dart_glGetTexParameteriv _glGetTexParameteriv =
      _glGetTexParameteriv_ptr.asFunction<_dart_glGetTexParameteriv>();

  void glGetUniformfv(
    int program,
    int location,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glGetUniformfv(
      program,
      location,
      params,
    );
  }

  late final _glGetUniformfv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetUniformfv>>('glGetUniformfv');
  late final _dart_glGetUniformfv _glGetUniformfv =
      _glGetUniformfv_ptr.asFunction<_dart_glGetUniformfv>();

  void glGetUniformiv(
    int program,
    int location,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetUniformiv(
      program,
      location,
      params,
    );
  }

  late final _glGetUniformiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetUniformiv>>('glGetUniformiv');
  late final _dart_glGetUniformiv _glGetUniformiv =
      _glGetUniformiv_ptr.asFunction<_dart_glGetUniformiv>();

  int glGetUniformLocation(
    int program,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetUniformLocation(
      program,
      name,
    );
  }

  late final _glGetUniformLocation_ptr =
      _lookup<ffi.NativeFunction<_c_glGetUniformLocation>>(
          'glGetUniformLocation');
  late final _dart_glGetUniformLocation _glGetUniformLocation =
      _glGetUniformLocation_ptr.asFunction<_dart_glGetUniformLocation>();

  void glGetVertexAttribfv(
    int index,
    int pname,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glGetVertexAttribfv(
      index,
      pname,
      params,
    );
  }

  late final _glGetVertexAttribfv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetVertexAttribfv>>(
          'glGetVertexAttribfv');
  late final _dart_glGetVertexAttribfv _glGetVertexAttribfv =
      _glGetVertexAttribfv_ptr.asFunction<_dart_glGetVertexAttribfv>();

  void glGetVertexAttribiv(
    int index,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetVertexAttribiv(
      index,
      pname,
      params,
    );
  }

  late final _glGetVertexAttribiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetVertexAttribiv>>(
          'glGetVertexAttribiv');
  late final _dart_glGetVertexAttribiv _glGetVertexAttribiv =
      _glGetVertexAttribiv_ptr.asFunction<_dart_glGetVertexAttribiv>();

  void glGetVertexAttribPointerv(
    int index,
    int pname,
    ffi.Pointer<ffi.Pointer<ffi.Void>> pointer,
  ) {
    return _glGetVertexAttribPointerv(
      index,
      pname,
      pointer,
    );
  }

  late final _glGetVertexAttribPointerv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetVertexAttribPointerv>>(
          'glGetVertexAttribPointerv');
  late final _dart_glGetVertexAttribPointerv _glGetVertexAttribPointerv =
      _glGetVertexAttribPointerv_ptr
          .asFunction<_dart_glGetVertexAttribPointerv>();

  void glHint(
    int target,
    int mode,
  ) {
    return _glHint(
      target,
      mode,
    );
  }

  late final _glHint_ptr = _lookup<ffi.NativeFunction<_c_glHint>>('glHint');
  late final _dart_glHint _glHint = _glHint_ptr.asFunction<_dart_glHint>();

  int glIsBuffer(
    int buffer,
  ) {
    return _glIsBuffer(
      buffer,
    );
  }

  late final _glIsBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glIsBuffer>>('glIsBuffer');
  late final _dart_glIsBuffer _glIsBuffer =
      _glIsBuffer_ptr.asFunction<_dart_glIsBuffer>();

  int glIsEnabled(
    int cap,
  ) {
    return _glIsEnabled(
      cap,
    );
  }

  late final _glIsEnabled_ptr =
      _lookup<ffi.NativeFunction<_c_glIsEnabled>>('glIsEnabled');
  late final _dart_glIsEnabled _glIsEnabled =
      _glIsEnabled_ptr.asFunction<_dart_glIsEnabled>();

  int glIsFramebuffer(
    int framebuffer,
  ) {
    return _glIsFramebuffer(
      framebuffer,
    );
  }

  late final _glIsFramebuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glIsFramebuffer>>('glIsFramebuffer');
  late final _dart_glIsFramebuffer _glIsFramebuffer =
      _glIsFramebuffer_ptr.asFunction<_dart_glIsFramebuffer>();

  int glIsProgram(
    int program,
  ) {
    return _glIsProgram(
      program,
    );
  }

  late final _glIsProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glIsProgram>>('glIsProgram');
  late final _dart_glIsProgram _glIsProgram =
      _glIsProgram_ptr.asFunction<_dart_glIsProgram>();

  int glIsRenderbuffer(
    int renderbuffer,
  ) {
    return _glIsRenderbuffer(
      renderbuffer,
    );
  }

  late final _glIsRenderbuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glIsRenderbuffer>>('glIsRenderbuffer');
  late final _dart_glIsRenderbuffer _glIsRenderbuffer =
      _glIsRenderbuffer_ptr.asFunction<_dart_glIsRenderbuffer>();

  int glIsShader(
    int shader,
  ) {
    return _glIsShader(
      shader,
    );
  }

  late final _glIsShader_ptr =
      _lookup<ffi.NativeFunction<_c_glIsShader>>('glIsShader');
  late final _dart_glIsShader _glIsShader =
      _glIsShader_ptr.asFunction<_dart_glIsShader>();

  int glIsTexture(
    int texture,
  ) {
    return _glIsTexture(
      texture,
    );
  }

  late final _glIsTexture_ptr =
      _lookup<ffi.NativeFunction<_c_glIsTexture>>('glIsTexture');
  late final _dart_glIsTexture _glIsTexture =
      _glIsTexture_ptr.asFunction<_dart_glIsTexture>();

  void glLineWidth(
    double width,
  ) {
    return _glLineWidth(
      width,
    );
  }

  late final _glLineWidth_ptr =
      _lookup<ffi.NativeFunction<_c_glLineWidth>>('glLineWidth');
  late final _dart_glLineWidth _glLineWidth =
      _glLineWidth_ptr.asFunction<_dart_glLineWidth>();

  void glLinkProgram(
    int program,
  ) {
    return _glLinkProgram(
      program,
    );
  }

  late final _glLinkProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glLinkProgram>>('glLinkProgram');
  late final _dart_glLinkProgram _glLinkProgram =
      _glLinkProgram_ptr.asFunction<_dart_glLinkProgram>();

  void glPixelStorei(
    int pname,
    int param,
  ) {
    return _glPixelStorei(
      pname,
      param,
    );
  }

  late final _glPixelStorei_ptr =
      _lookup<ffi.NativeFunction<_c_glPixelStorei>>('glPixelStorei');
  late final _dart_glPixelStorei _glPixelStorei =
      _glPixelStorei_ptr.asFunction<_dart_glPixelStorei>();

  void glPolygonOffset(
    double factor,
    double units,
  ) {
    return _glPolygonOffset(
      factor,
      units,
    );
  }

  late final _glPolygonOffset_ptr =
      _lookup<ffi.NativeFunction<_c_glPolygonOffset>>('glPolygonOffset');
  late final _dart_glPolygonOffset _glPolygonOffset =
      _glPolygonOffset_ptr.asFunction<_dart_glPolygonOffset>();

  void glReadPixels(
    int x,
    int y,
    int width,
    int height,
    int format,
    int type,
    ffi.Pointer pixels,
  ) {
    return _glReadPixels(
      x,
      y,
      width,
      height,
      format,
      type,
      pixels,
    );
  }

  late final _glReadPixels_ptr =
      _lookup<ffi.NativeFunction<_c_glReadPixels>>('glReadPixels');
  late final _dart_glReadPixels _glReadPixels =
      _glReadPixels_ptr.asFunction<_dart_glReadPixels>();

  void glReleaseShaderCompiler() {
    return _glReleaseShaderCompiler();
  }

  late final _glReleaseShaderCompiler_ptr =
      _lookup<ffi.NativeFunction<_c_glReleaseShaderCompiler>>(
          'glReleaseShaderCompiler');
  late final _dart_glReleaseShaderCompiler _glReleaseShaderCompiler =
      _glReleaseShaderCompiler_ptr.asFunction<_dart_glReleaseShaderCompiler>();

  void glRenderbufferStorage(
    int target,
    int internalformat,
    int width,
    int height,
  ) {
    return _glRenderbufferStorage(
      target,
      internalformat,
      width,
      height,
    );
  }

  late final _glRenderbufferStorage_ptr =
      _lookup<ffi.NativeFunction<_c_glRenderbufferStorage>>(
          'glRenderbufferStorage');
  late final _dart_glRenderbufferStorage _glRenderbufferStorage =
      _glRenderbufferStorage_ptr.asFunction<_dart_glRenderbufferStorage>();

  void glSampleCoverage(
    double value,
    int invert,
  ) {
    return _glSampleCoverage(
      value,
      invert,
    );
  }

  late final _glSampleCoverage_ptr =
      _lookup<ffi.NativeFunction<_c_glSampleCoverage>>('glSampleCoverage');
  late final _dart_glSampleCoverage _glSampleCoverage =
      _glSampleCoverage_ptr.asFunction<_dart_glSampleCoverage>();

  void glScissor(
    int x,
    int y,
    int width,
    int height,
  ) {
    return _glScissor(
      x,
      y,
      width,
      height,
    );
  }

  late final _glScissor_ptr =
      _lookup<ffi.NativeFunction<_c_glScissor>>('glScissor');
  late final _dart_glScissor _glScissor =
      _glScissor_ptr.asFunction<_dart_glScissor>();

  void glShaderBinary(
    int count,
    ffi.Pointer<ffi.Uint32> shaders,
    int binaryformat,
    ffi.Pointer<ffi.Void> binary,
    int length,
  ) {
    return _glShaderBinary(
      count,
      shaders,
      binaryformat,
      binary,
      length,
    );
  }

  late final _glShaderBinary_ptr =
      _lookup<ffi.NativeFunction<_c_glShaderBinary>>('glShaderBinary');
  late final _dart_glShaderBinary _glShaderBinary =
      _glShaderBinary_ptr.asFunction<_dart_glShaderBinary>();

  void glShaderSource(
    int shader,
    int count,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> string,
    ffi.Pointer<ffi.Int32> length,
  ) {
    return _glShaderSource(
      shader,
      count,
      string,
      length,
    );
  }

  late final _glShaderSource_ptr =
      _lookup<ffi.NativeFunction<_c_glShaderSource>>('glShaderSource');
  late final _dart_glShaderSource _glShaderSource =
      _glShaderSource_ptr.asFunction<_dart_glShaderSource>();

  void glStencilFunc(
    int func,
    int ref,
    int mask,
  ) {
    return _glStencilFunc(
      func,
      ref,
      mask,
    );
  }

  late final _glStencilFunc_ptr =
      _lookup<ffi.NativeFunction<_c_glStencilFunc>>('glStencilFunc');
  late final _dart_glStencilFunc _glStencilFunc =
      _glStencilFunc_ptr.asFunction<_dart_glStencilFunc>();

  void glStencilFuncSeparate(
    int face,
    int func,
    int ref,
    int mask,
  ) {
    return _glStencilFuncSeparate(
      face,
      func,
      ref,
      mask,
    );
  }

  late final _glStencilFuncSeparate_ptr =
      _lookup<ffi.NativeFunction<_c_glStencilFuncSeparate>>(
          'glStencilFuncSeparate');
  late final _dart_glStencilFuncSeparate _glStencilFuncSeparate =
      _glStencilFuncSeparate_ptr.asFunction<_dart_glStencilFuncSeparate>();

  void glStencilMask(
    int mask,
  ) {
    return _glStencilMask(
      mask,
    );
  }

  late final _glStencilMask_ptr =
      _lookup<ffi.NativeFunction<_c_glStencilMask>>('glStencilMask');
  late final _dart_glStencilMask _glStencilMask =
      _glStencilMask_ptr.asFunction<_dart_glStencilMask>();

  void glStencilMaskSeparate(
    int face,
    int mask,
  ) {
    return _glStencilMaskSeparate(
      face,
      mask,
    );
  }

  late final _glStencilMaskSeparate_ptr =
      _lookup<ffi.NativeFunction<_c_glStencilMaskSeparate>>(
          'glStencilMaskSeparate');
  late final _dart_glStencilMaskSeparate _glStencilMaskSeparate =
      _glStencilMaskSeparate_ptr.asFunction<_dart_glStencilMaskSeparate>();

  void glStencilOp(
    int fail,
    int zfail,
    int zpass,
  ) {
    return _glStencilOp(
      fail,
      zfail,
      zpass,
    );
  }

  late final _glStencilOp_ptr =
      _lookup<ffi.NativeFunction<_c_glStencilOp>>('glStencilOp');
  late final _dart_glStencilOp _glStencilOp =
      _glStencilOp_ptr.asFunction<_dart_glStencilOp>();

  void glStencilOpSeparate(
    int face,
    int sfail,
    int dpfail,
    int dppass,
  ) {
    return _glStencilOpSeparate(
      face,
      sfail,
      dpfail,
      dppass,
    );
  }

  late final _glStencilOpSeparate_ptr =
      _lookup<ffi.NativeFunction<_c_glStencilOpSeparate>>(
          'glStencilOpSeparate');
  late final _dart_glStencilOpSeparate _glStencilOpSeparate =
      _glStencilOpSeparate_ptr.asFunction<_dart_glStencilOpSeparate>();

  void glTexImage2D(
    int target,
    int level,
    int internalformat,
    int width,
    int height,
    int border,
    int format,
    int type,
    ffi.Pointer<ffi.Void> pixels,
  ) {
    return _glTexImage2D(
      target,
      level,
      internalformat,
      width,
      height,
      border,
      format,
      type,
      pixels,
    );
  }

  late final _glTexImage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glTexImage2D>>('glTexImage2D');
  late final _dart_glTexImage2D _glTexImage2D =
      _glTexImage2D_ptr.asFunction<_dart_glTexImage2D>();

  void glTexParameterf(
    int target,
    int pname,
    double param,
  ) {
    return _glTexParameterf(
      target,
      pname,
      param,
    );
  }

  late final _glTexParameterf_ptr =
      _lookup<ffi.NativeFunction<_c_glTexParameterf>>('glTexParameterf');
  late final _dart_glTexParameterf _glTexParameterf =
      _glTexParameterf_ptr.asFunction<_dart_glTexParameterf>();

  void glTexParameterfv(
    int target,
    int pname,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glTexParameterfv(
      target,
      pname,
      params,
    );
  }

  late final _glTexParameterfv_ptr =
      _lookup<ffi.NativeFunction<_c_glTexParameterfv>>('glTexParameterfv');
  late final _dart_glTexParameterfv _glTexParameterfv =
      _glTexParameterfv_ptr.asFunction<_dart_glTexParameterfv>();

  void glTexParameteri(
    int target,
    int pname,
    int param,
  ) {
    return _glTexParameteri(
      target,
      pname,
      param,
    );
  }

  late final _glTexParameteri_ptr =
      _lookup<ffi.NativeFunction<_c_glTexParameteri>>('glTexParameteri');
  late final _dart_glTexParameteri _glTexParameteri =
      _glTexParameteri_ptr.asFunction<_dart_glTexParameteri>();

  void glTexParameteriv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glTexParameteriv(
      target,
      pname,
      params,
    );
  }

  late final _glTexParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glTexParameteriv>>('glTexParameteriv');
  late final _dart_glTexParameteriv _glTexParameteriv =
      _glTexParameteriv_ptr.asFunction<_dart_glTexParameteriv>();

  void glTexSubImage2D(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int width,
    int height,
    int format,
    int type,
    ffi.Pointer pixels,
  ) {
    return _glTexSubImage2D(
      target,
      level,
      xoffset,
      yoffset,
      width,
      height,
      format,
      type,
      pixels,
    );
  }

  late final _glTexSubImage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glTexSubImage2D>>('glTexSubImage2D');
  late final _dart_glTexSubImage2D _glTexSubImage2D =
      _glTexSubImage2D_ptr.asFunction<_dart_glTexSubImage2D>();

  void glUniform1f(
    int location,
    double v0,
  ) {
    return _glUniform1f(
      location,
      v0,
    );
  }

  late final _glUniform1f_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform1f>>('glUniform1f');
  late final _dart_glUniform1f _glUniform1f =
      _glUniform1f_ptr.asFunction<_dart_glUniform1f>();

  void glUniform1fv(
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniform1fv(
      location,
      count,
      value,
    );
  }

  late final _glUniform1fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform1fv>>('glUniform1fv');
  late final _dart_glUniform1fv _glUniform1fv =
      _glUniform1fv_ptr.asFunction<_dart_glUniform1fv>();

  void glUniform1i(
    int location,
    int v0,
  ) {
    return _glUniform1i(
      location,
      v0,
    );
  }

  late final _glUniform1i_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform1i>>('glUniform1i');
  late final _dart_glUniform1i _glUniform1i =
      _glUniform1i_ptr.asFunction<_dart_glUniform1i>();

  void glUniform1iv(
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glUniform1iv(
      location,
      count,
      value,
    );
  }

  late final _glUniform1iv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform1iv>>('glUniform1iv');
  late final _dart_glUniform1iv _glUniform1iv =
      _glUniform1iv_ptr.asFunction<_dart_glUniform1iv>();

  void glUniform2f(
    int location,
    double v0,
    double v1,
  ) {
    return _glUniform2f(
      location,
      v0,
      v1,
    );
  }

  late final _glUniform2f_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform2f>>('glUniform2f');
  late final _dart_glUniform2f _glUniform2f =
      _glUniform2f_ptr.asFunction<_dart_glUniform2f>();

  void glUniform2fv(
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniform2fv(
      location,
      count,
      value,
    );
  }

  late final _glUniform2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform2fv>>('glUniform2fv');
  late final _dart_glUniform2fv _glUniform2fv =
      _glUniform2fv_ptr.asFunction<_dart_glUniform2fv>();

  void glUniform2i(
    int location,
    int v0,
    int v1,
  ) {
    return _glUniform2i(
      location,
      v0,
      v1,
    );
  }

  late final _glUniform2i_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform2i>>('glUniform2i');
  late final _dart_glUniform2i _glUniform2i =
      _glUniform2i_ptr.asFunction<_dart_glUniform2i>();

  void glUniform2iv(
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glUniform2iv(
      location,
      count,
      value,
    );
  }

  late final _glUniform2iv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform2iv>>('glUniform2iv');
  late final _dart_glUniform2iv _glUniform2iv =
      _glUniform2iv_ptr.asFunction<_dart_glUniform2iv>();

  void glUniform3f(
    int location,
    double v0,
    double v1,
    double v2,
  ) {
    return _glUniform3f(
      location,
      v0,
      v1,
      v2,
    );
  }

  late final _glUniform3f_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform3f>>('glUniform3f');
  late final _dart_glUniform3f _glUniform3f =
      _glUniform3f_ptr.asFunction<_dart_glUniform3f>();

  void glUniform3fv(
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniform3fv(
      location,
      count,
      value,
    );
  }

  late final _glUniform3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform3fv>>('glUniform3fv');
  late final _dart_glUniform3fv _glUniform3fv =
      _glUniform3fv_ptr.asFunction<_dart_glUniform3fv>();

  void glUniform3i(
    int location,
    int v0,
    int v1,
    int v2,
  ) {
    return _glUniform3i(
      location,
      v0,
      v1,
      v2,
    );
  }

  late final _glUniform3i_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform3i>>('glUniform3i');
  late final _dart_glUniform3i _glUniform3i =
      _glUniform3i_ptr.asFunction<_dart_glUniform3i>();

  void glUniform3iv(
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glUniform3iv(
      location,
      count,
      value,
    );
  }

  late final _glUniform3iv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform3iv>>('glUniform3iv');
  late final _dart_glUniform3iv _glUniform3iv =
      _glUniform3iv_ptr.asFunction<_dart_glUniform3iv>();

  void glUniform4f(
    int location,
    double v0,
    double v1,
    double v2,
    double v3,
  ) {
    return _glUniform4f(
      location,
      v0,
      v1,
      v2,
      v3,
    );
  }

  late final _glUniform4f_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform4f>>('glUniform4f');
  late final _dart_glUniform4f _glUniform4f =
      _glUniform4f_ptr.asFunction<_dart_glUniform4f>();

  void glUniform4fv(
    int location,
    int count,
    ffi.Pointer value,
  ) {
    return _glUniform4fv(
      location,
      count,
      value,
    );
  }

  late final _glUniform4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform4fv>>('glUniform4fv');
  late final _dart_glUniform4fv _glUniform4fv =
      _glUniform4fv_ptr.asFunction<_dart_glUniform4fv>();

  void glUniform4i(
    int location,
    int v0,
    int v1,
    int v2,
    int v3,
  ) {
    return _glUniform4i(
      location,
      v0,
      v1,
      v2,
      v3,
    );
  }

  late final _glUniform4i_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform4i>>('glUniform4i');
  late final _dart_glUniform4i _glUniform4i =
      _glUniform4i_ptr.asFunction<_dart_glUniform4i>();

  void glUniform4iv(
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glUniform4iv(
      location,
      count,
      value,
    );
  }

  late final _glUniform4iv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform4iv>>('glUniform4iv');
  late final _dart_glUniform4iv _glUniform4iv =
      _glUniform4iv_ptr.asFunction<_dart_glUniform4iv>();

  void glUniformMatrix2fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix2fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix2fv>>('glUniformMatrix2fv');
  late final _dart_glUniformMatrix2fv _glUniformMatrix2fv =
      _glUniformMatrix2fv_ptr.asFunction<_dart_glUniformMatrix2fv>();

  void glUniformMatrix3fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix3fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix3fv>>('glUniformMatrix3fv');
  late final _dart_glUniformMatrix3fv _glUniformMatrix3fv =
      _glUniformMatrix3fv_ptr.asFunction<_dart_glUniformMatrix3fv>();

  void glUniformMatrix4fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix4fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix4fv>>('glUniformMatrix4fv');
  late final _dart_glUniformMatrix4fv _glUniformMatrix4fv =
      _glUniformMatrix4fv_ptr.asFunction<_dart_glUniformMatrix4fv>();

  void glUseProgram(
    int program,
  ) {
    return _glUseProgram(
      program,
    );
  }

  late final _glUseProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glUseProgram>>('glUseProgram');
  late final _dart_glUseProgram _glUseProgram =
      _glUseProgram_ptr.asFunction<_dart_glUseProgram>();

  void glValidateProgram(
    int program,
  ) {
    return _glValidateProgram(
      program,
    );
  }

  late final _glValidateProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glValidateProgram>>('glValidateProgram');
  late final _dart_glValidateProgram _glValidateProgram =
      _glValidateProgram_ptr.asFunction<_dart_glValidateProgram>();

  void glVertexAttrib1f(
    int index,
    double x,
  ) {
    return _glVertexAttrib1f(
      index,
      x,
    );
  }

  late final _glVertexAttrib1f_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib1f>>('glVertexAttrib1f');
  late final _dart_glVertexAttrib1f _glVertexAttrib1f =
      _glVertexAttrib1f_ptr.asFunction<_dart_glVertexAttrib1f>();

  void glVertexAttrib1fv(
    int index,
    ffi.Pointer<ffi.Float> v,
  ) {
    return _glVertexAttrib1fv(
      index,
      v,
    );
  }

  late final _glVertexAttrib1fv_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib1fv>>('glVertexAttrib1fv');
  late final _dart_glVertexAttrib1fv _glVertexAttrib1fv =
      _glVertexAttrib1fv_ptr.asFunction<_dart_glVertexAttrib1fv>();

  void glVertexAttrib2f(
    int index,
    double x,
    double y,
  ) {
    return _glVertexAttrib2f(
      index,
      x,
      y,
    );
  }

  late final _glVertexAttrib2f_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib2f>>('glVertexAttrib2f');
  late final _dart_glVertexAttrib2f _glVertexAttrib2f =
      _glVertexAttrib2f_ptr.asFunction<_dart_glVertexAttrib2f>();

  void glVertexAttrib2fv(
    int index,
    ffi.Pointer<ffi.Float> v,
  ) {
    return _glVertexAttrib2fv(
      index,
      v,
    );
  }

  late final _glVertexAttrib2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib2fv>>('glVertexAttrib2fv');
  late final _dart_glVertexAttrib2fv _glVertexAttrib2fv =
      _glVertexAttrib2fv_ptr.asFunction<_dart_glVertexAttrib2fv>();

  void glVertexAttrib3f(
    int index,
    double x,
    double y,
    double z,
  ) {
    return _glVertexAttrib3f(
      index,
      x,
      y,
      z,
    );
  }

  late final _glVertexAttrib3f_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib3f>>('glVertexAttrib3f');
  late final _dart_glVertexAttrib3f _glVertexAttrib3f =
      _glVertexAttrib3f_ptr.asFunction<_dart_glVertexAttrib3f>();

  void glVertexAttrib3fv(
    int index,
    ffi.Pointer<ffi.Float> v,
  ) {
    return _glVertexAttrib3fv(
      index,
      v,
    );
  }

  late final _glVertexAttrib3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib3fv>>('glVertexAttrib3fv');
  late final _dart_glVertexAttrib3fv _glVertexAttrib3fv =
      _glVertexAttrib3fv_ptr.asFunction<_dart_glVertexAttrib3fv>();

  void glVertexAttrib4f(
    int index,
    double x,
    double y,
    double z,
    double w,
  ) {
    return _glVertexAttrib4f(
      index,
      x,
      y,
      z,
      w,
    );
  }

  late final _glVertexAttrib4f_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib4f>>('glVertexAttrib4f');
  late final _dart_glVertexAttrib4f _glVertexAttrib4f =
      _glVertexAttrib4f_ptr.asFunction<_dart_glVertexAttrib4f>();

  void glVertexAttrib4fv(
    int index,
    ffi.Pointer<ffi.Float> v,
  ) {
    return _glVertexAttrib4fv(
      index,
      v,
    );
  }

  late final _glVertexAttrib4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttrib4fv>>('glVertexAttrib4fv');
  late final _dart_glVertexAttrib4fv _glVertexAttrib4fv =
      _glVertexAttrib4fv_ptr.asFunction<_dart_glVertexAttrib4fv>();

  void glVertexAttribPointer(
    int index,
    int size,
    int type,
    int normalized,
    int stride,
    ffi.Pointer<ffi.Void> pointer,
  ) {
    return _glVertexAttribPointer(
      index,
      size,
      type,
      normalized,
      stride,
      pointer,
    );
  }

  late final _glVertexAttribPointer_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribPointer>>(
          'glVertexAttribPointer');
  late final _dart_glVertexAttribPointer _glVertexAttribPointer =
      _glVertexAttribPointer_ptr.asFunction<_dart_glVertexAttribPointer>();

  void glViewport(
    int x,
    int y,
    int width,
    int height,
  ) {
    return _glViewport(
      x,
      y,
      width,
      height,
    );
  }

  late final _glViewport_ptr =
      _lookup<ffi.NativeFunction<_c_glViewport>>('glViewport');
  late final _dart_glViewport _glViewport =
      _glViewport_ptr.asFunction<_dart_glViewport>();

  void glReadBuffer(
    int src,
  ) {
    return _glReadBuffer(
      src,
    );
  }

  late final _glReadBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glReadBuffer>>('glReadBuffer');
  late final _dart_glReadBuffer _glReadBuffer =
      _glReadBuffer_ptr.asFunction<_dart_glReadBuffer>();

  void glDrawRangeElements(
    int mode,
    int start,
    int end,
    int count,
    int type,
    ffi.Pointer<ffi.Void> indices,
  ) {
    return _glDrawRangeElements(
      mode,
      start,
      end,
      count,
      type,
      indices,
    );
  }

  late final _glDrawRangeElements_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawRangeElements>>(
          'glDrawRangeElements');
  late final _dart_glDrawRangeElements _glDrawRangeElements =
      _glDrawRangeElements_ptr.asFunction<_dart_glDrawRangeElements>();

  void glTexImage3D(
    int target,
    int level,
    int internalformat,
    int width,
    int height,
    int depth,
    int border,
    int format,
    int type,
    ffi.Pointer<ffi.Void> pixels,
  ) {
    return _glTexImage3D(
      target,
      level,
      internalformat,
      width,
      height,
      depth,
      border,
      format,
      type,
      pixels,
    );
  }

  late final _glTexImage3D_ptr =
      _lookup<ffi.NativeFunction<_c_glTexImage3D>>('glTexImage3D');
  late final _dart_glTexImage3D _glTexImage3D =
      _glTexImage3D_ptr.asFunction<_dart_glTexImage3D>();

  void glTexSubImage3D(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int format,
    int type,
    ffi.Pointer<ffi.Void> pixels,
  ) {
    return _glTexSubImage3D(
      target,
      level,
      xoffset,
      yoffset,
      zoffset,
      width,
      height,
      depth,
      format,
      type,
      pixels,
    );
  }

  late final _glTexSubImage3D_ptr =
      _lookup<ffi.NativeFunction<_c_glTexSubImage3D>>('glTexSubImage3D');
  late final _dart_glTexSubImage3D _glTexSubImage3D =
      _glTexSubImage3D_ptr.asFunction<_dart_glTexSubImage3D>();

  void glCopyTexSubImage3D(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int x,
    int y,
    int width,
    int height,
  ) {
    return _glCopyTexSubImage3D(
      target,
      level,
      xoffset,
      yoffset,
      zoffset,
      x,
      y,
      width,
      height,
    );
  }

  late final _glCopyTexSubImage3D_ptr =
      _lookup<ffi.NativeFunction<_c_glCopyTexSubImage3D>>(
          'glCopyTexSubImage3D');
  late final _dart_glCopyTexSubImage3D _glCopyTexSubImage3D =
      _glCopyTexSubImage3D_ptr.asFunction<_dart_glCopyTexSubImage3D>();

  void glCompressedTexImage3D(
    int target,
    int level,
    int internalformat,
    int width,
    int height,
    int depth,
    int border,
    int imageSize,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _glCompressedTexImage3D(
      target,
      level,
      internalformat,
      width,
      height,
      depth,
      border,
      imageSize,
      data,
    );
  }

  late final _glCompressedTexImage3D_ptr =
      _lookup<ffi.NativeFunction<_c_glCompressedTexImage3D>>(
          'glCompressedTexImage3D');
  late final _dart_glCompressedTexImage3D _glCompressedTexImage3D =
      _glCompressedTexImage3D_ptr.asFunction<_dart_glCompressedTexImage3D>();

  void glCompressedTexSubImage3D(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int format,
    int imageSize,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _glCompressedTexSubImage3D(
      target,
      level,
      xoffset,
      yoffset,
      zoffset,
      width,
      height,
      depth,
      format,
      imageSize,
      data,
    );
  }

  late final _glCompressedTexSubImage3D_ptr =
      _lookup<ffi.NativeFunction<_c_glCompressedTexSubImage3D>>(
          'glCompressedTexSubImage3D');
  late final _dart_glCompressedTexSubImage3D _glCompressedTexSubImage3D =
      _glCompressedTexSubImage3D_ptr
          .asFunction<_dart_glCompressedTexSubImage3D>();

  void glGenQueries(
    int n,
    ffi.Pointer<ffi.Uint32> ids,
  ) {
    return _glGenQueries(
      n,
      ids,
    );
  }

  late final _glGenQueries_ptr =
      _lookup<ffi.NativeFunction<_c_glGenQueries>>('glGenQueries');
  late final _dart_glGenQueries _glGenQueries =
      _glGenQueries_ptr.asFunction<_dart_glGenQueries>();

  void glDeleteQueries(
    int n,
    ffi.Pointer<ffi.Uint32> ids,
  ) {
    return _glDeleteQueries(
      n,
      ids,
    );
  }

  late final _glDeleteQueries_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteQueries>>('glDeleteQueries');
  late final _dart_glDeleteQueries _glDeleteQueries =
      _glDeleteQueries_ptr.asFunction<_dart_glDeleteQueries>();

  int glIsQuery(
    int id,
  ) {
    return _glIsQuery(
      id,
    );
  }

  late final _glIsQuery_ptr =
      _lookup<ffi.NativeFunction<_c_glIsQuery>>('glIsQuery');
  late final _dart_glIsQuery _glIsQuery =
      _glIsQuery_ptr.asFunction<_dart_glIsQuery>();

  void glBeginQuery(
    int target,
    int id,
  ) {
    return _glBeginQuery(
      target,
      id,
    );
  }

  late final _glBeginQuery_ptr =
      _lookup<ffi.NativeFunction<_c_glBeginQuery>>('glBeginQuery');
  late final _dart_glBeginQuery _glBeginQuery =
      _glBeginQuery_ptr.asFunction<_dart_glBeginQuery>();

  void glEndQuery(
    int target,
  ) {
    return _glEndQuery(
      target,
    );
  }

  late final _glEndQuery_ptr =
      _lookup<ffi.NativeFunction<_c_glEndQuery>>('glEndQuery');
  late final _dart_glEndQuery _glEndQuery =
      _glEndQuery_ptr.asFunction<_dart_glEndQuery>();

  void glGetQueryiv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetQueryiv(
      target,
      pname,
      params,
    );
  }

  late final _glGetQueryiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetQueryiv>>('glGetQueryiv');
  late final _dart_glGetQueryiv _glGetQueryiv =
      _glGetQueryiv_ptr.asFunction<_dart_glGetQueryiv>();

  void glGetQueryObjectuiv(
    int id,
    int pname,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glGetQueryObjectuiv(
      id,
      pname,
      params,
    );
  }

  late final _glGetQueryObjectuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetQueryObjectuiv>>(
          'glGetQueryObjectuiv');
  late final _dart_glGetQueryObjectuiv _glGetQueryObjectuiv =
      _glGetQueryObjectuiv_ptr.asFunction<_dart_glGetQueryObjectuiv>();

  int glUnmapBuffer(
    int target,
  ) {
    return _glUnmapBuffer(
      target,
    );
  }

  late final _glUnmapBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glUnmapBuffer>>('glUnmapBuffer');
  late final _dart_glUnmapBuffer _glUnmapBuffer =
      _glUnmapBuffer_ptr.asFunction<_dart_glUnmapBuffer>();

  void glGetBufferPointerv(
    int target,
    int pname,
    ffi.Pointer<ffi.Pointer<ffi.Void>> params,
  ) {
    return _glGetBufferPointerv(
      target,
      pname,
      params,
    );
  }

  late final _glGetBufferPointerv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetBufferPointerv>>(
          'glGetBufferPointerv');
  late final _dart_glGetBufferPointerv _glGetBufferPointerv =
      _glGetBufferPointerv_ptr.asFunction<_dart_glGetBufferPointerv>();

  void glDrawBuffers(
    int n,
    ffi.Pointer<ffi.Uint32> bufs,
  ) {
    return _glDrawBuffers(
      n,
      bufs,
    );
  }

  late final _glDrawBuffers_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawBuffers>>('glDrawBuffers');
  late final _dart_glDrawBuffers _glDrawBuffers =
      _glDrawBuffers_ptr.asFunction<_dart_glDrawBuffers>();

  void glUniformMatrix2x3fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix2x3fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix2x3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix2x3fv>>(
          'glUniformMatrix2x3fv');
  late final _dart_glUniformMatrix2x3fv _glUniformMatrix2x3fv =
      _glUniformMatrix2x3fv_ptr.asFunction<_dart_glUniformMatrix2x3fv>();

  void glUniformMatrix3x2fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix3x2fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix3x2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix3x2fv>>(
          'glUniformMatrix3x2fv');
  late final _dart_glUniformMatrix3x2fv _glUniformMatrix3x2fv =
      _glUniformMatrix3x2fv_ptr.asFunction<_dart_glUniformMatrix3x2fv>();

  void glUniformMatrix2x4fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix2x4fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix2x4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix2x4fv>>(
          'glUniformMatrix2x4fv');
  late final _dart_glUniformMatrix2x4fv _glUniformMatrix2x4fv =
      _glUniformMatrix2x4fv_ptr.asFunction<_dart_glUniformMatrix2x4fv>();

  void glUniformMatrix4x2fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix4x2fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix4x2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix4x2fv>>(
          'glUniformMatrix4x2fv');
  late final _dart_glUniformMatrix4x2fv _glUniformMatrix4x2fv =
      _glUniformMatrix4x2fv_ptr.asFunction<_dart_glUniformMatrix4x2fv>();

  void glUniformMatrix3x4fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix3x4fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix3x4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix3x4fv>>(
          'glUniformMatrix3x4fv');
  late final _dart_glUniformMatrix3x4fv _glUniformMatrix3x4fv =
      _glUniformMatrix3x4fv_ptr.asFunction<_dart_glUniformMatrix3x4fv>();

  void glUniformMatrix4x3fv(
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glUniformMatrix4x3fv(
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glUniformMatrix4x3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformMatrix4x3fv>>(
          'glUniformMatrix4x3fv');
  late final _dart_glUniformMatrix4x3fv _glUniformMatrix4x3fv =
      _glUniformMatrix4x3fv_ptr.asFunction<_dart_glUniformMatrix4x3fv>();

  void glBlitFramebuffer(
    int srcX0,
    int srcY0,
    int srcX1,
    int srcY1,
    int dstX0,
    int dstY0,
    int dstX1,
    int dstY1,
    int mask,
    int filter,
  ) {
    return _glBlitFramebuffer(
      srcX0,
      srcY0,
      srcX1,
      srcY1,
      dstX0,
      dstY0,
      dstX1,
      dstY1,
      mask,
      filter,
    );
  }

  late final _glBlitFramebuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glBlitFramebuffer>>('glBlitFramebuffer');
  late final _dart_glBlitFramebuffer _glBlitFramebuffer =
      _glBlitFramebuffer_ptr.asFunction<_dart_glBlitFramebuffer>();

  void glRenderbufferStorageMultisample(
    int target,
    int samples,
    int internalformat,
    int width,
    int height,
  ) {
    return _glRenderbufferStorageMultisample(
      target,
      samples,
      internalformat,
      width,
      height,
    );
  }

  late final _glRenderbufferStorageMultisample_ptr =
      _lookup<ffi.NativeFunction<_c_glRenderbufferStorageMultisample>>(
          'glRenderbufferStorageMultisample');
  late final _dart_glRenderbufferStorageMultisample
      _glRenderbufferStorageMultisample = _glRenderbufferStorageMultisample_ptr
          .asFunction<_dart_glRenderbufferStorageMultisample>();

  void glFramebufferTextureLayer(
    int target,
    int attachment,
    int texture,
    int level,
    int layer,
  ) {
    return _glFramebufferTextureLayer(
      target,
      attachment,
      texture,
      level,
      layer,
    );
  }

  late final _glFramebufferTextureLayer_ptr =
      _lookup<ffi.NativeFunction<_c_glFramebufferTextureLayer>>(
          'glFramebufferTextureLayer');
  late final _dart_glFramebufferTextureLayer _glFramebufferTextureLayer =
      _glFramebufferTextureLayer_ptr
          .asFunction<_dart_glFramebufferTextureLayer>();

  ffi.Pointer<ffi.Void> glMapBufferRange(
    int target,
    int offset,
    int length,
    int access,
  ) {
    return _glMapBufferRange(
      target,
      offset,
      length,
      access,
    );
  }

  late final _glMapBufferRange_ptr =
      _lookup<ffi.NativeFunction<_c_glMapBufferRange>>('glMapBufferRange');
  late final _dart_glMapBufferRange _glMapBufferRange =
      _glMapBufferRange_ptr.asFunction<_dart_glMapBufferRange>();

  void glFlushMappedBufferRange(
    int target,
    int offset,
    int length,
  ) {
    return _glFlushMappedBufferRange(
      target,
      offset,
      length,
    );
  }

  late final _glFlushMappedBufferRange_ptr =
      _lookup<ffi.NativeFunction<_c_glFlushMappedBufferRange>>(
          'glFlushMappedBufferRange');
  late final _dart_glFlushMappedBufferRange _glFlushMappedBufferRange =
      _glFlushMappedBufferRange_ptr
          .asFunction<_dart_glFlushMappedBufferRange>();

  void glBindVertexArray(
    int array,
  ) {
    return _glBindVertexArray(
      array,
    );
  }

  late final _glBindVertexArray_ptr =
      _lookup<ffi.NativeFunction<_c_glBindVertexArray>>('glBindVertexArray');
  late final _dart_glBindVertexArray _glBindVertexArray =
      _glBindVertexArray_ptr.asFunction<_dart_glBindVertexArray>();

  void glDeleteVertexArrays(
    int n,
    ffi.Pointer<ffi.Uint32> arrays,
  ) {
    return _glDeleteVertexArrays(
      n,
      arrays,
    );
  }

  late final _glDeleteVertexArrays_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteVertexArrays>>(
          'glDeleteVertexArrays');
  late final _dart_glDeleteVertexArrays _glDeleteVertexArrays =
      _glDeleteVertexArrays_ptr.asFunction<_dart_glDeleteVertexArrays>();

  void glGenVertexArrays(
    int n,
    ffi.Pointer<ffi.Uint32> arrays,
  ) {
    return _glGenVertexArrays(
      n,
      arrays,
    );
  }

  late final _glGenVertexArrays_ptr =
      _lookup<ffi.NativeFunction<_c_glGenVertexArrays>>('glGenVertexArrays');
  late final _dart_glGenVertexArrays _glGenVertexArrays =
      _glGenVertexArrays_ptr.asFunction<_dart_glGenVertexArrays>();

  int glIsVertexArray(
    int array,
  ) {
    return _glIsVertexArray(
      array,
    );
  }

  late final _glIsVertexArray_ptr =
      _lookup<ffi.NativeFunction<_c_glIsVertexArray>>('glIsVertexArray');
  late final _dart_glIsVertexArray _glIsVertexArray =
      _glIsVertexArray_ptr.asFunction<_dart_glIsVertexArray>();

  void glGetIntegeri_v(
    int target,
    int index,
    ffi.Pointer<ffi.Int32> data,
  ) {
    return _glGetIntegeri_v(
      target,
      index,
      data,
    );
  }

  late final _glGetIntegeri_v_ptr =
      _lookup<ffi.NativeFunction<_c_glGetIntegeri_v>>('glGetIntegeri_v');
  late final _dart_glGetIntegeri_v _glGetIntegeri_v =
      _glGetIntegeri_v_ptr.asFunction<_dart_glGetIntegeri_v>();

  void glBeginTransformFeedback(
    int primitiveMode,
  ) {
    return _glBeginTransformFeedback(
      primitiveMode,
    );
  }

  late final _glBeginTransformFeedback_ptr =
      _lookup<ffi.NativeFunction<_c_glBeginTransformFeedback>>(
          'glBeginTransformFeedback');
  late final _dart_glBeginTransformFeedback _glBeginTransformFeedback =
      _glBeginTransformFeedback_ptr
          .asFunction<_dart_glBeginTransformFeedback>();

  void glEndTransformFeedback() {
    return _glEndTransformFeedback();
  }

  late final _glEndTransformFeedback_ptr =
      _lookup<ffi.NativeFunction<_c_glEndTransformFeedback>>(
          'glEndTransformFeedback');
  late final _dart_glEndTransformFeedback _glEndTransformFeedback =
      _glEndTransformFeedback_ptr.asFunction<_dart_glEndTransformFeedback>();

  void glBindBufferRange(
    int target,
    int index,
    int buffer,
    int offset,
    int size,
  ) {
    return _glBindBufferRange(
      target,
      index,
      buffer,
      offset,
      size,
    );
  }

  late final _glBindBufferRange_ptr =
      _lookup<ffi.NativeFunction<_c_glBindBufferRange>>('glBindBufferRange');
  late final _dart_glBindBufferRange _glBindBufferRange =
      _glBindBufferRange_ptr.asFunction<_dart_glBindBufferRange>();

  void glBindBufferBase(
    int target,
    int index,
    int buffer,
  ) {
    return _glBindBufferBase(
      target,
      index,
      buffer,
    );
  }

  late final _glBindBufferBase_ptr =
      _lookup<ffi.NativeFunction<_c_glBindBufferBase>>('glBindBufferBase');
  late final _dart_glBindBufferBase _glBindBufferBase =
      _glBindBufferBase_ptr.asFunction<_dart_glBindBufferBase>();

  void glTransformFeedbackVaryings(
    int program,
    int count,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> varyings,
    int bufferMode,
  ) {
    return _glTransformFeedbackVaryings(
      program,
      count,
      varyings,
      bufferMode,
    );
  }

  late final _glTransformFeedbackVaryings_ptr =
      _lookup<ffi.NativeFunction<_c_glTransformFeedbackVaryings>>(
          'glTransformFeedbackVaryings');
  late final _dart_glTransformFeedbackVaryings _glTransformFeedbackVaryings =
      _glTransformFeedbackVaryings_ptr
          .asFunction<_dart_glTransformFeedbackVaryings>();

  void glGetTransformFeedbackVarying(
    int program,
    int index,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int32> size,
    ffi.Pointer<ffi.Uint32> type,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetTransformFeedbackVarying(
      program,
      index,
      bufSize,
      length,
      size,
      type,
      name,
    );
  }

  late final _glGetTransformFeedbackVarying_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTransformFeedbackVarying>>(
          'glGetTransformFeedbackVarying');
  late final _dart_glGetTransformFeedbackVarying
      _glGetTransformFeedbackVarying = _glGetTransformFeedbackVarying_ptr
          .asFunction<_dart_glGetTransformFeedbackVarying>();

  void glVertexAttribIPointer(
    int index,
    int size,
    int type,
    int stride,
    ffi.Pointer<ffi.Void> pointer,
  ) {
    return _glVertexAttribIPointer(
      index,
      size,
      type,
      stride,
      pointer,
    );
  }

  late final _glVertexAttribIPointer_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribIPointer>>(
          'glVertexAttribIPointer');
  late final _dart_glVertexAttribIPointer _glVertexAttribIPointer =
      _glVertexAttribIPointer_ptr.asFunction<_dart_glVertexAttribIPointer>();

  void glGetVertexAttribIiv(
    int index,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetVertexAttribIiv(
      index,
      pname,
      params,
    );
  }

  late final _glGetVertexAttribIiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetVertexAttribIiv>>(
          'glGetVertexAttribIiv');
  late final _dart_glGetVertexAttribIiv _glGetVertexAttribIiv =
      _glGetVertexAttribIiv_ptr.asFunction<_dart_glGetVertexAttribIiv>();

  void glGetVertexAttribIuiv(
    int index,
    int pname,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glGetVertexAttribIuiv(
      index,
      pname,
      params,
    );
  }

  late final _glGetVertexAttribIuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetVertexAttribIuiv>>(
          'glGetVertexAttribIuiv');
  late final _dart_glGetVertexAttribIuiv _glGetVertexAttribIuiv =
      _glGetVertexAttribIuiv_ptr.asFunction<_dart_glGetVertexAttribIuiv>();

  void glVertexAttribI4i(
    int index,
    int x,
    int y,
    int z,
    int w,
  ) {
    return _glVertexAttribI4i(
      index,
      x,
      y,
      z,
      w,
    );
  }

  late final _glVertexAttribI4i_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribI4i>>('glVertexAttribI4i');
  late final _dart_glVertexAttribI4i _glVertexAttribI4i =
      _glVertexAttribI4i_ptr.asFunction<_dart_glVertexAttribI4i>();

  void glVertexAttribI4ui(
    int index,
    int x,
    int y,
    int z,
    int w,
  ) {
    return _glVertexAttribI4ui(
      index,
      x,
      y,
      z,
      w,
    );
  }

  late final _glVertexAttribI4ui_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribI4ui>>('glVertexAttribI4ui');
  late final _dart_glVertexAttribI4ui _glVertexAttribI4ui =
      _glVertexAttribI4ui_ptr.asFunction<_dart_glVertexAttribI4ui>();

  void glVertexAttribI4iv(
    int index,
    ffi.Pointer<ffi.Int32> v,
  ) {
    return _glVertexAttribI4iv(
      index,
      v,
    );
  }

  late final _glVertexAttribI4iv_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribI4iv>>('glVertexAttribI4iv');
  late final _dart_glVertexAttribI4iv _glVertexAttribI4iv =
      _glVertexAttribI4iv_ptr.asFunction<_dart_glVertexAttribI4iv>();

  void glVertexAttribI4uiv(
    int index,
    ffi.Pointer<ffi.Uint32> v,
  ) {
    return _glVertexAttribI4uiv(
      index,
      v,
    );
  }

  late final _glVertexAttribI4uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribI4uiv>>(
          'glVertexAttribI4uiv');
  late final _dart_glVertexAttribI4uiv _glVertexAttribI4uiv =
      _glVertexAttribI4uiv_ptr.asFunction<_dart_glVertexAttribI4uiv>();

  void glGetUniformuiv(
    int program,
    int location,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glGetUniformuiv(
      program,
      location,
      params,
    );
  }

  late final _glGetUniformuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetUniformuiv>>('glGetUniformuiv');
  late final _dart_glGetUniformuiv _glGetUniformuiv =
      _glGetUniformuiv_ptr.asFunction<_dart_glGetUniformuiv>();

  int glGetFragDataLocation(
    int program,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetFragDataLocation(
      program,
      name,
    );
  }

  late final _glGetFragDataLocation_ptr =
      _lookup<ffi.NativeFunction<_c_glGetFragDataLocation>>(
          'glGetFragDataLocation');
  late final _dart_glGetFragDataLocation _glGetFragDataLocation =
      _glGetFragDataLocation_ptr.asFunction<_dart_glGetFragDataLocation>();

  void glUniform1ui(
    int location,
    int v0,
  ) {
    return _glUniform1ui(
      location,
      v0,
    );
  }

  late final _glUniform1ui_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform1ui>>('glUniform1ui');
  late final _dart_glUniform1ui _glUniform1ui =
      _glUniform1ui_ptr.asFunction<_dart_glUniform1ui>();

  void glUniform2ui(
    int location,
    int v0,
    int v1,
  ) {
    return _glUniform2ui(
      location,
      v0,
      v1,
    );
  }

  late final _glUniform2ui_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform2ui>>('glUniform2ui');
  late final _dart_glUniform2ui _glUniform2ui =
      _glUniform2ui_ptr.asFunction<_dart_glUniform2ui>();

  void glUniform3ui(
    int location,
    int v0,
    int v1,
    int v2,
  ) {
    return _glUniform3ui(
      location,
      v0,
      v1,
      v2,
    );
  }

  late final _glUniform3ui_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform3ui>>('glUniform3ui');
  late final _dart_glUniform3ui _glUniform3ui =
      _glUniform3ui_ptr.asFunction<_dart_glUniform3ui>();

  void glUniform4ui(
    int location,
    int v0,
    int v1,
    int v2,
    int v3,
  ) {
    return _glUniform4ui(
      location,
      v0,
      v1,
      v2,
      v3,
    );
  }

  late final _glUniform4ui_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform4ui>>('glUniform4ui');
  late final _dart_glUniform4ui _glUniform4ui =
      _glUniform4ui_ptr.asFunction<_dart_glUniform4ui>();

  void glUniform1uiv(
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glUniform1uiv(
      location,
      count,
      value,
    );
  }

  late final _glUniform1uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform1uiv>>('glUniform1uiv');
  late final _dart_glUniform1uiv _glUniform1uiv =
      _glUniform1uiv_ptr.asFunction<_dart_glUniform1uiv>();

  void glUniform2uiv(
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glUniform2uiv(
      location,
      count,
      value,
    );
  }

  late final _glUniform2uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform2uiv>>('glUniform2uiv');
  late final _dart_glUniform2uiv _glUniform2uiv =
      _glUniform2uiv_ptr.asFunction<_dart_glUniform2uiv>();

  void glUniform3uiv(
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glUniform3uiv(
      location,
      count,
      value,
    );
  }

  late final _glUniform3uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform3uiv>>('glUniform3uiv');
  late final _dart_glUniform3uiv _glUniform3uiv =
      _glUniform3uiv_ptr.asFunction<_dart_glUniform3uiv>();

  void glUniform4uiv(
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glUniform4uiv(
      location,
      count,
      value,
    );
  }

  late final _glUniform4uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glUniform4uiv>>('glUniform4uiv');
  late final _dart_glUniform4uiv _glUniform4uiv =
      _glUniform4uiv_ptr.asFunction<_dart_glUniform4uiv>();

  void glClearBufferiv(
    int buffer,
    int drawbuffer,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glClearBufferiv(
      buffer,
      drawbuffer,
      value,
    );
  }

  late final _glClearBufferiv_ptr =
      _lookup<ffi.NativeFunction<_c_glClearBufferiv>>('glClearBufferiv');
  late final _dart_glClearBufferiv _glClearBufferiv =
      _glClearBufferiv_ptr.asFunction<_dart_glClearBufferiv>();

  void glClearBufferuiv(
    int buffer,
    int drawbuffer,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glClearBufferuiv(
      buffer,
      drawbuffer,
      value,
    );
  }

  late final _glClearBufferuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glClearBufferuiv>>('glClearBufferuiv');
  late final _dart_glClearBufferuiv _glClearBufferuiv =
      _glClearBufferuiv_ptr.asFunction<_dart_glClearBufferuiv>();

  void glClearBufferfv(
    int buffer,
    int drawbuffer,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glClearBufferfv(
      buffer,
      drawbuffer,
      value,
    );
  }

  late final _glClearBufferfv_ptr =
      _lookup<ffi.NativeFunction<_c_glClearBufferfv>>('glClearBufferfv');
  late final _dart_glClearBufferfv _glClearBufferfv =
      _glClearBufferfv_ptr.asFunction<_dart_glClearBufferfv>();

  void glClearBufferfi(
    int buffer,
    int drawbuffer,
    double depth,
    int stencil,
  ) {
    return _glClearBufferfi(
      buffer,
      drawbuffer,
      depth,
      stencil,
    );
  }

  late final _glClearBufferfi_ptr =
      _lookup<ffi.NativeFunction<_c_glClearBufferfi>>('glClearBufferfi');
  late final _dart_glClearBufferfi _glClearBufferfi =
      _glClearBufferfi_ptr.asFunction<_dart_glClearBufferfi>();

  ffi.Pointer glGetStringi(
    int name,
    int index,
  ) {
    return _glGetStringi(
      name,
      index,
    );
  }

  late final _glGetStringi_ptr =
      _lookup<ffi.NativeFunction<_c_glGetStringi>>('glGetStringi');
  late final _dart_glGetStringi _glGetStringi =
      _glGetStringi_ptr.asFunction<_dart_glGetStringi>();

  void glCopyBufferSubData(
    int readTarget,
    int writeTarget,
    int readOffset,
    int writeOffset,
    int size,
  ) {
    return _glCopyBufferSubData(
      readTarget,
      writeTarget,
      readOffset,
      writeOffset,
      size,
    );
  }

  late final _glCopyBufferSubData_ptr =
      _lookup<ffi.NativeFunction<_c_glCopyBufferSubData>>(
          'glCopyBufferSubData');
  late final _dart_glCopyBufferSubData _glCopyBufferSubData =
      _glCopyBufferSubData_ptr.asFunction<_dart_glCopyBufferSubData>();

  void glGetUniformIndices(
    int program,
    int uniformCount,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> uniformNames,
    ffi.Pointer<ffi.Uint32> uniformIndices,
  ) {
    return _glGetUniformIndices(
      program,
      uniformCount,
      uniformNames,
      uniformIndices,
    );
  }

  late final _glGetUniformIndices_ptr =
      _lookup<ffi.NativeFunction<_c_glGetUniformIndices>>(
          'glGetUniformIndices');
  late final _dart_glGetUniformIndices _glGetUniformIndices =
      _glGetUniformIndices_ptr.asFunction<_dart_glGetUniformIndices>();

  void glGetActiveUniformsiv(
    int program,
    int uniformCount,
    ffi.Pointer<ffi.Uint32> uniformIndices,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetActiveUniformsiv(
      program,
      uniformCount,
      uniformIndices,
      pname,
      params,
    );
  }

  late final _glGetActiveUniformsiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetActiveUniformsiv>>(
          'glGetActiveUniformsiv');
  late final _dart_glGetActiveUniformsiv _glGetActiveUniformsiv =
      _glGetActiveUniformsiv_ptr.asFunction<_dart_glGetActiveUniformsiv>();

  int glGetUniformBlockIndex(
    int program,
    ffi.Pointer<ffi.Int8> uniformBlockName,
  ) {
    return _glGetUniformBlockIndex(
      program,
      uniformBlockName,
    );
  }

  late final _glGetUniformBlockIndex_ptr =
      _lookup<ffi.NativeFunction<_c_glGetUniformBlockIndex>>(
          'glGetUniformBlockIndex');
  late final _dart_glGetUniformBlockIndex _glGetUniformBlockIndex =
      _glGetUniformBlockIndex_ptr.asFunction<_dart_glGetUniformBlockIndex>();

  void glGetActiveUniformBlockiv(
    int program,
    int uniformBlockIndex,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetActiveUniformBlockiv(
      program,
      uniformBlockIndex,
      pname,
      params,
    );
  }

  late final _glGetActiveUniformBlockiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetActiveUniformBlockiv>>(
          'glGetActiveUniformBlockiv');
  late final _dart_glGetActiveUniformBlockiv _glGetActiveUniformBlockiv =
      _glGetActiveUniformBlockiv_ptr
          .asFunction<_dart_glGetActiveUniformBlockiv>();

  void glGetActiveUniformBlockName(
    int program,
    int uniformBlockIndex,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> uniformBlockName,
  ) {
    return _glGetActiveUniformBlockName(
      program,
      uniformBlockIndex,
      bufSize,
      length,
      uniformBlockName,
    );
  }

  late final _glGetActiveUniformBlockName_ptr =
      _lookup<ffi.NativeFunction<_c_glGetActiveUniformBlockName>>(
          'glGetActiveUniformBlockName');
  late final _dart_glGetActiveUniformBlockName _glGetActiveUniformBlockName =
      _glGetActiveUniformBlockName_ptr
          .asFunction<_dart_glGetActiveUniformBlockName>();

  void glUniformBlockBinding(
    int program,
    int uniformBlockIndex,
    int uniformBlockBinding,
  ) {
    return _glUniformBlockBinding(
      program,
      uniformBlockIndex,
      uniformBlockBinding,
    );
  }

  late final _glUniformBlockBinding_ptr =
      _lookup<ffi.NativeFunction<_c_glUniformBlockBinding>>(
          'glUniformBlockBinding');
  late final _dart_glUniformBlockBinding _glUniformBlockBinding =
      _glUniformBlockBinding_ptr.asFunction<_dart_glUniformBlockBinding>();

  void glDrawArraysInstanced(
    int mode,
    int first,
    int count,
    int instancecount,
  ) {
    return _glDrawArraysInstanced(
      mode,
      first,
      count,
      instancecount,
    );
  }

  late final _glDrawArraysInstanced_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawArraysInstanced>>(
          'glDrawArraysInstanced');
  late final _dart_glDrawArraysInstanced _glDrawArraysInstanced =
      _glDrawArraysInstanced_ptr.asFunction<_dart_glDrawArraysInstanced>();

  void glDrawElementsInstanced(
    int mode,
    int count,
    int type,
    ffi.Pointer<ffi.Void> indices,
    int instancecount,
  ) {
    return _glDrawElementsInstanced(
      mode,
      count,
      type,
      indices,
      instancecount,
    );
  }

  late final _glDrawElementsInstanced_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawElementsInstanced>>(
          'glDrawElementsInstanced');
  late final _dart_glDrawElementsInstanced _glDrawElementsInstanced =
      _glDrawElementsInstanced_ptr.asFunction<_dart_glDrawElementsInstanced>();

  ffi.Pointer<__GLsync> glFenceSync(
    int condition,
    int flags,
  ) {
    return _glFenceSync(
      condition,
      flags,
    );
  }

  late final _glFenceSync_ptr =
      _lookup<ffi.NativeFunction<_c_glFenceSync>>('glFenceSync');
  late final _dart_glFenceSync _glFenceSync =
      _glFenceSync_ptr.asFunction<_dart_glFenceSync>();

  int glIsSync(
    ffi.Pointer<__GLsync> sync_1,
  ) {
    return _glIsSync(
      sync_1,
    );
  }

  late final _glIsSync_ptr =
      _lookup<ffi.NativeFunction<_c_glIsSync>>('glIsSync');
  late final _dart_glIsSync _glIsSync =
      _glIsSync_ptr.asFunction<_dart_glIsSync>();

  void glDeleteSync(
    ffi.Pointer<__GLsync> sync_1,
  ) {
    return _glDeleteSync(
      sync_1,
    );
  }

  late final _glDeleteSync_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteSync>>('glDeleteSync');
  late final _dart_glDeleteSync _glDeleteSync =
      _glDeleteSync_ptr.asFunction<_dart_glDeleteSync>();

  int glClientWaitSync(
    ffi.Pointer<__GLsync> sync_1,
    int flags,
    int timeout,
  ) {
    return _glClientWaitSync(
      sync_1,
      flags,
      timeout,
    );
  }

  late final _glClientWaitSync_ptr =
      _lookup<ffi.NativeFunction<_c_glClientWaitSync>>('glClientWaitSync');
  late final _dart_glClientWaitSync _glClientWaitSync =
      _glClientWaitSync_ptr.asFunction<_dart_glClientWaitSync>();

  void glWaitSync(
    ffi.Pointer<__GLsync> sync_1,
    int flags,
    int timeout,
  ) {
    return _glWaitSync(
      sync_1,
      flags,
      timeout,
    );
  }

  late final _glWaitSync_ptr =
      _lookup<ffi.NativeFunction<_c_glWaitSync>>('glWaitSync');
  late final _dart_glWaitSync _glWaitSync =
      _glWaitSync_ptr.asFunction<_dart_glWaitSync>();

  void glGetInteger64v(
    int pname,
    ffi.Pointer<ffi.Int64> data,
  ) {
    return _glGetInteger64v(
      pname,
      data,
    );
  }

  late final _glGetInteger64v_ptr =
      _lookup<ffi.NativeFunction<_c_glGetInteger64v>>('glGetInteger64v');
  late final _dart_glGetInteger64v _glGetInteger64v =
      _glGetInteger64v_ptr.asFunction<_dart_glGetInteger64v>();

  void glGetSynciv(
    ffi.Pointer<__GLsync> sync_1,
    int pname,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int32> values,
  ) {
    return _glGetSynciv(
      sync_1,
      pname,
      bufSize,
      length,
      values,
    );
  }

  late final _glGetSynciv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetSynciv>>('glGetSynciv');
  late final _dart_glGetSynciv _glGetSynciv =
      _glGetSynciv_ptr.asFunction<_dart_glGetSynciv>();

  void glGetInteger64i_v(
    int target,
    int index,
    ffi.Pointer<ffi.Int64> data,
  ) {
    return _glGetInteger64i_v(
      target,
      index,
      data,
    );
  }

  late final _glGetInteger64i_v_ptr =
      _lookup<ffi.NativeFunction<_c_glGetInteger64i_v>>('glGetInteger64i_v');
  late final _dart_glGetInteger64i_v _glGetInteger64i_v =
      _glGetInteger64i_v_ptr.asFunction<_dart_glGetInteger64i_v>();

  void glGetBufferParameteri64v(
    int target,
    int pname,
    ffi.Pointer<ffi.Int64> params,
  ) {
    return _glGetBufferParameteri64v(
      target,
      pname,
      params,
    );
  }

  late final _glGetBufferParameteri64v_ptr =
      _lookup<ffi.NativeFunction<_c_glGetBufferParameteri64v>>(
          'glGetBufferParameteri64v');
  late final _dart_glGetBufferParameteri64v _glGetBufferParameteri64v =
      _glGetBufferParameteri64v_ptr
          .asFunction<_dart_glGetBufferParameteri64v>();

  void glGenSamplers(
    int count,
    ffi.Pointer<ffi.Uint32> samplers,
  ) {
    return _glGenSamplers(
      count,
      samplers,
    );
  }

  late final _glGenSamplers_ptr =
      _lookup<ffi.NativeFunction<_c_glGenSamplers>>('glGenSamplers');
  late final _dart_glGenSamplers _glGenSamplers =
      _glGenSamplers_ptr.asFunction<_dart_glGenSamplers>();

  void glDeleteSamplers(
    int count,
    ffi.Pointer<ffi.Uint32> samplers,
  ) {
    return _glDeleteSamplers(
      count,
      samplers,
    );
  }

  late final _glDeleteSamplers_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteSamplers>>('glDeleteSamplers');
  late final _dart_glDeleteSamplers _glDeleteSamplers =
      _glDeleteSamplers_ptr.asFunction<_dart_glDeleteSamplers>();

  int glIsSampler(
    int sampler,
  ) {
    return _glIsSampler(
      sampler,
    );
  }

  late final _glIsSampler_ptr =
      _lookup<ffi.NativeFunction<_c_glIsSampler>>('glIsSampler');
  late final _dart_glIsSampler _glIsSampler =
      _glIsSampler_ptr.asFunction<_dart_glIsSampler>();

  void glBindSampler(
    int unit,
    int sampler,
  ) {
    return _glBindSampler(
      unit,
      sampler,
    );
  }

  late final _glBindSampler_ptr =
      _lookup<ffi.NativeFunction<_c_glBindSampler>>('glBindSampler');
  late final _dart_glBindSampler _glBindSampler =
      _glBindSampler_ptr.asFunction<_dart_glBindSampler>();

  void glSamplerParameteri(
    int sampler,
    int pname,
    int param,
  ) {
    return _glSamplerParameteri(
      sampler,
      pname,
      param,
    );
  }

  late final _glSamplerParameteri_ptr =
      _lookup<ffi.NativeFunction<_c_glSamplerParameteri>>(
          'glSamplerParameteri');
  late final _dart_glSamplerParameteri _glSamplerParameteri =
      _glSamplerParameteri_ptr.asFunction<_dart_glSamplerParameteri>();

  void glSamplerParameteriv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Int32> param,
  ) {
    return _glSamplerParameteriv(
      sampler,
      pname,
      param,
    );
  }

  late final _glSamplerParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glSamplerParameteriv>>(
          'glSamplerParameteriv');
  late final _dart_glSamplerParameteriv _glSamplerParameteriv =
      _glSamplerParameteriv_ptr.asFunction<_dart_glSamplerParameteriv>();

  void glSamplerParameterf(
    int sampler,
    int pname,
    double param,
  ) {
    return _glSamplerParameterf(
      sampler,
      pname,
      param,
    );
  }

  late final _glSamplerParameterf_ptr =
      _lookup<ffi.NativeFunction<_c_glSamplerParameterf>>(
          'glSamplerParameterf');
  late final _dart_glSamplerParameterf _glSamplerParameterf =
      _glSamplerParameterf_ptr.asFunction<_dart_glSamplerParameterf>();

  void glSamplerParameterfv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Float> param,
  ) {
    return _glSamplerParameterfv(
      sampler,
      pname,
      param,
    );
  }

  late final _glSamplerParameterfv_ptr =
      _lookup<ffi.NativeFunction<_c_glSamplerParameterfv>>(
          'glSamplerParameterfv');
  late final _dart_glSamplerParameterfv _glSamplerParameterfv =
      _glSamplerParameterfv_ptr.asFunction<_dart_glSamplerParameterfv>();

  void glGetSamplerParameteriv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetSamplerParameteriv(
      sampler,
      pname,
      params,
    );
  }

  late final _glGetSamplerParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetSamplerParameteriv>>(
          'glGetSamplerParameteriv');
  late final _dart_glGetSamplerParameteriv _glGetSamplerParameteriv =
      _glGetSamplerParameteriv_ptr.asFunction<_dart_glGetSamplerParameteriv>();

  void glGetSamplerParameterfv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glGetSamplerParameterfv(
      sampler,
      pname,
      params,
    );
  }

  late final _glGetSamplerParameterfv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetSamplerParameterfv>>(
          'glGetSamplerParameterfv');
  late final _dart_glGetSamplerParameterfv _glGetSamplerParameterfv =
      _glGetSamplerParameterfv_ptr.asFunction<_dart_glGetSamplerParameterfv>();

  void glVertexAttribDivisor(
    int index,
    int divisor,
  ) {
    return _glVertexAttribDivisor(
      index,
      divisor,
    );
  }

  late final _glVertexAttribDivisor_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribDivisor>>(
          'glVertexAttribDivisor');
  late final _dart_glVertexAttribDivisor _glVertexAttribDivisor =
      _glVertexAttribDivisor_ptr.asFunction<_dart_glVertexAttribDivisor>();

  void glBindTransformFeedback(
    int target,
    int id,
  ) {
    return _glBindTransformFeedback(
      target,
      id,
    );
  }

  late final _glBindTransformFeedback_ptr =
      _lookup<ffi.NativeFunction<_c_glBindTransformFeedback>>(
          'glBindTransformFeedback');
  late final _dart_glBindTransformFeedback _glBindTransformFeedback =
      _glBindTransformFeedback_ptr.asFunction<_dart_glBindTransformFeedback>();

  void glDeleteTransformFeedbacks(
    int n,
    ffi.Pointer<ffi.Uint32> ids,
  ) {
    return _glDeleteTransformFeedbacks(
      n,
      ids,
    );
  }

  late final _glDeleteTransformFeedbacks_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteTransformFeedbacks>>(
          'glDeleteTransformFeedbacks');
  late final _dart_glDeleteTransformFeedbacks _glDeleteTransformFeedbacks =
      _glDeleteTransformFeedbacks_ptr
          .asFunction<_dart_glDeleteTransformFeedbacks>();

  void glGenTransformFeedbacks(
    int n,
    ffi.Pointer<ffi.Uint32> ids,
  ) {
    return _glGenTransformFeedbacks(
      n,
      ids,
    );
  }

  late final _glGenTransformFeedbacks_ptr =
      _lookup<ffi.NativeFunction<_c_glGenTransformFeedbacks>>(
          'glGenTransformFeedbacks');
  late final _dart_glGenTransformFeedbacks _glGenTransformFeedbacks =
      _glGenTransformFeedbacks_ptr.asFunction<_dart_glGenTransformFeedbacks>();

  int glIsTransformFeedback(
    int id,
  ) {
    return _glIsTransformFeedback(
      id,
    );
  }

  late final _glIsTransformFeedback_ptr =
      _lookup<ffi.NativeFunction<_c_glIsTransformFeedback>>(
          'glIsTransformFeedback');
  late final _dart_glIsTransformFeedback _glIsTransformFeedback =
      _glIsTransformFeedback_ptr.asFunction<_dart_glIsTransformFeedback>();

  void glPauseTransformFeedback() {
    return _glPauseTransformFeedback();
  }

  late final _glPauseTransformFeedback_ptr =
      _lookup<ffi.NativeFunction<_c_glPauseTransformFeedback>>(
          'glPauseTransformFeedback');
  late final _dart_glPauseTransformFeedback _glPauseTransformFeedback =
      _glPauseTransformFeedback_ptr
          .asFunction<_dart_glPauseTransformFeedback>();

  void glResumeTransformFeedback() {
    return _glResumeTransformFeedback();
  }

  late final _glResumeTransformFeedback_ptr =
      _lookup<ffi.NativeFunction<_c_glResumeTransformFeedback>>(
          'glResumeTransformFeedback');
  late final _dart_glResumeTransformFeedback _glResumeTransformFeedback =
      _glResumeTransformFeedback_ptr
          .asFunction<_dart_glResumeTransformFeedback>();

  void glGetProgramBinary(
    int program,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Uint32> binaryFormat,
    ffi.Pointer<ffi.Void> binary,
  ) {
    return _glGetProgramBinary(
      program,
      bufSize,
      length,
      binaryFormat,
      binary,
    );
  }

  late final _glGetProgramBinary_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramBinary>>('glGetProgramBinary');
  late final _dart_glGetProgramBinary _glGetProgramBinary =
      _glGetProgramBinary_ptr.asFunction<_dart_glGetProgramBinary>();

  void glProgramBinary(
    int program,
    int binaryFormat,
    ffi.Pointer<ffi.Void> binary,
    int length,
  ) {
    return _glProgramBinary(
      program,
      binaryFormat,
      binary,
      length,
    );
  }

  late final _glProgramBinary_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramBinary>>('glProgramBinary');
  late final _dart_glProgramBinary _glProgramBinary =
      _glProgramBinary_ptr.asFunction<_dart_glProgramBinary>();

  void glProgramParameteri(
    int program,
    int pname,
    int value,
  ) {
    return _glProgramParameteri(
      program,
      pname,
      value,
    );
  }

  late final _glProgramParameteri_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramParameteri>>(
          'glProgramParameteri');
  late final _dart_glProgramParameteri _glProgramParameteri =
      _glProgramParameteri_ptr.asFunction<_dart_glProgramParameteri>();

  void glInvalidateFramebuffer(
    int target,
    int numAttachments,
    ffi.Pointer<ffi.Uint32> attachments,
  ) {
    return _glInvalidateFramebuffer(
      target,
      numAttachments,
      attachments,
    );
  }

  late final _glInvalidateFramebuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glInvalidateFramebuffer>>(
          'glInvalidateFramebuffer');
  late final _dart_glInvalidateFramebuffer _glInvalidateFramebuffer =
      _glInvalidateFramebuffer_ptr.asFunction<_dart_glInvalidateFramebuffer>();

  void glInvalidateSubFramebuffer(
    int target,
    int numAttachments,
    ffi.Pointer<ffi.Uint32> attachments,
    int x,
    int y,
    int width,
    int height,
  ) {
    return _glInvalidateSubFramebuffer(
      target,
      numAttachments,
      attachments,
      x,
      y,
      width,
      height,
    );
  }

  late final _glInvalidateSubFramebuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glInvalidateSubFramebuffer>>(
          'glInvalidateSubFramebuffer');
  late final _dart_glInvalidateSubFramebuffer _glInvalidateSubFramebuffer =
      _glInvalidateSubFramebuffer_ptr
          .asFunction<_dart_glInvalidateSubFramebuffer>();

  void glTexStorage2D(
    int target,
    int levels,
    int internalformat,
    int width,
    int height,
  ) {
    return _glTexStorage2D(
      target,
      levels,
      internalformat,
      width,
      height,
    );
  }

  late final _glTexStorage2D_ptr =
      _lookup<ffi.NativeFunction<_c_glTexStorage2D>>('glTexStorage2D');
  late final _dart_glTexStorage2D _glTexStorage2D =
      _glTexStorage2D_ptr.asFunction<_dart_glTexStorage2D>();

  void glTexStorage3D(
    int target,
    int levels,
    int internalformat,
    int width,
    int height,
    int depth,
  ) {
    return _glTexStorage3D(
      target,
      levels,
      internalformat,
      width,
      height,
      depth,
    );
  }

  late final _glTexStorage3D_ptr =
      _lookup<ffi.NativeFunction<_c_glTexStorage3D>>('glTexStorage3D');
  late final _dart_glTexStorage3D _glTexStorage3D =
      _glTexStorage3D_ptr.asFunction<_dart_glTexStorage3D>();

  void glGetInternalformativ(
    int target,
    int internalformat,
    int pname,
    int bufSize,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetInternalformativ(
      target,
      internalformat,
      pname,
      bufSize,
      params,
    );
  }

  late final _glGetInternalformativ_ptr =
      _lookup<ffi.NativeFunction<_c_glGetInternalformativ>>(
          'glGetInternalformativ');
  late final _dart_glGetInternalformativ _glGetInternalformativ =
      _glGetInternalformativ_ptr.asFunction<_dart_glGetInternalformativ>();

  void glDispatchCompute(
    int num_groups_x,
    int num_groups_y,
    int num_groups_z,
  ) {
    return _glDispatchCompute(
      num_groups_x,
      num_groups_y,
      num_groups_z,
    );
  }

  late final _glDispatchCompute_ptr =
      _lookup<ffi.NativeFunction<_c_glDispatchCompute>>('glDispatchCompute');
  late final _dart_glDispatchCompute _glDispatchCompute =
      _glDispatchCompute_ptr.asFunction<_dart_glDispatchCompute>();

  void glDispatchComputeIndirect(
    int indirect,
  ) {
    return _glDispatchComputeIndirect(
      indirect,
    );
  }

  late final _glDispatchComputeIndirect_ptr =
      _lookup<ffi.NativeFunction<_c_glDispatchComputeIndirect>>(
          'glDispatchComputeIndirect');
  late final _dart_glDispatchComputeIndirect _glDispatchComputeIndirect =
      _glDispatchComputeIndirect_ptr
          .asFunction<_dart_glDispatchComputeIndirect>();

  void glDrawArraysIndirect(
    int mode,
    ffi.Pointer<ffi.Void> indirect,
  ) {
    return _glDrawArraysIndirect(
      mode,
      indirect,
    );
  }

  late final _glDrawArraysIndirect_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawArraysIndirect>>(
          'glDrawArraysIndirect');
  late final _dart_glDrawArraysIndirect _glDrawArraysIndirect =
      _glDrawArraysIndirect_ptr.asFunction<_dart_glDrawArraysIndirect>();

  void glDrawElementsIndirect(
    int mode,
    int type,
    ffi.Pointer<ffi.Void> indirect,
  ) {
    return _glDrawElementsIndirect(
      mode,
      type,
      indirect,
    );
  }

  late final _glDrawElementsIndirect_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawElementsIndirect>>(
          'glDrawElementsIndirect');
  late final _dart_glDrawElementsIndirect _glDrawElementsIndirect =
      _glDrawElementsIndirect_ptr.asFunction<_dart_glDrawElementsIndirect>();

  void glFramebufferParameteri(
    int target,
    int pname,
    int param,
  ) {
    return _glFramebufferParameteri(
      target,
      pname,
      param,
    );
  }

  late final _glFramebufferParameteri_ptr =
      _lookup<ffi.NativeFunction<_c_glFramebufferParameteri>>(
          'glFramebufferParameteri');
  late final _dart_glFramebufferParameteri _glFramebufferParameteri =
      _glFramebufferParameteri_ptr.asFunction<_dart_glFramebufferParameteri>();

  void glGetFramebufferParameteriv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetFramebufferParameteriv(
      target,
      pname,
      params,
    );
  }

  late final _glGetFramebufferParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetFramebufferParameteriv>>(
          'glGetFramebufferParameteriv');
  late final _dart_glGetFramebufferParameteriv _glGetFramebufferParameteriv =
      _glGetFramebufferParameteriv_ptr
          .asFunction<_dart_glGetFramebufferParameteriv>();

  void glGetProgramInterfaceiv(
    int program,
    int programInterface,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetProgramInterfaceiv(
      program,
      programInterface,
      pname,
      params,
    );
  }

  late final _glGetProgramInterfaceiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramInterfaceiv>>(
          'glGetProgramInterfaceiv');
  late final _dart_glGetProgramInterfaceiv _glGetProgramInterfaceiv =
      _glGetProgramInterfaceiv_ptr.asFunction<_dart_glGetProgramInterfaceiv>();

  int glGetProgramResourceIndex(
    int program,
    int programInterface,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetProgramResourceIndex(
      program,
      programInterface,
      name,
    );
  }

  late final _glGetProgramResourceIndex_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramResourceIndex>>(
          'glGetProgramResourceIndex');
  late final _dart_glGetProgramResourceIndex _glGetProgramResourceIndex =
      _glGetProgramResourceIndex_ptr
          .asFunction<_dart_glGetProgramResourceIndex>();

  void glGetProgramResourceName(
    int program,
    int programInterface,
    int index,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetProgramResourceName(
      program,
      programInterface,
      index,
      bufSize,
      length,
      name,
    );
  }

  late final _glGetProgramResourceName_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramResourceName>>(
          'glGetProgramResourceName');
  late final _dart_glGetProgramResourceName _glGetProgramResourceName =
      _glGetProgramResourceName_ptr
          .asFunction<_dart_glGetProgramResourceName>();

  void glGetProgramResourceiv(
    int program,
    int programInterface,
    int index,
    int propCount,
    ffi.Pointer<ffi.Uint32> props,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetProgramResourceiv(
      program,
      programInterface,
      index,
      propCount,
      props,
      bufSize,
      length,
      params,
    );
  }

  late final _glGetProgramResourceiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramResourceiv>>(
          'glGetProgramResourceiv');
  late final _dart_glGetProgramResourceiv _glGetProgramResourceiv =
      _glGetProgramResourceiv_ptr.asFunction<_dart_glGetProgramResourceiv>();

  int glGetProgramResourceLocation(
    int program,
    int programInterface,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _glGetProgramResourceLocation(
      program,
      programInterface,
      name,
    );
  }

  late final _glGetProgramResourceLocation_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramResourceLocation>>(
          'glGetProgramResourceLocation');
  late final _dart_glGetProgramResourceLocation _glGetProgramResourceLocation =
      _glGetProgramResourceLocation_ptr
          .asFunction<_dart_glGetProgramResourceLocation>();

  void glUseProgramStages(
    int pipeline,
    int stages,
    int program,
  ) {
    return _glUseProgramStages(
      pipeline,
      stages,
      program,
    );
  }

  late final _glUseProgramStages_ptr =
      _lookup<ffi.NativeFunction<_c_glUseProgramStages>>('glUseProgramStages');
  late final _dart_glUseProgramStages _glUseProgramStages =
      _glUseProgramStages_ptr.asFunction<_dart_glUseProgramStages>();

  void glActiveShaderProgram(
    int pipeline,
    int program,
  ) {
    return _glActiveShaderProgram(
      pipeline,
      program,
    );
  }

  late final _glActiveShaderProgram_ptr =
      _lookup<ffi.NativeFunction<_c_glActiveShaderProgram>>(
          'glActiveShaderProgram');
  late final _dart_glActiveShaderProgram _glActiveShaderProgram =
      _glActiveShaderProgram_ptr.asFunction<_dart_glActiveShaderProgram>();

  int glCreateShaderProgramv(
    int type,
    int count,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
  ) {
    return _glCreateShaderProgramv(
      type,
      count,
      strings,
    );
  }

  late final _glCreateShaderProgramv_ptr =
      _lookup<ffi.NativeFunction<_c_glCreateShaderProgramv>>(
          'glCreateShaderProgramv');
  late final _dart_glCreateShaderProgramv _glCreateShaderProgramv =
      _glCreateShaderProgramv_ptr.asFunction<_dart_glCreateShaderProgramv>();

  void glBindProgramPipeline(
    int pipeline,
  ) {
    return _glBindProgramPipeline(
      pipeline,
    );
  }

  late final _glBindProgramPipeline_ptr =
      _lookup<ffi.NativeFunction<_c_glBindProgramPipeline>>(
          'glBindProgramPipeline');
  late final _dart_glBindProgramPipeline _glBindProgramPipeline =
      _glBindProgramPipeline_ptr.asFunction<_dart_glBindProgramPipeline>();

  void glDeleteProgramPipelines(
    int n,
    ffi.Pointer<ffi.Uint32> pipelines,
  ) {
    return _glDeleteProgramPipelines(
      n,
      pipelines,
    );
  }

  late final _glDeleteProgramPipelines_ptr =
      _lookup<ffi.NativeFunction<_c_glDeleteProgramPipelines>>(
          'glDeleteProgramPipelines');
  late final _dart_glDeleteProgramPipelines _glDeleteProgramPipelines =
      _glDeleteProgramPipelines_ptr
          .asFunction<_dart_glDeleteProgramPipelines>();

  void glGenProgramPipelines(
    int n,
    ffi.Pointer<ffi.Uint32> pipelines,
  ) {
    return _glGenProgramPipelines(
      n,
      pipelines,
    );
  }

  late final _glGenProgramPipelines_ptr =
      _lookup<ffi.NativeFunction<_c_glGenProgramPipelines>>(
          'glGenProgramPipelines');
  late final _dart_glGenProgramPipelines _glGenProgramPipelines =
      _glGenProgramPipelines_ptr.asFunction<_dart_glGenProgramPipelines>();

  int glIsProgramPipeline(
    int pipeline,
  ) {
    return _glIsProgramPipeline(
      pipeline,
    );
  }

  late final _glIsProgramPipeline_ptr =
      _lookup<ffi.NativeFunction<_c_glIsProgramPipeline>>(
          'glIsProgramPipeline');
  late final _dart_glIsProgramPipeline _glIsProgramPipeline =
      _glIsProgramPipeline_ptr.asFunction<_dart_glIsProgramPipeline>();

  void glGetProgramPipelineiv(
    int pipeline,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetProgramPipelineiv(
      pipeline,
      pname,
      params,
    );
  }

  late final _glGetProgramPipelineiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramPipelineiv>>(
          'glGetProgramPipelineiv');
  late final _dart_glGetProgramPipelineiv _glGetProgramPipelineiv =
      _glGetProgramPipelineiv_ptr.asFunction<_dart_glGetProgramPipelineiv>();

  void glProgramUniform1i(
    int program,
    int location,
    int v0,
  ) {
    return _glProgramUniform1i(
      program,
      location,
      v0,
    );
  }

  late final _glProgramUniform1i_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform1i>>('glProgramUniform1i');
  late final _dart_glProgramUniform1i _glProgramUniform1i =
      _glProgramUniform1i_ptr.asFunction<_dart_glProgramUniform1i>();

  void glProgramUniform2i(
    int program,
    int location,
    int v0,
    int v1,
  ) {
    return _glProgramUniform2i(
      program,
      location,
      v0,
      v1,
    );
  }

  late final _glProgramUniform2i_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform2i>>('glProgramUniform2i');
  late final _dart_glProgramUniform2i _glProgramUniform2i =
      _glProgramUniform2i_ptr.asFunction<_dart_glProgramUniform2i>();

  void glProgramUniform3i(
    int program,
    int location,
    int v0,
    int v1,
    int v2,
  ) {
    return _glProgramUniform3i(
      program,
      location,
      v0,
      v1,
      v2,
    );
  }

  late final _glProgramUniform3i_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform3i>>('glProgramUniform3i');
  late final _dart_glProgramUniform3i _glProgramUniform3i =
      _glProgramUniform3i_ptr.asFunction<_dart_glProgramUniform3i>();

  void glProgramUniform4i(
    int program,
    int location,
    int v0,
    int v1,
    int v2,
    int v3,
  ) {
    return _glProgramUniform4i(
      program,
      location,
      v0,
      v1,
      v2,
      v3,
    );
  }

  late final _glProgramUniform4i_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform4i>>('glProgramUniform4i');
  late final _dart_glProgramUniform4i _glProgramUniform4i =
      _glProgramUniform4i_ptr.asFunction<_dart_glProgramUniform4i>();

  void glProgramUniform1ui(
    int program,
    int location,
    int v0,
  ) {
    return _glProgramUniform1ui(
      program,
      location,
      v0,
    );
  }

  late final _glProgramUniform1ui_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform1ui>>(
          'glProgramUniform1ui');
  late final _dart_glProgramUniform1ui _glProgramUniform1ui =
      _glProgramUniform1ui_ptr.asFunction<_dart_glProgramUniform1ui>();

  void glProgramUniform2ui(
    int program,
    int location,
    int v0,
    int v1,
  ) {
    return _glProgramUniform2ui(
      program,
      location,
      v0,
      v1,
    );
  }

  late final _glProgramUniform2ui_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform2ui>>(
          'glProgramUniform2ui');
  late final _dart_glProgramUniform2ui _glProgramUniform2ui =
      _glProgramUniform2ui_ptr.asFunction<_dart_glProgramUniform2ui>();

  void glProgramUniform3ui(
    int program,
    int location,
    int v0,
    int v1,
    int v2,
  ) {
    return _glProgramUniform3ui(
      program,
      location,
      v0,
      v1,
      v2,
    );
  }

  late final _glProgramUniform3ui_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform3ui>>(
          'glProgramUniform3ui');
  late final _dart_glProgramUniform3ui _glProgramUniform3ui =
      _glProgramUniform3ui_ptr.asFunction<_dart_glProgramUniform3ui>();

  void glProgramUniform4ui(
    int program,
    int location,
    int v0,
    int v1,
    int v2,
    int v3,
  ) {
    return _glProgramUniform4ui(
      program,
      location,
      v0,
      v1,
      v2,
      v3,
    );
  }

  late final _glProgramUniform4ui_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform4ui>>(
          'glProgramUniform4ui');
  late final _dart_glProgramUniform4ui _glProgramUniform4ui =
      _glProgramUniform4ui_ptr.asFunction<_dart_glProgramUniform4ui>();

  void glProgramUniform1f(
    int program,
    int location,
    double v0,
  ) {
    return _glProgramUniform1f(
      program,
      location,
      v0,
    );
  }

  late final _glProgramUniform1f_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform1f>>('glProgramUniform1f');
  late final _dart_glProgramUniform1f _glProgramUniform1f =
      _glProgramUniform1f_ptr.asFunction<_dart_glProgramUniform1f>();

  void glProgramUniform2f(
    int program,
    int location,
    double v0,
    double v1,
  ) {
    return _glProgramUniform2f(
      program,
      location,
      v0,
      v1,
    );
  }

  late final _glProgramUniform2f_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform2f>>('glProgramUniform2f');
  late final _dart_glProgramUniform2f _glProgramUniform2f =
      _glProgramUniform2f_ptr.asFunction<_dart_glProgramUniform2f>();

  void glProgramUniform3f(
    int program,
    int location,
    double v0,
    double v1,
    double v2,
  ) {
    return _glProgramUniform3f(
      program,
      location,
      v0,
      v1,
      v2,
    );
  }

  late final _glProgramUniform3f_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform3f>>('glProgramUniform3f');
  late final _dart_glProgramUniform3f _glProgramUniform3f =
      _glProgramUniform3f_ptr.asFunction<_dart_glProgramUniform3f>();

  void glProgramUniform4f(
    int program,
    int location,
    double v0,
    double v1,
    double v2,
    double v3,
  ) {
    return _glProgramUniform4f(
      program,
      location,
      v0,
      v1,
      v2,
      v3,
    );
  }

  late final _glProgramUniform4f_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform4f>>('glProgramUniform4f');
  late final _dart_glProgramUniform4f _glProgramUniform4f =
      _glProgramUniform4f_ptr.asFunction<_dart_glProgramUniform4f>();

  void glProgramUniform1iv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glProgramUniform1iv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform1iv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform1iv>>(
          'glProgramUniform1iv');
  late final _dart_glProgramUniform1iv _glProgramUniform1iv =
      _glProgramUniform1iv_ptr.asFunction<_dart_glProgramUniform1iv>();

  void glProgramUniform2iv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glProgramUniform2iv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform2iv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform2iv>>(
          'glProgramUniform2iv');
  late final _dart_glProgramUniform2iv _glProgramUniform2iv =
      _glProgramUniform2iv_ptr.asFunction<_dart_glProgramUniform2iv>();

  void glProgramUniform3iv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glProgramUniform3iv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform3iv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform3iv>>(
          'glProgramUniform3iv');
  late final _dart_glProgramUniform3iv _glProgramUniform3iv =
      _glProgramUniform3iv_ptr.asFunction<_dart_glProgramUniform3iv>();

  void glProgramUniform4iv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _glProgramUniform4iv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform4iv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform4iv>>(
          'glProgramUniform4iv');
  late final _dart_glProgramUniform4iv _glProgramUniform4iv =
      _glProgramUniform4iv_ptr.asFunction<_dart_glProgramUniform4iv>();

  void glProgramUniform1uiv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glProgramUniform1uiv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform1uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform1uiv>>(
          'glProgramUniform1uiv');
  late final _dart_glProgramUniform1uiv _glProgramUniform1uiv =
      _glProgramUniform1uiv_ptr.asFunction<_dart_glProgramUniform1uiv>();

  void glProgramUniform2uiv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glProgramUniform2uiv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform2uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform2uiv>>(
          'glProgramUniform2uiv');
  late final _dart_glProgramUniform2uiv _glProgramUniform2uiv =
      _glProgramUniform2uiv_ptr.asFunction<_dart_glProgramUniform2uiv>();

  void glProgramUniform3uiv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glProgramUniform3uiv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform3uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform3uiv>>(
          'glProgramUniform3uiv');
  late final _dart_glProgramUniform3uiv _glProgramUniform3uiv =
      _glProgramUniform3uiv_ptr.asFunction<_dart_glProgramUniform3uiv>();

  void glProgramUniform4uiv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Uint32> value,
  ) {
    return _glProgramUniform4uiv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform4uiv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform4uiv>>(
          'glProgramUniform4uiv');
  late final _dart_glProgramUniform4uiv _glProgramUniform4uiv =
      _glProgramUniform4uiv_ptr.asFunction<_dart_glProgramUniform4uiv>();

  void glProgramUniform1fv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniform1fv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform1fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform1fv>>(
          'glProgramUniform1fv');
  late final _dart_glProgramUniform1fv _glProgramUniform1fv =
      _glProgramUniform1fv_ptr.asFunction<_dart_glProgramUniform1fv>();

  void glProgramUniform2fv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniform2fv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform2fv>>(
          'glProgramUniform2fv');
  late final _dart_glProgramUniform2fv _glProgramUniform2fv =
      _glProgramUniform2fv_ptr.asFunction<_dart_glProgramUniform2fv>();

  void glProgramUniform3fv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniform3fv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform3fv>>(
          'glProgramUniform3fv');
  late final _dart_glProgramUniform3fv _glProgramUniform3fv =
      _glProgramUniform3fv_ptr.asFunction<_dart_glProgramUniform3fv>();

  void glProgramUniform4fv(
    int program,
    int location,
    int count,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniform4fv(
      program,
      location,
      count,
      value,
    );
  }

  late final _glProgramUniform4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniform4fv>>(
          'glProgramUniform4fv');
  late final _dart_glProgramUniform4fv _glProgramUniform4fv =
      _glProgramUniform4fv_ptr.asFunction<_dart_glProgramUniform4fv>();

  void glProgramUniformMatrix2fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix2fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix2fv>>(
          'glProgramUniformMatrix2fv');
  late final _dart_glProgramUniformMatrix2fv _glProgramUniformMatrix2fv =
      _glProgramUniformMatrix2fv_ptr
          .asFunction<_dart_glProgramUniformMatrix2fv>();

  void glProgramUniformMatrix3fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix3fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix3fv>>(
          'glProgramUniformMatrix3fv');
  late final _dart_glProgramUniformMatrix3fv _glProgramUniformMatrix3fv =
      _glProgramUniformMatrix3fv_ptr
          .asFunction<_dart_glProgramUniformMatrix3fv>();

  void glProgramUniformMatrix4fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix4fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix4fv>>(
          'glProgramUniformMatrix4fv');
  late final _dart_glProgramUniformMatrix4fv _glProgramUniformMatrix4fv =
      _glProgramUniformMatrix4fv_ptr
          .asFunction<_dart_glProgramUniformMatrix4fv>();

  void glProgramUniformMatrix2x3fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix2x3fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix2x3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix2x3fv>>(
          'glProgramUniformMatrix2x3fv');
  late final _dart_glProgramUniformMatrix2x3fv _glProgramUniformMatrix2x3fv =
      _glProgramUniformMatrix2x3fv_ptr
          .asFunction<_dart_glProgramUniformMatrix2x3fv>();

  void glProgramUniformMatrix3x2fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix3x2fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix3x2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix3x2fv>>(
          'glProgramUniformMatrix3x2fv');
  late final _dart_glProgramUniformMatrix3x2fv _glProgramUniformMatrix3x2fv =
      _glProgramUniformMatrix3x2fv_ptr
          .asFunction<_dart_glProgramUniformMatrix3x2fv>();

  void glProgramUniformMatrix2x4fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix2x4fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix2x4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix2x4fv>>(
          'glProgramUniformMatrix2x4fv');
  late final _dart_glProgramUniformMatrix2x4fv _glProgramUniformMatrix2x4fv =
      _glProgramUniformMatrix2x4fv_ptr
          .asFunction<_dart_glProgramUniformMatrix2x4fv>();

  void glProgramUniformMatrix4x2fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix4x2fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix4x2fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix4x2fv>>(
          'glProgramUniformMatrix4x2fv');
  late final _dart_glProgramUniformMatrix4x2fv _glProgramUniformMatrix4x2fv =
      _glProgramUniformMatrix4x2fv_ptr
          .asFunction<_dart_glProgramUniformMatrix4x2fv>();

  void glProgramUniformMatrix3x4fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix3x4fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix3x4fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix3x4fv>>(
          'glProgramUniformMatrix3x4fv');
  late final _dart_glProgramUniformMatrix3x4fv _glProgramUniformMatrix3x4fv =
      _glProgramUniformMatrix3x4fv_ptr
          .asFunction<_dart_glProgramUniformMatrix3x4fv>();

  void glProgramUniformMatrix4x3fv(
    int program,
    int location,
    int count,
    int transpose,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _glProgramUniformMatrix4x3fv(
      program,
      location,
      count,
      transpose,
      value,
    );
  }

  late final _glProgramUniformMatrix4x3fv_ptr =
      _lookup<ffi.NativeFunction<_c_glProgramUniformMatrix4x3fv>>(
          'glProgramUniformMatrix4x3fv');
  late final _dart_glProgramUniformMatrix4x3fv _glProgramUniformMatrix4x3fv =
      _glProgramUniformMatrix4x3fv_ptr
          .asFunction<_dart_glProgramUniformMatrix4x3fv>();

  void glValidateProgramPipeline(
    int pipeline,
  ) {
    return _glValidateProgramPipeline(
      pipeline,
    );
  }

  late final _glValidateProgramPipeline_ptr =
      _lookup<ffi.NativeFunction<_c_glValidateProgramPipeline>>(
          'glValidateProgramPipeline');
  late final _dart_glValidateProgramPipeline _glValidateProgramPipeline =
      _glValidateProgramPipeline_ptr
          .asFunction<_dart_glValidateProgramPipeline>();

  void glGetProgramPipelineInfoLog(
    int pipeline,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> infoLog,
  ) {
    return _glGetProgramPipelineInfoLog(
      pipeline,
      bufSize,
      length,
      infoLog,
    );
  }

  late final _glGetProgramPipelineInfoLog_ptr =
      _lookup<ffi.NativeFunction<_c_glGetProgramPipelineInfoLog>>(
          'glGetProgramPipelineInfoLog');
  late final _dart_glGetProgramPipelineInfoLog _glGetProgramPipelineInfoLog =
      _glGetProgramPipelineInfoLog_ptr
          .asFunction<_dart_glGetProgramPipelineInfoLog>();

  void glBindImageTexture(
    int unit,
    int texture,
    int level,
    int layered,
    int layer,
    int access,
    int format,
  ) {
    return _glBindImageTexture(
      unit,
      texture,
      level,
      layered,
      layer,
      access,
      format,
    );
  }

  late final _glBindImageTexture_ptr =
      _lookup<ffi.NativeFunction<_c_glBindImageTexture>>('glBindImageTexture');
  late final _dart_glBindImageTexture _glBindImageTexture =
      _glBindImageTexture_ptr.asFunction<_dart_glBindImageTexture>();

  void glGetBooleani_v(
    int target,
    int index,
    ffi.Pointer<ffi.Uint8> data,
  ) {
    return _glGetBooleani_v(
      target,
      index,
      data,
    );
  }

  late final _glGetBooleani_v_ptr =
      _lookup<ffi.NativeFunction<_c_glGetBooleani_v>>('glGetBooleani_v');
  late final _dart_glGetBooleani_v _glGetBooleani_v =
      _glGetBooleani_v_ptr.asFunction<_dart_glGetBooleani_v>();

  void glMemoryBarrier(
    int barriers,
  ) {
    return _glMemoryBarrier(
      barriers,
    );
  }

  late final _glMemoryBarrier_ptr =
      _lookup<ffi.NativeFunction<_c_glMemoryBarrier>>('glMemoryBarrier');
  late final _dart_glMemoryBarrier _glMemoryBarrier =
      _glMemoryBarrier_ptr.asFunction<_dart_glMemoryBarrier>();

  void glMemoryBarrierByRegion(
    int barriers,
  ) {
    return _glMemoryBarrierByRegion(
      barriers,
    );
  }

  late final _glMemoryBarrierByRegion_ptr =
      _lookup<ffi.NativeFunction<_c_glMemoryBarrierByRegion>>(
          'glMemoryBarrierByRegion');
  late final _dart_glMemoryBarrierByRegion _glMemoryBarrierByRegion =
      _glMemoryBarrierByRegion_ptr.asFunction<_dart_glMemoryBarrierByRegion>();

  void glTexStorage2DMultisample(
    int target,
    int samples,
    int internalformat,
    int width,
    int height,
    int fixedsamplelocations,
  ) {
    return _glTexStorage2DMultisample(
      target,
      samples,
      internalformat,
      width,
      height,
      fixedsamplelocations,
    );
  }

  late final _glTexStorage2DMultisample_ptr =
      _lookup<ffi.NativeFunction<_c_glTexStorage2DMultisample>>(
          'glTexStorage2DMultisample');
  late final _dart_glTexStorage2DMultisample _glTexStorage2DMultisample =
      _glTexStorage2DMultisample_ptr
          .asFunction<_dart_glTexStorage2DMultisample>();

  void glGetMultisamplefv(
    int pname,
    int index,
    ffi.Pointer<ffi.Float> val,
  ) {
    return _glGetMultisamplefv(
      pname,
      index,
      val,
    );
  }

  late final _glGetMultisamplefv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetMultisamplefv>>('glGetMultisamplefv');
  late final _dart_glGetMultisamplefv _glGetMultisamplefv =
      _glGetMultisamplefv_ptr.asFunction<_dart_glGetMultisamplefv>();

  void glSampleMaski(
    int maskNumber,
    int mask,
  ) {
    return _glSampleMaski(
      maskNumber,
      mask,
    );
  }

  late final _glSampleMaski_ptr =
      _lookup<ffi.NativeFunction<_c_glSampleMaski>>('glSampleMaski');
  late final _dart_glSampleMaski _glSampleMaski =
      _glSampleMaski_ptr.asFunction<_dart_glSampleMaski>();

  void glGetTexLevelParameteriv(
    int target,
    int level,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetTexLevelParameteriv(
      target,
      level,
      pname,
      params,
    );
  }

  late final _glGetTexLevelParameteriv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTexLevelParameteriv>>(
          'glGetTexLevelParameteriv');
  late final _dart_glGetTexLevelParameteriv _glGetTexLevelParameteriv =
      _glGetTexLevelParameteriv_ptr
          .asFunction<_dart_glGetTexLevelParameteriv>();

  void glGetTexLevelParameterfv(
    int target,
    int level,
    int pname,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glGetTexLevelParameterfv(
      target,
      level,
      pname,
      params,
    );
  }

  late final _glGetTexLevelParameterfv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTexLevelParameterfv>>(
          'glGetTexLevelParameterfv');
  late final _dart_glGetTexLevelParameterfv _glGetTexLevelParameterfv =
      _glGetTexLevelParameterfv_ptr
          .asFunction<_dart_glGetTexLevelParameterfv>();

  void glBindVertexBuffer(
    int bindingindex,
    int buffer,
    int offset,
    int stride,
  ) {
    return _glBindVertexBuffer(
      bindingindex,
      buffer,
      offset,
      stride,
    );
  }

  late final _glBindVertexBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glBindVertexBuffer>>('glBindVertexBuffer');
  late final _dart_glBindVertexBuffer _glBindVertexBuffer =
      _glBindVertexBuffer_ptr.asFunction<_dart_glBindVertexBuffer>();

  void glVertexAttribFormat(
    int attribindex,
    int size,
    int type,
    int normalized,
    int relativeoffset,
  ) {
    return _glVertexAttribFormat(
      attribindex,
      size,
      type,
      normalized,
      relativeoffset,
    );
  }

  late final _glVertexAttribFormat_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribFormat>>(
          'glVertexAttribFormat');
  late final _dart_glVertexAttribFormat _glVertexAttribFormat =
      _glVertexAttribFormat_ptr.asFunction<_dart_glVertexAttribFormat>();

  void glVertexAttribIFormat(
    int attribindex,
    int size,
    int type,
    int relativeoffset,
  ) {
    return _glVertexAttribIFormat(
      attribindex,
      size,
      type,
      relativeoffset,
    );
  }

  late final _glVertexAttribIFormat_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribIFormat>>(
          'glVertexAttribIFormat');
  late final _dart_glVertexAttribIFormat _glVertexAttribIFormat =
      _glVertexAttribIFormat_ptr.asFunction<_dart_glVertexAttribIFormat>();

  void glVertexAttribBinding(
    int attribindex,
    int bindingindex,
  ) {
    return _glVertexAttribBinding(
      attribindex,
      bindingindex,
    );
  }

  late final _glVertexAttribBinding_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexAttribBinding>>(
          'glVertexAttribBinding');
  late final _dart_glVertexAttribBinding _glVertexAttribBinding =
      _glVertexAttribBinding_ptr.asFunction<_dart_glVertexAttribBinding>();

  void glVertexBindingDivisor(
    int bindingindex,
    int divisor,
  ) {
    return _glVertexBindingDivisor(
      bindingindex,
      divisor,
    );
  }

  late final _glVertexBindingDivisor_ptr =
      _lookup<ffi.NativeFunction<_c_glVertexBindingDivisor>>(
          'glVertexBindingDivisor');
  late final _dart_glVertexBindingDivisor _glVertexBindingDivisor =
      _glVertexBindingDivisor_ptr.asFunction<_dart_glVertexBindingDivisor>();

  void glBlendBarrier() {
    return _glBlendBarrier();
  }

  late final _glBlendBarrier_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendBarrier>>('glBlendBarrier');
  late final _dart_glBlendBarrier _glBlendBarrier =
      _glBlendBarrier_ptr.asFunction<_dart_glBlendBarrier>();

  void glCopyImageSubData(
    int srcName,
    int srcTarget,
    int srcLevel,
    int srcX,
    int srcY,
    int srcZ,
    int dstName,
    int dstTarget,
    int dstLevel,
    int dstX,
    int dstY,
    int dstZ,
    int srcWidth,
    int srcHeight,
    int srcDepth,
  ) {
    return _glCopyImageSubData(
      srcName,
      srcTarget,
      srcLevel,
      srcX,
      srcY,
      srcZ,
      dstName,
      dstTarget,
      dstLevel,
      dstX,
      dstY,
      dstZ,
      srcWidth,
      srcHeight,
      srcDepth,
    );
  }

  late final _glCopyImageSubData_ptr =
      _lookup<ffi.NativeFunction<_c_glCopyImageSubData>>('glCopyImageSubData');
  late final _dart_glCopyImageSubData _glCopyImageSubData =
      _glCopyImageSubData_ptr.asFunction<_dart_glCopyImageSubData>();

  void glDebugMessageControl(
    int source,
    int type,
    int severity,
    int count,
    ffi.Pointer<ffi.Uint32> ids,
    int enabled,
  ) {
    return _glDebugMessageControl(
      source,
      type,
      severity,
      count,
      ids,
      enabled,
    );
  }

  late final _glDebugMessageControl_ptr =
      _lookup<ffi.NativeFunction<_c_glDebugMessageControl>>(
          'glDebugMessageControl');
  late final _dart_glDebugMessageControl _glDebugMessageControl =
      _glDebugMessageControl_ptr.asFunction<_dart_glDebugMessageControl>();

  void glDebugMessageInsert(
    int source,
    int type,
    int id,
    int severity,
    int length,
    ffi.Pointer<ffi.Int8> buf,
  ) {
    return _glDebugMessageInsert(
      source,
      type,
      id,
      severity,
      length,
      buf,
    );
  }

  late final _glDebugMessageInsert_ptr =
      _lookup<ffi.NativeFunction<_c_glDebugMessageInsert>>(
          'glDebugMessageInsert');
  late final _dart_glDebugMessageInsert _glDebugMessageInsert =
      _glDebugMessageInsert_ptr.asFunction<_dart_glDebugMessageInsert>();

  void glDebugMessageCallback(
    ffi.Pointer<ffi.NativeFunction<GLDEBUGPROC>> callback,
    ffi.Pointer<ffi.Void> userParam,
  ) {
    return _glDebugMessageCallback(
      callback,
      userParam,
    );
  }

  late final _glDebugMessageCallback_ptr =
      _lookup<ffi.NativeFunction<_c_glDebugMessageCallback>>(
          'glDebugMessageCallback');
  late final _dart_glDebugMessageCallback _glDebugMessageCallback =
      _glDebugMessageCallback_ptr.asFunction<_dart_glDebugMessageCallback>();

  int glGetDebugMessageLog(
    int count,
    int bufSize,
    ffi.Pointer<ffi.Uint32> sources,
    ffi.Pointer<ffi.Uint32> types,
    ffi.Pointer<ffi.Uint32> ids,
    ffi.Pointer<ffi.Uint32> severities,
    ffi.Pointer<ffi.Int32> lengths,
    ffi.Pointer<ffi.Int8> messageLog,
  ) {
    return _glGetDebugMessageLog(
      count,
      bufSize,
      sources,
      types,
      ids,
      severities,
      lengths,
      messageLog,
    );
  }

  late final _glGetDebugMessageLog_ptr =
      _lookup<ffi.NativeFunction<_c_glGetDebugMessageLog>>(
          'glGetDebugMessageLog');
  late final _dart_glGetDebugMessageLog _glGetDebugMessageLog =
      _glGetDebugMessageLog_ptr.asFunction<_dart_glGetDebugMessageLog>();

  void glPushDebugGroup(
    int source,
    int id,
    int length,
    ffi.Pointer<ffi.Int8> message,
  ) {
    return _glPushDebugGroup(
      source,
      id,
      length,
      message,
    );
  }

  late final _glPushDebugGroup_ptr =
      _lookup<ffi.NativeFunction<_c_glPushDebugGroup>>('glPushDebugGroup');
  late final _dart_glPushDebugGroup _glPushDebugGroup =
      _glPushDebugGroup_ptr.asFunction<_dart_glPushDebugGroup>();

  void glPopDebugGroup() {
    return _glPopDebugGroup();
  }

  late final _glPopDebugGroup_ptr =
      _lookup<ffi.NativeFunction<_c_glPopDebugGroup>>('glPopDebugGroup');
  late final _dart_glPopDebugGroup _glPopDebugGroup =
      _glPopDebugGroup_ptr.asFunction<_dart_glPopDebugGroup>();

  void glObjectLabel(
    int identifier,
    int name,
    int length,
    ffi.Pointer<ffi.Int8> label,
  ) {
    return _glObjectLabel(
      identifier,
      name,
      length,
      label,
    );
  }

  late final _glObjectLabel_ptr =
      _lookup<ffi.NativeFunction<_c_glObjectLabel>>('glObjectLabel');
  late final _dart_glObjectLabel _glObjectLabel =
      _glObjectLabel_ptr.asFunction<_dart_glObjectLabel>();

  void glGetObjectLabel(
    int identifier,
    int name,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> label,
  ) {
    return _glGetObjectLabel(
      identifier,
      name,
      bufSize,
      length,
      label,
    );
  }

  late final _glGetObjectLabel_ptr =
      _lookup<ffi.NativeFunction<_c_glGetObjectLabel>>('glGetObjectLabel');
  late final _dart_glGetObjectLabel _glGetObjectLabel =
      _glGetObjectLabel_ptr.asFunction<_dart_glGetObjectLabel>();

  void glObjectPtrLabel(
    ffi.Pointer<ffi.Void> ptr,
    int length,
    ffi.Pointer<ffi.Int8> label,
  ) {
    return _glObjectPtrLabel(
      ptr,
      length,
      label,
    );
  }

  late final _glObjectPtrLabel_ptr =
      _lookup<ffi.NativeFunction<_c_glObjectPtrLabel>>('glObjectPtrLabel');
  late final _dart_glObjectPtrLabel _glObjectPtrLabel =
      _glObjectPtrLabel_ptr.asFunction<_dart_glObjectPtrLabel>();

  void glGetObjectPtrLabel(
    ffi.Pointer<ffi.Void> ptr,
    int bufSize,
    ffi.Pointer<ffi.Int32> length,
    ffi.Pointer<ffi.Int8> label,
  ) {
    return _glGetObjectPtrLabel(
      ptr,
      bufSize,
      length,
      label,
    );
  }

  late final _glGetObjectPtrLabel_ptr =
      _lookup<ffi.NativeFunction<_c_glGetObjectPtrLabel>>(
          'glGetObjectPtrLabel');
  late final _dart_glGetObjectPtrLabel _glGetObjectPtrLabel =
      _glGetObjectPtrLabel_ptr.asFunction<_dart_glGetObjectPtrLabel>();

  void glGetPointerv(
    int pname,
    ffi.Pointer<ffi.Pointer<ffi.Void>> params,
  ) {
    return _glGetPointerv(
      pname,
      params,
    );
  }

  late final _glGetPointerv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetPointerv>>('glGetPointerv');
  late final _dart_glGetPointerv _glGetPointerv =
      _glGetPointerv_ptr.asFunction<_dart_glGetPointerv>();

  void glEnablei(
    int target,
    int index,
  ) {
    return _glEnablei(
      target,
      index,
    );
  }

  late final _glEnablei_ptr =
      _lookup<ffi.NativeFunction<_c_glEnablei>>('glEnablei');
  late final _dart_glEnablei _glEnablei =
      _glEnablei_ptr.asFunction<_dart_glEnablei>();

  void glDisablei(
    int target,
    int index,
  ) {
    return _glDisablei(
      target,
      index,
    );
  }

  late final _glDisablei_ptr =
      _lookup<ffi.NativeFunction<_c_glDisablei>>('glDisablei');
  late final _dart_glDisablei _glDisablei =
      _glDisablei_ptr.asFunction<_dart_glDisablei>();

  void glBlendEquationi(
    int buf,
    int mode,
  ) {
    return _glBlendEquationi(
      buf,
      mode,
    );
  }

  late final _glBlendEquationi_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendEquationi>>('glBlendEquationi');
  late final _dart_glBlendEquationi _glBlendEquationi =
      _glBlendEquationi_ptr.asFunction<_dart_glBlendEquationi>();

  void glBlendEquationSeparatei(
    int buf,
    int modeRGB,
    int modeAlpha,
  ) {
    return _glBlendEquationSeparatei(
      buf,
      modeRGB,
      modeAlpha,
    );
  }

  late final _glBlendEquationSeparatei_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendEquationSeparatei>>(
          'glBlendEquationSeparatei');
  late final _dart_glBlendEquationSeparatei _glBlendEquationSeparatei =
      _glBlendEquationSeparatei_ptr
          .asFunction<_dart_glBlendEquationSeparatei>();

  void glBlendFunci(
    int buf,
    int src,
    int dst,
  ) {
    return _glBlendFunci(
      buf,
      src,
      dst,
    );
  }

  late final _glBlendFunci_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendFunci>>('glBlendFunci');
  late final _dart_glBlendFunci _glBlendFunci =
      _glBlendFunci_ptr.asFunction<_dart_glBlendFunci>();

  void glBlendFuncSeparatei(
    int buf,
    int srcRGB,
    int dstRGB,
    int srcAlpha,
    int dstAlpha,
  ) {
    return _glBlendFuncSeparatei(
      buf,
      srcRGB,
      dstRGB,
      srcAlpha,
      dstAlpha,
    );
  }

  late final _glBlendFuncSeparatei_ptr =
      _lookup<ffi.NativeFunction<_c_glBlendFuncSeparatei>>(
          'glBlendFuncSeparatei');
  late final _dart_glBlendFuncSeparatei _glBlendFuncSeparatei =
      _glBlendFuncSeparatei_ptr.asFunction<_dart_glBlendFuncSeparatei>();

  void glColorMaski(
    int index,
    int r,
    int g,
    int b,
    int a,
  ) {
    return _glColorMaski(
      index,
      r,
      g,
      b,
      a,
    );
  }

  late final _glColorMaski_ptr =
      _lookup<ffi.NativeFunction<_c_glColorMaski>>('glColorMaski');
  late final _dart_glColorMaski _glColorMaski =
      _glColorMaski_ptr.asFunction<_dart_glColorMaski>();

  int glIsEnabledi(
    int target,
    int index,
  ) {
    return _glIsEnabledi(
      target,
      index,
    );
  }

  late final _glIsEnabledi_ptr =
      _lookup<ffi.NativeFunction<_c_glIsEnabledi>>('glIsEnabledi');
  late final _dart_glIsEnabledi _glIsEnabledi =
      _glIsEnabledi_ptr.asFunction<_dart_glIsEnabledi>();

  void glDrawElementsBaseVertex(
    int mode,
    int count,
    int type,
    ffi.Pointer<ffi.Void> indices,
    int basevertex,
  ) {
    return _glDrawElementsBaseVertex(
      mode,
      count,
      type,
      indices,
      basevertex,
    );
  }

  late final _glDrawElementsBaseVertex_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawElementsBaseVertex>>(
          'glDrawElementsBaseVertex');
  late final _dart_glDrawElementsBaseVertex _glDrawElementsBaseVertex =
      _glDrawElementsBaseVertex_ptr
          .asFunction<_dart_glDrawElementsBaseVertex>();

  void glDrawRangeElementsBaseVertex(
    int mode,
    int start,
    int end,
    int count,
    int type,
    ffi.Pointer<ffi.Void> indices,
    int basevertex,
  ) {
    return _glDrawRangeElementsBaseVertex(
      mode,
      start,
      end,
      count,
      type,
      indices,
      basevertex,
    );
  }

  late final _glDrawRangeElementsBaseVertex_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawRangeElementsBaseVertex>>(
          'glDrawRangeElementsBaseVertex');
  late final _dart_glDrawRangeElementsBaseVertex
      _glDrawRangeElementsBaseVertex = _glDrawRangeElementsBaseVertex_ptr
          .asFunction<_dart_glDrawRangeElementsBaseVertex>();

  void glDrawElementsInstancedBaseVertex(
    int mode,
    int count,
    int type,
    ffi.Pointer<ffi.Void> indices,
    int instancecount,
    int basevertex,
  ) {
    return _glDrawElementsInstancedBaseVertex(
      mode,
      count,
      type,
      indices,
      instancecount,
      basevertex,
    );
  }

  late final _glDrawElementsInstancedBaseVertex_ptr =
      _lookup<ffi.NativeFunction<_c_glDrawElementsInstancedBaseVertex>>(
          'glDrawElementsInstancedBaseVertex');
  late final _dart_glDrawElementsInstancedBaseVertex
      _glDrawElementsInstancedBaseVertex =
      _glDrawElementsInstancedBaseVertex_ptr
          .asFunction<_dart_glDrawElementsInstancedBaseVertex>();

  void glFramebufferTexture(
    int target,
    int attachment,
    int texture,
    int level,
  ) {
    return _glFramebufferTexture(
      target,
      attachment,
      texture,
      level,
    );
  }

  late final _glFramebufferTexture_ptr =
      _lookup<ffi.NativeFunction<_c_glFramebufferTexture>>(
          'glFramebufferTexture');
  late final _dart_glFramebufferTexture _glFramebufferTexture =
      _glFramebufferTexture_ptr.asFunction<_dart_glFramebufferTexture>();

  void glPrimitiveBoundingBox(
    double minX,
    double minY,
    double minZ,
    double minW,
    double maxX,
    double maxY,
    double maxZ,
    double maxW,
  ) {
    return _glPrimitiveBoundingBox(
      minX,
      minY,
      minZ,
      minW,
      maxX,
      maxY,
      maxZ,
      maxW,
    );
  }

  late final _glPrimitiveBoundingBox_ptr =
      _lookup<ffi.NativeFunction<_c_glPrimitiveBoundingBox>>(
          'glPrimitiveBoundingBox');
  late final _dart_glPrimitiveBoundingBox _glPrimitiveBoundingBox =
      _glPrimitiveBoundingBox_ptr.asFunction<_dart_glPrimitiveBoundingBox>();

  int glGetGraphicsResetStatus() {
    return _glGetGraphicsResetStatus();
  }

  late final _glGetGraphicsResetStatus_ptr =
      _lookup<ffi.NativeFunction<_c_glGetGraphicsResetStatus>>(
          'glGetGraphicsResetStatus');
  late final _dart_glGetGraphicsResetStatus _glGetGraphicsResetStatus =
      _glGetGraphicsResetStatus_ptr
          .asFunction<_dart_glGetGraphicsResetStatus>();

  void glReadnPixels(
    int x,
    int y,
    int width,
    int height,
    int format,
    int type,
    int bufSize,
    ffi.Pointer<ffi.Void> data,
  ) {
    return _glReadnPixels(
      x,
      y,
      width,
      height,
      format,
      type,
      bufSize,
      data,
    );
  }

  late final _glReadnPixels_ptr =
      _lookup<ffi.NativeFunction<_c_glReadnPixels>>('glReadnPixels');
  late final _dart_glReadnPixels _glReadnPixels =
      _glReadnPixels_ptr.asFunction<_dart_glReadnPixels>();

  void glGetnUniformfv(
    int program,
    int location,
    int bufSize,
    ffi.Pointer<ffi.Float> params,
  ) {
    return _glGetnUniformfv(
      program,
      location,
      bufSize,
      params,
    );
  }

  late final _glGetnUniformfv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetnUniformfv>>('glGetnUniformfv');
  late final _dart_glGetnUniformfv _glGetnUniformfv =
      _glGetnUniformfv_ptr.asFunction<_dart_glGetnUniformfv>();

  void glGetnUniformiv(
    int program,
    int location,
    int bufSize,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetnUniformiv(
      program,
      location,
      bufSize,
      params,
    );
  }

  late final _glGetnUniformiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetnUniformiv>>('glGetnUniformiv');
  late final _dart_glGetnUniformiv _glGetnUniformiv =
      _glGetnUniformiv_ptr.asFunction<_dart_glGetnUniformiv>();

  void glGetnUniformuiv(
    int program,
    int location,
    int bufSize,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glGetnUniformuiv(
      program,
      location,
      bufSize,
      params,
    );
  }

  late final _glGetnUniformuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetnUniformuiv>>('glGetnUniformuiv');
  late final _dart_glGetnUniformuiv _glGetnUniformuiv =
      _glGetnUniformuiv_ptr.asFunction<_dart_glGetnUniformuiv>();

  void glMinSampleShading(
    double value,
  ) {
    return _glMinSampleShading(
      value,
    );
  }

  late final _glMinSampleShading_ptr =
      _lookup<ffi.NativeFunction<_c_glMinSampleShading>>('glMinSampleShading');
  late final _dart_glMinSampleShading _glMinSampleShading =
      _glMinSampleShading_ptr.asFunction<_dart_glMinSampleShading>();

  void glPatchParameteri(
    int pname,
    int value,
  ) {
    return _glPatchParameteri(
      pname,
      value,
    );
  }

  late final _glPatchParameteri_ptr =
      _lookup<ffi.NativeFunction<_c_glPatchParameteri>>('glPatchParameteri');
  late final _dart_glPatchParameteri _glPatchParameteri =
      _glPatchParameteri_ptr.asFunction<_dart_glPatchParameteri>();

  void glTexParameterIiv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glTexParameterIiv(
      target,
      pname,
      params,
    );
  }

  late final _glTexParameterIiv_ptr =
      _lookup<ffi.NativeFunction<_c_glTexParameterIiv>>('glTexParameterIiv');
  late final _dart_glTexParameterIiv _glTexParameterIiv =
      _glTexParameterIiv_ptr.asFunction<_dart_glTexParameterIiv>();

  void glTexParameterIuiv(
    int target,
    int pname,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glTexParameterIuiv(
      target,
      pname,
      params,
    );
  }

  late final _glTexParameterIuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glTexParameterIuiv>>('glTexParameterIuiv');
  late final _dart_glTexParameterIuiv _glTexParameterIuiv =
      _glTexParameterIuiv_ptr.asFunction<_dart_glTexParameterIuiv>();

  void glGetTexParameterIiv(
    int target,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetTexParameterIiv(
      target,
      pname,
      params,
    );
  }

  late final _glGetTexParameterIiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTexParameterIiv>>(
          'glGetTexParameterIiv');
  late final _dart_glGetTexParameterIiv _glGetTexParameterIiv =
      _glGetTexParameterIiv_ptr.asFunction<_dart_glGetTexParameterIiv>();

  void glGetTexParameterIuiv(
    int target,
    int pname,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glGetTexParameterIuiv(
      target,
      pname,
      params,
    );
  }

  late final _glGetTexParameterIuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetTexParameterIuiv>>(
          'glGetTexParameterIuiv');
  late final _dart_glGetTexParameterIuiv _glGetTexParameterIuiv =
      _glGetTexParameterIuiv_ptr.asFunction<_dart_glGetTexParameterIuiv>();

  void glSamplerParameterIiv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Int32> param,
  ) {
    return _glSamplerParameterIiv(
      sampler,
      pname,
      param,
    );
  }

  late final _glSamplerParameterIiv_ptr =
      _lookup<ffi.NativeFunction<_c_glSamplerParameterIiv>>(
          'glSamplerParameterIiv');
  late final _dart_glSamplerParameterIiv _glSamplerParameterIiv =
      _glSamplerParameterIiv_ptr.asFunction<_dart_glSamplerParameterIiv>();

  void glSamplerParameterIuiv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Uint32> param,
  ) {
    return _glSamplerParameterIuiv(
      sampler,
      pname,
      param,
    );
  }

  late final _glSamplerParameterIuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glSamplerParameterIuiv>>(
          'glSamplerParameterIuiv');
  late final _dart_glSamplerParameterIuiv _glSamplerParameterIuiv =
      _glSamplerParameterIuiv_ptr.asFunction<_dart_glSamplerParameterIuiv>();

  void glGetSamplerParameterIiv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Int32> params,
  ) {
    return _glGetSamplerParameterIiv(
      sampler,
      pname,
      params,
    );
  }

  late final _glGetSamplerParameterIiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetSamplerParameterIiv>>(
          'glGetSamplerParameterIiv');
  late final _dart_glGetSamplerParameterIiv _glGetSamplerParameterIiv =
      _glGetSamplerParameterIiv_ptr
          .asFunction<_dart_glGetSamplerParameterIiv>();

  void glGetSamplerParameterIuiv(
    int sampler,
    int pname,
    ffi.Pointer<ffi.Uint32> params,
  ) {
    return _glGetSamplerParameterIuiv(
      sampler,
      pname,
      params,
    );
  }

  late final _glGetSamplerParameterIuiv_ptr =
      _lookup<ffi.NativeFunction<_c_glGetSamplerParameterIuiv>>(
          'glGetSamplerParameterIuiv');
  late final _dart_glGetSamplerParameterIuiv _glGetSamplerParameterIuiv =
      _glGetSamplerParameterIuiv_ptr
          .asFunction<_dart_glGetSamplerParameterIuiv>();

  void glTexBuffer(
    int target,
    int internalformat,
    int buffer,
  ) {
    return _glTexBuffer(
      target,
      internalformat,
      buffer,
    );
  }

  late final _glTexBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_glTexBuffer>>('glTexBuffer');
  late final _dart_glTexBuffer _glTexBuffer =
      _glTexBuffer_ptr.asFunction<_dart_glTexBuffer>();

  void glTexBufferRange(
    int target,
    int internalformat,
    int buffer,
    int offset,
    int size,
  ) {
    return _glTexBufferRange(
      target,
      internalformat,
      buffer,
      offset,
      size,
    );
  }

  late final _glTexBufferRange_ptr =
      _lookup<ffi.NativeFunction<_c_glTexBufferRange>>('glTexBufferRange');
  late final _dart_glTexBufferRange _glTexBufferRange =
      _glTexBufferRange_ptr.asFunction<_dart_glTexBufferRange>();

  void glTexStorage3DMultisample(
    int target,
    int samples,
    int internalformat,
    int width,
    int height,
    int depth,
    int fixedsamplelocations,
  ) {
    return _glTexStorage3DMultisample(
      target,
      samples,
      internalformat,
      width,
      height,
      depth,
      fixedsamplelocations,
    );
  }

  late final _glTexStorage3DMultisample_ptr =
      _lookup<ffi.NativeFunction<_c_glTexStorage3DMultisample>>(
          'glTexStorage3DMultisample');
  late final _dart_glTexStorage3DMultisample _glTexStorage3DMultisample =
      _glTexStorage3DMultisample_ptr
          .asFunction<_dart_glTexStorage3DMultisample>();
}

class __darwin_pthread_handler_rec extends ffi.Struct {
  external ffi.Pointer<ffi.NativeFunction<_typedefC_1>> __routine;

  external ffi.Pointer<ffi.Void> __arg;

  external ffi.Pointer<__darwin_pthread_handler_rec> __next;
}

class _opaque_pthread_attr_t extends ffi.Opaque {}

class _opaque_pthread_cond_t extends ffi.Opaque {}

class _opaque_pthread_condattr_t extends ffi.Opaque {}

class _opaque_pthread_mutex_t extends ffi.Opaque {}

class _opaque_pthread_mutexattr_t extends ffi.Opaque {}

class _opaque_pthread_once_t extends ffi.Opaque {}

class _opaque_pthread_rwlock_t extends ffi.Opaque {}

class _opaque_pthread_rwlockattr_t extends ffi.Opaque {}

class _opaque_pthread_t extends ffi.Opaque {}

abstract class khronos_boolean_enum_t {
  static const int KHRONOS_FALSE = 0;
  static const int KHRONOS_TRUE = 1;
  static const int KHRONOS_BOOLEAN_ENUM_FORCE_SIZE = 2147483647;
}

class __GLsync extends ffi.Opaque {}

const int __gles2_gl2ext_h_ = 1;

const int GL_KHR_blend_equation_advanced = 1;

const int GL_MULTIPLY_KHR = 37524;

const int GL_SCREEN_KHR = 37525;

const int GL_OVERLAY_KHR = 37526;

const int GL_DARKEN_KHR = 37527;

const int GL_LIGHTEN_KHR = 37528;

const int GL_COLORDODGE_KHR = 37529;

const int GL_COLORBURN_KHR = 37530;

const int GL_HARDLIGHT_KHR = 37531;

const int GL_SOFTLIGHT_KHR = 37532;

const int GL_DIFFERENCE_KHR = 37534;

const int GL_EXCLUSION_KHR = 37536;

const int GL_HSL_HUE_KHR = 37549;

const int GL_HSL_SATURATION_KHR = 37550;

const int GL_HSL_COLOR_KHR = 37551;

const int GL_HSL_LUMINOSITY_KHR = 37552;

const int GL_KHR_blend_equation_advanced_coherent = 1;

const int GL_BLEND_ADVANCED_COHERENT_KHR = 37509;

const int GL_KHR_context_flush_control = 1;

const int GL_CONTEXT_RELEASE_BEHAVIOR_KHR = 33531;

const int GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR = 33532;

const int GL_KHR_debug = 1;

const int GL_SAMPLER = 33510;

const int GL_DEBUG_OUTPUT_SYNCHRONOUS_KHR = 33346;

const int GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR = 33347;

const int GL_DEBUG_CALLBACK_FUNCTION_KHR = 33348;

const int GL_DEBUG_CALLBACK_USER_PARAM_KHR = 33349;

const int GL_DEBUG_SOURCE_API_KHR = 33350;

const int GL_DEBUG_SOURCE_WINDOW_SYSTEM_KHR = 33351;

const int GL_DEBUG_SOURCE_SHADER_COMPILER_KHR = 33352;

const int GL_DEBUG_SOURCE_THIRD_PARTY_KHR = 33353;

const int GL_DEBUG_SOURCE_APPLICATION_KHR = 33354;

const int GL_DEBUG_SOURCE_OTHER_KHR = 33355;

const int GL_DEBUG_TYPE_ERROR_KHR = 33356;

const int GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR = 33357;

const int GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR = 33358;

const int GL_DEBUG_TYPE_PORTABILITY_KHR = 33359;

const int GL_DEBUG_TYPE_PERFORMANCE_KHR = 33360;

const int GL_DEBUG_TYPE_OTHER_KHR = 33361;

const int GL_DEBUG_TYPE_MARKER_KHR = 33384;

const int GL_DEBUG_TYPE_PUSH_GROUP_KHR = 33385;

const int GL_DEBUG_TYPE_POP_GROUP_KHR = 33386;

const int GL_DEBUG_SEVERITY_NOTIFICATION_KHR = 33387;

const int GL_MAX_DEBUG_GROUP_STACK_DEPTH_KHR = 33388;

const int GL_DEBUG_GROUP_STACK_DEPTH_KHR = 33389;

const int GL_BUFFER_KHR = 33504;

const int GL_SHADER_KHR = 33505;

const int GL_PROGRAM_KHR = 33506;

const int GL_VERTEX_ARRAY_KHR = 32884;

const int GL_QUERY_KHR = 33507;

const int GL_PROGRAM_PIPELINE_KHR = 33508;

const int GL_SAMPLER_KHR = 33510;

const int GL_MAX_LABEL_LENGTH_KHR = 33512;

const int GL_MAX_DEBUG_MESSAGE_LENGTH_KHR = 37187;

const int GL_MAX_DEBUG_LOGGED_MESSAGES_KHR = 37188;

const int GL_DEBUG_LOGGED_MESSAGES_KHR = 37189;

const int GL_DEBUG_SEVERITY_HIGH_KHR = 37190;

const int GL_DEBUG_SEVERITY_MEDIUM_KHR = 37191;

const int GL_DEBUG_SEVERITY_LOW_KHR = 37192;

const int GL_DEBUG_OUTPUT_KHR = 37600;

const int GL_CONTEXT_FLAG_DEBUG_BIT_KHR = 2;

const int GL_STACK_OVERFLOW_KHR = 1283;

const int GL_STACK_UNDERFLOW_KHR = 1284;

const int GL_KHR_no_error = 1;

const int GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR = 8;

const int GL_KHR_parallel_shader_compile = 1;

const int GL_MAX_SHADER_COMPILER_THREADS_KHR = 37296;

const int GL_COMPLETION_STATUS_KHR = 37297;

const int GL_KHR_robust_buffer_access_behavior = 1;

const int GL_KHR_robustness = 1;

const int GL_CONTEXT_ROBUST_ACCESS_KHR = 37107;

const int GL_LOSE_CONTEXT_ON_RESET_KHR = 33362;

const int GL_GUILTY_CONTEXT_RESET_KHR = 33363;

const int GL_INNOCENT_CONTEXT_RESET_KHR = 33364;

const int GL_UNKNOWN_CONTEXT_RESET_KHR = 33365;

const int GL_RESET_NOTIFICATION_STRATEGY_KHR = 33366;

const int GL_NO_RESET_NOTIFICATION_KHR = 33377;

const int GL_CONTEXT_LOST_KHR = 1287;

const int GL_KHR_shader_subgroup = 1;

const int GL_SUBGROUP_SIZE_KHR = 38194;

const int GL_SUBGROUP_SUPPORTED_STAGES_KHR = 38195;

const int GL_SUBGROUP_SUPPORTED_FEATURES_KHR = 38196;

const int GL_SUBGROUP_QUAD_ALL_STAGES_KHR = 38197;

const int GL_SUBGROUP_FEATURE_BASIC_BIT_KHR = 1;

const int GL_SUBGROUP_FEATURE_VOTE_BIT_KHR = 2;

const int GL_SUBGROUP_FEATURE_ARITHMETIC_BIT_KHR = 4;

const int GL_SUBGROUP_FEATURE_BALLOT_BIT_KHR = 8;

const int GL_SUBGROUP_FEATURE_SHUFFLE_BIT_KHR = 16;

const int GL_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT_KHR = 32;

const int GL_SUBGROUP_FEATURE_CLUSTERED_BIT_KHR = 64;

const int GL_SUBGROUP_FEATURE_QUAD_BIT_KHR = 128;

const int GL_KHR_texture_compression_astc_hdr = 1;

const int GL_COMPRESSED_RGBA_ASTC_4x4_KHR = 37808;

const int GL_COMPRESSED_RGBA_ASTC_5x4_KHR = 37809;

const int GL_COMPRESSED_RGBA_ASTC_5x5_KHR = 37810;

const int GL_COMPRESSED_RGBA_ASTC_6x5_KHR = 37811;

const int GL_COMPRESSED_RGBA_ASTC_6x6_KHR = 37812;

const int GL_COMPRESSED_RGBA_ASTC_8x5_KHR = 37813;

const int GL_COMPRESSED_RGBA_ASTC_8x6_KHR = 37814;

const int GL_COMPRESSED_RGBA_ASTC_8x8_KHR = 37815;

const int GL_COMPRESSED_RGBA_ASTC_10x5_KHR = 37816;

const int GL_COMPRESSED_RGBA_ASTC_10x6_KHR = 37817;

const int GL_COMPRESSED_RGBA_ASTC_10x8_KHR = 37818;

const int GL_COMPRESSED_RGBA_ASTC_10x10_KHR = 37819;

const int GL_COMPRESSED_RGBA_ASTC_12x10_KHR = 37820;

const int GL_COMPRESSED_RGBA_ASTC_12x12_KHR = 37821;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 37840;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 37841;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 37842;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 37843;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 37844;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 37845;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 37846;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 37847;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 37848;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 37849;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 37850;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 37851;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 37852;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 37853;

const int GL_KHR_texture_compression_astc_ldr = 1;

const int GL_KHR_texture_compression_astc_sliced_3d = 1;

const int GL_OES_EGL_image = 1;

const int GL_OES_EGL_image_external = 1;

const int GL_TEXTURE_EXTERNAL_OES = 36197;

const int GL_TEXTURE_BINDING_EXTERNAL_OES = 36199;

const int GL_REQUIRED_TEXTURE_IMAGE_UNITS_OES = 36200;

const int GL_SAMPLER_EXTERNAL_OES = 36198;

const int GL_OES_EGL_image_external_essl3 = 1;

const int GL_OES_compressed_ETC1_RGB8_sub_texture = 1;

const int GL_OES_compressed_ETC1_RGB8_texture = 1;

const int GL_ETC1_RGB8_OES = 36196;

const int GL_OES_compressed_paletted_texture = 1;

const int GL_PALETTE4_RGB8_OES = 35728;

const int GL_PALETTE4_RGBA8_OES = 35729;

const int GL_PALETTE4_R5_G6_B5_OES = 35730;

const int GL_PALETTE4_RGBA4_OES = 35731;

const int GL_PALETTE4_RGB5_A1_OES = 35732;

const int GL_PALETTE8_RGB8_OES = 35733;

const int GL_PALETTE8_RGBA8_OES = 35734;

const int GL_PALETTE8_R5_G6_B5_OES = 35735;

const int GL_PALETTE8_RGBA4_OES = 35736;

const int GL_PALETTE8_RGB5_A1_OES = 35737;

const int GL_OES_copy_image = 1;

const int GL_OES_depth24 = 1;

const int GL_DEPTH_COMPONENT24_OES = 33190;

const int GL_OES_depth32 = 1;

const int GL_DEPTH_COMPONENT32_OES = 33191;

const int GL_OES_depth_texture = 1;

const int GL_OES_draw_buffers_indexed = 1;

const int GL_MIN = 32775;

const int GL_MAX = 32776;

const int GL_OES_draw_elements_base_vertex = 1;

const int GL_OES_element_index_uint = 1;

const int GL_OES_fbo_render_mipmap = 1;

const int GL_OES_fragment_precision_high = 1;

const int GL_OES_geometry_point_size = 1;

const int GL_OES_geometry_shader = 1;

const int GL_GEOMETRY_SHADER_OES = 36313;

const int GL_GEOMETRY_SHADER_BIT_OES = 4;

const int GL_GEOMETRY_LINKED_VERTICES_OUT_OES = 35094;

const int GL_GEOMETRY_LINKED_INPUT_TYPE_OES = 35095;

const int GL_GEOMETRY_LINKED_OUTPUT_TYPE_OES = 35096;

const int GL_GEOMETRY_SHADER_INVOCATIONS_OES = 34943;

const int GL_LAYER_PROVOKING_VERTEX_OES = 33374;

const int GL_LINES_ADJACENCY_OES = 10;

const int GL_LINE_STRIP_ADJACENCY_OES = 11;

const int GL_TRIANGLES_ADJACENCY_OES = 12;

const int GL_TRIANGLE_STRIP_ADJACENCY_OES = 13;

const int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_OES = 36319;

const int GL_MAX_GEOMETRY_UNIFORM_BLOCKS_OES = 35372;

const int GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_OES = 35378;

const int GL_MAX_GEOMETRY_INPUT_COMPONENTS_OES = 37155;

const int GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_OES = 37156;

const int GL_MAX_GEOMETRY_OUTPUT_VERTICES_OES = 36320;

const int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_OES = 36321;

const int GL_MAX_GEOMETRY_SHADER_INVOCATIONS_OES = 36442;

const int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_OES = 35881;

const int GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_OES = 37583;

const int GL_MAX_GEOMETRY_ATOMIC_COUNTERS_OES = 37589;

const int GL_MAX_GEOMETRY_IMAGE_UNIFORMS_OES = 37069;

const int GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_OES = 37079;

const int GL_FIRST_VERTEX_CONVENTION_OES = 36429;

const int GL_LAST_VERTEX_CONVENTION_OES = 36430;

const int GL_UNDEFINED_VERTEX_OES = 33376;

const int GL_PRIMITIVES_GENERATED_OES = 35975;

const int GL_FRAMEBUFFER_DEFAULT_LAYERS_OES = 37650;

const int GL_MAX_FRAMEBUFFER_LAYERS_OES = 37655;

const int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_OES = 36264;

const int GL_FRAMEBUFFER_ATTACHMENT_LAYERED_OES = 36263;

const int GL_REFERENCED_BY_GEOMETRY_SHADER_OES = 37641;

const int GL_OES_get_program_binary = 1;

const int GL_PROGRAM_BINARY_LENGTH_OES = 34625;

const int GL_NUM_PROGRAM_BINARY_FORMATS_OES = 34814;

const int GL_PROGRAM_BINARY_FORMATS_OES = 34815;

const int GL_OES_gpu_shader5 = 1;

const int GL_OES_mapbuffer = 1;

const int GL_WRITE_ONLY_OES = 35001;

const int GL_BUFFER_ACCESS_OES = 35003;

const int GL_BUFFER_MAPPED_OES = 35004;

const int GL_BUFFER_MAP_POINTER_OES = 35005;

const int GL_OES_packed_depth_stencil = 1;

const int GL_DEPTH_STENCIL_OES = 34041;

const int GL_UNSIGNED_INT_24_8_OES = 34042;

const int GL_DEPTH24_STENCIL8_OES = 35056;

const int GL_OES_primitive_bounding_box = 1;

const int GL_PRIMITIVE_BOUNDING_BOX_OES = 37566;

const int GL_OES_required_internalformat = 1;

const int GL_ALPHA8_OES = 32828;

const int GL_DEPTH_COMPONENT16_OES = 33189;

const int GL_LUMINANCE4_ALPHA4_OES = 32835;

const int GL_LUMINANCE8_ALPHA8_OES = 32837;

const int GL_LUMINANCE8_OES = 32832;

const int GL_RGBA4_OES = 32854;

const int GL_RGB5_A1_OES = 32855;

const int GL_RGB565_OES = 36194;

const int GL_RGB8_OES = 32849;

const int GL_RGBA8_OES = 32856;

const int GL_RGB10_EXT = 32850;

const int GL_RGB10_A2_EXT = 32857;

const int GL_OES_rgb8_rgba8 = 1;

const int GL_OES_sample_shading = 1;

const int GL_SAMPLE_SHADING_OES = 35894;

const int GL_MIN_SAMPLE_SHADING_VALUE_OES = 35895;

const int GL_OES_sample_variables = 1;

const int GL_OES_shader_image_atomic = 1;

const int GL_OES_shader_io_blocks = 1;

const int GL_OES_shader_multisample_interpolation = 1;

const int GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_OES = 36443;

const int GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_OES = 36444;

const int GL_FRAGMENT_INTERPOLATION_OFFSET_BITS_OES = 36445;

const int GL_OES_standard_derivatives = 1;

const int GL_FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 35723;

const int GL_OES_stencil1 = 1;

const int GL_STENCIL_INDEX1_OES = 36166;

const int GL_OES_stencil4 = 1;

const int GL_STENCIL_INDEX4_OES = 36167;

const int GL_OES_surfaceless_context = 1;

const int GL_FRAMEBUFFER_UNDEFINED_OES = 33305;

const int GL_OES_tessellation_point_size = 1;

const int GL_OES_tessellation_shader = 1;

const int GL_PATCHES_OES = 14;

const int GL_PATCH_VERTICES_OES = 36466;

const int GL_TESS_CONTROL_OUTPUT_VERTICES_OES = 36469;

const int GL_TESS_GEN_MODE_OES = 36470;

const int GL_TESS_GEN_SPACING_OES = 36471;

const int GL_TESS_GEN_VERTEX_ORDER_OES = 36472;

const int GL_TESS_GEN_POINT_MODE_OES = 36473;

const int GL_ISOLINES_OES = 36474;

const int GL_QUADS_OES = 7;

const int GL_FRACTIONAL_ODD_OES = 36475;

const int GL_FRACTIONAL_EVEN_OES = 36476;

const int GL_MAX_PATCH_VERTICES_OES = 36477;

const int GL_MAX_TESS_GEN_LEVEL_OES = 36478;

const int GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_OES = 36479;

const int GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_OES = 36480;

const int GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_OES = 36481;

const int GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_OES = 36482;

const int GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_OES = 36483;

const int GL_MAX_TESS_PATCH_COMPONENTS_OES = 36484;

const int GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_OES = 36485;

const int GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_OES = 36486;

const int GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_OES = 36489;

const int GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_OES = 36490;

const int GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_OES = 34924;

const int GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_OES = 34925;

const int GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_OES = 36382;

const int GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_OES = 36383;

const int GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_OES = 37581;

const int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_OES = 37582;

const int GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_OES = 37587;

const int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_OES = 37588;

const int GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_OES = 37067;

const int GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_OES = 37068;

const int GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_OES = 37080;

const int GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_OES = 37081;

const int GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED_OES = 33313;

const int GL_IS_PER_PATCH_OES = 37607;

const int GL_REFERENCED_BY_TESS_CONTROL_SHADER_OES = 37639;

const int GL_REFERENCED_BY_TESS_EVALUATION_SHADER_OES = 37640;

const int GL_TESS_CONTROL_SHADER_OES = 36488;

const int GL_TESS_EVALUATION_SHADER_OES = 36487;

const int GL_TESS_CONTROL_SHADER_BIT_OES = 8;

const int GL_TESS_EVALUATION_SHADER_BIT_OES = 16;

const int GL_OES_texture_3D = 1;

const int GL_TEXTURE_WRAP_R_OES = 32882;

const int GL_TEXTURE_3D_OES = 32879;

const int GL_TEXTURE_BINDING_3D_OES = 32874;

const int GL_MAX_3D_TEXTURE_SIZE_OES = 32883;

const int GL_SAMPLER_3D_OES = 35679;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES = 36052;

const int GL_OES_texture_border_clamp = 1;

const int GL_TEXTURE_BORDER_COLOR_OES = 4100;

const int GL_CLAMP_TO_BORDER_OES = 33069;

const int GL_OES_texture_buffer = 1;

const int GL_TEXTURE_BUFFER_OES = 35882;

const int GL_TEXTURE_BUFFER_BINDING_OES = 35882;

const int GL_MAX_TEXTURE_BUFFER_SIZE_OES = 35883;

const int GL_TEXTURE_BINDING_BUFFER_OES = 35884;

const int GL_TEXTURE_BUFFER_DATA_STORE_BINDING_OES = 35885;

const int GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT_OES = 37279;

const int GL_SAMPLER_BUFFER_OES = 36290;

const int GL_INT_SAMPLER_BUFFER_OES = 36304;

const int GL_UNSIGNED_INT_SAMPLER_BUFFER_OES = 36312;

const int GL_IMAGE_BUFFER_OES = 36945;

const int GL_INT_IMAGE_BUFFER_OES = 36956;

const int GL_UNSIGNED_INT_IMAGE_BUFFER_OES = 36967;

const int GL_TEXTURE_BUFFER_OFFSET_OES = 37277;

const int GL_TEXTURE_BUFFER_SIZE_OES = 37278;

const int GL_OES_texture_compression_astc = 1;

const int GL_COMPRESSED_RGBA_ASTC_3x3x3_OES = 37824;

const int GL_COMPRESSED_RGBA_ASTC_4x3x3_OES = 37825;

const int GL_COMPRESSED_RGBA_ASTC_4x4x3_OES = 37826;

const int GL_COMPRESSED_RGBA_ASTC_4x4x4_OES = 37827;

const int GL_COMPRESSED_RGBA_ASTC_5x4x4_OES = 37828;

const int GL_COMPRESSED_RGBA_ASTC_5x5x4_OES = 37829;

const int GL_COMPRESSED_RGBA_ASTC_5x5x5_OES = 37830;

const int GL_COMPRESSED_RGBA_ASTC_6x5x5_OES = 37831;

const int GL_COMPRESSED_RGBA_ASTC_6x6x5_OES = 37832;

const int GL_COMPRESSED_RGBA_ASTC_6x6x6_OES = 37833;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = 37856;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = 37857;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = 37858;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = 37859;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = 37860;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = 37861;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = 37862;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = 37863;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = 37864;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = 37865;

const int GL_OES_texture_cube_map_array = 1;

const int GL_TEXTURE_CUBE_MAP_ARRAY_OES = 36873;

const int GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_OES = 36874;

const int GL_SAMPLER_CUBE_MAP_ARRAY_OES = 36876;

const int GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_OES = 36877;

const int GL_INT_SAMPLER_CUBE_MAP_ARRAY_OES = 36878;

const int GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_OES = 36879;

const int GL_IMAGE_CUBE_MAP_ARRAY_OES = 36948;

const int GL_INT_IMAGE_CUBE_MAP_ARRAY_OES = 36959;

const int GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_OES = 36970;

const int GL_OES_texture_float = 1;

const int GL_OES_texture_float_linear = 1;

const int GL_OES_texture_half_float = 1;

const int GL_HALF_FLOAT_OES = 36193;

const int GL_OES_texture_half_float_linear = 1;

const int GL_OES_texture_npot = 1;

const int GL_OES_texture_stencil8 = 1;

const int GL_STENCIL_INDEX_OES = 6401;

const int GL_STENCIL_INDEX8_OES = 36168;

const int GL_OES_texture_storage_multisample_2d_array = 1;

const int GL_TEXTURE_2D_MULTISAMPLE_ARRAY_OES = 37122;

const int GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES = 37125;

const int GL_SAMPLER_2D_MULTISAMPLE_ARRAY_OES = 37131;

const int GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES = 37132;

const int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES = 37133;

const int GL_OES_texture_view = 1;

const int GL_TEXTURE_VIEW_MIN_LEVEL_OES = 33499;

const int GL_TEXTURE_VIEW_NUM_LEVELS_OES = 33500;

const int GL_TEXTURE_VIEW_MIN_LAYER_OES = 33501;

const int GL_TEXTURE_VIEW_NUM_LAYERS_OES = 33502;

const int GL_TEXTURE_IMMUTABLE_LEVELS = 33503;

const int GL_OES_vertex_array_object = 1;

const int GL_VERTEX_ARRAY_BINDING_OES = 34229;

const int GL_OES_vertex_half_float = 1;

const int GL_OES_vertex_type_10_10_10_2 = 1;

const int GL_UNSIGNED_INT_10_10_10_2_OES = 36342;

const int GL_INT_10_10_10_2_OES = 36343;

const int GL_OES_viewport_array = 1;

const int GL_MAX_VIEWPORTS_OES = 33371;

const int GL_VIEWPORT_SUBPIXEL_BITS_OES = 33372;

const int GL_VIEWPORT_BOUNDS_RANGE_OES = 33373;

const int GL_VIEWPORT_INDEX_PROVOKING_VERTEX_OES = 33375;

const int GL_AMD_compressed_3DC_texture = 1;

const int GL_3DC_X_AMD = 34809;

const int GL_3DC_XY_AMD = 34810;

const int GL_AMD_compressed_ATC_texture = 1;

const int GL_ATC_RGB_AMD = 35986;

const int GL_ATC_RGBA_EXPLICIT_ALPHA_AMD = 35987;

const int GL_ATC_RGBA_INTERPOLATED_ALPHA_AMD = 34798;

const int GL_AMD_framebuffer_multisample_advanced = 1;

const int GL_RENDERBUFFER_STORAGE_SAMPLES_AMD = 37298;

const int GL_MAX_COLOR_FRAMEBUFFER_SAMPLES_AMD = 37299;

const int GL_MAX_COLOR_FRAMEBUFFER_STORAGE_SAMPLES_AMD = 37300;

const int GL_MAX_DEPTH_STENCIL_FRAMEBUFFER_SAMPLES_AMD = 37301;

const int GL_NUM_SUPPORTED_MULTISAMPLE_MODES_AMD = 37302;

const int GL_SUPPORTED_MULTISAMPLE_MODES_AMD = 37303;

const int GL_AMD_performance_monitor = 1;

const int GL_COUNTER_TYPE_AMD = 35776;

const int GL_COUNTER_RANGE_AMD = 35777;

const int GL_UNSIGNED_INT64_AMD = 35778;

const int GL_PERCENTAGE_AMD = 35779;

const int GL_PERFMON_RESULT_AVAILABLE_AMD = 35780;

const int GL_PERFMON_RESULT_SIZE_AMD = 35781;

const int GL_PERFMON_RESULT_AMD = 35782;

const int GL_AMD_program_binary_Z400 = 1;

const int GL_Z400_BINARY_AMD = 34624;

const int GL_ANDROID_extension_pack_es31a = 1;

const int GL_ANGLE_depth_texture = 1;

const int GL_ANGLE_framebuffer_blit = 1;

const int GL_READ_FRAMEBUFFER_ANGLE = 36008;

const int GL_DRAW_FRAMEBUFFER_ANGLE = 36009;

const int GL_DRAW_FRAMEBUFFER_BINDING_ANGLE = 36006;

const int GL_READ_FRAMEBUFFER_BINDING_ANGLE = 36010;

const int GL_ANGLE_framebuffer_multisample = 1;

const int GL_RENDERBUFFER_SAMPLES_ANGLE = 36011;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE = 36182;

const int GL_MAX_SAMPLES_ANGLE = 36183;

const int GL_ANGLE_instanced_arrays = 1;

const int GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 35070;

const int GL_ANGLE_pack_reverse_row_order = 1;

const int GL_PACK_REVERSE_ROW_ORDER_ANGLE = 37796;

const int GL_ANGLE_program_binary = 1;

const int GL_PROGRAM_BINARY_ANGLE = 37798;

const int GL_ANGLE_texture_compression_dxt3 = 1;

const int GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE = 33778;

const int GL_ANGLE_texture_compression_dxt5 = 1;

const int GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE = 33779;

const int GL_ANGLE_texture_usage = 1;

const int GL_TEXTURE_USAGE_ANGLE = 37794;

const int GL_FRAMEBUFFER_ATTACHMENT_ANGLE = 37795;

const int GL_ANGLE_translated_shader_source = 1;

const int GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE = 37792;

const int GL_APPLE_clip_distance = 1;

const int GL_MAX_CLIP_DISTANCES_APPLE = 3378;

const int GL_CLIP_DISTANCE0_APPLE = 12288;

const int GL_CLIP_DISTANCE1_APPLE = 12289;

const int GL_CLIP_DISTANCE2_APPLE = 12290;

const int GL_CLIP_DISTANCE3_APPLE = 12291;

const int GL_CLIP_DISTANCE4_APPLE = 12292;

const int GL_CLIP_DISTANCE5_APPLE = 12293;

const int GL_CLIP_DISTANCE6_APPLE = 12294;

const int GL_CLIP_DISTANCE7_APPLE = 12295;

const int GL_APPLE_color_buffer_packed_float = 1;

const int GL_APPLE_copy_texture_levels = 1;

const int GL_APPLE_framebuffer_multisample = 1;

const int GL_RENDERBUFFER_SAMPLES_APPLE = 36011;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE = 36182;

const int GL_MAX_SAMPLES_APPLE = 36183;

const int GL_READ_FRAMEBUFFER_APPLE = 36008;

const int GL_DRAW_FRAMEBUFFER_APPLE = 36009;

const int GL_DRAW_FRAMEBUFFER_BINDING_APPLE = 36006;

const int GL_READ_FRAMEBUFFER_BINDING_APPLE = 36010;

const int GL_APPLE_rgb_422 = 1;

const int GL_RGB_422_APPLE = 35359;

const int GL_UNSIGNED_SHORT_8_8_APPLE = 34234;

const int GL_UNSIGNED_SHORT_8_8_REV_APPLE = 34235;

const int GL_RGB_RAW_422_APPLE = 35409;

const int GL_APPLE_sync = 1;

const int GL_SYNC_OBJECT_APPLE = 35411;

const int GL_MAX_SERVER_WAIT_TIMEOUT_APPLE = 37137;

const int GL_OBJECT_TYPE_APPLE = 37138;

const int GL_SYNC_CONDITION_APPLE = 37139;

const int GL_SYNC_STATUS_APPLE = 37140;

const int GL_SYNC_FLAGS_APPLE = 37141;

const int GL_SYNC_FENCE_APPLE = 37142;

const int GL_SYNC_GPU_COMMANDS_COMPLETE_APPLE = 37143;

const int GL_UNSIGNALED_APPLE = 37144;

const int GL_SIGNALED_APPLE = 37145;

const int GL_ALREADY_SIGNALED_APPLE = 37146;

const int GL_TIMEOUT_EXPIRED_APPLE = 37147;

const int GL_CONDITION_SATISFIED_APPLE = 37148;

const int GL_WAIT_FAILED_APPLE = 37149;

const int GL_SYNC_FLUSH_COMMANDS_BIT_APPLE = 1;

const int GL_TIMEOUT_IGNORED_APPLE = -1;

const int GL_APPLE_texture_format_BGRA8888 = 1;

const int GL_BGRA_EXT = 32993;

const int GL_BGRA8_EXT = 37793;

const int GL_APPLE_texture_max_level = 1;

const int GL_TEXTURE_MAX_LEVEL_APPLE = 33085;

const int GL_APPLE_texture_packed_float = 1;

const int GL_UNSIGNED_INT_10F_11F_11F_REV_APPLE = 35899;

const int GL_UNSIGNED_INT_5_9_9_9_REV_APPLE = 35902;

const int GL_R11F_G11F_B10F_APPLE = 35898;

const int GL_RGB9_E5_APPLE = 35901;

const int GL_ARM_mali_program_binary = 1;

const int GL_MALI_PROGRAM_BINARY_ARM = 36705;

const int GL_ARM_mali_shader_binary = 1;

const int GL_MALI_SHADER_BINARY_ARM = 36704;

const int GL_ARM_rgba8 = 1;

const int GL_ARM_shader_framebuffer_fetch = 1;

const int GL_FETCH_PER_SAMPLE_ARM = 36709;

const int GL_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM = 36710;

const int GL_ARM_shader_framebuffer_fetch_depth_stencil = 1;

const int GL_ARM_texture_unnormalized_coordinates = 1;

const int GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = 36714;

const int GL_DMP_program_binary = 1;

const int GL_SMAPHS30_PROGRAM_BINARY_DMP = 37457;

const int GL_SMAPHS_PROGRAM_BINARY_DMP = 37458;

const int GL_DMP_PROGRAM_BINARY_DMP = 37459;

const int GL_DMP_shader_binary = 1;

const int GL_SHADER_BINARY_DMP = 37456;

const int GL_EXT_EGL_image_array = 1;

const int GL_EXT_EGL_image_storage = 1;

const int GL_EXT_YUV_target = 1;

const int GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT = 35815;

const int GL_EXT_base_instance = 1;

const int GL_EXT_blend_func_extended = 1;

const int GL_SRC1_COLOR_EXT = 35065;

const int GL_SRC1_ALPHA_EXT = 34185;

const int GL_ONE_MINUS_SRC1_COLOR_EXT = 35066;

const int GL_ONE_MINUS_SRC1_ALPHA_EXT = 35067;

const int GL_SRC_ALPHA_SATURATE_EXT = 776;

const int GL_LOCATION_INDEX_EXT = 37647;

const int GL_MAX_DUAL_SOURCE_DRAW_BUFFERS_EXT = 35068;

const int GL_EXT_blend_minmax = 1;

const int GL_MIN_EXT = 32775;

const int GL_MAX_EXT = 32776;

const int GL_EXT_buffer_storage = 1;

const int GL_MAP_READ_BIT = 1;

const int GL_MAP_WRITE_BIT = 2;

const int GL_MAP_PERSISTENT_BIT_EXT = 64;

const int GL_MAP_COHERENT_BIT_EXT = 128;

const int GL_DYNAMIC_STORAGE_BIT_EXT = 256;

const int GL_CLIENT_STORAGE_BIT_EXT = 512;

const int GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT = 16384;

const int GL_BUFFER_IMMUTABLE_STORAGE_EXT = 33311;

const int GL_BUFFER_STORAGE_FLAGS_EXT = 33312;

const int GL_EXT_clear_texture = 1;

const int GL_EXT_clip_control = 1;

const int GL_LOWER_LEFT_EXT = 36001;

const int GL_UPPER_LEFT_EXT = 36002;

const int GL_NEGATIVE_ONE_TO_ONE_EXT = 37726;

const int GL_ZERO_TO_ONE_EXT = 37727;

const int GL_CLIP_ORIGIN_EXT = 37724;

const int GL_CLIP_DEPTH_MODE_EXT = 37725;

const int GL_EXT_clip_cull_distance = 1;

const int GL_MAX_CLIP_DISTANCES_EXT = 3378;

const int GL_MAX_CULL_DISTANCES_EXT = 33529;

const int GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES_EXT = 33530;

const int GL_CLIP_DISTANCE0_EXT = 12288;

const int GL_CLIP_DISTANCE1_EXT = 12289;

const int GL_CLIP_DISTANCE2_EXT = 12290;

const int GL_CLIP_DISTANCE3_EXT = 12291;

const int GL_CLIP_DISTANCE4_EXT = 12292;

const int GL_CLIP_DISTANCE5_EXT = 12293;

const int GL_CLIP_DISTANCE6_EXT = 12294;

const int GL_CLIP_DISTANCE7_EXT = 12295;

const int GL_EXT_color_buffer_float = 1;

const int GL_EXT_color_buffer_half_float = 1;

const int GL_RGBA16F_EXT = 34842;

const int GL_RGB16F_EXT = 34843;

const int GL_RG16F_EXT = 33327;

const int GL_R16F_EXT = 33325;

const int GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT = 33297;

const int GL_UNSIGNED_NORMALIZED_EXT = 35863;

const int GL_EXT_conservative_depth = 1;

const int GL_EXT_copy_image = 1;

const int GL_EXT_debug_label = 1;

const int GL_PROGRAM_PIPELINE_OBJECT_EXT = 35407;

const int GL_PROGRAM_OBJECT_EXT = 35648;

const int GL_SHADER_OBJECT_EXT = 35656;

const int GL_BUFFER_OBJECT_EXT = 37201;

const int GL_QUERY_OBJECT_EXT = 37203;

const int GL_VERTEX_ARRAY_OBJECT_EXT = 37204;

const int GL_TRANSFORM_FEEDBACK = 36386;

const int GL_EXT_debug_marker = 1;

const int GL_EXT_depth_clamp = 1;

const int GL_DEPTH_CLAMP_EXT = 34383;

const int GL_EXT_discard_framebuffer = 1;

const int GL_COLOR_EXT = 6144;

const int GL_DEPTH_EXT = 6145;

const int GL_STENCIL_EXT = 6146;

const int GL_EXT_disjoint_timer_query = 1;

const int GL_QUERY_COUNTER_BITS_EXT = 34916;

const int GL_CURRENT_QUERY_EXT = 34917;

const int GL_QUERY_RESULT_EXT = 34918;

const int GL_QUERY_RESULT_AVAILABLE_EXT = 34919;

const int GL_TIME_ELAPSED_EXT = 35007;

const int GL_TIMESTAMP_EXT = 36392;

const int GL_GPU_DISJOINT_EXT = 36795;

const int GL_EXT_draw_buffers = 1;

const int GL_MAX_COLOR_ATTACHMENTS_EXT = 36063;

const int GL_MAX_DRAW_BUFFERS_EXT = 34852;

const int GL_DRAW_BUFFER0_EXT = 34853;

const int GL_DRAW_BUFFER1_EXT = 34854;

const int GL_DRAW_BUFFER2_EXT = 34855;

const int GL_DRAW_BUFFER3_EXT = 34856;

const int GL_DRAW_BUFFER4_EXT = 34857;

const int GL_DRAW_BUFFER5_EXT = 34858;

const int GL_DRAW_BUFFER6_EXT = 34859;

const int GL_DRAW_BUFFER7_EXT = 34860;

const int GL_DRAW_BUFFER8_EXT = 34861;

const int GL_DRAW_BUFFER9_EXT = 34862;

const int GL_DRAW_BUFFER10_EXT = 34863;

const int GL_DRAW_BUFFER11_EXT = 34864;

const int GL_DRAW_BUFFER12_EXT = 34865;

const int GL_DRAW_BUFFER13_EXT = 34866;

const int GL_DRAW_BUFFER14_EXT = 34867;

const int GL_DRAW_BUFFER15_EXT = 34868;

const int GL_COLOR_ATTACHMENT0_EXT = 36064;

const int GL_COLOR_ATTACHMENT1_EXT = 36065;

const int GL_COLOR_ATTACHMENT2_EXT = 36066;

const int GL_COLOR_ATTACHMENT3_EXT = 36067;

const int GL_COLOR_ATTACHMENT4_EXT = 36068;

const int GL_COLOR_ATTACHMENT5_EXT = 36069;

const int GL_COLOR_ATTACHMENT6_EXT = 36070;

const int GL_COLOR_ATTACHMENT7_EXT = 36071;

const int GL_COLOR_ATTACHMENT8_EXT = 36072;

const int GL_COLOR_ATTACHMENT9_EXT = 36073;

const int GL_COLOR_ATTACHMENT10_EXT = 36074;

const int GL_COLOR_ATTACHMENT11_EXT = 36075;

const int GL_COLOR_ATTACHMENT12_EXT = 36076;

const int GL_COLOR_ATTACHMENT13_EXT = 36077;

const int GL_COLOR_ATTACHMENT14_EXT = 36078;

const int GL_COLOR_ATTACHMENT15_EXT = 36079;

const int GL_EXT_draw_buffers_indexed = 1;

const int GL_EXT_draw_elements_base_vertex = 1;

const int GL_EXT_draw_instanced = 1;

const int GL_EXT_draw_transform_feedback = 1;

const int GL_EXT_external_buffer = 1;

const int GL_EXT_float_blend = 1;

const int GL_EXT_geometry_point_size = 1;

const int GL_EXT_geometry_shader = 1;

const int GL_GEOMETRY_SHADER_EXT = 36313;

const int GL_GEOMETRY_SHADER_BIT_EXT = 4;

const int GL_GEOMETRY_LINKED_VERTICES_OUT_EXT = 35094;

const int GL_GEOMETRY_LINKED_INPUT_TYPE_EXT = 35095;

const int GL_GEOMETRY_LINKED_OUTPUT_TYPE_EXT = 35096;

const int GL_GEOMETRY_SHADER_INVOCATIONS_EXT = 34943;

const int GL_LAYER_PROVOKING_VERTEX_EXT = 33374;

const int GL_LINES_ADJACENCY_EXT = 10;

const int GL_LINE_STRIP_ADJACENCY_EXT = 11;

const int GL_TRIANGLES_ADJACENCY_EXT = 12;

const int GL_TRIANGLE_STRIP_ADJACENCY_EXT = 13;

const int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT = 36319;

const int GL_MAX_GEOMETRY_UNIFORM_BLOCKS_EXT = 35372;

const int GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_EXT = 35378;

const int GL_MAX_GEOMETRY_INPUT_COMPONENTS_EXT = 37155;

const int GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_EXT = 37156;

const int GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT = 36320;

const int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = 36321;

const int GL_MAX_GEOMETRY_SHADER_INVOCATIONS_EXT = 36442;

const int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT = 35881;

const int GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_EXT = 37583;

const int GL_MAX_GEOMETRY_ATOMIC_COUNTERS_EXT = 37589;

const int GL_MAX_GEOMETRY_IMAGE_UNIFORMS_EXT = 37069;

const int GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_EXT = 37079;

const int GL_FIRST_VERTEX_CONVENTION_EXT = 36429;

const int GL_LAST_VERTEX_CONVENTION_EXT = 36430;

const int GL_UNDEFINED_VERTEX_EXT = 33376;

const int GL_PRIMITIVES_GENERATED_EXT = 35975;

const int GL_FRAMEBUFFER_DEFAULT_LAYERS_EXT = 37650;

const int GL_MAX_FRAMEBUFFER_LAYERS_EXT = 37655;

const int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = 36264;

const int GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = 36263;

const int GL_REFERENCED_BY_GEOMETRY_SHADER_EXT = 37641;

const int GL_EXT_gpu_shader5 = 1;

const int GL_EXT_instanced_arrays = 1;

const int GL_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT = 35070;

const int GL_EXT_map_buffer_range = 1;

const int GL_MAP_READ_BIT_EXT = 1;

const int GL_MAP_WRITE_BIT_EXT = 2;

const int GL_MAP_INVALIDATE_RANGE_BIT_EXT = 4;

const int GL_MAP_INVALIDATE_BUFFER_BIT_EXT = 8;

const int GL_MAP_FLUSH_EXPLICIT_BIT_EXT = 16;

const int GL_MAP_UNSYNCHRONIZED_BIT_EXT = 32;

const int GL_EXT_memory_object = 1;

const int GL_TEXTURE_TILING_EXT = 38272;

const int GL_DEDICATED_MEMORY_OBJECT_EXT = 38273;

const int GL_PROTECTED_MEMORY_OBJECT_EXT = 38299;

const int GL_NUM_TILING_TYPES_EXT = 38274;

const int GL_TILING_TYPES_EXT = 38275;

const int GL_OPTIMAL_TILING_EXT = 38276;

const int GL_LINEAR_TILING_EXT = 38277;

const int GL_NUM_DEVICE_UUIDS_EXT = 38294;

const int GL_DEVICE_UUID_EXT = 38295;

const int GL_DRIVER_UUID_EXT = 38296;

const int GL_UUID_SIZE_EXT = 16;

const int GL_EXT_memory_object_fd = 1;

const int GL_HANDLE_TYPE_OPAQUE_FD_EXT = 38278;

const int GL_EXT_memory_object_win32 = 1;

const int GL_HANDLE_TYPE_OPAQUE_WIN32_EXT = 38279;

const int GL_HANDLE_TYPE_OPAQUE_WIN32_KMT_EXT = 38280;

const int GL_DEVICE_LUID_EXT = 38297;

const int GL_DEVICE_NODE_MASK_EXT = 38298;

const int GL_LUID_SIZE_EXT = 8;

const int GL_HANDLE_TYPE_D3D12_TILEPOOL_EXT = 38281;

const int GL_HANDLE_TYPE_D3D12_RESOURCE_EXT = 38282;

const int GL_HANDLE_TYPE_D3D11_IMAGE_EXT = 38283;

const int GL_HANDLE_TYPE_D3D11_IMAGE_KMT_EXT = 38284;

const int GL_EXT_multi_draw_arrays = 1;

const int GL_EXT_multi_draw_indirect = 1;

const int GL_EXT_multisampled_compatibility = 1;

const int GL_MULTISAMPLE_EXT = 32925;

const int GL_SAMPLE_ALPHA_TO_ONE_EXT = 32927;

const int GL_EXT_multisampled_render_to_texture = 1;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT = 36204;

const int GL_RENDERBUFFER_SAMPLES_EXT = 36011;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 36182;

const int GL_MAX_SAMPLES_EXT = 36183;

const int GL_EXT_multisampled_render_to_texture2 = 1;

const int GL_EXT_multiview_draw_buffers = 1;

const int GL_COLOR_ATTACHMENT_EXT = 37104;

const int GL_MULTIVIEW_EXT = 37105;

const int GL_DRAW_BUFFER_EXT = 3073;

const int GL_READ_BUFFER_EXT = 3074;

const int GL_MAX_MULTIVIEW_BUFFERS_EXT = 37106;

const int GL_EXT_multiview_tessellation_geometry_shader = 1;

const int GL_EXT_multiview_texture_multisample = 1;

const int GL_EXT_multiview_timer_query = 1;

const int GL_EXT_occlusion_query_boolean = 1;

const int GL_ANY_SAMPLES_PASSED_EXT = 35887;

const int GL_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT = 36202;

const int GL_EXT_polygon_offset_clamp = 1;

const int GL_POLYGON_OFFSET_CLAMP_EXT = 36379;

const int GL_EXT_post_depth_coverage = 1;

const int GL_EXT_primitive_bounding_box = 1;

const int GL_PRIMITIVE_BOUNDING_BOX_EXT = 37566;

const int GL_EXT_protected_textures = 1;

const int GL_CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT = 16;

const int GL_TEXTURE_PROTECTED_EXT = 35834;

const int GL_EXT_pvrtc_sRGB = 1;

const int GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT = 35412;

const int GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT = 35413;

const int GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT = 35414;

const int GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT = 35415;

const int GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV2_IMG = 37872;

const int GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV2_IMG = 37873;

const int GL_EXT_raster_multisample = 1;

const int GL_RASTER_MULTISAMPLE_EXT = 37671;

const int GL_RASTER_SAMPLES_EXT = 37672;

const int GL_MAX_RASTER_SAMPLES_EXT = 37673;

const int GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT = 37674;

const int GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT = 37675;

const int GL_EFFECTIVE_RASTER_SAMPLES_EXT = 37676;

const int GL_EXT_read_format_bgra = 1;

const int GL_UNSIGNED_SHORT_4_4_4_4_REV_EXT = 33637;

const int GL_UNSIGNED_SHORT_1_5_5_5_REV_EXT = 33638;

const int GL_EXT_render_snorm = 1;

const int GL_R8_SNORM = 36756;

const int GL_RG8_SNORM = 36757;

const int GL_RGBA8_SNORM = 36759;

const int GL_R16_SNORM_EXT = 36760;

const int GL_RG16_SNORM_EXT = 36761;

const int GL_RGBA16_SNORM_EXT = 36763;

const int GL_EXT_robustness = 1;

const int GL_GUILTY_CONTEXT_RESET_EXT = 33363;

const int GL_INNOCENT_CONTEXT_RESET_EXT = 33364;

const int GL_UNKNOWN_CONTEXT_RESET_EXT = 33365;

const int GL_CONTEXT_ROBUST_ACCESS_EXT = 37107;

const int GL_RESET_NOTIFICATION_STRATEGY_EXT = 33366;

const int GL_LOSE_CONTEXT_ON_RESET_EXT = 33362;

const int GL_NO_RESET_NOTIFICATION_EXT = 33377;

const int GL_EXT_sRGB = 1;

const int GL_SRGB_EXT = 35904;

const int GL_SRGB_ALPHA_EXT = 35906;

const int GL_SRGB8_ALPHA8_EXT = 35907;

const int GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 33296;

const int GL_EXT_sRGB_write_control = 1;

const int GL_FRAMEBUFFER_SRGB_EXT = 36281;

const int GL_EXT_semaphore = 1;

const int GL_LAYOUT_GENERAL_EXT = 38285;

const int GL_LAYOUT_COLOR_ATTACHMENT_EXT = 38286;

const int GL_LAYOUT_DEPTH_STENCIL_ATTACHMENT_EXT = 38287;

const int GL_LAYOUT_DEPTH_STENCIL_READ_ONLY_EXT = 38288;

const int GL_LAYOUT_SHADER_READ_ONLY_EXT = 38289;

const int GL_LAYOUT_TRANSFER_SRC_EXT = 38290;

const int GL_LAYOUT_TRANSFER_DST_EXT = 38291;

const int GL_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_EXT = 38192;

const int GL_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_EXT = 38193;

const int GL_EXT_semaphore_fd = 1;

const int GL_EXT_semaphore_win32 = 1;

const int GL_HANDLE_TYPE_D3D12_FENCE_EXT = 38292;

const int GL_D3D12_FENCE_VALUE_EXT = 38293;

const int GL_EXT_separate_shader_objects = 1;

const int GL_ACTIVE_PROGRAM_EXT = 33369;

const int GL_VERTEX_SHADER_BIT_EXT = 1;

const int GL_FRAGMENT_SHADER_BIT_EXT = 2;

const int GL_ALL_SHADER_BITS_EXT = 4294967295;

const int GL_PROGRAM_SEPARABLE_EXT = 33368;

const int GL_PROGRAM_PIPELINE_BINDING_EXT = 33370;

const int GL_EXT_shader_framebuffer_fetch = 1;

const int GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT = 35410;

const int GL_EXT_shader_framebuffer_fetch_non_coherent = 1;

const int GL_EXT_shader_group_vote = 1;

const int GL_EXT_shader_implicit_conversions = 1;

const int GL_EXT_shader_integer_mix = 1;

const int GL_EXT_shader_io_blocks = 1;

const int GL_EXT_shader_non_constant_global_initializers = 1;

const int GL_EXT_shader_pixel_local_storage = 1;

const int GL_MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT = 36707;

const int GL_MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT = 36711;

const int GL_SHADER_PIXEL_LOCAL_STORAGE_EXT = 36708;

const int GL_EXT_shader_pixel_local_storage2 = 1;

const int GL_MAX_SHADER_COMBINED_LOCAL_STORAGE_FAST_SIZE_EXT = 38480;

const int GL_MAX_SHADER_COMBINED_LOCAL_STORAGE_SIZE_EXT = 38481;

const int
    GL_FRAMEBUFFER_INCOMPLETE_INSUFFICIENT_SHADER_COMBINED_LOCAL_STORAGE_EXT =
    38482;

const int GL_EXT_shader_texture_lod = 1;

const int GL_EXT_shadow_samplers = 1;

const int GL_TEXTURE_COMPARE_MODE_EXT = 34892;

const int GL_TEXTURE_COMPARE_FUNC_EXT = 34893;

const int GL_COMPARE_REF_TO_TEXTURE_EXT = 34894;

const int GL_SAMPLER_2D_SHADOW_EXT = 35682;

const int GL_EXT_sparse_texture = 1;

const int GL_TEXTURE_SPARSE_EXT = 37286;

const int GL_VIRTUAL_PAGE_SIZE_INDEX_EXT = 37287;

const int GL_NUM_SPARSE_LEVELS_EXT = 37290;

const int GL_NUM_VIRTUAL_PAGE_SIZES_EXT = 37288;

const int GL_VIRTUAL_PAGE_SIZE_X_EXT = 37269;

const int GL_VIRTUAL_PAGE_SIZE_Y_EXT = 37270;

const int GL_VIRTUAL_PAGE_SIZE_Z_EXT = 37271;

const int GL_TEXTURE_2D_ARRAY = 35866;

const int GL_TEXTURE_3D = 32879;

const int GL_MAX_SPARSE_TEXTURE_SIZE_EXT = 37272;

const int GL_MAX_SPARSE_3D_TEXTURE_SIZE_EXT = 37273;

const int GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_EXT = 37274;

const int GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_EXT = 37289;

const int GL_EXT_sparse_texture2 = 1;

const int GL_EXT_tessellation_point_size = 1;

const int GL_EXT_tessellation_shader = 1;

const int GL_PATCHES_EXT = 14;

const int GL_PATCH_VERTICES_EXT = 36466;

const int GL_TESS_CONTROL_OUTPUT_VERTICES_EXT = 36469;

const int GL_TESS_GEN_MODE_EXT = 36470;

const int GL_TESS_GEN_SPACING_EXT = 36471;

const int GL_TESS_GEN_VERTEX_ORDER_EXT = 36472;

const int GL_TESS_GEN_POINT_MODE_EXT = 36473;

const int GL_ISOLINES_EXT = 36474;

const int GL_QUADS_EXT = 7;

const int GL_FRACTIONAL_ODD_EXT = 36475;

const int GL_FRACTIONAL_EVEN_EXT = 36476;

const int GL_MAX_PATCH_VERTICES_EXT = 36477;

const int GL_MAX_TESS_GEN_LEVEL_EXT = 36478;

const int GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_EXT = 36479;

const int GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT = 36480;

const int GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_EXT = 36481;

const int GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_EXT = 36482;

const int GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_EXT = 36483;

const int GL_MAX_TESS_PATCH_COMPONENTS_EXT = 36484;

const int GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_EXT = 36485;

const int GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_EXT = 36486;

const int GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_EXT = 36489;

const int GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_EXT = 36490;

const int GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_EXT = 34924;

const int GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_EXT = 34925;

const int GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_EXT = 36382;

const int GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT = 36383;

const int GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_EXT = 37581;

const int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_EXT = 37582;

const int GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_EXT = 37587;

const int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_EXT = 37588;

const int GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_EXT = 37067;

const int GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_EXT = 37068;

const int GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_EXT = 37080;

const int GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_EXT = 37081;

const int GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 33313;

const int GL_IS_PER_PATCH_EXT = 37607;

const int GL_REFERENCED_BY_TESS_CONTROL_SHADER_EXT = 37639;

const int GL_REFERENCED_BY_TESS_EVALUATION_SHADER_EXT = 37640;

const int GL_TESS_CONTROL_SHADER_EXT = 36488;

const int GL_TESS_EVALUATION_SHADER_EXT = 36487;

const int GL_TESS_CONTROL_SHADER_BIT_EXT = 8;

const int GL_TESS_EVALUATION_SHADER_BIT_EXT = 16;

const int GL_EXT_texture_border_clamp = 1;

const int GL_TEXTURE_BORDER_COLOR_EXT = 4100;

const int GL_CLAMP_TO_BORDER_EXT = 33069;

const int GL_EXT_texture_buffer = 1;

const int GL_TEXTURE_BUFFER_EXT = 35882;

const int GL_TEXTURE_BUFFER_BINDING_EXT = 35882;

const int GL_MAX_TEXTURE_BUFFER_SIZE_EXT = 35883;

const int GL_TEXTURE_BINDING_BUFFER_EXT = 35884;

const int GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = 35885;

const int GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT = 37279;

const int GL_SAMPLER_BUFFER_EXT = 36290;

const int GL_INT_SAMPLER_BUFFER_EXT = 36304;

const int GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT = 36312;

const int GL_IMAGE_BUFFER_EXT = 36945;

const int GL_INT_IMAGE_BUFFER_EXT = 36956;

const int GL_UNSIGNED_INT_IMAGE_BUFFER_EXT = 36967;

const int GL_TEXTURE_BUFFER_OFFSET_EXT = 37277;

const int GL_TEXTURE_BUFFER_SIZE_EXT = 37278;

const int GL_EXT_texture_compression_astc_decode_mode = 1;

const int GL_TEXTURE_ASTC_DECODE_PRECISION_EXT = 36713;

const int GL_EXT_texture_compression_bptc = 1;

const int GL_COMPRESSED_RGBA_BPTC_UNORM_EXT = 36492;

const int GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = 36493;

const int GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = 36494;

const int GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = 36495;

const int GL_EXT_texture_compression_dxt1 = 1;

const int GL_COMPRESSED_RGB_S3TC_DXT1_EXT = 33776;

const int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = 33777;

const int GL_EXT_texture_compression_rgtc = 1;

const int GL_COMPRESSED_RED_RGTC1_EXT = 36283;

const int GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = 36284;

const int GL_COMPRESSED_RED_GREEN_RGTC2_EXT = 36285;

const int GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = 36286;

const int GL_EXT_texture_compression_s3tc = 1;

const int GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = 33778;

const int GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = 33779;

const int GL_EXT_texture_compression_s3tc_srgb = 1;

const int GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = 35916;

const int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = 35917;

const int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = 35918;

const int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = 35919;

const int GL_EXT_texture_cube_map_array = 1;

const int GL_TEXTURE_CUBE_MAP_ARRAY_EXT = 36873;

const int GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT = 36874;

const int GL_SAMPLER_CUBE_MAP_ARRAY_EXT = 36876;

const int GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT = 36877;

const int GL_INT_SAMPLER_CUBE_MAP_ARRAY_EXT = 36878;

const int GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT = 36879;

const int GL_IMAGE_CUBE_MAP_ARRAY_EXT = 36948;

const int GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 36959;

const int GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 36970;

const int GL_EXT_texture_filter_anisotropic = 1;

const int GL_TEXTURE_MAX_ANISOTROPY_EXT = 34046;

const int GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 34047;

const int GL_EXT_texture_filter_minmax = 1;

const int GL_TEXTURE_REDUCTION_MODE_EXT = 37734;

const int GL_WEIGHTED_AVERAGE_EXT = 37735;

const int GL_EXT_texture_format_BGRA8888 = 1;

const int GL_EXT_texture_format_sRGB_override = 1;

const int GL_TEXTURE_FORMAT_SRGB_OVERRIDE_EXT = 36799;

const int GL_EXT_texture_mirror_clamp_to_edge = 1;

const int GL_MIRROR_CLAMP_TO_EDGE_EXT = 34627;

const int GL_EXT_texture_norm16 = 1;

const int GL_R16_EXT = 33322;

const int GL_RG16_EXT = 33324;

const int GL_RGBA16_EXT = 32859;

const int GL_RGB16_EXT = 32852;

const int GL_RGB16_SNORM_EXT = 36762;

const int GL_EXT_texture_query_lod = 1;

const int GL_EXT_texture_rg = 1;

const int GL_RED_EXT = 6403;

const int GL_RG_EXT = 33319;

const int GL_R8_EXT = 33321;

const int GL_RG8_EXT = 33323;

const int GL_EXT_texture_sRGB_R8 = 1;

const int GL_SR8_EXT = 36797;

const int GL_EXT_texture_sRGB_RG8 = 1;

const int GL_SRG8_EXT = 36798;

const int GL_EXT_texture_sRGB_decode = 1;

const int GL_TEXTURE_SRGB_DECODE_EXT = 35400;

const int GL_DECODE_EXT = 35401;

const int GL_SKIP_DECODE_EXT = 35402;

const int GL_EXT_texture_shadow_lod = 1;

const int GL_EXT_texture_storage = 1;

const int GL_TEXTURE_IMMUTABLE_FORMAT_EXT = 37167;

const int GL_ALPHA8_EXT = 32828;

const int GL_LUMINANCE8_EXT = 32832;

const int GL_LUMINANCE8_ALPHA8_EXT = 32837;

const int GL_RGBA32F_EXT = 34836;

const int GL_RGB32F_EXT = 34837;

const int GL_ALPHA32F_EXT = 34838;

const int GL_LUMINANCE32F_EXT = 34840;

const int GL_LUMINANCE_ALPHA32F_EXT = 34841;

const int GL_ALPHA16F_EXT = 34844;

const int GL_LUMINANCE16F_EXT = 34846;

const int GL_LUMINANCE_ALPHA16F_EXT = 34847;

const int GL_R32F_EXT = 33326;

const int GL_RG32F_EXT = 33328;

const int GL_EXT_texture_type_2_10_10_10_REV = 1;

const int GL_UNSIGNED_INT_2_10_10_10_REV_EXT = 33640;

const int GL_EXT_texture_view = 1;

const int GL_TEXTURE_VIEW_MIN_LEVEL_EXT = 33499;

const int GL_TEXTURE_VIEW_NUM_LEVELS_EXT = 33500;

const int GL_TEXTURE_VIEW_MIN_LAYER_EXT = 33501;

const int GL_TEXTURE_VIEW_NUM_LAYERS_EXT = 33502;

const int GL_EXT_unpack_subimage = 1;

const int GL_UNPACK_ROW_LENGTH_EXT = 3314;

const int GL_UNPACK_SKIP_ROWS_EXT = 3315;

const int GL_UNPACK_SKIP_PIXELS_EXT = 3316;

const int GL_EXT_win32_keyed_mutex = 1;

const int GL_EXT_window_rectangles = 1;

const int GL_INCLUSIVE_EXT = 36624;

const int GL_EXCLUSIVE_EXT = 36625;

const int GL_WINDOW_RECTANGLE_EXT = 36626;

const int GL_WINDOW_RECTANGLE_MODE_EXT = 36627;

const int GL_MAX_WINDOW_RECTANGLES_EXT = 36628;

const int GL_NUM_WINDOW_RECTANGLES_EXT = 36629;

const int GL_FJ_shader_binary_GCCSO = 1;

const int GL_GCCSO_SHADER_BINARY_FJ = 37472;

const int GL_IMG_bindless_texture = 1;

const int GL_IMG_framebuffer_downsample = 1;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_AND_DOWNSAMPLE_IMG = 37180;

const int GL_NUM_DOWNSAMPLE_SCALES_IMG = 37181;

const int GL_DOWNSAMPLE_SCALES_IMG = 37182;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG = 37183;

const int GL_IMG_multisampled_render_to_texture = 1;

const int GL_RENDERBUFFER_SAMPLES_IMG = 37171;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG = 37172;

const int GL_MAX_SAMPLES_IMG = 37173;

const int GL_TEXTURE_SAMPLES_IMG = 37174;

const int GL_IMG_program_binary = 1;

const int GL_SGX_PROGRAM_BINARY_IMG = 37168;

const int GL_IMG_read_format = 1;

const int GL_BGRA_IMG = 32993;

const int GL_UNSIGNED_SHORT_4_4_4_4_REV_IMG = 33637;

const int GL_IMG_shader_binary = 1;

const int GL_SGX_BINARY_IMG = 35850;

const int GL_IMG_texture_compression_pvrtc = 1;

const int GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 35840;

const int GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG = 35841;

const int GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 35842;

const int GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 35843;

const int GL_IMG_texture_compression_pvrtc2 = 1;

const int GL_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG = 37175;

const int GL_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG = 37176;

const int GL_IMG_texture_filter_cubic = 1;

const int GL_CUBIC_IMG = 37177;

const int GL_CUBIC_MIPMAP_NEAREST_IMG = 37178;

const int GL_CUBIC_MIPMAP_LINEAR_IMG = 37179;

const int GL_INTEL_blackhole_render = 1;

const int GL_BLACKHOLE_RENDER_INTEL = 33788;

const int GL_INTEL_conservative_rasterization = 1;

const int GL_CONSERVATIVE_RASTERIZATION_INTEL = 33790;

const int GL_INTEL_framebuffer_CMAA = 1;

const int GL_INTEL_performance_query = 1;

const int GL_PERFQUERY_SINGLE_CONTEXT_INTEL = 0;

const int GL_PERFQUERY_GLOBAL_CONTEXT_INTEL = 1;

const int GL_PERFQUERY_WAIT_INTEL = 33787;

const int GL_PERFQUERY_FLUSH_INTEL = 33786;

const int GL_PERFQUERY_DONOT_FLUSH_INTEL = 33785;

const int GL_PERFQUERY_COUNTER_EVENT_INTEL = 38128;

const int GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL = 38129;

const int GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL = 38130;

const int GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL = 38131;

const int GL_PERFQUERY_COUNTER_RAW_INTEL = 38132;

const int GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL = 38133;

const int GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL = 38136;

const int GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL = 38137;

const int GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL = 38138;

const int GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL = 38139;

const int GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL = 38140;

const int GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL = 38141;

const int GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL = 38142;

const int GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL = 38143;

const int GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL = 38144;

const int GL_MESA_framebuffer_flip_x = 1;

const int GL_FRAMEBUFFER_FLIP_X_MESA = 35772;

const int GL_MESA_framebuffer_flip_y = 1;

const int GL_FRAMEBUFFER_FLIP_Y_MESA = 35771;

const int GL_MESA_framebuffer_swap_xy = 1;

const int GL_FRAMEBUFFER_SWAP_XY_MESA = 35773;

const int GL_MESA_program_binary_formats = 1;

const int GL_PROGRAM_BINARY_FORMAT_MESA = 34655;

const int GL_MESA_shader_integer_functions = 1;

const int GL_NVX_blend_equation_advanced_multi_draw_buffers = 1;

const int GL_NV_bindless_texture = 1;

const int GL_NV_blend_equation_advanced = 1;

const int GL_BLEND_OVERLAP_NV = 37505;

const int GL_BLEND_PREMULTIPLIED_SRC_NV = 37504;

const int GL_BLUE_NV = 6405;

const int GL_COLORBURN_NV = 37530;

const int GL_COLORDODGE_NV = 37529;

const int GL_CONJOINT_NV = 37508;

const int GL_CONTRAST_NV = 37537;

const int GL_DARKEN_NV = 37527;

const int GL_DIFFERENCE_NV = 37534;

const int GL_DISJOINT_NV = 37507;

const int GL_DST_ATOP_NV = 37519;

const int GL_DST_IN_NV = 37515;

const int GL_DST_NV = 37511;

const int GL_DST_OUT_NV = 37517;

const int GL_DST_OVER_NV = 37513;

const int GL_EXCLUSION_NV = 37536;

const int GL_GREEN_NV = 6404;

const int GL_HARDLIGHT_NV = 37531;

const int GL_HARDMIX_NV = 37545;

const int GL_HSL_COLOR_NV = 37551;

const int GL_HSL_HUE_NV = 37549;

const int GL_HSL_LUMINOSITY_NV = 37552;

const int GL_HSL_SATURATION_NV = 37550;

const int GL_INVERT_OVG_NV = 37556;

const int GL_INVERT_RGB_NV = 37539;

const int GL_LIGHTEN_NV = 37528;

const int GL_LINEARBURN_NV = 37541;

const int GL_LINEARDODGE_NV = 37540;

const int GL_LINEARLIGHT_NV = 37543;

const int GL_MINUS_CLAMPED_NV = 37555;

const int GL_MINUS_NV = 37535;

const int GL_MULTIPLY_NV = 37524;

const int GL_OVERLAY_NV = 37526;

const int GL_PINLIGHT_NV = 37544;

const int GL_PLUS_CLAMPED_ALPHA_NV = 37554;

const int GL_PLUS_CLAMPED_NV = 37553;

const int GL_PLUS_DARKER_NV = 37522;

const int GL_PLUS_NV = 37521;

const int GL_RED_NV = 6403;

const int GL_SCREEN_NV = 37525;

const int GL_SOFTLIGHT_NV = 37532;

const int GL_SRC_ATOP_NV = 37518;

const int GL_SRC_IN_NV = 37514;

const int GL_SRC_NV = 37510;

const int GL_SRC_OUT_NV = 37516;

const int GL_SRC_OVER_NV = 37512;

const int GL_UNCORRELATED_NV = 37506;

const int GL_VIVIDLIGHT_NV = 37542;

const int GL_XOR_NV = 5382;

const int GL_NV_blend_equation_advanced_coherent = 1;

const int GL_BLEND_ADVANCED_COHERENT_NV = 37509;

const int GL_NV_blend_minmax_factor = 1;

const int GL_FACTOR_MIN_AMD = 36892;

const int GL_FACTOR_MAX_AMD = 36893;

const int GL_NV_clip_space_w_scaling = 1;

const int GL_VIEWPORT_POSITION_W_SCALE_NV = 37756;

const int GL_VIEWPORT_POSITION_W_SCALE_X_COEFF_NV = 37757;

const int GL_VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV = 37758;

const int GL_NV_compute_shader_derivatives = 1;

const int GL_NV_conditional_render = 1;

const int GL_QUERY_WAIT_NV = 36371;

const int GL_QUERY_NO_WAIT_NV = 36372;

const int GL_QUERY_BY_REGION_WAIT_NV = 36373;

const int GL_QUERY_BY_REGION_NO_WAIT_NV = 36374;

const int GL_NV_conservative_raster = 1;

const int GL_CONSERVATIVE_RASTERIZATION_NV = 37702;

const int GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV = 37703;

const int GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV = 37704;

const int GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV = 37705;

const int GL_NV_conservative_raster_pre_snap = 1;

const int GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV = 38224;

const int GL_NV_conservative_raster_pre_snap_triangles = 1;

const int GL_CONSERVATIVE_RASTER_MODE_NV = 38221;

const int GL_CONSERVATIVE_RASTER_MODE_POST_SNAP_NV = 38222;

const int GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV = 38223;

const int GL_NV_copy_buffer = 1;

const int GL_COPY_READ_BUFFER_NV = 36662;

const int GL_COPY_WRITE_BUFFER_NV = 36663;

const int GL_NV_coverage_sample = 1;

const int GL_COVERAGE_COMPONENT_NV = 36560;

const int GL_COVERAGE_COMPONENT4_NV = 36561;

const int GL_COVERAGE_ATTACHMENT_NV = 36562;

const int GL_COVERAGE_BUFFERS_NV = 36563;

const int GL_COVERAGE_SAMPLES_NV = 36564;

const int GL_COVERAGE_ALL_FRAGMENTS_NV = 36565;

const int GL_COVERAGE_EDGE_FRAGMENTS_NV = 36566;

const int GL_COVERAGE_AUTOMATIC_NV = 36567;

const int GL_COVERAGE_BUFFER_BIT_NV = 32768;

const int GL_NV_depth_nonlinear = 1;

const int GL_DEPTH_COMPONENT16_NONLINEAR_NV = 36396;

const int GL_NV_draw_buffers = 1;

const int GL_MAX_DRAW_BUFFERS_NV = 34852;

const int GL_DRAW_BUFFER0_NV = 34853;

const int GL_DRAW_BUFFER1_NV = 34854;

const int GL_DRAW_BUFFER2_NV = 34855;

const int GL_DRAW_BUFFER3_NV = 34856;

const int GL_DRAW_BUFFER4_NV = 34857;

const int GL_DRAW_BUFFER5_NV = 34858;

const int GL_DRAW_BUFFER6_NV = 34859;

const int GL_DRAW_BUFFER7_NV = 34860;

const int GL_DRAW_BUFFER8_NV = 34861;

const int GL_DRAW_BUFFER9_NV = 34862;

const int GL_DRAW_BUFFER10_NV = 34863;

const int GL_DRAW_BUFFER11_NV = 34864;

const int GL_DRAW_BUFFER12_NV = 34865;

const int GL_DRAW_BUFFER13_NV = 34866;

const int GL_DRAW_BUFFER14_NV = 34867;

const int GL_DRAW_BUFFER15_NV = 34868;

const int GL_COLOR_ATTACHMENT0_NV = 36064;

const int GL_COLOR_ATTACHMENT1_NV = 36065;

const int GL_COLOR_ATTACHMENT2_NV = 36066;

const int GL_COLOR_ATTACHMENT3_NV = 36067;

const int GL_COLOR_ATTACHMENT4_NV = 36068;

const int GL_COLOR_ATTACHMENT5_NV = 36069;

const int GL_COLOR_ATTACHMENT6_NV = 36070;

const int GL_COLOR_ATTACHMENT7_NV = 36071;

const int GL_COLOR_ATTACHMENT8_NV = 36072;

const int GL_COLOR_ATTACHMENT9_NV = 36073;

const int GL_COLOR_ATTACHMENT10_NV = 36074;

const int GL_COLOR_ATTACHMENT11_NV = 36075;

const int GL_COLOR_ATTACHMENT12_NV = 36076;

const int GL_COLOR_ATTACHMENT13_NV = 36077;

const int GL_COLOR_ATTACHMENT14_NV = 36078;

const int GL_COLOR_ATTACHMENT15_NV = 36079;

const int GL_NV_draw_instanced = 1;

const int GL_NV_draw_vulkan_image = 1;

const int GL_NV_explicit_attrib_location = 1;

const int GL_NV_fbo_color_attachments = 1;

const int GL_MAX_COLOR_ATTACHMENTS_NV = 36063;

const int GL_NV_fence = 1;

const int GL_ALL_COMPLETED_NV = 34034;

const int GL_FENCE_STATUS_NV = 34035;

const int GL_FENCE_CONDITION_NV = 34036;

const int GL_NV_fill_rectangle = 1;

const int GL_FILL_RECTANGLE_NV = 37692;

const int GL_NV_fragment_coverage_to_color = 1;

const int GL_FRAGMENT_COVERAGE_TO_COLOR_NV = 37597;

const int GL_FRAGMENT_COVERAGE_COLOR_NV = 37598;

const int GL_NV_fragment_shader_barycentric = 1;

const int GL_NV_fragment_shader_interlock = 1;

const int GL_NV_framebuffer_blit = 1;

const int GL_READ_FRAMEBUFFER_NV = 36008;

const int GL_DRAW_FRAMEBUFFER_NV = 36009;

const int GL_DRAW_FRAMEBUFFER_BINDING_NV = 36006;

const int GL_READ_FRAMEBUFFER_BINDING_NV = 36010;

const int GL_NV_framebuffer_mixed_samples = 1;

const int GL_COVERAGE_MODULATION_TABLE_NV = 37681;

const int GL_COLOR_SAMPLES_NV = 36384;

const int GL_DEPTH_SAMPLES_NV = 37677;

const int GL_STENCIL_SAMPLES_NV = 37678;

const int GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV = 37679;

const int GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV = 37680;

const int GL_COVERAGE_MODULATION_NV = 37682;

const int GL_COVERAGE_MODULATION_TABLE_SIZE_NV = 37683;

const int GL_NV_framebuffer_multisample = 1;

const int GL_RENDERBUFFER_SAMPLES_NV = 36011;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV = 36182;

const int GL_MAX_SAMPLES_NV = 36183;

const int GL_NV_generate_mipmap_sRGB = 1;

const int GL_NV_geometry_shader_passthrough = 1;

const int GL_NV_gpu_shader5 = 1;

const int GL_INT64_NV = 5134;

const int GL_UNSIGNED_INT64_NV = 5135;

const int GL_INT8_NV = 36832;

const int GL_INT8_VEC2_NV = 36833;

const int GL_INT8_VEC3_NV = 36834;

const int GL_INT8_VEC4_NV = 36835;

const int GL_INT16_NV = 36836;

const int GL_INT16_VEC2_NV = 36837;

const int GL_INT16_VEC3_NV = 36838;

const int GL_INT16_VEC4_NV = 36839;

const int GL_INT64_VEC2_NV = 36841;

const int GL_INT64_VEC3_NV = 36842;

const int GL_INT64_VEC4_NV = 36843;

const int GL_UNSIGNED_INT8_NV = 36844;

const int GL_UNSIGNED_INT8_VEC2_NV = 36845;

const int GL_UNSIGNED_INT8_VEC3_NV = 36846;

const int GL_UNSIGNED_INT8_VEC4_NV = 36847;

const int GL_UNSIGNED_INT16_NV = 36848;

const int GL_UNSIGNED_INT16_VEC2_NV = 36849;

const int GL_UNSIGNED_INT16_VEC3_NV = 36850;

const int GL_UNSIGNED_INT16_VEC4_NV = 36851;

const int GL_UNSIGNED_INT64_VEC2_NV = 36853;

const int GL_UNSIGNED_INT64_VEC3_NV = 36854;

const int GL_UNSIGNED_INT64_VEC4_NV = 36855;

const int GL_FLOAT16_NV = 36856;

const int GL_FLOAT16_VEC2_NV = 36857;

const int GL_FLOAT16_VEC3_NV = 36858;

const int GL_FLOAT16_VEC4_NV = 36859;

const int GL_PATCHES = 14;

const int GL_NV_image_formats = 1;

const int GL_NV_instanced_arrays = 1;

const int GL_VERTEX_ATTRIB_ARRAY_DIVISOR_NV = 35070;

const int GL_NV_internalformat_sample_query = 1;

const int GL_TEXTURE_2D_MULTISAMPLE = 37120;

const int GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 37122;

const int GL_MULTISAMPLES_NV = 37745;

const int GL_SUPERSAMPLE_SCALE_X_NV = 37746;

const int GL_SUPERSAMPLE_SCALE_Y_NV = 37747;

const int GL_CONFORMANT_NV = 37748;

const int GL_NV_memory_attachment = 1;

const int GL_ATTACHED_MEMORY_OBJECT_NV = 38308;

const int GL_ATTACHED_MEMORY_OFFSET_NV = 38309;

const int GL_MEMORY_ATTACHABLE_ALIGNMENT_NV = 38310;

const int GL_MEMORY_ATTACHABLE_SIZE_NV = 38311;

const int GL_MEMORY_ATTACHABLE_NV = 38312;

const int GL_DETACHED_MEMORY_INCARNATION_NV = 38313;

const int GL_DETACHED_TEXTURES_NV = 38314;

const int GL_DETACHED_BUFFERS_NV = 38315;

const int GL_MAX_DETACHED_TEXTURES_NV = 38316;

const int GL_MAX_DETACHED_BUFFERS_NV = 38317;

const int GL_NV_memory_object_sparse = 1;

const int GL_NV_mesh_shader = 1;

const int GL_MESH_SHADER_NV = 38233;

const int GL_TASK_SHADER_NV = 38234;

const int GL_MAX_MESH_UNIFORM_BLOCKS_NV = 36448;

const int GL_MAX_MESH_TEXTURE_IMAGE_UNITS_NV = 36449;

const int GL_MAX_MESH_IMAGE_UNIFORMS_NV = 36450;

const int GL_MAX_MESH_UNIFORM_COMPONENTS_NV = 36451;

const int GL_MAX_MESH_ATOMIC_COUNTER_BUFFERS_NV = 36452;

const int GL_MAX_MESH_ATOMIC_COUNTERS_NV = 36453;

const int GL_MAX_MESH_SHADER_STORAGE_BLOCKS_NV = 36454;

const int GL_MAX_COMBINED_MESH_UNIFORM_COMPONENTS_NV = 36455;

const int GL_MAX_TASK_UNIFORM_BLOCKS_NV = 36456;

const int GL_MAX_TASK_TEXTURE_IMAGE_UNITS_NV = 36457;

const int GL_MAX_TASK_IMAGE_UNIFORMS_NV = 36458;

const int GL_MAX_TASK_UNIFORM_COMPONENTS_NV = 36459;

const int GL_MAX_TASK_ATOMIC_COUNTER_BUFFERS_NV = 36460;

const int GL_MAX_TASK_ATOMIC_COUNTERS_NV = 36461;

const int GL_MAX_TASK_SHADER_STORAGE_BLOCKS_NV = 36462;

const int GL_MAX_COMBINED_TASK_UNIFORM_COMPONENTS_NV = 36463;

const int GL_MAX_MESH_WORK_GROUP_INVOCATIONS_NV = 38306;

const int GL_MAX_TASK_WORK_GROUP_INVOCATIONS_NV = 38307;

const int GL_MAX_MESH_TOTAL_MEMORY_SIZE_NV = 38198;

const int GL_MAX_TASK_TOTAL_MEMORY_SIZE_NV = 38199;

const int GL_MAX_MESH_OUTPUT_VERTICES_NV = 38200;

const int GL_MAX_MESH_OUTPUT_PRIMITIVES_NV = 38201;

const int GL_MAX_TASK_OUTPUT_COUNT_NV = 38202;

const int GL_MAX_DRAW_MESH_TASKS_COUNT_NV = 38205;

const int GL_MAX_MESH_VIEWS_NV = 38231;

const int GL_MESH_OUTPUT_PER_VERTEX_GRANULARITY_NV = 37599;

const int GL_MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_NV = 38211;

const int GL_MAX_MESH_WORK_GROUP_SIZE_NV = 38203;

const int GL_MAX_TASK_WORK_GROUP_SIZE_NV = 38204;

const int GL_MESH_WORK_GROUP_SIZE_NV = 38206;

const int GL_TASK_WORK_GROUP_SIZE_NV = 38207;

const int GL_MESH_VERTICES_OUT_NV = 38265;

const int GL_MESH_PRIMITIVES_OUT_NV = 38266;

const int GL_MESH_OUTPUT_TYPE_NV = 38267;

const int GL_UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_NV = 38300;

const int GL_UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_NV = 38301;

const int GL_REFERENCED_BY_MESH_SHADER_NV = 38304;

const int GL_REFERENCED_BY_TASK_SHADER_NV = 38305;

const int GL_MESH_SHADER_BIT_NV = 64;

const int GL_TASK_SHADER_BIT_NV = 128;

const int GL_MESH_SUBROUTINE_NV = 38268;

const int GL_TASK_SUBROUTINE_NV = 38269;

const int GL_MESH_SUBROUTINE_UNIFORM_NV = 38270;

const int GL_TASK_SUBROUTINE_UNIFORM_NV = 38271;

const int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_NV = 38302;

const int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_NV = 38303;

const int GL_NV_non_square_matrices = 1;

const int GL_FLOAT_MAT2x3_NV = 35685;

const int GL_FLOAT_MAT2x4_NV = 35686;

const int GL_FLOAT_MAT3x2_NV = 35687;

const int GL_FLOAT_MAT3x4_NV = 35688;

const int GL_FLOAT_MAT4x2_NV = 35689;

const int GL_FLOAT_MAT4x3_NV = 35690;

const int GL_NV_path_rendering = 1;

const int GL_PATH_FORMAT_SVG_NV = 36976;

const int GL_PATH_FORMAT_PS_NV = 36977;

const int GL_STANDARD_FONT_NAME_NV = 36978;

const int GL_SYSTEM_FONT_NAME_NV = 36979;

const int GL_FILE_NAME_NV = 36980;

const int GL_PATH_STROKE_WIDTH_NV = 36981;

const int GL_PATH_END_CAPS_NV = 36982;

const int GL_PATH_INITIAL_END_CAP_NV = 36983;

const int GL_PATH_TERMINAL_END_CAP_NV = 36984;

const int GL_PATH_JOIN_STYLE_NV = 36985;

const int GL_PATH_MITER_LIMIT_NV = 36986;

const int GL_PATH_DASH_CAPS_NV = 36987;

const int GL_PATH_INITIAL_DASH_CAP_NV = 36988;

const int GL_PATH_TERMINAL_DASH_CAP_NV = 36989;

const int GL_PATH_DASH_OFFSET_NV = 36990;

const int GL_PATH_CLIENT_LENGTH_NV = 36991;

const int GL_PATH_FILL_MODE_NV = 36992;

const int GL_PATH_FILL_MASK_NV = 36993;

const int GL_PATH_FILL_COVER_MODE_NV = 36994;

const int GL_PATH_STROKE_COVER_MODE_NV = 36995;

const int GL_PATH_STROKE_MASK_NV = 36996;

const int GL_COUNT_UP_NV = 37000;

const int GL_COUNT_DOWN_NV = 37001;

const int GL_PATH_OBJECT_BOUNDING_BOX_NV = 37002;

const int GL_CONVEX_HULL_NV = 37003;

const int GL_BOUNDING_BOX_NV = 37005;

const int GL_TRANSLATE_X_NV = 37006;

const int GL_TRANSLATE_Y_NV = 37007;

const int GL_TRANSLATE_2D_NV = 37008;

const int GL_TRANSLATE_3D_NV = 37009;

const int GL_AFFINE_2D_NV = 37010;

const int GL_AFFINE_3D_NV = 37012;

const int GL_TRANSPOSE_AFFINE_2D_NV = 37014;

const int GL_TRANSPOSE_AFFINE_3D_NV = 37016;

const int GL_UTF8_NV = 37018;

const int GL_UTF16_NV = 37019;

const int GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = 37020;

const int GL_PATH_COMMAND_COUNT_NV = 37021;

const int GL_PATH_COORD_COUNT_NV = 37022;

const int GL_PATH_DASH_ARRAY_COUNT_NV = 37023;

const int GL_PATH_COMPUTED_LENGTH_NV = 37024;

const int GL_PATH_FILL_BOUNDING_BOX_NV = 37025;

const int GL_PATH_STROKE_BOUNDING_BOX_NV = 37026;

const int GL_SQUARE_NV = 37027;

const int GL_ROUND_NV = 37028;

const int GL_TRIANGULAR_NV = 37029;

const int GL_BEVEL_NV = 37030;

const int GL_MITER_REVERT_NV = 37031;

const int GL_MITER_TRUNCATE_NV = 37032;

const int GL_SKIP_MISSING_GLYPH_NV = 37033;

const int GL_USE_MISSING_GLYPH_NV = 37034;

const int GL_PATH_ERROR_POSITION_NV = 37035;

const int GL_ACCUM_ADJACENT_PAIRS_NV = 37037;

const int GL_ADJACENT_PAIRS_NV = 37038;

const int GL_FIRST_TO_REST_NV = 37039;

const int GL_PATH_GEN_MODE_NV = 37040;

const int GL_PATH_GEN_COEFF_NV = 37041;

const int GL_PATH_GEN_COMPONENTS_NV = 37043;

const int GL_PATH_STENCIL_FUNC_NV = 37047;

const int GL_PATH_STENCIL_REF_NV = 37048;

const int GL_PATH_STENCIL_VALUE_MASK_NV = 37049;

const int GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = 37053;

const int GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = 37054;

const int GL_PATH_COVER_DEPTH_FUNC_NV = 37055;

const int GL_PATH_DASH_OFFSET_RESET_NV = 37044;

const int GL_MOVE_TO_RESETS_NV = 37045;

const int GL_MOVE_TO_CONTINUES_NV = 37046;

const int GL_CLOSE_PATH_NV = 0;

const int GL_MOVE_TO_NV = 2;

const int GL_RELATIVE_MOVE_TO_NV = 3;

const int GL_LINE_TO_NV = 4;

const int GL_RELATIVE_LINE_TO_NV = 5;

const int GL_HORIZONTAL_LINE_TO_NV = 6;

const int GL_RELATIVE_HORIZONTAL_LINE_TO_NV = 7;

const int GL_VERTICAL_LINE_TO_NV = 8;

const int GL_RELATIVE_VERTICAL_LINE_TO_NV = 9;

const int GL_QUADRATIC_CURVE_TO_NV = 10;

const int GL_RELATIVE_QUADRATIC_CURVE_TO_NV = 11;

const int GL_CUBIC_CURVE_TO_NV = 12;

const int GL_RELATIVE_CUBIC_CURVE_TO_NV = 13;

const int GL_SMOOTH_QUADRATIC_CURVE_TO_NV = 14;

const int GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = 15;

const int GL_SMOOTH_CUBIC_CURVE_TO_NV = 16;

const int GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = 17;

const int GL_SMALL_CCW_ARC_TO_NV = 18;

const int GL_RELATIVE_SMALL_CCW_ARC_TO_NV = 19;

const int GL_SMALL_CW_ARC_TO_NV = 20;

const int GL_RELATIVE_SMALL_CW_ARC_TO_NV = 21;

const int GL_LARGE_CCW_ARC_TO_NV = 22;

const int GL_RELATIVE_LARGE_CCW_ARC_TO_NV = 23;

const int GL_LARGE_CW_ARC_TO_NV = 24;

const int GL_RELATIVE_LARGE_CW_ARC_TO_NV = 25;

const int GL_RESTART_PATH_NV = 240;

const int GL_DUP_FIRST_CUBIC_CURVE_TO_NV = 242;

const int GL_DUP_LAST_CUBIC_CURVE_TO_NV = 244;

const int GL_RECT_NV = 246;

const int GL_CIRCULAR_CCW_ARC_TO_NV = 248;

const int GL_CIRCULAR_CW_ARC_TO_NV = 250;

const int GL_CIRCULAR_TANGENT_ARC_TO_NV = 252;

const int GL_ARC_TO_NV = 254;

const int GL_RELATIVE_ARC_TO_NV = 255;

const int GL_BOLD_BIT_NV = 1;

const int GL_ITALIC_BIT_NV = 2;

const int GL_GLYPH_WIDTH_BIT_NV = 1;

const int GL_GLYPH_HEIGHT_BIT_NV = 2;

const int GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = 4;

const int GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = 8;

const int GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = 16;

const int GL_GLYPH_VERTICAL_BEARING_X_BIT_NV = 32;

const int GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV = 64;

const int GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = 128;

const int GL_GLYPH_HAS_KERNING_BIT_NV = 256;

const int GL_FONT_X_MIN_BOUNDS_BIT_NV = 65536;

const int GL_FONT_Y_MIN_BOUNDS_BIT_NV = 131072;

const int GL_FONT_X_MAX_BOUNDS_BIT_NV = 262144;

const int GL_FONT_Y_MAX_BOUNDS_BIT_NV = 524288;

const int GL_FONT_UNITS_PER_EM_BIT_NV = 1048576;

const int GL_FONT_ASCENDER_BIT_NV = 2097152;

const int GL_FONT_DESCENDER_BIT_NV = 4194304;

const int GL_FONT_HEIGHT_BIT_NV = 8388608;

const int GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV = 16777216;

const int GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV = 33554432;

const int GL_FONT_UNDERLINE_POSITION_BIT_NV = 67108864;

const int GL_FONT_UNDERLINE_THICKNESS_BIT_NV = 134217728;

const int GL_FONT_HAS_KERNING_BIT_NV = 268435456;

const int GL_ROUNDED_RECT_NV = 232;

const int GL_RELATIVE_ROUNDED_RECT_NV = 233;

const int GL_ROUNDED_RECT2_NV = 234;

const int GL_RELATIVE_ROUNDED_RECT2_NV = 235;

const int GL_ROUNDED_RECT4_NV = 236;

const int GL_RELATIVE_ROUNDED_RECT4_NV = 237;

const int GL_ROUNDED_RECT8_NV = 238;

const int GL_RELATIVE_ROUNDED_RECT8_NV = 239;

const int GL_RELATIVE_RECT_NV = 247;

const int GL_FONT_GLYPHS_AVAILABLE_NV = 37736;

const int GL_FONT_TARGET_UNAVAILABLE_NV = 37737;

const int GL_FONT_UNAVAILABLE_NV = 37738;

const int GL_FONT_UNINTELLIGIBLE_NV = 37739;

const int GL_CONIC_CURVE_TO_NV = 26;

const int GL_RELATIVE_CONIC_CURVE_TO_NV = 27;

const int GL_FONT_NUM_GLYPH_INDICES_BIT_NV = 536870912;

const int GL_STANDARD_FONT_FORMAT_NV = 37740;

const int GL_PATH_PROJECTION_NV = 5889;

const int GL_PATH_MODELVIEW_NV = 5888;

const int GL_PATH_MODELVIEW_STACK_DEPTH_NV = 2979;

const int GL_PATH_MODELVIEW_MATRIX_NV = 2982;

const int GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV = 3382;

const int GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV = 34019;

const int GL_PATH_PROJECTION_STACK_DEPTH_NV = 2980;

const int GL_PATH_PROJECTION_MATRIX_NV = 2983;

const int GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV = 3384;

const int GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV = 34020;

const int GL_FRAGMENT_INPUT_NV = 37741;

const int GL_NV_path_rendering_shared_edge = 1;

const int GL_SHARED_EDGE_NV = 192;

const int GL_NV_pixel_buffer_object = 1;

const int GL_PIXEL_PACK_BUFFER_NV = 35051;

const int GL_PIXEL_UNPACK_BUFFER_NV = 35052;

const int GL_PIXEL_PACK_BUFFER_BINDING_NV = 35053;

const int GL_PIXEL_UNPACK_BUFFER_BINDING_NV = 35055;

const int GL_NV_polygon_mode = 1;

const int GL_POLYGON_MODE_NV = 2880;

const int GL_POLYGON_OFFSET_POINT_NV = 10753;

const int GL_POLYGON_OFFSET_LINE_NV = 10754;

const int GL_POINT_NV = 6912;

const int GL_LINE_NV = 6913;

const int GL_FILL_NV = 6914;

const int GL_NV_primitive_shading_rate = 1;

const int GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = 38321;

const int GL_SHADING_RATE_IMAGE_PALETTE_COUNT_NV = 38322;

const int GL_NV_read_buffer = 1;

const int GL_READ_BUFFER_NV = 3074;

const int GL_NV_read_buffer_front = 1;

const int GL_NV_read_depth = 1;

const int GL_NV_read_depth_stencil = 1;

const int GL_NV_read_stencil = 1;

const int GL_NV_representative_fragment_test = 1;

const int GL_REPRESENTATIVE_FRAGMENT_TEST_NV = 37759;

const int GL_NV_sRGB_formats = 1;

const int GL_SLUMINANCE_NV = 35910;

const int GL_SLUMINANCE_ALPHA_NV = 35908;

const int GL_SRGB8_NV = 35905;

const int GL_SLUMINANCE8_NV = 35911;

const int GL_SLUMINANCE8_ALPHA8_NV = 35909;

const int GL_COMPRESSED_SRGB_S3TC_DXT1_NV = 35916;

const int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = 35917;

const int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = 35918;

const int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = 35919;

const int GL_ETC1_SRGB8_NV = 35054;

const int GL_NV_sample_locations = 1;

const int GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV = 37693;

const int GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV = 37694;

const int GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV = 37695;

const int GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV = 37696;

const int GL_SAMPLE_LOCATION_NV = 36432;

const int GL_PROGRAMMABLE_SAMPLE_LOCATION_NV = 37697;

const int GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV = 37698;

const int GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV = 37699;

const int GL_NV_sample_mask_override_coverage = 1;

const int GL_NV_scissor_exclusive = 1;

const int GL_SCISSOR_TEST_EXCLUSIVE_NV = 38229;

const int GL_SCISSOR_BOX_EXCLUSIVE_NV = 38230;

const int GL_NV_shader_atomic_fp16_vector = 1;

const int GL_NV_shader_noperspective_interpolation = 1;

const int GL_NV_shader_subgroup_partitioned = 1;

const int GL_SUBGROUP_FEATURE_PARTITIONED_BIT_NV = 256;

const int GL_NV_shader_texture_footprint = 1;

const int GL_NV_shading_rate_image = 1;

const int GL_SHADING_RATE_IMAGE_NV = 38243;

const int GL_SHADING_RATE_NO_INVOCATIONS_NV = 38244;

const int GL_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV = 38245;

const int GL_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV = 38246;

const int GL_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV = 38247;

const int GL_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV = 38248;

const int GL_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV = 38249;

const int GL_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV = 38250;

const int GL_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV = 38251;

const int GL_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV = 38252;

const int GL_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV = 38253;

const int GL_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV = 38254;

const int GL_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV = 38255;

const int GL_SHADING_RATE_IMAGE_BINDING_NV = 38235;

const int GL_SHADING_RATE_IMAGE_TEXEL_WIDTH_NV = 38236;

const int GL_SHADING_RATE_IMAGE_TEXEL_HEIGHT_NV = 38237;

const int GL_SHADING_RATE_IMAGE_PALETTE_SIZE_NV = 38238;

const int GL_MAX_COARSE_FRAGMENT_SAMPLES_NV = 38239;

const int GL_SHADING_RATE_SAMPLE_ORDER_DEFAULT_NV = 38318;

const int GL_SHADING_RATE_SAMPLE_ORDER_PIXEL_MAJOR_NV = 38319;

const int GL_SHADING_RATE_SAMPLE_ORDER_SAMPLE_MAJOR_NV = 38320;

const int GL_NV_shadow_samplers_array = 1;

const int GL_SAMPLER_2D_ARRAY_SHADOW_NV = 36292;

const int GL_NV_shadow_samplers_cube = 1;

const int GL_SAMPLER_CUBE_SHADOW_NV = 36293;

const int GL_NV_stereo_view_rendering = 1;

const int GL_NV_texture_border_clamp = 1;

const int GL_TEXTURE_BORDER_COLOR_NV = 4100;

const int GL_CLAMP_TO_BORDER_NV = 33069;

const int GL_NV_texture_compression_s3tc_update = 1;

const int GL_NV_texture_npot_2D_mipmap = 1;

const int GL_NV_timeline_semaphore = 1;

const int GL_TIMELINE_SEMAPHORE_VALUE_NV = 38293;

const int GL_SEMAPHORE_TYPE_NV = 38323;

const int GL_SEMAPHORE_TYPE_BINARY_NV = 38324;

const int GL_SEMAPHORE_TYPE_TIMELINE_NV = 38325;

const int GL_MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV = 38326;

const int GL_NV_viewport_array = 1;

const int GL_MAX_VIEWPORTS_NV = 33371;

const int GL_VIEWPORT_SUBPIXEL_BITS_NV = 33372;

const int GL_VIEWPORT_BOUNDS_RANGE_NV = 33373;

const int GL_VIEWPORT_INDEX_PROVOKING_VERTEX_NV = 33375;

const int GL_NV_viewport_array2 = 1;

const int GL_NV_viewport_swizzle = 1;

const int GL_VIEWPORT_SWIZZLE_POSITIVE_X_NV = 37712;

const int GL_VIEWPORT_SWIZZLE_NEGATIVE_X_NV = 37713;

const int GL_VIEWPORT_SWIZZLE_POSITIVE_Y_NV = 37714;

const int GL_VIEWPORT_SWIZZLE_NEGATIVE_Y_NV = 37715;

const int GL_VIEWPORT_SWIZZLE_POSITIVE_Z_NV = 37716;

const int GL_VIEWPORT_SWIZZLE_NEGATIVE_Z_NV = 37717;

const int GL_VIEWPORT_SWIZZLE_POSITIVE_W_NV = 37718;

const int GL_VIEWPORT_SWIZZLE_NEGATIVE_W_NV = 37719;

const int GL_VIEWPORT_SWIZZLE_X_NV = 37720;

const int GL_VIEWPORT_SWIZZLE_Y_NV = 37721;

const int GL_VIEWPORT_SWIZZLE_Z_NV = 37722;

const int GL_VIEWPORT_SWIZZLE_W_NV = 37723;

const int GL_OVR_multiview = 1;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = 38448;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = 38450;

const int GL_MAX_VIEWS_OVR = 38449;

const int GL_FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR = 38451;

const int GL_OVR_multiview2 = 1;

const int GL_OVR_multiview_multisampled_render_to_texture = 1;

const int GL_QCOM_YUV_texture_gather = 1;

const int GL_QCOM_alpha_test = 1;

const int GL_ALPHA_TEST_QCOM = 3008;

const int GL_ALPHA_TEST_FUNC_QCOM = 3009;

const int GL_ALPHA_TEST_REF_QCOM = 3010;

const int GL_QCOM_binning_control = 1;

const int GL_BINNING_CONTROL_HINT_QCOM = 36784;

const int GL_CPU_OPTIMIZED_QCOM = 36785;

const int GL_GPU_OPTIMIZED_QCOM = 36786;

const int GL_RENDER_DIRECT_TO_FRAMEBUFFER_QCOM = 36787;

const int GL_QCOM_driver_control = 1;

const int GL_QCOM_extended_get = 1;

const int GL_TEXTURE_WIDTH_QCOM = 35794;

const int GL_TEXTURE_HEIGHT_QCOM = 35795;

const int GL_TEXTURE_DEPTH_QCOM = 35796;

const int GL_TEXTURE_INTERNAL_FORMAT_QCOM = 35797;

const int GL_TEXTURE_FORMAT_QCOM = 35798;

const int GL_TEXTURE_TYPE_QCOM = 35799;

const int GL_TEXTURE_IMAGE_VALID_QCOM = 35800;

const int GL_TEXTURE_NUM_LEVELS_QCOM = 35801;

const int GL_TEXTURE_TARGET_QCOM = 35802;

const int GL_TEXTURE_OBJECT_VALID_QCOM = 35803;

const int GL_STATE_RESTORE = 35804;

const int GL_QCOM_extended_get2 = 1;

const int GL_QCOM_frame_extrapolation = 1;

const int GL_QCOM_framebuffer_foveated = 1;

const int GL_FOVEATION_ENABLE_BIT_QCOM = 1;

const int GL_FOVEATION_SCALED_BIN_METHOD_BIT_QCOM = 2;

const int GL_QCOM_motion_estimation = 1;

const int GL_MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM = 35984;

const int GL_MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM = 35985;

const int GL_QCOM_perfmon_global_mode = 1;

const int GL_PERFMON_GLOBAL_MODE_QCOM = 36768;

const int GL_QCOM_shader_framebuffer_fetch_noncoherent = 1;

const int GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = 38562;

const int GL_QCOM_shader_framebuffer_fetch_rate = 1;

const int GL_QCOM_shading_rate = 1;

const int GL_SHADING_RATE_QCOM = 38564;

const int GL_SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM = 38565;

const int GL_SHADING_RATE_1X1_PIXELS_QCOM = 38566;

const int GL_SHADING_RATE_1X2_PIXELS_QCOM = 38567;

const int GL_SHADING_RATE_2X1_PIXELS_QCOM = 38568;

const int GL_SHADING_RATE_2X2_PIXELS_QCOM = 38569;

const int GL_SHADING_RATE_4X2_PIXELS_QCOM = 38572;

const int GL_SHADING_RATE_4X4_PIXELS_QCOM = 38574;

const int GL_QCOM_texture_foveated = 1;

const int GL_TEXTURE_FOVEATED_FEATURE_BITS_QCOM = 35835;

const int GL_TEXTURE_FOVEATED_MIN_PIXEL_DENSITY_QCOM = 35836;

const int GL_TEXTURE_FOVEATED_FEATURE_QUERY_QCOM = 35837;

const int GL_TEXTURE_FOVEATED_NUM_FOCAL_POINTS_QUERY_QCOM = 35838;

const int GL_FRAMEBUFFER_INCOMPLETE_FOVEATION_QCOM = 35839;

const int GL_QCOM_texture_foveated2 = 1;

const int GL_TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM = 38560;

const int GL_QCOM_texture_foveated_subsampled_layout = 1;

const int GL_FOVEATION_SUBSAMPLED_LAYOUT_METHOD_BIT_QCOM = 4;

const int GL_MAX_SHADER_SUBSAMPLED_IMAGE_UNITS_QCOM = 36769;

const int GL_QCOM_tiled_rendering = 1;

const int GL_COLOR_BUFFER_BIT0_QCOM = 1;

const int GL_COLOR_BUFFER_BIT1_QCOM = 2;

const int GL_COLOR_BUFFER_BIT2_QCOM = 4;

const int GL_COLOR_BUFFER_BIT3_QCOM = 8;

const int GL_COLOR_BUFFER_BIT4_QCOM = 16;

const int GL_COLOR_BUFFER_BIT5_QCOM = 32;

const int GL_COLOR_BUFFER_BIT6_QCOM = 64;

const int GL_COLOR_BUFFER_BIT7_QCOM = 128;

const int GL_DEPTH_BUFFER_BIT0_QCOM = 256;

const int GL_DEPTH_BUFFER_BIT1_QCOM = 512;

const int GL_DEPTH_BUFFER_BIT2_QCOM = 1024;

const int GL_DEPTH_BUFFER_BIT3_QCOM = 2048;

const int GL_DEPTH_BUFFER_BIT4_QCOM = 4096;

const int GL_DEPTH_BUFFER_BIT5_QCOM = 8192;

const int GL_DEPTH_BUFFER_BIT6_QCOM = 16384;

const int GL_DEPTH_BUFFER_BIT7_QCOM = 32768;

const int GL_STENCIL_BUFFER_BIT0_QCOM = 65536;

const int GL_STENCIL_BUFFER_BIT1_QCOM = 131072;

const int GL_STENCIL_BUFFER_BIT2_QCOM = 262144;

const int GL_STENCIL_BUFFER_BIT3_QCOM = 524288;

const int GL_STENCIL_BUFFER_BIT4_QCOM = 1048576;

const int GL_STENCIL_BUFFER_BIT5_QCOM = 2097152;

const int GL_STENCIL_BUFFER_BIT6_QCOM = 4194304;

const int GL_STENCIL_BUFFER_BIT7_QCOM = 8388608;

const int GL_MULTISAMPLE_BUFFER_BIT0_QCOM = 16777216;

const int GL_MULTISAMPLE_BUFFER_BIT1_QCOM = 33554432;

const int GL_MULTISAMPLE_BUFFER_BIT2_QCOM = 67108864;

const int GL_MULTISAMPLE_BUFFER_BIT3_QCOM = 134217728;

const int GL_MULTISAMPLE_BUFFER_BIT4_QCOM = 268435456;

const int GL_MULTISAMPLE_BUFFER_BIT5_QCOM = 536870912;

const int GL_MULTISAMPLE_BUFFER_BIT6_QCOM = 1073741824;

const int GL_MULTISAMPLE_BUFFER_BIT7_QCOM = 2147483648;

const int GL_QCOM_writeonly_rendering = 1;

const int GL_WRITEONLY_RENDERING_QCOM = 34851;

const int GL_VIV_shader_binary = 1;

const int GL_SHADER_BINARY_VIV = 36804;

const int __gles2_gl32_h_ = 1;

const int KHRONOS_SUPPORT_INT64 = 1;

const int KHRONOS_SUPPORT_FLOAT = 1;

const int KHRONOS_MAX_ENUM = 2147483647;

const int GL_GLES_PROTOTYPES = 1;

const int GL_ES_VERSION_2_0 = 1;

const int GL_DEPTH_BUFFER_BIT = 256;

const int GL_STENCIL_BUFFER_BIT = 1024;

const int GL_COLOR_BUFFER_BIT = 16384;

const int GL_FALSE = 0;

const int GL_TRUE = 1;

const int GL_POINTS = 0;

const int GL_LINES = 1;

const int GL_LINE_LOOP = 2;

const int GL_LINE_STRIP = 3;

const int GL_TRIANGLES = 4;

const int GL_TRIANGLE_STRIP = 5;

const int GL_TRIANGLE_FAN = 6;

const int GL_ZERO = 0;

const int GL_ONE = 1;

const int GL_SRC_COLOR = 768;

const int GL_ONE_MINUS_SRC_COLOR = 769;

const int GL_SRC_ALPHA = 770;

const int GL_ONE_MINUS_SRC_ALPHA = 771;

const int GL_DST_ALPHA = 772;

const int GL_ONE_MINUS_DST_ALPHA = 773;

const int GL_DST_COLOR = 774;

const int GL_ONE_MINUS_DST_COLOR = 775;

const int GL_SRC_ALPHA_SATURATE = 776;

const int GL_FUNC_ADD = 32774;

const int GL_BLEND_EQUATION = 32777;

const int GL_BLEND_EQUATION_RGB = 32777;

const int GL_BLEND_EQUATION_ALPHA = 34877;

const int GL_FUNC_SUBTRACT = 32778;

const int GL_FUNC_REVERSE_SUBTRACT = 32779;

const int GL_BLEND_DST_RGB = 32968;

const int GL_BLEND_SRC_RGB = 32969;

const int GL_BLEND_DST_ALPHA = 32970;

const int GL_BLEND_SRC_ALPHA = 32971;

const int GL_CONSTANT_COLOR = 32769;

const int GL_ONE_MINUS_CONSTANT_COLOR = 32770;

const int GL_CONSTANT_ALPHA = 32771;

const int GL_ONE_MINUS_CONSTANT_ALPHA = 32772;

const int GL_BLEND_COLOR = 32773;

const int GL_ARRAY_BUFFER = 34962;

const int GL_ELEMENT_ARRAY_BUFFER = 34963;

const int GL_ARRAY_BUFFER_BINDING = 34964;

const int GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;

const int GL_STREAM_DRAW = 35040;

const int GL_STATIC_DRAW = 35044;

const int GL_DYNAMIC_DRAW = 35048;

const int GL_BUFFER_SIZE = 34660;

const int GL_BUFFER_USAGE = 34661;

const int GL_CURRENT_VERTEX_ATTRIB = 34342;

const int GL_FRONT = 1028;

const int GL_BACK = 1029;

const int GL_FRONT_AND_BACK = 1032;

const int GL_TEXTURE_2D = 3553;

const int GL_CULL_FACE = 2884;

const int GL_BLEND = 3042;

const int GL_DITHER = 3024;

const int GL_STENCIL_TEST = 2960;

const int GL_DEPTH_TEST = 2929;

const int GL_SCISSOR_TEST = 3089;

const int GL_POLYGON_OFFSET_FILL = 32823;

const int GL_SAMPLE_ALPHA_TO_COVERAGE = 32926;

const int GL_SAMPLE_COVERAGE = 32928;

const int GL_NO_ERROR = 0;

const int GL_INVALID_ENUM = 1280;

const int GL_INVALID_VALUE = 1281;

const int GL_INVALID_OPERATION = 1282;

const int GL_OUT_OF_MEMORY = 1285;

const int GL_CW = 2304;

const int GL_CCW = 2305;

const int GL_LINE_WIDTH = 2849;

const int GL_ALIASED_POINT_SIZE_RANGE = 33901;

const int GL_ALIASED_LINE_WIDTH_RANGE = 33902;

const int GL_CULL_FACE_MODE = 2885;

const int GL_FRONT_FACE = 2886;

const int GL_DEPTH_RANGE = 2928;

const int GL_DEPTH_WRITEMASK = 2930;

const int GL_DEPTH_CLEAR_VALUE = 2931;

const int GL_DEPTH_FUNC = 2932;

const int GL_STENCIL_CLEAR_VALUE = 2961;

const int GL_STENCIL_FUNC = 2962;

const int GL_STENCIL_FAIL = 2964;

const int GL_STENCIL_PASS_DEPTH_FAIL = 2965;

const int GL_STENCIL_PASS_DEPTH_PASS = 2966;

const int GL_STENCIL_REF = 2967;

const int GL_STENCIL_VALUE_MASK = 2963;

const int GL_STENCIL_WRITEMASK = 2968;

const int GL_STENCIL_BACK_FUNC = 34816;

const int GL_STENCIL_BACK_FAIL = 34817;

const int GL_STENCIL_BACK_PASS_DEPTH_FAIL = 34818;

const int GL_STENCIL_BACK_PASS_DEPTH_PASS = 34819;

const int GL_STENCIL_BACK_REF = 36003;

const int GL_STENCIL_BACK_VALUE_MASK = 36004;

const int GL_STENCIL_BACK_WRITEMASK = 36005;

const int GL_VIEWPORT = 2978;

const int GL_SCISSOR_BOX = 3088;

const int GL_COLOR_CLEAR_VALUE = 3106;

const int GL_COLOR_WRITEMASK = 3107;

const int GL_UNPACK_ALIGNMENT = 3317;

const int GL_PACK_ALIGNMENT = 3333;

const int GL_MAX_TEXTURE_SIZE = 3379;

const int GL_MAX_VIEWPORT_DIMS = 3386;

const int GL_SUBPIXEL_BITS = 3408;

const int GL_RED_BITS = 3410;

const int GL_GREEN_BITS = 3411;

const int GL_BLUE_BITS = 3412;

const int GL_ALPHA_BITS = 3413;

const int GL_DEPTH_BITS = 3414;

const int GL_STENCIL_BITS = 3415;

const int GL_POLYGON_OFFSET_UNITS = 10752;

const int GL_POLYGON_OFFSET_FACTOR = 32824;

const int GL_TEXTURE_BINDING_2D = 32873;

const int GL_SAMPLE_BUFFERS = 32936;

const int GL_SAMPLES = 32937;

const int GL_SAMPLE_COVERAGE_VALUE = 32938;

const int GL_SAMPLE_COVERAGE_INVERT = 32939;

const int GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466;

const int GL_COMPRESSED_TEXTURE_FORMATS = 34467;

const int GL_DONT_CARE = 4352;

const int GL_FASTEST = 4353;

const int GL_NICEST = 4354;

const int GL_GENERATE_MIPMAP_HINT = 33170;

const int GL_BYTE = 5120;

const int GL_UNSIGNED_BYTE = 5121;

const int GL_SHORT = 5122;

const int GL_UNSIGNED_SHORT = 5123;

const int GL_INT = 5124;

const int GL_UNSIGNED_INT = 5125;

const int GL_FLOAT = 5126;

const int GL_FIXED = 5132;

const int GL_DEPTH_COMPONENT = 6402;

const int GL_ALPHA = 6406;

const int GL_RGB = 6407;

const int GL_RGBA = 6408;

const int GL_LUMINANCE = 6409;

const int GL_LUMINANCE_ALPHA = 6410;

const int GL_UNSIGNED_SHORT_4_4_4_4 = 32819;

const int GL_UNSIGNED_SHORT_5_5_5_1 = 32820;

const int GL_UNSIGNED_SHORT_5_6_5 = 33635;

const int GL_FRAGMENT_SHADER = 35632;

const int GL_VERTEX_SHADER = 35633;

const int GL_MAX_VERTEX_ATTRIBS = 34921;

const int GL_MAX_VERTEX_UNIFORM_VECTORS = 36347;

const int GL_MAX_VARYING_VECTORS = 36348;

const int GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661;

const int GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660;

const int GL_MAX_TEXTURE_IMAGE_UNITS = 34930;

const int GL_MAX_FRAGMENT_UNIFORM_VECTORS = 36349;

const int GL_SHADER_TYPE = 35663;

const int GL_DELETE_STATUS = 35712;

const int GL_LINK_STATUS = 35714;

const int GL_VALIDATE_STATUS = 35715;

const int GL_ATTACHED_SHADERS = 35717;

const int GL_ACTIVE_UNIFORMS = 35718;

const int GL_ACTIVE_UNIFORM_MAX_LENGTH = 35719;

const int GL_ACTIVE_ATTRIBUTES = 35721;

const int GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 35722;

const int GL_SHADING_LANGUAGE_VERSION = 35724;

const int GL_CURRENT_PROGRAM = 35725;

const int GL_NEVER = 512;

const int GL_LESS = 513;

const int GL_EQUAL = 514;

const int GL_LEQUAL = 515;

const int GL_GREATER = 516;

const int GL_NOTEQUAL = 517;

const int GL_GEQUAL = 518;

const int GL_ALWAYS = 519;

const int GL_KEEP = 7680;

const int GL_REPLACE = 7681;

const int GL_INCR = 7682;

const int GL_DECR = 7683;

const int GL_INVERT = 5386;

const int GL_INCR_WRAP = 34055;

const int GL_DECR_WRAP = 34056;

const int GL_VENDOR = 7936;

const int GL_RENDERER = 7937;

const int GL_VERSION = 7938;

const int GL_EXTENSIONS = 7939;

const int GL_NEAREST = 9728;

const int GL_LINEAR = 9729;

const int GL_NEAREST_MIPMAP_NEAREST = 9984;

const int GL_LINEAR_MIPMAP_NEAREST = 9985;

const int GL_NEAREST_MIPMAP_LINEAR = 9986;

const int GL_LINEAR_MIPMAP_LINEAR = 9987;

const int GL_TEXTURE_MAG_FILTER = 10240;

const int GL_TEXTURE_MIN_FILTER = 10241;

const int GL_TEXTURE_WRAP_S = 10242;

const int GL_TEXTURE_WRAP_T = 10243;

const int GL_TEXTURE = 5890;

const int GL_TEXTURE_CUBE_MAP = 34067;

const int GL_TEXTURE_BINDING_CUBE_MAP = 34068;

const int GL_TEXTURE_CUBE_MAP_POSITIVE_X = 34069;

const int GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 34070;

const int GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 34071;

const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072;

const int GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 34073;

const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074;

const int GL_MAX_CUBE_MAP_TEXTURE_SIZE = 34076;

const int GL_TEXTURE0 = 33984;

const int GL_TEXTURE1 = 33985;

const int GL_TEXTURE2 = 33986;

const int GL_TEXTURE3 = 33987;

const int GL_TEXTURE4 = 33988;

const int GL_TEXTURE5 = 33989;

const int GL_TEXTURE6 = 33990;

const int GL_TEXTURE7 = 33991;

const int GL_TEXTURE8 = 33992;

const int GL_TEXTURE9 = 33993;

const int GL_TEXTURE10 = 33994;

const int GL_TEXTURE11 = 33995;

const int GL_TEXTURE12 = 33996;

const int GL_TEXTURE13 = 33997;

const int GL_TEXTURE14 = 33998;

const int GL_TEXTURE15 = 33999;

const int GL_TEXTURE16 = 34000;

const int GL_TEXTURE17 = 34001;

const int GL_TEXTURE18 = 34002;

const int GL_TEXTURE19 = 34003;

const int GL_TEXTURE20 = 34004;

const int GL_TEXTURE21 = 34005;

const int GL_TEXTURE22 = 34006;

const int GL_TEXTURE23 = 34007;

const int GL_TEXTURE24 = 34008;

const int GL_TEXTURE25 = 34009;

const int GL_TEXTURE26 = 34010;

const int GL_TEXTURE27 = 34011;

const int GL_TEXTURE28 = 34012;

const int GL_TEXTURE29 = 34013;

const int GL_TEXTURE30 = 34014;

const int GL_TEXTURE31 = 34015;

const int GL_ACTIVE_TEXTURE = 34016;

const int GL_REPEAT = 10497;

const int GL_CLAMP_TO_EDGE = 33071;

const int GL_MIRRORED_REPEAT = 33648;

const int GL_FLOAT_VEC2 = 35664;

const int GL_FLOAT_VEC3 = 35665;

const int GL_FLOAT_VEC4 = 35666;

const int GL_INT_VEC2 = 35667;

const int GL_INT_VEC3 = 35668;

const int GL_INT_VEC4 = 35669;

const int GL_BOOL = 35670;

const int GL_BOOL_VEC2 = 35671;

const int GL_BOOL_VEC3 = 35672;

const int GL_BOOL_VEC4 = 35673;

const int GL_FLOAT_MAT2 = 35674;

const int GL_FLOAT_MAT3 = 35675;

const int GL_FLOAT_MAT4 = 35676;

const int GL_SAMPLER_2D = 35678;

const int GL_SAMPLER_CUBE = 35680;

const int GL_VERTEX_ATTRIB_ARRAY_ENABLED = 34338;

const int GL_VERTEX_ATTRIB_ARRAY_SIZE = 34339;

const int GL_VERTEX_ATTRIB_ARRAY_STRIDE = 34340;

const int GL_VERTEX_ATTRIB_ARRAY_TYPE = 34341;

const int GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922;

const int GL_VERTEX_ATTRIB_ARRAY_POINTER = 34373;

const int GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975;

const int GL_IMPLEMENTATION_COLOR_READ_TYPE = 35738;

const int GL_IMPLEMENTATION_COLOR_READ_FORMAT = 35739;

const int GL_COMPILE_STATUS = 35713;

const int GL_INFO_LOG_LENGTH = 35716;

const int GL_SHADER_SOURCE_LENGTH = 35720;

const int GL_SHADER_COMPILER = 36346;

const int GL_SHADER_BINARY_FORMATS = 36344;

const int GL_NUM_SHADER_BINARY_FORMATS = 36345;

const int GL_LOW_FLOAT = 36336;

const int GL_MEDIUM_FLOAT = 36337;

const int GL_HIGH_FLOAT = 36338;

const int GL_LOW_INT = 36339;

const int GL_MEDIUM_INT = 36340;

const int GL_HIGH_INT = 36341;

const int GL_FRAMEBUFFER = 36160;

const int GL_RENDERBUFFER = 36161;

const int GL_RGBA4 = 32854;

const int GL_RGB5_A1 = 32855;

const int GL_RGB565 = 36194;

const int GL_DEPTH_COMPONENT16 = 33189;

const int GL_STENCIL_INDEX8 = 36168;

const int GL_RENDERBUFFER_WIDTH = 36162;

const int GL_RENDERBUFFER_HEIGHT = 36163;

const int GL_RENDERBUFFER_INTERNAL_FORMAT = 36164;

const int GL_RENDERBUFFER_RED_SIZE = 36176;

const int GL_RENDERBUFFER_GREEN_SIZE = 36177;

const int GL_RENDERBUFFER_BLUE_SIZE = 36178;

const int GL_RENDERBUFFER_ALPHA_SIZE = 36179;

const int GL_RENDERBUFFER_DEPTH_SIZE = 36180;

const int GL_RENDERBUFFER_STENCIL_SIZE = 36181;

const int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048;

const int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051;

const int GL_COLOR_ATTACHMENT0 = 36064;

const int GL_DEPTH_ATTACHMENT = 36096;

const int GL_STENCIL_ATTACHMENT = 36128;

const int GL_NONE = 0;

const int GL_FRAMEBUFFER_COMPLETE = 36053;

const int GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054;

const int GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055;

const int GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057;

const int GL_FRAMEBUFFER_UNSUPPORTED = 36061;

const int GL_FRAMEBUFFER_BINDING = 36006;

const int GL_RENDERBUFFER_BINDING = 36007;

const int GL_MAX_RENDERBUFFER_SIZE = 34024;

const int GL_INVALID_FRAMEBUFFER_OPERATION = 1286;

const int GL_ES_VERSION_3_0 = 1;

const int GL_READ_BUFFER = 3074;

const int GL_UNPACK_ROW_LENGTH = 3314;

const int GL_UNPACK_SKIP_ROWS = 3315;

const int GL_UNPACK_SKIP_PIXELS = 3316;

const int GL_PACK_ROW_LENGTH = 3330;

const int GL_PACK_SKIP_ROWS = 3331;

const int GL_PACK_SKIP_PIXELS = 3332;

const int GL_COLOR = 6144;

const int GL_DEPTH = 6145;

const int GL_STENCIL = 6146;

const int GL_RED = 6403;

const int GL_RGB8 = 32849;

const int GL_RGBA8 = 32856;

const int GL_RGB10_A2 = 32857;

const int GL_TEXTURE_BINDING_3D = 32874;

const int GL_UNPACK_SKIP_IMAGES = 32877;

const int GL_UNPACK_IMAGE_HEIGHT = 32878;

const int GL_TEXTURE_WRAP_R = 32882;

const int GL_MAX_3D_TEXTURE_SIZE = 32883;

const int GL_UNSIGNED_INT_2_10_10_10_REV = 33640;

const int GL_MAX_ELEMENTS_VERTICES = 33000;

const int GL_MAX_ELEMENTS_INDICES = 33001;

const int GL_TEXTURE_MIN_LOD = 33082;

const int GL_TEXTURE_MAX_LOD = 33083;

const int GL_TEXTURE_BASE_LEVEL = 33084;

const int GL_TEXTURE_MAX_LEVEL = 33085;

const int GL_DEPTH_COMPONENT24 = 33190;

const int GL_MAX_TEXTURE_LOD_BIAS = 34045;

const int GL_TEXTURE_COMPARE_MODE = 34892;

const int GL_TEXTURE_COMPARE_FUNC = 34893;

const int GL_CURRENT_QUERY = 34917;

const int GL_QUERY_RESULT = 34918;

const int GL_QUERY_RESULT_AVAILABLE = 34919;

const int GL_BUFFER_MAPPED = 35004;

const int GL_BUFFER_MAP_POINTER = 35005;

const int GL_STREAM_READ = 35041;

const int GL_STREAM_COPY = 35042;

const int GL_STATIC_READ = 35045;

const int GL_STATIC_COPY = 35046;

const int GL_DYNAMIC_READ = 35049;

const int GL_DYNAMIC_COPY = 35050;

const int GL_MAX_DRAW_BUFFERS = 34852;

const int GL_DRAW_BUFFER0 = 34853;

const int GL_DRAW_BUFFER1 = 34854;

const int GL_DRAW_BUFFER2 = 34855;

const int GL_DRAW_BUFFER3 = 34856;

const int GL_DRAW_BUFFER4 = 34857;

const int GL_DRAW_BUFFER5 = 34858;

const int GL_DRAW_BUFFER6 = 34859;

const int GL_DRAW_BUFFER7 = 34860;

const int GL_DRAW_BUFFER8 = 34861;

const int GL_DRAW_BUFFER9 = 34862;

const int GL_DRAW_BUFFER10 = 34863;

const int GL_DRAW_BUFFER11 = 34864;

const int GL_DRAW_BUFFER12 = 34865;

const int GL_DRAW_BUFFER13 = 34866;

const int GL_DRAW_BUFFER14 = 34867;

const int GL_DRAW_BUFFER15 = 34868;

const int GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657;

const int GL_MAX_VERTEX_UNIFORM_COMPONENTS = 35658;

const int GL_SAMPLER_3D = 35679;

const int GL_SAMPLER_2D_SHADOW = 35682;

const int GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 35723;

const int GL_PIXEL_PACK_BUFFER = 35051;

const int GL_PIXEL_UNPACK_BUFFER = 35052;

const int GL_PIXEL_PACK_BUFFER_BINDING = 35053;

const int GL_PIXEL_UNPACK_BUFFER_BINDING = 35055;

const int GL_FLOAT_MAT2x3 = 35685;

const int GL_FLOAT_MAT2x4 = 35686;

const int GL_FLOAT_MAT3x2 = 35687;

const int GL_FLOAT_MAT3x4 = 35688;

const int GL_FLOAT_MAT4x2 = 35689;

const int GL_FLOAT_MAT4x3 = 35690;

const int GL_SRGB = 35904;

const int GL_SRGB8 = 35905;

const int GL_SRGB8_ALPHA8 = 35907;

const int GL_COMPARE_REF_TO_TEXTURE = 34894;

const int GL_MAJOR_VERSION = 33307;

const int GL_MINOR_VERSION = 33308;

const int GL_NUM_EXTENSIONS = 33309;

const int GL_RGBA32F = 34836;

const int GL_RGB32F = 34837;

const int GL_RGBA16F = 34842;

const int GL_RGB16F = 34843;

const int GL_VERTEX_ATTRIB_ARRAY_INTEGER = 35069;

const int GL_MAX_ARRAY_TEXTURE_LAYERS = 35071;

const int GL_MIN_PROGRAM_TEXEL_OFFSET = 35076;

const int GL_MAX_PROGRAM_TEXEL_OFFSET = 35077;

const int GL_MAX_VARYING_COMPONENTS = 35659;

const int GL_TEXTURE_BINDING_2D_ARRAY = 35869;

const int GL_R11F_G11F_B10F = 35898;

const int GL_UNSIGNED_INT_10F_11F_11F_REV = 35899;

const int GL_RGB9_E5 = 35901;

const int GL_UNSIGNED_INT_5_9_9_9_REV = 35902;

const int GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 35958;

const int GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 35967;

const int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968;

const int GL_TRANSFORM_FEEDBACK_VARYINGS = 35971;

const int GL_TRANSFORM_FEEDBACK_BUFFER_START = 35972;

const int GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973;

const int GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976;

const int GL_RASTERIZER_DISCARD = 35977;

const int GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978;

const int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979;

const int GL_INTERLEAVED_ATTRIBS = 35980;

const int GL_SEPARATE_ATTRIBS = 35981;

const int GL_TRANSFORM_FEEDBACK_BUFFER = 35982;

const int GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983;

const int GL_RGBA32UI = 36208;

const int GL_RGB32UI = 36209;

const int GL_RGBA16UI = 36214;

const int GL_RGB16UI = 36215;

const int GL_RGBA8UI = 36220;

const int GL_RGB8UI = 36221;

const int GL_RGBA32I = 36226;

const int GL_RGB32I = 36227;

const int GL_RGBA16I = 36232;

const int GL_RGB16I = 36233;

const int GL_RGBA8I = 36238;

const int GL_RGB8I = 36239;

const int GL_RED_INTEGER = 36244;

const int GL_RGB_INTEGER = 36248;

const int GL_RGBA_INTEGER = 36249;

const int GL_SAMPLER_2D_ARRAY = 36289;

const int GL_SAMPLER_2D_ARRAY_SHADOW = 36292;

const int GL_SAMPLER_CUBE_SHADOW = 36293;

const int GL_UNSIGNED_INT_VEC2 = 36294;

const int GL_UNSIGNED_INT_VEC3 = 36295;

const int GL_UNSIGNED_INT_VEC4 = 36296;

const int GL_INT_SAMPLER_2D = 36298;

const int GL_INT_SAMPLER_3D = 36299;

const int GL_INT_SAMPLER_CUBE = 36300;

const int GL_INT_SAMPLER_2D_ARRAY = 36303;

const int GL_UNSIGNED_INT_SAMPLER_2D = 36306;

const int GL_UNSIGNED_INT_SAMPLER_3D = 36307;

const int GL_UNSIGNED_INT_SAMPLER_CUBE = 36308;

const int GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311;

const int GL_BUFFER_ACCESS_FLAGS = 37151;

const int GL_BUFFER_MAP_LENGTH = 37152;

const int GL_BUFFER_MAP_OFFSET = 37153;

const int GL_DEPTH_COMPONENT32F = 36012;

const int GL_DEPTH32F_STENCIL8 = 36013;

const int GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 36269;

const int GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 33296;

const int GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 33297;

const int GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 33298;

const int GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 33299;

const int GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 33300;

const int GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 33301;

const int GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 33302;

const int GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 33303;

const int GL_FRAMEBUFFER_DEFAULT = 33304;

const int GL_FRAMEBUFFER_UNDEFINED = 33305;

const int GL_DEPTH_STENCIL_ATTACHMENT = 33306;

const int GL_DEPTH_STENCIL = 34041;

const int GL_UNSIGNED_INT_24_8 = 34042;

const int GL_DEPTH24_STENCIL8 = 35056;

const int GL_UNSIGNED_NORMALIZED = 35863;

const int GL_DRAW_FRAMEBUFFER_BINDING = 36006;

const int GL_READ_FRAMEBUFFER = 36008;

const int GL_DRAW_FRAMEBUFFER = 36009;

const int GL_READ_FRAMEBUFFER_BINDING = 36010;

const int GL_RENDERBUFFER_SAMPLES = 36011;

const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 36052;

const int GL_MAX_COLOR_ATTACHMENTS = 36063;

const int GL_COLOR_ATTACHMENT1 = 36065;

const int GL_COLOR_ATTACHMENT2 = 36066;

const int GL_COLOR_ATTACHMENT3 = 36067;

const int GL_COLOR_ATTACHMENT4 = 36068;

const int GL_COLOR_ATTACHMENT5 = 36069;

const int GL_COLOR_ATTACHMENT6 = 36070;

const int GL_COLOR_ATTACHMENT7 = 36071;

const int GL_COLOR_ATTACHMENT8 = 36072;

const int GL_COLOR_ATTACHMENT9 = 36073;

const int GL_COLOR_ATTACHMENT10 = 36074;

const int GL_COLOR_ATTACHMENT11 = 36075;

const int GL_COLOR_ATTACHMENT12 = 36076;

const int GL_COLOR_ATTACHMENT13 = 36077;

const int GL_COLOR_ATTACHMENT14 = 36078;

const int GL_COLOR_ATTACHMENT15 = 36079;

const int GL_COLOR_ATTACHMENT16 = 36080;

const int GL_COLOR_ATTACHMENT17 = 36081;

const int GL_COLOR_ATTACHMENT18 = 36082;

const int GL_COLOR_ATTACHMENT19 = 36083;

const int GL_COLOR_ATTACHMENT20 = 36084;

const int GL_COLOR_ATTACHMENT21 = 36085;

const int GL_COLOR_ATTACHMENT22 = 36086;

const int GL_COLOR_ATTACHMENT23 = 36087;

const int GL_COLOR_ATTACHMENT24 = 36088;

const int GL_COLOR_ATTACHMENT25 = 36089;

const int GL_COLOR_ATTACHMENT26 = 36090;

const int GL_COLOR_ATTACHMENT27 = 36091;

const int GL_COLOR_ATTACHMENT28 = 36092;

const int GL_COLOR_ATTACHMENT29 = 36093;

const int GL_COLOR_ATTACHMENT30 = 36094;

const int GL_COLOR_ATTACHMENT31 = 36095;

const int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 36182;

const int GL_MAX_SAMPLES = 36183;

const int GL_HALF_FLOAT = 5131;

const int GL_MAP_INVALIDATE_RANGE_BIT = 4;

const int GL_MAP_INVALIDATE_BUFFER_BIT = 8;

const int GL_MAP_FLUSH_EXPLICIT_BIT = 16;

const int GL_MAP_UNSYNCHRONIZED_BIT = 32;

const int GL_RG = 33319;

const int GL_RG_INTEGER = 33320;

const int GL_R8 = 33321;

const int GL_RG8 = 33323;

const int GL_R16F = 33325;

const int GL_R32F = 33326;

const int GL_RG16F = 33327;

const int GL_RG32F = 33328;

const int GL_R8I = 33329;

const int GL_R8UI = 33330;

const int GL_R16I = 33331;

const int GL_R16UI = 33332;

const int GL_R32I = 33333;

const int GL_R32UI = 33334;

const int GL_RG8I = 33335;

const int GL_RG8UI = 33336;

const int GL_RG16I = 33337;

const int GL_RG16UI = 33338;

const int GL_RG32I = 33339;

const int GL_RG32UI = 33340;

const int GL_VERTEX_ARRAY_BINDING = 34229;

const int GL_RGB8_SNORM = 36758;

const int GL_SIGNED_NORMALIZED = 36764;

const int GL_PRIMITIVE_RESTART_FIXED_INDEX = 36201;

const int GL_COPY_READ_BUFFER = 36662;

const int GL_COPY_WRITE_BUFFER = 36663;

const int GL_COPY_READ_BUFFER_BINDING = 36662;

const int GL_COPY_WRITE_BUFFER_BINDING = 36663;

const int GL_UNIFORM_BUFFER = 35345;

const int GL_UNIFORM_BUFFER_BINDING = 35368;

const int GL_UNIFORM_BUFFER_START = 35369;

const int GL_UNIFORM_BUFFER_SIZE = 35370;

const int GL_MAX_VERTEX_UNIFORM_BLOCKS = 35371;

const int GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 35373;

const int GL_MAX_COMBINED_UNIFORM_BLOCKS = 35374;

const int GL_MAX_UNIFORM_BUFFER_BINDINGS = 35375;

const int GL_MAX_UNIFORM_BLOCK_SIZE = 35376;

const int GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377;

const int GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379;

const int GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380;

const int GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 35381;

const int GL_ACTIVE_UNIFORM_BLOCKS = 35382;

const int GL_UNIFORM_TYPE = 35383;

const int GL_UNIFORM_SIZE = 35384;

const int GL_UNIFORM_NAME_LENGTH = 35385;

const int GL_UNIFORM_BLOCK_INDEX = 35386;

const int GL_UNIFORM_OFFSET = 35387;

const int GL_UNIFORM_ARRAY_STRIDE = 35388;

const int GL_UNIFORM_MATRIX_STRIDE = 35389;

const int GL_UNIFORM_IS_ROW_MAJOR = 35390;

const int GL_UNIFORM_BLOCK_BINDING = 35391;

const int GL_UNIFORM_BLOCK_DATA_SIZE = 35392;

const int GL_UNIFORM_BLOCK_NAME_LENGTH = 35393;

const int GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394;

const int GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395;

const int GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396;

const int GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398;

const int GL_INVALID_INDEX = 4294967295;

const int GL_MAX_VERTEX_OUTPUT_COMPONENTS = 37154;

const int GL_MAX_FRAGMENT_INPUT_COMPONENTS = 37157;

const int GL_MAX_SERVER_WAIT_TIMEOUT = 37137;

const int GL_OBJECT_TYPE = 37138;

const int GL_SYNC_CONDITION = 37139;

const int GL_SYNC_STATUS = 37140;

const int GL_SYNC_FLAGS = 37141;

const int GL_SYNC_FENCE = 37142;

const int GL_SYNC_GPU_COMMANDS_COMPLETE = 37143;

const int GL_UNSIGNALED = 37144;

const int GL_SIGNALED = 37145;

const int GL_ALREADY_SIGNALED = 37146;

const int GL_TIMEOUT_EXPIRED = 37147;

const int GL_CONDITION_SATISFIED = 37148;

const int GL_WAIT_FAILED = 37149;

const int GL_SYNC_FLUSH_COMMANDS_BIT = 1;

const int GL_TIMEOUT_IGNORED = -1;

const int GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 35070;

const int GL_ANY_SAMPLES_PASSED = 35887;

const int GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 36202;

const int GL_SAMPLER_BINDING = 35097;

const int GL_RGB10_A2UI = 36975;

const int GL_TEXTURE_SWIZZLE_R = 36418;

const int GL_TEXTURE_SWIZZLE_G = 36419;

const int GL_TEXTURE_SWIZZLE_B = 36420;

const int GL_TEXTURE_SWIZZLE_A = 36421;

const int GL_GREEN = 6404;

const int GL_BLUE = 6405;

const int GL_INT_2_10_10_10_REV = 36255;

const int GL_TRANSFORM_FEEDBACK_PAUSED = 36387;

const int GL_TRANSFORM_FEEDBACK_ACTIVE = 36388;

const int GL_TRANSFORM_FEEDBACK_BINDING = 36389;

const int GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 33367;

const int GL_PROGRAM_BINARY_LENGTH = 34625;

const int GL_NUM_PROGRAM_BINARY_FORMATS = 34814;

const int GL_PROGRAM_BINARY_FORMATS = 34815;

const int GL_COMPRESSED_R11_EAC = 37488;

const int GL_COMPRESSED_SIGNED_R11_EAC = 37489;

const int GL_COMPRESSED_RG11_EAC = 37490;

const int GL_COMPRESSED_SIGNED_RG11_EAC = 37491;

const int GL_COMPRESSED_RGB8_ETC2 = 37492;

const int GL_COMPRESSED_SRGB8_ETC2 = 37493;

const int GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37494;

const int GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37495;

const int GL_COMPRESSED_RGBA8_ETC2_EAC = 37496;

const int GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 37497;

const int GL_TEXTURE_IMMUTABLE_FORMAT = 37167;

const int GL_MAX_ELEMENT_INDEX = 36203;

const int GL_NUM_SAMPLE_COUNTS = 37760;

const int GL_ES_VERSION_3_1 = 1;

const int GL_COMPUTE_SHADER = 37305;

const int GL_MAX_COMPUTE_UNIFORM_BLOCKS = 37307;

const int GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 37308;

const int GL_MAX_COMPUTE_IMAGE_UNIFORMS = 37309;

const int GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 33378;

const int GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 33379;

const int GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 33380;

const int GL_MAX_COMPUTE_ATOMIC_COUNTERS = 33381;

const int GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 33382;

const int GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 37099;

const int GL_MAX_COMPUTE_WORK_GROUP_COUNT = 37310;

const int GL_MAX_COMPUTE_WORK_GROUP_SIZE = 37311;

const int GL_COMPUTE_WORK_GROUP_SIZE = 33383;

const int GL_DISPATCH_INDIRECT_BUFFER = 37102;

const int GL_DISPATCH_INDIRECT_BUFFER_BINDING = 37103;

const int GL_COMPUTE_SHADER_BIT = 32;

const int GL_DRAW_INDIRECT_BUFFER = 36671;

const int GL_DRAW_INDIRECT_BUFFER_BINDING = 36675;

const int GL_MAX_UNIFORM_LOCATIONS = 33390;

const int GL_FRAMEBUFFER_DEFAULT_WIDTH = 37648;

const int GL_FRAMEBUFFER_DEFAULT_HEIGHT = 37649;

const int GL_FRAMEBUFFER_DEFAULT_SAMPLES = 37651;

const int GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 37652;

const int GL_MAX_FRAMEBUFFER_WIDTH = 37653;

const int GL_MAX_FRAMEBUFFER_HEIGHT = 37654;

const int GL_MAX_FRAMEBUFFER_SAMPLES = 37656;

const int GL_UNIFORM = 37601;

const int GL_UNIFORM_BLOCK = 37602;

const int GL_PROGRAM_INPUT = 37603;

const int GL_PROGRAM_OUTPUT = 37604;

const int GL_BUFFER_VARIABLE = 37605;

const int GL_SHADER_STORAGE_BLOCK = 37606;

const int GL_ATOMIC_COUNTER_BUFFER = 37568;

const int GL_TRANSFORM_FEEDBACK_VARYING = 37620;

const int GL_ACTIVE_RESOURCES = 37621;

const int GL_MAX_NAME_LENGTH = 37622;

const int GL_MAX_NUM_ACTIVE_VARIABLES = 37623;

const int GL_NAME_LENGTH = 37625;

const int GL_TYPE = 37626;

const int GL_ARRAY_SIZE = 37627;

const int GL_OFFSET = 37628;

const int GL_BLOCK_INDEX = 37629;

const int GL_ARRAY_STRIDE = 37630;

const int GL_MATRIX_STRIDE = 37631;

const int GL_IS_ROW_MAJOR = 37632;

const int GL_ATOMIC_COUNTER_BUFFER_INDEX = 37633;

const int GL_BUFFER_BINDING = 37634;

const int GL_BUFFER_DATA_SIZE = 37635;

const int GL_NUM_ACTIVE_VARIABLES = 37636;

const int GL_ACTIVE_VARIABLES = 37637;

const int GL_REFERENCED_BY_VERTEX_SHADER = 37638;

const int GL_REFERENCED_BY_FRAGMENT_SHADER = 37642;

const int GL_REFERENCED_BY_COMPUTE_SHADER = 37643;

const int GL_TOP_LEVEL_ARRAY_SIZE = 37644;

const int GL_TOP_LEVEL_ARRAY_STRIDE = 37645;

const int GL_LOCATION = 37646;

const int GL_VERTEX_SHADER_BIT = 1;

const int GL_FRAGMENT_SHADER_BIT = 2;

const int GL_ALL_SHADER_BITS = 4294967295;

const int GL_PROGRAM_SEPARABLE = 33368;

const int GL_ACTIVE_PROGRAM = 33369;

const int GL_PROGRAM_PIPELINE_BINDING = 33370;

const int GL_ATOMIC_COUNTER_BUFFER_BINDING = 37569;

const int GL_ATOMIC_COUNTER_BUFFER_START = 37570;

const int GL_ATOMIC_COUNTER_BUFFER_SIZE = 37571;

const int GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 37580;

const int GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 37584;

const int GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 37585;

const int GL_MAX_VERTEX_ATOMIC_COUNTERS = 37586;

const int GL_MAX_FRAGMENT_ATOMIC_COUNTERS = 37590;

const int GL_MAX_COMBINED_ATOMIC_COUNTERS = 37591;

const int GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 37592;

const int GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 37596;

const int GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = 37593;

const int GL_UNSIGNED_INT_ATOMIC_COUNTER = 37595;

const int GL_MAX_IMAGE_UNITS = 36664;

const int GL_MAX_VERTEX_IMAGE_UNIFORMS = 37066;

const int GL_MAX_FRAGMENT_IMAGE_UNIFORMS = 37070;

const int GL_MAX_COMBINED_IMAGE_UNIFORMS = 37071;

const int GL_IMAGE_BINDING_NAME = 36666;

const int GL_IMAGE_BINDING_LEVEL = 36667;

const int GL_IMAGE_BINDING_LAYERED = 36668;

const int GL_IMAGE_BINDING_LAYER = 36669;

const int GL_IMAGE_BINDING_ACCESS = 36670;

const int GL_IMAGE_BINDING_FORMAT = 36974;

const int GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 1;

const int GL_ELEMENT_ARRAY_BARRIER_BIT = 2;

const int GL_UNIFORM_BARRIER_BIT = 4;

const int GL_TEXTURE_FETCH_BARRIER_BIT = 8;

const int GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 32;

const int GL_COMMAND_BARRIER_BIT = 64;

const int GL_PIXEL_BUFFER_BARRIER_BIT = 128;

const int GL_TEXTURE_UPDATE_BARRIER_BIT = 256;

const int GL_BUFFER_UPDATE_BARRIER_BIT = 512;

const int GL_FRAMEBUFFER_BARRIER_BIT = 1024;

const int GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 2048;

const int GL_ATOMIC_COUNTER_BARRIER_BIT = 4096;

const int GL_ALL_BARRIER_BITS = 4294967295;

const int GL_IMAGE_2D = 36941;

const int GL_IMAGE_3D = 36942;

const int GL_IMAGE_CUBE = 36944;

const int GL_IMAGE_2D_ARRAY = 36947;

const int GL_INT_IMAGE_2D = 36952;

const int GL_INT_IMAGE_3D = 36953;

const int GL_INT_IMAGE_CUBE = 36955;

const int GL_INT_IMAGE_2D_ARRAY = 36958;

const int GL_UNSIGNED_INT_IMAGE_2D = 36963;

const int GL_UNSIGNED_INT_IMAGE_3D = 36964;

const int GL_UNSIGNED_INT_IMAGE_CUBE = 36966;

const int GL_UNSIGNED_INT_IMAGE_2D_ARRAY = 36969;

const int GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 37063;

const int GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 37064;

const int GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 37065;

const int GL_READ_ONLY = 35000;

const int GL_WRITE_ONLY = 35001;

const int GL_READ_WRITE = 35002;

const int GL_SHADER_STORAGE_BUFFER = 37074;

const int GL_SHADER_STORAGE_BUFFER_BINDING = 37075;

const int GL_SHADER_STORAGE_BUFFER_START = 37076;

const int GL_SHADER_STORAGE_BUFFER_SIZE = 37077;

const int GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 37078;

const int GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 37082;

const int GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 37083;

const int GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 37084;

const int GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 37085;

const int GL_MAX_SHADER_STORAGE_BLOCK_SIZE = 37086;

const int GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 37087;

const int GL_SHADER_STORAGE_BARRIER_BIT = 8192;

const int GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 36665;

const int GL_DEPTH_STENCIL_TEXTURE_MODE = 37098;

const int GL_STENCIL_INDEX = 6401;

const int GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 36446;

const int GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 36447;

const int GL_SAMPLE_POSITION = 36432;

const int GL_SAMPLE_MASK = 36433;

const int GL_SAMPLE_MASK_VALUE = 36434;

const int GL_MAX_SAMPLE_MASK_WORDS = 36441;

const int GL_MAX_COLOR_TEXTURE_SAMPLES = 37134;

const int GL_MAX_DEPTH_TEXTURE_SAMPLES = 37135;

const int GL_MAX_INTEGER_SAMPLES = 37136;

const int GL_TEXTURE_BINDING_2D_MULTISAMPLE = 37124;

const int GL_TEXTURE_SAMPLES = 37126;

const int GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127;

const int GL_TEXTURE_WIDTH = 4096;

const int GL_TEXTURE_HEIGHT = 4097;

const int GL_TEXTURE_DEPTH = 32881;

const int GL_TEXTURE_INTERNAL_FORMAT = 4099;

const int GL_TEXTURE_RED_SIZE = 32860;

const int GL_TEXTURE_GREEN_SIZE = 32861;

const int GL_TEXTURE_BLUE_SIZE = 32862;

const int GL_TEXTURE_ALPHA_SIZE = 32863;

const int GL_TEXTURE_DEPTH_SIZE = 34890;

const int GL_TEXTURE_STENCIL_SIZE = 35057;

const int GL_TEXTURE_SHARED_SIZE = 35903;

const int GL_TEXTURE_RED_TYPE = 35856;

const int GL_TEXTURE_GREEN_TYPE = 35857;

const int GL_TEXTURE_BLUE_TYPE = 35858;

const int GL_TEXTURE_ALPHA_TYPE = 35859;

const int GL_TEXTURE_DEPTH_TYPE = 35862;

const int GL_TEXTURE_COMPRESSED = 34465;

const int GL_SAMPLER_2D_MULTISAMPLE = 37128;

const int GL_INT_SAMPLER_2D_MULTISAMPLE = 37129;

const int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 37130;

const int GL_VERTEX_ATTRIB_BINDING = 33492;

const int GL_VERTEX_ATTRIB_RELATIVE_OFFSET = 33493;

const int GL_VERTEX_BINDING_DIVISOR = 33494;

const int GL_VERTEX_BINDING_OFFSET = 33495;

const int GL_VERTEX_BINDING_STRIDE = 33496;

const int GL_VERTEX_BINDING_BUFFER = 36687;

const int GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 33497;

const int GL_MAX_VERTEX_ATTRIB_BINDINGS = 33498;

const int GL_MAX_VERTEX_ATTRIB_STRIDE = 33509;

const int GL_ES_VERSION_3_2 = 1;

const int GL_MULTISAMPLE_LINE_WIDTH_RANGE = 37761;

const int GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY = 37762;

const int GL_MULTIPLY = 37524;

const int GL_SCREEN = 37525;

const int GL_OVERLAY = 37526;

const int GL_DARKEN = 37527;

const int GL_LIGHTEN = 37528;

const int GL_COLORDODGE = 37529;

const int GL_COLORBURN = 37530;

const int GL_HARDLIGHT = 37531;

const int GL_SOFTLIGHT = 37532;

const int GL_DIFFERENCE = 37534;

const int GL_EXCLUSION = 37536;

const int GL_HSL_HUE = 37549;

const int GL_HSL_SATURATION = 37550;

const int GL_HSL_COLOR = 37551;

const int GL_HSL_LUMINOSITY = 37552;

const int GL_DEBUG_OUTPUT_SYNCHRONOUS = 33346;

const int GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 33347;

const int GL_DEBUG_CALLBACK_FUNCTION = 33348;

const int GL_DEBUG_CALLBACK_USER_PARAM = 33349;

const int GL_DEBUG_SOURCE_API = 33350;

const int GL_DEBUG_SOURCE_WINDOW_SYSTEM = 33351;

const int GL_DEBUG_SOURCE_SHADER_COMPILER = 33352;

const int GL_DEBUG_SOURCE_THIRD_PARTY = 33353;

const int GL_DEBUG_SOURCE_APPLICATION = 33354;

const int GL_DEBUG_SOURCE_OTHER = 33355;

const int GL_DEBUG_TYPE_ERROR = 33356;

const int GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 33357;

const int GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 33358;

const int GL_DEBUG_TYPE_PORTABILITY = 33359;

const int GL_DEBUG_TYPE_PERFORMANCE = 33360;

const int GL_DEBUG_TYPE_OTHER = 33361;

const int GL_DEBUG_TYPE_MARKER = 33384;

const int GL_DEBUG_TYPE_PUSH_GROUP = 33385;

const int GL_DEBUG_TYPE_POP_GROUP = 33386;

const int GL_DEBUG_SEVERITY_NOTIFICATION = 33387;

const int GL_MAX_DEBUG_GROUP_STACK_DEPTH = 33388;

const int GL_DEBUG_GROUP_STACK_DEPTH = 33389;

const int GL_BUFFER = 33504;

const int GL_SHADER = 33505;

const int GL_PROGRAM = 33506;

const int GL_VERTEX_ARRAY = 32884;

const int GL_QUERY = 33507;

const int GL_PROGRAM_PIPELINE = 33508;

const int GL_MAX_LABEL_LENGTH = 33512;

const int GL_MAX_DEBUG_MESSAGE_LENGTH = 37187;

const int GL_MAX_DEBUG_LOGGED_MESSAGES = 37188;

const int GL_DEBUG_LOGGED_MESSAGES = 37189;

const int GL_DEBUG_SEVERITY_HIGH = 37190;

const int GL_DEBUG_SEVERITY_MEDIUM = 37191;

const int GL_DEBUG_SEVERITY_LOW = 37192;

const int GL_DEBUG_OUTPUT = 37600;

const int GL_CONTEXT_FLAG_DEBUG_BIT = 2;

const int GL_STACK_OVERFLOW = 1283;

const int GL_STACK_UNDERFLOW = 1284;

const int GL_GEOMETRY_SHADER = 36313;

const int GL_GEOMETRY_SHADER_BIT = 4;

const int GL_GEOMETRY_VERTICES_OUT = 35094;

const int GL_GEOMETRY_INPUT_TYPE = 35095;

const int GL_GEOMETRY_OUTPUT_TYPE = 35096;

const int GL_GEOMETRY_SHADER_INVOCATIONS = 34943;

const int GL_LAYER_PROVOKING_VERTEX = 33374;

const int GL_LINES_ADJACENCY = 10;

const int GL_LINE_STRIP_ADJACENCY = 11;

const int GL_TRIANGLES_ADJACENCY = 12;

const int GL_TRIANGLE_STRIP_ADJACENCY = 13;

const int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 36319;

const int GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 35372;

const int GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 35378;

const int GL_MAX_GEOMETRY_INPUT_COMPONENTS = 37155;

const int GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 37156;

const int GL_MAX_GEOMETRY_OUTPUT_VERTICES = 36320;

const int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 36321;

const int GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 36442;

const int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 35881;

const int GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 37583;

const int GL_MAX_GEOMETRY_ATOMIC_COUNTERS = 37589;

const int GL_MAX_GEOMETRY_IMAGE_UNIFORMS = 37069;

const int GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 37079;

const int GL_FIRST_VERTEX_CONVENTION = 36429;

const int GL_LAST_VERTEX_CONVENTION = 36430;

const int GL_UNDEFINED_VERTEX = 33376;

const int GL_PRIMITIVES_GENERATED = 35975;

const int GL_FRAMEBUFFER_DEFAULT_LAYERS = 37650;

const int GL_MAX_FRAMEBUFFER_LAYERS = 37655;

const int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 36264;

const int GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 36263;

const int GL_REFERENCED_BY_GEOMETRY_SHADER = 37641;

const int GL_PRIMITIVE_BOUNDING_BOX = 37566;

const int GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT = 4;

const int GL_CONTEXT_FLAGS = 33310;

const int GL_LOSE_CONTEXT_ON_RESET = 33362;

const int GL_GUILTY_CONTEXT_RESET = 33363;

const int GL_INNOCENT_CONTEXT_RESET = 33364;

const int GL_UNKNOWN_CONTEXT_RESET = 33365;

const int GL_RESET_NOTIFICATION_STRATEGY = 33366;

const int GL_NO_RESET_NOTIFICATION = 33377;

const int GL_CONTEXT_LOST = 1287;

const int GL_SAMPLE_SHADING = 35894;

const int GL_MIN_SAMPLE_SHADING_VALUE = 35895;

const int GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 36443;

const int GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 36444;

const int GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 36445;

const int GL_PATCH_VERTICES = 36466;

const int GL_TESS_CONTROL_OUTPUT_VERTICES = 36469;

const int GL_TESS_GEN_MODE = 36470;

const int GL_TESS_GEN_SPACING = 36471;

const int GL_TESS_GEN_VERTEX_ORDER = 36472;

const int GL_TESS_GEN_POINT_MODE = 36473;

const int GL_ISOLINES = 36474;

const int GL_QUADS = 7;

const int GL_FRACTIONAL_ODD = 36475;

const int GL_FRACTIONAL_EVEN = 36476;

const int GL_MAX_PATCH_VERTICES = 36477;

const int GL_MAX_TESS_GEN_LEVEL = 36478;

const int GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 36479;

const int GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 36480;

const int GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 36481;

const int GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 36482;

const int GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 36483;

const int GL_MAX_TESS_PATCH_COMPONENTS = 36484;

const int GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 36485;

const int GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 36486;

const int GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 36489;

const int GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 36490;

const int GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 34924;

const int GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 34925;

const int GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 36382;

const int GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 36383;

const int GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 37581;

const int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 37582;

const int GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 37587;

const int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 37588;

const int GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 37067;

const int GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 37068;

const int GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 37080;

const int GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 37081;

const int GL_IS_PER_PATCH = 37607;

const int GL_REFERENCED_BY_TESS_CONTROL_SHADER = 37639;

const int GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 37640;

const int GL_TESS_CONTROL_SHADER = 36488;

const int GL_TESS_EVALUATION_SHADER = 36487;

const int GL_TESS_CONTROL_SHADER_BIT = 8;

const int GL_TESS_EVALUATION_SHADER_BIT = 16;

const int GL_TEXTURE_BORDER_COLOR = 4100;

const int GL_CLAMP_TO_BORDER = 33069;

const int GL_TEXTURE_BUFFER = 35882;

const int GL_TEXTURE_BUFFER_BINDING = 35882;

const int GL_MAX_TEXTURE_BUFFER_SIZE = 35883;

const int GL_TEXTURE_BINDING_BUFFER = 35884;

const int GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 35885;

const int GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 37279;

const int GL_SAMPLER_BUFFER = 36290;

const int GL_INT_SAMPLER_BUFFER = 36304;

const int GL_UNSIGNED_INT_SAMPLER_BUFFER = 36312;

const int GL_IMAGE_BUFFER = 36945;

const int GL_INT_IMAGE_BUFFER = 36956;

const int GL_UNSIGNED_INT_IMAGE_BUFFER = 36967;

const int GL_TEXTURE_BUFFER_OFFSET = 37277;

const int GL_TEXTURE_BUFFER_SIZE = 37278;

const int GL_COMPRESSED_RGBA_ASTC_4x4 = 37808;

const int GL_COMPRESSED_RGBA_ASTC_5x4 = 37809;

const int GL_COMPRESSED_RGBA_ASTC_5x5 = 37810;

const int GL_COMPRESSED_RGBA_ASTC_6x5 = 37811;

const int GL_COMPRESSED_RGBA_ASTC_6x6 = 37812;

const int GL_COMPRESSED_RGBA_ASTC_8x5 = 37813;

const int GL_COMPRESSED_RGBA_ASTC_8x6 = 37814;

const int GL_COMPRESSED_RGBA_ASTC_8x8 = 37815;

const int GL_COMPRESSED_RGBA_ASTC_10x5 = 37816;

const int GL_COMPRESSED_RGBA_ASTC_10x6 = 37817;

const int GL_COMPRESSED_RGBA_ASTC_10x8 = 37818;

const int GL_COMPRESSED_RGBA_ASTC_10x10 = 37819;

const int GL_COMPRESSED_RGBA_ASTC_12x10 = 37820;

const int GL_COMPRESSED_RGBA_ASTC_12x12 = 37821;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = 37840;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = 37841;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = 37842;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = 37843;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = 37844;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = 37845;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = 37846;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = 37847;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = 37848;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = 37849;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = 37850;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = 37851;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = 37852;

const int GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = 37853;

const int GL_TEXTURE_CUBE_MAP_ARRAY = 36873;

const int GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 36874;

const int GL_SAMPLER_CUBE_MAP_ARRAY = 36876;

const int GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 36877;

const int GL_INT_SAMPLER_CUBE_MAP_ARRAY = 36878;

const int GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 36879;

const int GL_IMAGE_CUBE_MAP_ARRAY = 36948;

const int GL_INT_IMAGE_CUBE_MAP_ARRAY = 36959;

const int GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 36970;

const int GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 37125;

const int GL_SAMPLER_2D_MULTISAMPLE_ARRAY = 37131;

const int GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37132;

const int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37133;

typedef _c_glActiveTexture = ffi.Void Function(
  ffi.Uint32 texture,
);

typedef _dart_glActiveTexture = void Function(
  int texture,
);

typedef _c_glAttachShader = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 shader,
);

typedef _dart_glAttachShader = void Function(
  int program,
  int shader,
);

typedef _c_glBindAttribLocation = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 index,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glBindAttribLocation = void Function(
  int program,
  int index,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glBindBuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 buffer,
);

typedef _dart_glBindBuffer = void Function(
  int target,
  int buffer,
);

typedef _c_glBindFramebuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 framebuffer,
);

typedef _dart_glBindFramebuffer = void Function(
  int target,
  int framebuffer,
);

typedef _c_glBindRenderbuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 renderbuffer,
);

typedef _dart_glBindRenderbuffer = void Function(
  int target,
  int renderbuffer,
);

typedef _c_glBindTexture = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 texture,
);

typedef _dart_glBindTexture = void Function(
  int target,
  int texture,
);

typedef _c_glBlendColor = ffi.Void Function(
  ffi.Float red,
  ffi.Float green,
  ffi.Float blue,
  ffi.Float alpha,
);

typedef _dart_glBlendColor = void Function(
  double red,
  double green,
  double blue,
  double alpha,
);

typedef _c_glBlendEquation = ffi.Void Function(
  ffi.Uint32 mode,
);

typedef _dart_glBlendEquation = void Function(
  int mode,
);

typedef _c_glBlendEquationSeparate = ffi.Void Function(
  ffi.Uint32 modeRGB,
  ffi.Uint32 modeAlpha,
);

typedef _dart_glBlendEquationSeparate = void Function(
  int modeRGB,
  int modeAlpha,
);

typedef _c_glBlendFunc = ffi.Void Function(
  ffi.Uint32 sfactor,
  ffi.Uint32 dfactor,
);

typedef _dart_glBlendFunc = void Function(
  int sfactor,
  int dfactor,
);

typedef _c_glBlendFuncSeparate = ffi.Void Function(
  ffi.Uint32 sfactorRGB,
  ffi.Uint32 dfactorRGB,
  ffi.Uint32 sfactorAlpha,
  ffi.Uint32 dfactorAlpha,
);

typedef _dart_glBlendFuncSeparate = void Function(
  int sfactorRGB,
  int dfactorRGB,
  int sfactorAlpha,
  int dfactorAlpha,
);

typedef _c_glBufferData = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int64 size,
  ffi.Pointer<ffi.Void> data,
  ffi.Uint32 usage,
);

typedef _dart_glBufferData = void Function(
  int target,
  int size,
  ffi.Pointer<ffi.Void> data,
  int usage,
);

typedef _c_glBufferSubData = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int64 offset,
  ffi.Int64 size,
  ffi.Pointer<ffi.Void> data,
);

typedef _dart_glBufferSubData = void Function(
  int target,
  int offset,
  int size,
  ffi.Pointer<ffi.Void> data,
);

typedef _c_glCheckFramebufferStatus = ffi.Uint32 Function(
  ffi.Uint32 target,
);

typedef _dart_glCheckFramebufferStatus = int Function(
  int target,
);

typedef _c_glClear = ffi.Void Function(
  ffi.Uint32 mask,
);

typedef _dart_glClear = void Function(
  int mask,
);

typedef _c_glClearColor = ffi.Void Function(
  ffi.Float red,
  ffi.Float green,
  ffi.Float blue,
  ffi.Float alpha,
);

typedef _dart_glClearColor = void Function(
  double red,
  double green,
  double blue,
  double alpha,
);

typedef _c_glClearDepthf = ffi.Void Function(
  ffi.Float d,
);

typedef _dart_glClearDepthf = void Function(
  double d,
);

typedef _c_glClearStencil = ffi.Void Function(
  ffi.Int32 s,
);

typedef _dart_glClearStencil = void Function(
  int s,
);

typedef _c_glColorMask = ffi.Void Function(
  ffi.Uint8 red,
  ffi.Uint8 green,
  ffi.Uint8 blue,
  ffi.Uint8 alpha,
);

typedef _dart_glColorMask = void Function(
  int red,
  int green,
  int blue,
  int alpha,
);

typedef _c_glCompileShader = ffi.Void Function(
  ffi.Uint32 shader,
);

typedef _dart_glCompileShader = void Function(
  int shader,
);

typedef _c_glCompressedTexImage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 border,
  ffi.Int32 imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _dart_glCompressedTexImage2D = void Function(
  int target,
  int level,
  int internalformat,
  int width,
  int height,
  int border,
  int imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _c_glCompressedTexSubImage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 xoffset,
  ffi.Int32 yoffset,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Uint32 format,
  ffi.Int32 imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _dart_glCompressedTexSubImage2D = void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int width,
  int height,
  int format,
  int imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _c_glCopyTexImage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Uint32 internalformat,
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 border,
);

typedef _dart_glCopyTexImage2D = void Function(
  int target,
  int level,
  int internalformat,
  int x,
  int y,
  int width,
  int height,
  int border,
);

typedef _c_glCopyTexSubImage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 xoffset,
  ffi.Int32 yoffset,
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glCopyTexSubImage2D = void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int x,
  int y,
  int width,
  int height,
);

typedef _c_glCreateProgram = ffi.Uint32 Function();

typedef _dart_glCreateProgram = int Function();

typedef _c_glCreateShader = ffi.Uint32 Function(
  ffi.Uint32 type,
);

typedef _dart_glCreateShader = int Function(
  int type,
);

typedef _c_glCullFace = ffi.Void Function(
  ffi.Uint32 mode,
);

typedef _dart_glCullFace = void Function(
  int mode,
);

typedef _c_glDeleteBuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> buffers,
);

typedef _dart_glDeleteBuffers = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> buffers,
);

typedef _c_glDeleteFramebuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer framebuffers,
);

typedef _dart_glDeleteFramebuffers = void Function(
  int n,
  ffi.Pointer framebuffers,
);

typedef _c_glDeleteProgram = ffi.Void Function(
  ffi.Uint32 program,
);

typedef _dart_glDeleteProgram = void Function(
  int program,
);

typedef _c_glDeleteRenderbuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer renderbuffers,
);

typedef _dart_glDeleteRenderbuffers = void Function(
  int n,
  ffi.Pointer renderbuffers,
);

typedef _c_glDeleteShader = ffi.Void Function(
  ffi.Uint32 shader,
);

typedef _dart_glDeleteShader = void Function(
  int shader,
);

typedef _c_glDeleteTextures = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer textures,
);

typedef _dart_glDeleteTextures = void Function(
  int n,
  ffi.Pointer textures,
);

typedef _c_glDepthFunc = ffi.Void Function(
  ffi.Uint32 func,
);

typedef _dart_glDepthFunc = void Function(
  int func,
);

typedef _c_glDepthMask = ffi.Void Function(
  ffi.Uint8 flag,
);

typedef _dart_glDepthMask = void Function(
  int flag,
);

typedef _c_glDepthRangef = ffi.Void Function(
  ffi.Float n,
  ffi.Float f,
);

typedef _dart_glDepthRangef = void Function(
  double n,
  double f,
);

typedef _c_glDetachShader = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 shader,
);

typedef _dart_glDetachShader = void Function(
  int program,
  int shader,
);

typedef _c_glDisable = ffi.Void Function(
  ffi.Uint32 cap,
);

typedef _dart_glDisable = void Function(
  int cap,
);

typedef _c_glDisableVertexAttribArray = ffi.Void Function(
  ffi.Uint32 index,
);

typedef _dart_glDisableVertexAttribArray = void Function(
  int index,
);

typedef _c_glDrawArrays = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Int32 first,
  ffi.Int32 count,
);

typedef _dart_glDrawArrays = void Function(
  int mode,
  int first,
  int count,
);

typedef _c_glDrawElements = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Int32 count,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indices,
);

typedef _dart_glDrawElements = void Function(
  int mode,
  int count,
  int type,
  ffi.Pointer<ffi.Void> indices,
);

typedef _c_glEnable = ffi.Void Function(
  ffi.Uint32 cap,
);

typedef _dart_glEnable = void Function(
  int cap,
);

typedef _c_glEnableVertexAttribArray = ffi.Void Function(
  ffi.Uint32 index,
);

typedef _dart_glEnableVertexAttribArray = void Function(
  int index,
);

typedef _c_glFinish = ffi.Void Function();

typedef _dart_glFinish = void Function();

typedef _c_glFlush = ffi.Void Function();

typedef _dart_glFlush = void Function();

typedef _c_glFramebufferRenderbuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 attachment,
  ffi.Uint32 renderbuffertarget,
  ffi.Uint32 renderbuffer,
);

typedef _dart_glFramebufferRenderbuffer = void Function(
  int target,
  int attachment,
  int renderbuffertarget,
  int renderbuffer,
);

typedef _c_glFramebufferTexture2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 attachment,
  ffi.Uint32 textarget,
  ffi.Uint32 texture,
  ffi.Int32 level,
);

typedef _dart_glFramebufferTexture2D = void Function(
  int target,
  int attachment,
  int textarget,
  int texture,
  int level,
);

typedef _c_glFrontFace = ffi.Void Function(
  ffi.Uint32 mode,
);

typedef _dart_glFrontFace = void Function(
  int mode,
);

typedef _c_glGenBuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> buffers,
);

typedef _dart_glGenBuffers = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> buffers,
);

typedef _c_glGenerateMipmap = ffi.Void Function(
  ffi.Uint32 target,
);

typedef _dart_glGenerateMipmap = void Function(
  int target,
);

typedef _c_glGenFramebuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> framebuffers,
);

typedef _dart_glGenFramebuffers = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> framebuffers,
);

typedef _c_glGenRenderbuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> renderbuffers,
);

typedef _dart_glGenRenderbuffers = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> renderbuffers,
);

typedef _c_glGenTextures = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> textures,
);

typedef _dart_glGenTextures = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> textures,
);

typedef _c_glGetActiveAttrib = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 index,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> size,
  ffi.Pointer<ffi.Uint32> type,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetActiveAttrib = void Function(
  int program,
  int index,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> size,
  ffi.Pointer<ffi.Uint32> type,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glGetActiveUniform = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 index,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> size,
  ffi.Pointer<ffi.Uint32> type,
  ffi.Pointer name,
);

typedef _dart_glGetActiveUniform = void Function(
  int program,
  int index,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> size,
  ffi.Pointer<ffi.Uint32> type,
  ffi.Pointer name,
);

typedef _c_glGetAttachedShaders = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 maxCount,
  ffi.Pointer<ffi.Int32> count,
  ffi.Pointer<ffi.Uint32> shaders,
);

typedef _dart_glGetAttachedShaders = void Function(
  int program,
  int maxCount,
  ffi.Pointer<ffi.Int32> count,
  ffi.Pointer<ffi.Uint32> shaders,
);

typedef _c_glGetAttribLocation = ffi.Int32 Function(
  ffi.Uint32 program,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetAttribLocation = int Function(
  int program,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glGetBooleanv = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint8> data,
);

typedef _dart_glGetBooleanv = void Function(
  int pname,
  ffi.Pointer<ffi.Uint8> data,
);

typedef _c_glGetBufferParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetBufferParameteriv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetError = ffi.Uint32 Function();

typedef _dart_glGetError = int Function();

typedef _c_glGetFloatv = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> data,
);

typedef _dart_glGetFloatv = void Function(
  int pname,
  ffi.Pointer<ffi.Float> data,
);

typedef _c_glGetFramebufferAttachmentParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 attachment,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetFramebufferAttachmentParameteriv = void Function(
  int target,
  int attachment,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetIntegerv = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> data,
);

typedef _dart_glGetIntegerv = void Function(
  int pname,
  ffi.Pointer<ffi.Int32> data,
);

typedef _c_glGetProgramiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetProgramiv = void Function(
  int program,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetProgramInfoLog = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> infoLog,
);

typedef _dart_glGetProgramInfoLog = void Function(
  int program,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> infoLog,
);

typedef _c_glGetRenderbufferParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetRenderbufferParameteriv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetShaderiv = ffi.Void Function(
  ffi.Uint32 shader,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetShaderiv = void Function(
  int shader,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetShaderInfoLog = ffi.Void Function(
  ffi.Uint32 shader,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> infoLog,
);

typedef _dart_glGetShaderInfoLog = void Function(
  int shader,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> infoLog,
);

typedef _c_glGetShaderPrecisionFormat = ffi.Void Function(
  ffi.Uint32 shadertype,
  ffi.Uint32 precisiontype,
  ffi.Pointer<ffi.Int32> range,
  ffi.Pointer<ffi.Int32> precision,
);

typedef _dart_glGetShaderPrecisionFormat = void Function(
  int shadertype,
  int precisiontype,
  ffi.Pointer<ffi.Int32> range,
  ffi.Pointer<ffi.Int32> precision,
);

typedef _c_glGetShaderSource = ffi.Void Function(
  ffi.Uint32 shader,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> source,
);

typedef _dart_glGetShaderSource = void Function(
  int shader,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> source,
);

typedef _c_glGetString = ffi.Pointer Function(
  ffi.Uint32 name,
);

typedef _dart_glGetString = ffi.Pointer Function(
  int name,
);

typedef _c_glGetTexParameterfv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glGetTexParameterfv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glGetTexParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetTexParameteriv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetUniformfv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glGetUniformfv = void Function(
  int program,
  int location,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glGetUniformiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetUniformiv = void Function(
  int program,
  int location,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetUniformLocation = ffi.Int32 Function(
  ffi.Uint32 program,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetUniformLocation = int Function(
  int program,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glGetVertexAttribfv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glGetVertexAttribfv = void Function(
  int index,
  int pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glGetVertexAttribiv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetVertexAttribiv = void Function(
  int index,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetVertexAttribPointerv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Pointer<ffi.Void>> pointer,
);

typedef _dart_glGetVertexAttribPointerv = void Function(
  int index,
  int pname,
  ffi.Pointer<ffi.Pointer<ffi.Void>> pointer,
);

typedef _c_glHint = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 mode,
);

typedef _dart_glHint = void Function(
  int target,
  int mode,
);

typedef _c_glIsBuffer = ffi.Uint8 Function(
  ffi.Uint32 buffer,
);

typedef _dart_glIsBuffer = int Function(
  int buffer,
);

typedef _c_glIsEnabled = ffi.Uint8 Function(
  ffi.Uint32 cap,
);

typedef _dart_glIsEnabled = int Function(
  int cap,
);

typedef _c_glIsFramebuffer = ffi.Uint8 Function(
  ffi.Uint32 framebuffer,
);

typedef _dart_glIsFramebuffer = int Function(
  int framebuffer,
);

typedef _c_glIsProgram = ffi.Uint8 Function(
  ffi.Uint32 program,
);

typedef _dart_glIsProgram = int Function(
  int program,
);

typedef _c_glIsRenderbuffer = ffi.Uint8 Function(
  ffi.Uint32 renderbuffer,
);

typedef _dart_glIsRenderbuffer = int Function(
  int renderbuffer,
);

typedef _c_glIsShader = ffi.Uint8 Function(
  ffi.Uint32 shader,
);

typedef _dart_glIsShader = int Function(
  int shader,
);

typedef _c_glIsTexture = ffi.Uint8 Function(
  ffi.Uint32 texture,
);

typedef _dart_glIsTexture = int Function(
  int texture,
);

typedef _c_glLineWidth = ffi.Void Function(
  ffi.Float width,
);

typedef _dart_glLineWidth = void Function(
  double width,
);

typedef _c_glLinkProgram = ffi.Void Function(
  ffi.Uint32 program,
);

typedef _dart_glLinkProgram = void Function(
  int program,
);

typedef _c_glPixelStorei = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Int32 param,
);

typedef _dart_glPixelStorei = void Function(
  int pname,
  int param,
);

typedef _c_glPolygonOffset = ffi.Void Function(
  ffi.Float factor,
  ffi.Float units,
);

typedef _dart_glPolygonOffset = void Function(
  double factor,
  double units,
);

typedef _c_glReadPixels = ffi.Void Function(
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Uint32 format,
  ffi.Uint32 type,
  ffi.Pointer pixels,
);

typedef _dart_glReadPixels = void Function(
  int x,
  int y,
  int width,
  int height,
  int format,
  int type,
  ffi.Pointer pixels,
);

typedef _c_glReleaseShaderCompiler = ffi.Void Function();

typedef _dart_glReleaseShaderCompiler = void Function();

typedef _c_glRenderbufferStorage = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glRenderbufferStorage = void Function(
  int target,
  int internalformat,
  int width,
  int height,
);

typedef _c_glSampleCoverage = ffi.Void Function(
  ffi.Float value,
  ffi.Uint8 invert,
);

typedef _dart_glSampleCoverage = void Function(
  double value,
  int invert,
);

typedef _c_glScissor = ffi.Void Function(
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glScissor = void Function(
  int x,
  int y,
  int width,
  int height,
);

typedef _c_glShaderBinary = ffi.Void Function(
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> shaders,
  ffi.Uint32 binaryformat,
  ffi.Pointer<ffi.Void> binary,
  ffi.Int32 length,
);

typedef _dart_glShaderBinary = void Function(
  int count,
  ffi.Pointer<ffi.Uint32> shaders,
  int binaryformat,
  ffi.Pointer<ffi.Void> binary,
  int length,
);

typedef _c_glShaderSource = ffi.Void Function(
  ffi.Uint32 shader,
  ffi.Int32 count,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> string,
  ffi.Pointer<ffi.Int32> length,
);

typedef _dart_glShaderSource = void Function(
  int shader,
  int count,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> string,
  ffi.Pointer<ffi.Int32> length,
);

typedef _c_glStencilFunc = ffi.Void Function(
  ffi.Uint32 func,
  ffi.Int32 ref,
  ffi.Uint32 mask,
);

typedef _dart_glStencilFunc = void Function(
  int func,
  int ref,
  int mask,
);

typedef _c_glStencilFuncSeparate = ffi.Void Function(
  ffi.Uint32 face,
  ffi.Uint32 func,
  ffi.Int32 ref,
  ffi.Uint32 mask,
);

typedef _dart_glStencilFuncSeparate = void Function(
  int face,
  int func,
  int ref,
  int mask,
);

typedef _c_glStencilMask = ffi.Void Function(
  ffi.Uint32 mask,
);

typedef _dart_glStencilMask = void Function(
  int mask,
);

typedef _c_glStencilMaskSeparate = ffi.Void Function(
  ffi.Uint32 face,
  ffi.Uint32 mask,
);

typedef _dart_glStencilMaskSeparate = void Function(
  int face,
  int mask,
);

typedef _c_glStencilOp = ffi.Void Function(
  ffi.Uint32 fail,
  ffi.Uint32 zfail,
  ffi.Uint32 zpass,
);

typedef _dart_glStencilOp = void Function(
  int fail,
  int zfail,
  int zpass,
);

typedef _c_glStencilOpSeparate = ffi.Void Function(
  ffi.Uint32 face,
  ffi.Uint32 sfail,
  ffi.Uint32 dpfail,
  ffi.Uint32 dppass,
);

typedef _dart_glStencilOpSeparate = void Function(
  int face,
  int sfail,
  int dpfail,
  int dppass,
);

typedef _c_glTexImage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 border,
  ffi.Uint32 format,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> pixels,
);

typedef _dart_glTexImage2D = void Function(
  int target,
  int level,
  int internalformat,
  int width,
  int height,
  int border,
  int format,
  int type,
  ffi.Pointer<ffi.Void> pixels,
);

typedef _c_glTexParameterf = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Float param,
);

typedef _dart_glTexParameterf = void Function(
  int target,
  int pname,
  double param,
);

typedef _c_glTexParameterfv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glTexParameterfv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glTexParameteri = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Int32 param,
);

typedef _dart_glTexParameteri = void Function(
  int target,
  int pname,
  int param,
);

typedef _c_glTexParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glTexParameteriv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glTexSubImage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 xoffset,
  ffi.Int32 yoffset,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Uint32 format,
  ffi.Uint32 type,
  ffi.Pointer pixels,
);

typedef _dart_glTexSubImage2D = void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int width,
  int height,
  int format,
  int type,
  ffi.Pointer pixels,
);

typedef _c_glUniform1f = ffi.Void Function(
  ffi.Int32 location,
  ffi.Float v0,
);

typedef _dart_glUniform1f = void Function(
  int location,
  double v0,
);

typedef _c_glUniform1fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniform1fv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniform1i = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 v0,
);

typedef _dart_glUniform1i = void Function(
  int location,
  int v0,
);

typedef _c_glUniform1iv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glUniform1iv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glUniform2f = ffi.Void Function(
  ffi.Int32 location,
  ffi.Float v0,
  ffi.Float v1,
);

typedef _dart_glUniform2f = void Function(
  int location,
  double v0,
  double v1,
);

typedef _c_glUniform2fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniform2fv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniform2i = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 v0,
  ffi.Int32 v1,
);

typedef _dart_glUniform2i = void Function(
  int location,
  int v0,
  int v1,
);

typedef _c_glUniform2iv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glUniform2iv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glUniform3f = ffi.Void Function(
  ffi.Int32 location,
  ffi.Float v0,
  ffi.Float v1,
  ffi.Float v2,
);

typedef _dart_glUniform3f = void Function(
  int location,
  double v0,
  double v1,
  double v2,
);

typedef _c_glUniform3fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniform3fv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniform3i = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 v0,
  ffi.Int32 v1,
  ffi.Int32 v2,
);

typedef _dart_glUniform3i = void Function(
  int location,
  int v0,
  int v1,
  int v2,
);

typedef _c_glUniform3iv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glUniform3iv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glUniform4f = ffi.Void Function(
  ffi.Int32 location,
  ffi.Float v0,
  ffi.Float v1,
  ffi.Float v2,
  ffi.Float v3,
);

typedef _dart_glUniform4f = void Function(
  int location,
  double v0,
  double v1,
  double v2,
  double v3,
);

typedef _c_glUniform4fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer value,
);

typedef _dart_glUniform4fv = void Function(
  int location,
  int count,
  ffi.Pointer value,
);

typedef _c_glUniform4i = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 v0,
  ffi.Int32 v1,
  ffi.Int32 v2,
  ffi.Int32 v3,
);

typedef _dart_glUniform4i = void Function(
  int location,
  int v0,
  int v1,
  int v2,
  int v3,
);

typedef _c_glUniform4iv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glUniform4iv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glUniformMatrix2fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix2fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix3fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix3fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix4fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix4fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUseProgram = ffi.Void Function(
  ffi.Uint32 program,
);

typedef _dart_glUseProgram = void Function(
  int program,
);

typedef _c_glValidateProgram = ffi.Void Function(
  ffi.Uint32 program,
);

typedef _dart_glValidateProgram = void Function(
  int program,
);

typedef _c_glVertexAttrib1f = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Float x,
);

typedef _dart_glVertexAttrib1f = void Function(
  int index,
  double x,
);

typedef _c_glVertexAttrib1fv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Pointer<ffi.Float> v,
);

typedef _dart_glVertexAttrib1fv = void Function(
  int index,
  ffi.Pointer<ffi.Float> v,
);

typedef _c_glVertexAttrib2f = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Float x,
  ffi.Float y,
);

typedef _dart_glVertexAttrib2f = void Function(
  int index,
  double x,
  double y,
);

typedef _c_glVertexAttrib2fv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Pointer<ffi.Float> v,
);

typedef _dart_glVertexAttrib2fv = void Function(
  int index,
  ffi.Pointer<ffi.Float> v,
);

typedef _c_glVertexAttrib3f = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Float x,
  ffi.Float y,
  ffi.Float z,
);

typedef _dart_glVertexAttrib3f = void Function(
  int index,
  double x,
  double y,
  double z,
);

typedef _c_glVertexAttrib3fv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Pointer<ffi.Float> v,
);

typedef _dart_glVertexAttrib3fv = void Function(
  int index,
  ffi.Pointer<ffi.Float> v,
);

typedef _c_glVertexAttrib4f = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Float x,
  ffi.Float y,
  ffi.Float z,
  ffi.Float w,
);

typedef _dart_glVertexAttrib4f = void Function(
  int index,
  double x,
  double y,
  double z,
  double w,
);

typedef _c_glVertexAttrib4fv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Pointer<ffi.Float> v,
);

typedef _dart_glVertexAttrib4fv = void Function(
  int index,
  ffi.Pointer<ffi.Float> v,
);

typedef _c_glVertexAttribPointer = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Int32 size,
  ffi.Uint32 type,
  ffi.Uint8 normalized,
  ffi.Int32 stride,
  ffi.Pointer<ffi.Void> pointer,
);

typedef _dart_glVertexAttribPointer = void Function(
  int index,
  int size,
  int type,
  int normalized,
  int stride,
  ffi.Pointer<ffi.Void> pointer,
);

typedef _c_glViewport = ffi.Void Function(
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glViewport = void Function(
  int x,
  int y,
  int width,
  int height,
);

typedef _c_glReadBuffer = ffi.Void Function(
  ffi.Uint32 src,
);

typedef _dart_glReadBuffer = void Function(
  int src,
);

typedef _c_glDrawRangeElements = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Uint32 start,
  ffi.Uint32 end,
  ffi.Int32 count,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indices,
);

typedef _dart_glDrawRangeElements = void Function(
  int mode,
  int start,
  int end,
  int count,
  int type,
  ffi.Pointer<ffi.Void> indices,
);

typedef _c_glTexImage3D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 depth,
  ffi.Int32 border,
  ffi.Uint32 format,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> pixels,
);

typedef _dart_glTexImage3D = void Function(
  int target,
  int level,
  int internalformat,
  int width,
  int height,
  int depth,
  int border,
  int format,
  int type,
  ffi.Pointer<ffi.Void> pixels,
);

typedef _c_glTexSubImage3D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 xoffset,
  ffi.Int32 yoffset,
  ffi.Int32 zoffset,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 depth,
  ffi.Uint32 format,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> pixels,
);

typedef _dart_glTexSubImage3D = void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int zoffset,
  int width,
  int height,
  int depth,
  int format,
  int type,
  ffi.Pointer<ffi.Void> pixels,
);

typedef _c_glCopyTexSubImage3D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 xoffset,
  ffi.Int32 yoffset,
  ffi.Int32 zoffset,
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glCopyTexSubImage3D = void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int zoffset,
  int x,
  int y,
  int width,
  int height,
);

typedef _c_glCompressedTexImage3D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 depth,
  ffi.Int32 border,
  ffi.Int32 imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _dart_glCompressedTexImage3D = void Function(
  int target,
  int level,
  int internalformat,
  int width,
  int height,
  int depth,
  int border,
  int imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _c_glCompressedTexSubImage3D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Int32 xoffset,
  ffi.Int32 yoffset,
  ffi.Int32 zoffset,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 depth,
  ffi.Uint32 format,
  ffi.Int32 imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _dart_glCompressedTexSubImage3D = void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int zoffset,
  int width,
  int height,
  int depth,
  int format,
  int imageSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _c_glGenQueries = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _dart_glGenQueries = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _c_glDeleteQueries = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _dart_glDeleteQueries = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _c_glIsQuery = ffi.Uint8 Function(
  ffi.Uint32 id,
);

typedef _dart_glIsQuery = int Function(
  int id,
);

typedef _c_glBeginQuery = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 id,
);

typedef _dart_glBeginQuery = void Function(
  int target,
  int id,
);

typedef _c_glEndQuery = ffi.Void Function(
  ffi.Uint32 target,
);

typedef _dart_glEndQuery = void Function(
  int target,
);

typedef _c_glGetQueryiv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetQueryiv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetQueryObjectuiv = ffi.Void Function(
  ffi.Uint32 id,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glGetQueryObjectuiv = void Function(
  int id,
  int pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glUnmapBuffer = ffi.Uint8 Function(
  ffi.Uint32 target,
);

typedef _dart_glUnmapBuffer = int Function(
  int target,
);

typedef _c_glGetBufferPointerv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Pointer<ffi.Void>> params,
);

typedef _dart_glGetBufferPointerv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Pointer<ffi.Void>> params,
);

typedef _c_glDrawBuffers = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> bufs,
);

typedef _dart_glDrawBuffers = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> bufs,
);

typedef _c_glUniformMatrix2x3fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix2x3fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix3x2fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix3x2fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix2x4fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix2x4fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix4x2fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix4x2fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix3x4fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix3x4fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glUniformMatrix4x3fv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glUniformMatrix4x3fv = void Function(
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glBlitFramebuffer = ffi.Void Function(
  ffi.Int32 srcX0,
  ffi.Int32 srcY0,
  ffi.Int32 srcX1,
  ffi.Int32 srcY1,
  ffi.Int32 dstX0,
  ffi.Int32 dstY0,
  ffi.Int32 dstX1,
  ffi.Int32 dstY1,
  ffi.Uint32 mask,
  ffi.Uint32 filter,
);

typedef _dart_glBlitFramebuffer = void Function(
  int srcX0,
  int srcY0,
  int srcX1,
  int srcY1,
  int dstX0,
  int dstY0,
  int dstX1,
  int dstY1,
  int mask,
  int filter,
);

typedef _c_glRenderbufferStorageMultisample = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 samples,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glRenderbufferStorageMultisample = void Function(
  int target,
  int samples,
  int internalformat,
  int width,
  int height,
);

typedef _c_glFramebufferTextureLayer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 attachment,
  ffi.Uint32 texture,
  ffi.Int32 level,
  ffi.Int32 layer,
);

typedef _dart_glFramebufferTextureLayer = void Function(
  int target,
  int attachment,
  int texture,
  int level,
  int layer,
);

typedef _c_glMapBufferRange = ffi.Pointer<ffi.Void> Function(
  ffi.Uint32 target,
  ffi.Int64 offset,
  ffi.Int64 length,
  ffi.Uint32 access,
);

typedef _dart_glMapBufferRange = ffi.Pointer<ffi.Void> Function(
  int target,
  int offset,
  int length,
  int access,
);

typedef _c_glFlushMappedBufferRange = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int64 offset,
  ffi.Int64 length,
);

typedef _dart_glFlushMappedBufferRange = void Function(
  int target,
  int offset,
  int length,
);

typedef _c_glBindVertexArray = ffi.Void Function(
  ffi.Uint32 array,
);

typedef _dart_glBindVertexArray = void Function(
  int array,
);

typedef _c_glDeleteVertexArrays = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> arrays,
);

typedef _dart_glDeleteVertexArrays = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> arrays,
);

typedef _c_glGenVertexArrays = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> arrays,
);

typedef _dart_glGenVertexArrays = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> arrays,
);

typedef _c_glIsVertexArray = ffi.Uint8 Function(
  ffi.Uint32 array,
);

typedef _dart_glIsVertexArray = int Function(
  int array,
);

typedef _c_glGetIntegeri_v = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
  ffi.Pointer<ffi.Int32> data,
);

typedef _dart_glGetIntegeri_v = void Function(
  int target,
  int index,
  ffi.Pointer<ffi.Int32> data,
);

typedef _c_glBeginTransformFeedback = ffi.Void Function(
  ffi.Uint32 primitiveMode,
);

typedef _dart_glBeginTransformFeedback = void Function(
  int primitiveMode,
);

typedef _c_glEndTransformFeedback = ffi.Void Function();

typedef _dart_glEndTransformFeedback = void Function();

typedef _c_glBindBufferRange = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
  ffi.Uint32 buffer,
  ffi.Int64 offset,
  ffi.Int64 size,
);

typedef _dart_glBindBufferRange = void Function(
  int target,
  int index,
  int buffer,
  int offset,
  int size,
);

typedef _c_glBindBufferBase = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
  ffi.Uint32 buffer,
);

typedef _dart_glBindBufferBase = void Function(
  int target,
  int index,
  int buffer,
);

typedef _c_glTransformFeedbackVaryings = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 count,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> varyings,
  ffi.Uint32 bufferMode,
);

typedef _dart_glTransformFeedbackVaryings = void Function(
  int program,
  int count,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> varyings,
  int bufferMode,
);

typedef _c_glGetTransformFeedbackVarying = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 index,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> size,
  ffi.Pointer<ffi.Uint32> type,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetTransformFeedbackVarying = void Function(
  int program,
  int index,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> size,
  ffi.Pointer<ffi.Uint32> type,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glVertexAttribIPointer = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Int32 size,
  ffi.Uint32 type,
  ffi.Int32 stride,
  ffi.Pointer<ffi.Void> pointer,
);

typedef _dart_glVertexAttribIPointer = void Function(
  int index,
  int size,
  int type,
  int stride,
  ffi.Pointer<ffi.Void> pointer,
);

typedef _c_glGetVertexAttribIiv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetVertexAttribIiv = void Function(
  int index,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetVertexAttribIuiv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glGetVertexAttribIuiv = void Function(
  int index,
  int pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glVertexAttribI4i = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 z,
  ffi.Int32 w,
);

typedef _dart_glVertexAttribI4i = void Function(
  int index,
  int x,
  int y,
  int z,
  int w,
);

typedef _c_glVertexAttribI4ui = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 x,
  ffi.Uint32 y,
  ffi.Uint32 z,
  ffi.Uint32 w,
);

typedef _dart_glVertexAttribI4ui = void Function(
  int index,
  int x,
  int y,
  int z,
  int w,
);

typedef _c_glVertexAttribI4iv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Pointer<ffi.Int32> v,
);

typedef _dart_glVertexAttribI4iv = void Function(
  int index,
  ffi.Pointer<ffi.Int32> v,
);

typedef _c_glVertexAttribI4uiv = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Pointer<ffi.Uint32> v,
);

typedef _dart_glVertexAttribI4uiv = void Function(
  int index,
  ffi.Pointer<ffi.Uint32> v,
);

typedef _c_glGetUniformuiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glGetUniformuiv = void Function(
  int program,
  int location,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glGetFragDataLocation = ffi.Int32 Function(
  ffi.Uint32 program,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetFragDataLocation = int Function(
  int program,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glUniform1ui = ffi.Void Function(
  ffi.Int32 location,
  ffi.Uint32 v0,
);

typedef _dart_glUniform1ui = void Function(
  int location,
  int v0,
);

typedef _c_glUniform2ui = ffi.Void Function(
  ffi.Int32 location,
  ffi.Uint32 v0,
  ffi.Uint32 v1,
);

typedef _dart_glUniform2ui = void Function(
  int location,
  int v0,
  int v1,
);

typedef _c_glUniform3ui = ffi.Void Function(
  ffi.Int32 location,
  ffi.Uint32 v0,
  ffi.Uint32 v1,
  ffi.Uint32 v2,
);

typedef _dart_glUniform3ui = void Function(
  int location,
  int v0,
  int v1,
  int v2,
);

typedef _c_glUniform4ui = ffi.Void Function(
  ffi.Int32 location,
  ffi.Uint32 v0,
  ffi.Uint32 v1,
  ffi.Uint32 v2,
  ffi.Uint32 v3,
);

typedef _dart_glUniform4ui = void Function(
  int location,
  int v0,
  int v1,
  int v2,
  int v3,
);

typedef _c_glUniform1uiv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glUniform1uiv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glUniform2uiv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glUniform2uiv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glUniform3uiv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glUniform3uiv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glUniform4uiv = ffi.Void Function(
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glUniform4uiv = void Function(
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glClearBufferiv = ffi.Void Function(
  ffi.Uint32 buffer,
  ffi.Int32 drawbuffer,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glClearBufferiv = void Function(
  int buffer,
  int drawbuffer,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glClearBufferuiv = ffi.Void Function(
  ffi.Uint32 buffer,
  ffi.Int32 drawbuffer,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glClearBufferuiv = void Function(
  int buffer,
  int drawbuffer,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glClearBufferfv = ffi.Void Function(
  ffi.Uint32 buffer,
  ffi.Int32 drawbuffer,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glClearBufferfv = void Function(
  int buffer,
  int drawbuffer,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glClearBufferfi = ffi.Void Function(
  ffi.Uint32 buffer,
  ffi.Int32 drawbuffer,
  ffi.Float depth,
  ffi.Int32 stencil,
);

typedef _dart_glClearBufferfi = void Function(
  int buffer,
  int drawbuffer,
  double depth,
  int stencil,
);

typedef _c_glGetStringi = ffi.Pointer Function(
  ffi.Uint32 name,
  ffi.Uint32 index,
);

typedef _dart_glGetStringi = ffi.Pointer Function(
  int name,
  int index,
);

typedef _c_glCopyBufferSubData = ffi.Void Function(
  ffi.Uint32 readTarget,
  ffi.Uint32 writeTarget,
  ffi.Int64 readOffset,
  ffi.Int64 writeOffset,
  ffi.Int64 size,
);

typedef _dart_glCopyBufferSubData = void Function(
  int readTarget,
  int writeTarget,
  int readOffset,
  int writeOffset,
  int size,
);

typedef _c_glGetUniformIndices = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 uniformCount,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> uniformNames,
  ffi.Pointer<ffi.Uint32> uniformIndices,
);

typedef _dart_glGetUniformIndices = void Function(
  int program,
  int uniformCount,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> uniformNames,
  ffi.Pointer<ffi.Uint32> uniformIndices,
);

typedef _c_glGetActiveUniformsiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 uniformCount,
  ffi.Pointer<ffi.Uint32> uniformIndices,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetActiveUniformsiv = void Function(
  int program,
  int uniformCount,
  ffi.Pointer<ffi.Uint32> uniformIndices,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetUniformBlockIndex = ffi.Uint32 Function(
  ffi.Uint32 program,
  ffi.Pointer<ffi.Int8> uniformBlockName,
);

typedef _dart_glGetUniformBlockIndex = int Function(
  int program,
  ffi.Pointer<ffi.Int8> uniformBlockName,
);

typedef _c_glGetActiveUniformBlockiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 uniformBlockIndex,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetActiveUniformBlockiv = void Function(
  int program,
  int uniformBlockIndex,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetActiveUniformBlockName = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 uniformBlockIndex,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> uniformBlockName,
);

typedef _dart_glGetActiveUniformBlockName = void Function(
  int program,
  int uniformBlockIndex,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> uniformBlockName,
);

typedef _c_glUniformBlockBinding = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 uniformBlockIndex,
  ffi.Uint32 uniformBlockBinding,
);

typedef _dart_glUniformBlockBinding = void Function(
  int program,
  int uniformBlockIndex,
  int uniformBlockBinding,
);

typedef _c_glDrawArraysInstanced = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Int32 first,
  ffi.Int32 count,
  ffi.Int32 instancecount,
);

typedef _dart_glDrawArraysInstanced = void Function(
  int mode,
  int first,
  int count,
  int instancecount,
);

typedef _c_glDrawElementsInstanced = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Int32 count,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indices,
  ffi.Int32 instancecount,
);

typedef _dart_glDrawElementsInstanced = void Function(
  int mode,
  int count,
  int type,
  ffi.Pointer<ffi.Void> indices,
  int instancecount,
);

typedef _c_glFenceSync = ffi.Pointer<__GLsync> Function(
  ffi.Uint32 condition,
  ffi.Uint32 flags,
);

typedef _dart_glFenceSync = ffi.Pointer<__GLsync> Function(
  int condition,
  int flags,
);

typedef _c_glIsSync = ffi.Uint8 Function(
  ffi.Pointer<__GLsync> sync_1,
);

typedef _dart_glIsSync = int Function(
  ffi.Pointer<__GLsync> sync_1,
);

typedef _c_glDeleteSync = ffi.Void Function(
  ffi.Pointer<__GLsync> sync_1,
);

typedef _dart_glDeleteSync = void Function(
  ffi.Pointer<__GLsync> sync_1,
);

typedef _c_glClientWaitSync = ffi.Uint32 Function(
  ffi.Pointer<__GLsync> sync_1,
  ffi.Uint32 flags,
  ffi.Uint64 timeout,
);

typedef _dart_glClientWaitSync = int Function(
  ffi.Pointer<__GLsync> sync_1,
  int flags,
  int timeout,
);

typedef _c_glWaitSync = ffi.Void Function(
  ffi.Pointer<__GLsync> sync_1,
  ffi.Uint32 flags,
  ffi.Uint64 timeout,
);

typedef _dart_glWaitSync = void Function(
  ffi.Pointer<__GLsync> sync_1,
  int flags,
  int timeout,
);

typedef _c_glGetInteger64v = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int64> data,
);

typedef _dart_glGetInteger64v = void Function(
  int pname,
  ffi.Pointer<ffi.Int64> data,
);

typedef _c_glGetSynciv = ffi.Void Function(
  ffi.Pointer<__GLsync> sync_1,
  ffi.Uint32 pname,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> values,
);

typedef _dart_glGetSynciv = void Function(
  ffi.Pointer<__GLsync> sync_1,
  int pname,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> values,
);

typedef _c_glGetInteger64i_v = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
  ffi.Pointer<ffi.Int64> data,
);

typedef _dart_glGetInteger64i_v = void Function(
  int target,
  int index,
  ffi.Pointer<ffi.Int64> data,
);

typedef _c_glGetBufferParameteri64v = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int64> params,
);

typedef _dart_glGetBufferParameteri64v = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int64> params,
);

typedef _c_glGenSamplers = ffi.Void Function(
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> samplers,
);

typedef _dart_glGenSamplers = void Function(
  int count,
  ffi.Pointer<ffi.Uint32> samplers,
);

typedef _c_glDeleteSamplers = ffi.Void Function(
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> samplers,
);

typedef _dart_glDeleteSamplers = void Function(
  int count,
  ffi.Pointer<ffi.Uint32> samplers,
);

typedef _c_glIsSampler = ffi.Uint8 Function(
  ffi.Uint32 sampler,
);

typedef _dart_glIsSampler = int Function(
  int sampler,
);

typedef _c_glBindSampler = ffi.Void Function(
  ffi.Uint32 unit,
  ffi.Uint32 sampler,
);

typedef _dart_glBindSampler = void Function(
  int unit,
  int sampler,
);

typedef _c_glSamplerParameteri = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Int32 param,
);

typedef _dart_glSamplerParameteri = void Function(
  int sampler,
  int pname,
  int param,
);

typedef _c_glSamplerParameteriv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> param,
);

typedef _dart_glSamplerParameteriv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Int32> param,
);

typedef _c_glSamplerParameterf = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Float param,
);

typedef _dart_glSamplerParameterf = void Function(
  int sampler,
  int pname,
  double param,
);

typedef _c_glSamplerParameterfv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> param,
);

typedef _dart_glSamplerParameterfv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Float> param,
);

typedef _c_glGetSamplerParameteriv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetSamplerParameteriv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetSamplerParameterfv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glGetSamplerParameterfv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glVertexAttribDivisor = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint32 divisor,
);

typedef _dart_glVertexAttribDivisor = void Function(
  int index,
  int divisor,
);

typedef _c_glBindTransformFeedback = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 id,
);

typedef _dart_glBindTransformFeedback = void Function(
  int target,
  int id,
);

typedef _c_glDeleteTransformFeedbacks = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _dart_glDeleteTransformFeedbacks = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _c_glGenTransformFeedbacks = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _dart_glGenTransformFeedbacks = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> ids,
);

typedef _c_glIsTransformFeedback = ffi.Uint8 Function(
  ffi.Uint32 id,
);

typedef _dart_glIsTransformFeedback = int Function(
  int id,
);

typedef _c_glPauseTransformFeedback = ffi.Void Function();

typedef _dart_glPauseTransformFeedback = void Function();

typedef _c_glResumeTransformFeedback = ffi.Void Function();

typedef _dart_glResumeTransformFeedback = void Function();

typedef _c_glGetProgramBinary = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Uint32> binaryFormat,
  ffi.Pointer<ffi.Void> binary,
);

typedef _dart_glGetProgramBinary = void Function(
  int program,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Uint32> binaryFormat,
  ffi.Pointer<ffi.Void> binary,
);

typedef _c_glProgramBinary = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 binaryFormat,
  ffi.Pointer<ffi.Void> binary,
  ffi.Int32 length,
);

typedef _dart_glProgramBinary = void Function(
  int program,
  int binaryFormat,
  ffi.Pointer<ffi.Void> binary,
  int length,
);

typedef _c_glProgramParameteri = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 pname,
  ffi.Int32 value,
);

typedef _dart_glProgramParameteri = void Function(
  int program,
  int pname,
  int value,
);

typedef _c_glInvalidateFramebuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 numAttachments,
  ffi.Pointer<ffi.Uint32> attachments,
);

typedef _dart_glInvalidateFramebuffer = void Function(
  int target,
  int numAttachments,
  ffi.Pointer<ffi.Uint32> attachments,
);

typedef _c_glInvalidateSubFramebuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 numAttachments,
  ffi.Pointer<ffi.Uint32> attachments,
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glInvalidateSubFramebuffer = void Function(
  int target,
  int numAttachments,
  ffi.Pointer<ffi.Uint32> attachments,
  int x,
  int y,
  int width,
  int height,
);

typedef _c_glTexStorage2D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 levels,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
);

typedef _dart_glTexStorage2D = void Function(
  int target,
  int levels,
  int internalformat,
  int width,
  int height,
);

typedef _c_glTexStorage3D = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 levels,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 depth,
);

typedef _dart_glTexStorage3D = void Function(
  int target,
  int levels,
  int internalformat,
  int width,
  int height,
  int depth,
);

typedef _c_glGetInternalformativ = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 internalformat,
  ffi.Uint32 pname,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetInternalformativ = void Function(
  int target,
  int internalformat,
  int pname,
  int bufSize,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glDispatchCompute = ffi.Void Function(
  ffi.Uint32 num_groups_x,
  ffi.Uint32 num_groups_y,
  ffi.Uint32 num_groups_z,
);

typedef _dart_glDispatchCompute = void Function(
  int num_groups_x,
  int num_groups_y,
  int num_groups_z,
);

typedef _c_glDispatchComputeIndirect = ffi.Void Function(
  ffi.Int64 indirect,
);

typedef _dart_glDispatchComputeIndirect = void Function(
  int indirect,
);

typedef _c_glDrawArraysIndirect = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Pointer<ffi.Void> indirect,
);

typedef _dart_glDrawArraysIndirect = void Function(
  int mode,
  ffi.Pointer<ffi.Void> indirect,
);

typedef _c_glDrawElementsIndirect = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indirect,
);

typedef _dart_glDrawElementsIndirect = void Function(
  int mode,
  int type,
  ffi.Pointer<ffi.Void> indirect,
);

typedef _c_glFramebufferParameteri = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Int32 param,
);

typedef _dart_glFramebufferParameteri = void Function(
  int target,
  int pname,
  int param,
);

typedef _c_glGetFramebufferParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetFramebufferParameteriv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetProgramInterfaceiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 programInterface,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetProgramInterfaceiv = void Function(
  int program,
  int programInterface,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetProgramResourceIndex = ffi.Uint32 Function(
  ffi.Uint32 program,
  ffi.Uint32 programInterface,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetProgramResourceIndex = int Function(
  int program,
  int programInterface,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glGetProgramResourceName = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 programInterface,
  ffi.Uint32 index,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetProgramResourceName = void Function(
  int program,
  int programInterface,
  int index,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glGetProgramResourceiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Uint32 programInterface,
  ffi.Uint32 index,
  ffi.Int32 propCount,
  ffi.Pointer<ffi.Uint32> props,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetProgramResourceiv = void Function(
  int program,
  int programInterface,
  int index,
  int propCount,
  ffi.Pointer<ffi.Uint32> props,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetProgramResourceLocation = ffi.Int32 Function(
  ffi.Uint32 program,
  ffi.Uint32 programInterface,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_glGetProgramResourceLocation = int Function(
  int program,
  int programInterface,
  ffi.Pointer<ffi.Int8> name,
);

typedef _c_glUseProgramStages = ffi.Void Function(
  ffi.Uint32 pipeline,
  ffi.Uint32 stages,
  ffi.Uint32 program,
);

typedef _dart_glUseProgramStages = void Function(
  int pipeline,
  int stages,
  int program,
);

typedef _c_glActiveShaderProgram = ffi.Void Function(
  ffi.Uint32 pipeline,
  ffi.Uint32 program,
);

typedef _dart_glActiveShaderProgram = void Function(
  int pipeline,
  int program,
);

typedef _c_glCreateShaderProgramv = ffi.Uint32 Function(
  ffi.Uint32 type,
  ffi.Int32 count,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
);

typedef _dart_glCreateShaderProgramv = int Function(
  int type,
  int count,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
);

typedef _c_glBindProgramPipeline = ffi.Void Function(
  ffi.Uint32 pipeline,
);

typedef _dart_glBindProgramPipeline = void Function(
  int pipeline,
);

typedef _c_glDeleteProgramPipelines = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> pipelines,
);

typedef _dart_glDeleteProgramPipelines = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> pipelines,
);

typedef _c_glGenProgramPipelines = ffi.Void Function(
  ffi.Int32 n,
  ffi.Pointer<ffi.Uint32> pipelines,
);

typedef _dart_glGenProgramPipelines = void Function(
  int n,
  ffi.Pointer<ffi.Uint32> pipelines,
);

typedef _c_glIsProgramPipeline = ffi.Uint8 Function(
  ffi.Uint32 pipeline,
);

typedef _dart_glIsProgramPipeline = int Function(
  int pipeline,
);

typedef _c_glGetProgramPipelineiv = ffi.Void Function(
  ffi.Uint32 pipeline,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetProgramPipelineiv = void Function(
  int pipeline,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glProgramUniform1i = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 v0,
);

typedef _dart_glProgramUniform1i = void Function(
  int program,
  int location,
  int v0,
);

typedef _c_glProgramUniform2i = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 v0,
  ffi.Int32 v1,
);

typedef _dart_glProgramUniform2i = void Function(
  int program,
  int location,
  int v0,
  int v1,
);

typedef _c_glProgramUniform3i = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 v0,
  ffi.Int32 v1,
  ffi.Int32 v2,
);

typedef _dart_glProgramUniform3i = void Function(
  int program,
  int location,
  int v0,
  int v1,
  int v2,
);

typedef _c_glProgramUniform4i = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 v0,
  ffi.Int32 v1,
  ffi.Int32 v2,
  ffi.Int32 v3,
);

typedef _dart_glProgramUniform4i = void Function(
  int program,
  int location,
  int v0,
  int v1,
  int v2,
  int v3,
);

typedef _c_glProgramUniform1ui = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Uint32 v0,
);

typedef _dart_glProgramUniform1ui = void Function(
  int program,
  int location,
  int v0,
);

typedef _c_glProgramUniform2ui = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Uint32 v0,
  ffi.Uint32 v1,
);

typedef _dart_glProgramUniform2ui = void Function(
  int program,
  int location,
  int v0,
  int v1,
);

typedef _c_glProgramUniform3ui = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Uint32 v0,
  ffi.Uint32 v1,
  ffi.Uint32 v2,
);

typedef _dart_glProgramUniform3ui = void Function(
  int program,
  int location,
  int v0,
  int v1,
  int v2,
);

typedef _c_glProgramUniform4ui = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Uint32 v0,
  ffi.Uint32 v1,
  ffi.Uint32 v2,
  ffi.Uint32 v3,
);

typedef _dart_glProgramUniform4ui = void Function(
  int program,
  int location,
  int v0,
  int v1,
  int v2,
  int v3,
);

typedef _c_glProgramUniform1f = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Float v0,
);

typedef _dart_glProgramUniform1f = void Function(
  int program,
  int location,
  double v0,
);

typedef _c_glProgramUniform2f = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Float v0,
  ffi.Float v1,
);

typedef _dart_glProgramUniform2f = void Function(
  int program,
  int location,
  double v0,
  double v1,
);

typedef _c_glProgramUniform3f = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Float v0,
  ffi.Float v1,
  ffi.Float v2,
);

typedef _dart_glProgramUniform3f = void Function(
  int program,
  int location,
  double v0,
  double v1,
  double v2,
);

typedef _c_glProgramUniform4f = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Float v0,
  ffi.Float v1,
  ffi.Float v2,
  ffi.Float v3,
);

typedef _dart_glProgramUniform4f = void Function(
  int program,
  int location,
  double v0,
  double v1,
  double v2,
  double v3,
);

typedef _c_glProgramUniform1iv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glProgramUniform1iv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glProgramUniform2iv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glProgramUniform2iv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glProgramUniform3iv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glProgramUniform3iv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glProgramUniform4iv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_glProgramUniform4iv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_glProgramUniform1uiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glProgramUniform1uiv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glProgramUniform2uiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glProgramUniform2uiv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glProgramUniform3uiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glProgramUniform3uiv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glProgramUniform4uiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _dart_glProgramUniform4uiv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Uint32> value,
);

typedef _c_glProgramUniform1fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniform1fv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniform2fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniform2fv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniform3fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniform3fv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniform4fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniform4fv = void Function(
  int program,
  int location,
  int count,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix2fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix2fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix3fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix3fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix4fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix4fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix2x3fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix2x3fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix3x2fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix3x2fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix2x4fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix2x4fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix4x2fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix4x2fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix3x4fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix3x4fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glProgramUniformMatrix4x3fv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 count,
  ffi.Uint8 transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _dart_glProgramUniformMatrix4x3fv = void Function(
  int program,
  int location,
  int count,
  int transpose,
  ffi.Pointer<ffi.Float> value,
);

typedef _c_glValidateProgramPipeline = ffi.Void Function(
  ffi.Uint32 pipeline,
);

typedef _dart_glValidateProgramPipeline = void Function(
  int pipeline,
);

typedef _c_glGetProgramPipelineInfoLog = ffi.Void Function(
  ffi.Uint32 pipeline,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> infoLog,
);

typedef _dart_glGetProgramPipelineInfoLog = void Function(
  int pipeline,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> infoLog,
);

typedef _c_glBindImageTexture = ffi.Void Function(
  ffi.Uint32 unit,
  ffi.Uint32 texture,
  ffi.Int32 level,
  ffi.Uint8 layered,
  ffi.Int32 layer,
  ffi.Uint32 access,
  ffi.Uint32 format,
);

typedef _dart_glBindImageTexture = void Function(
  int unit,
  int texture,
  int level,
  int layered,
  int layer,
  int access,
  int format,
);

typedef _c_glGetBooleani_v = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
  ffi.Pointer<ffi.Uint8> data,
);

typedef _dart_glGetBooleani_v = void Function(
  int target,
  int index,
  ffi.Pointer<ffi.Uint8> data,
);

typedef _c_glMemoryBarrier = ffi.Void Function(
  ffi.Uint32 barriers,
);

typedef _dart_glMemoryBarrier = void Function(
  int barriers,
);

typedef _c_glMemoryBarrierByRegion = ffi.Void Function(
  ffi.Uint32 barriers,
);

typedef _dart_glMemoryBarrierByRegion = void Function(
  int barriers,
);

typedef _c_glTexStorage2DMultisample = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 samples,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Uint8 fixedsamplelocations,
);

typedef _dart_glTexStorage2DMultisample = void Function(
  int target,
  int samples,
  int internalformat,
  int width,
  int height,
  int fixedsamplelocations,
);

typedef _c_glGetMultisamplefv = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Uint32 index,
  ffi.Pointer<ffi.Float> val,
);

typedef _dart_glGetMultisamplefv = void Function(
  int pname,
  int index,
  ffi.Pointer<ffi.Float> val,
);

typedef _c_glSampleMaski = ffi.Void Function(
  ffi.Uint32 maskNumber,
  ffi.Uint32 mask,
);

typedef _dart_glSampleMaski = void Function(
  int maskNumber,
  int mask,
);

typedef _c_glGetTexLevelParameteriv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetTexLevelParameteriv = void Function(
  int target,
  int level,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetTexLevelParameterfv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 level,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glGetTexLevelParameterfv = void Function(
  int target,
  int level,
  int pname,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glBindVertexBuffer = ffi.Void Function(
  ffi.Uint32 bindingindex,
  ffi.Uint32 buffer,
  ffi.Int64 offset,
  ffi.Int32 stride,
);

typedef _dart_glBindVertexBuffer = void Function(
  int bindingindex,
  int buffer,
  int offset,
  int stride,
);

typedef _c_glVertexAttribFormat = ffi.Void Function(
  ffi.Uint32 attribindex,
  ffi.Int32 size,
  ffi.Uint32 type,
  ffi.Uint8 normalized,
  ffi.Uint32 relativeoffset,
);

typedef _dart_glVertexAttribFormat = void Function(
  int attribindex,
  int size,
  int type,
  int normalized,
  int relativeoffset,
);

typedef _c_glVertexAttribIFormat = ffi.Void Function(
  ffi.Uint32 attribindex,
  ffi.Int32 size,
  ffi.Uint32 type,
  ffi.Uint32 relativeoffset,
);

typedef _dart_glVertexAttribIFormat = void Function(
  int attribindex,
  int size,
  int type,
  int relativeoffset,
);

typedef _c_glVertexAttribBinding = ffi.Void Function(
  ffi.Uint32 attribindex,
  ffi.Uint32 bindingindex,
);

typedef _dart_glVertexAttribBinding = void Function(
  int attribindex,
  int bindingindex,
);

typedef _c_glVertexBindingDivisor = ffi.Void Function(
  ffi.Uint32 bindingindex,
  ffi.Uint32 divisor,
);

typedef _dart_glVertexBindingDivisor = void Function(
  int bindingindex,
  int divisor,
);

typedef _c_glBlendBarrier = ffi.Void Function();

typedef _dart_glBlendBarrier = void Function();

typedef _c_glCopyImageSubData = ffi.Void Function(
  ffi.Uint32 srcName,
  ffi.Uint32 srcTarget,
  ffi.Int32 srcLevel,
  ffi.Int32 srcX,
  ffi.Int32 srcY,
  ffi.Int32 srcZ,
  ffi.Uint32 dstName,
  ffi.Uint32 dstTarget,
  ffi.Int32 dstLevel,
  ffi.Int32 dstX,
  ffi.Int32 dstY,
  ffi.Int32 dstZ,
  ffi.Int32 srcWidth,
  ffi.Int32 srcHeight,
  ffi.Int32 srcDepth,
);

typedef _dart_glCopyImageSubData = void Function(
  int srcName,
  int srcTarget,
  int srcLevel,
  int srcX,
  int srcY,
  int srcZ,
  int dstName,
  int dstTarget,
  int dstLevel,
  int dstX,
  int dstY,
  int dstZ,
  int srcWidth,
  int srcHeight,
  int srcDepth,
);

typedef _c_glDebugMessageControl = ffi.Void Function(
  ffi.Uint32 source,
  ffi.Uint32 type,
  ffi.Uint32 severity,
  ffi.Int32 count,
  ffi.Pointer<ffi.Uint32> ids,
  ffi.Uint8 enabled,
);

typedef _dart_glDebugMessageControl = void Function(
  int source,
  int type,
  int severity,
  int count,
  ffi.Pointer<ffi.Uint32> ids,
  int enabled,
);

typedef _c_glDebugMessageInsert = ffi.Void Function(
  ffi.Uint32 source,
  ffi.Uint32 type,
  ffi.Uint32 id,
  ffi.Uint32 severity,
  ffi.Int32 length,
  ffi.Pointer<ffi.Int8> buf,
);

typedef _dart_glDebugMessageInsert = void Function(
  int source,
  int type,
  int id,
  int severity,
  int length,
  ffi.Pointer<ffi.Int8> buf,
);

typedef GLDEBUGPROC = ffi.Void Function(
  ffi.Uint32,
  ffi.Uint32,
  ffi.Uint32,
  ffi.Uint32,
  ffi.Int32,
  ffi.Pointer<ffi.Int8>,
  ffi.Pointer<ffi.Void>,
);

typedef _c_glDebugMessageCallback = ffi.Void Function(
  ffi.Pointer<ffi.NativeFunction<GLDEBUGPROC>> callback,
  ffi.Pointer<ffi.Void> userParam,
);

typedef _dart_glDebugMessageCallback = void Function(
  ffi.Pointer<ffi.NativeFunction<GLDEBUGPROC>> callback,
  ffi.Pointer<ffi.Void> userParam,
);

typedef _c_glGetDebugMessageLog = ffi.Uint32 Function(
  ffi.Uint32 count,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Uint32> sources,
  ffi.Pointer<ffi.Uint32> types,
  ffi.Pointer<ffi.Uint32> ids,
  ffi.Pointer<ffi.Uint32> severities,
  ffi.Pointer<ffi.Int32> lengths,
  ffi.Pointer<ffi.Int8> messageLog,
);

typedef _dart_glGetDebugMessageLog = int Function(
  int count,
  int bufSize,
  ffi.Pointer<ffi.Uint32> sources,
  ffi.Pointer<ffi.Uint32> types,
  ffi.Pointer<ffi.Uint32> ids,
  ffi.Pointer<ffi.Uint32> severities,
  ffi.Pointer<ffi.Int32> lengths,
  ffi.Pointer<ffi.Int8> messageLog,
);

typedef _c_glPushDebugGroup = ffi.Void Function(
  ffi.Uint32 source,
  ffi.Uint32 id,
  ffi.Int32 length,
  ffi.Pointer<ffi.Int8> message,
);

typedef _dart_glPushDebugGroup = void Function(
  int source,
  int id,
  int length,
  ffi.Pointer<ffi.Int8> message,
);

typedef _c_glPopDebugGroup = ffi.Void Function();

typedef _dart_glPopDebugGroup = void Function();

typedef _c_glObjectLabel = ffi.Void Function(
  ffi.Uint32 identifier,
  ffi.Uint32 name,
  ffi.Int32 length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _dart_glObjectLabel = void Function(
  int identifier,
  int name,
  int length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _c_glGetObjectLabel = ffi.Void Function(
  ffi.Uint32 identifier,
  ffi.Uint32 name,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _dart_glGetObjectLabel = void Function(
  int identifier,
  int name,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _c_glObjectPtrLabel = ffi.Void Function(
  ffi.Pointer<ffi.Void> ptr,
  ffi.Int32 length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _dart_glObjectPtrLabel = void Function(
  ffi.Pointer<ffi.Void> ptr,
  int length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _c_glGetObjectPtrLabel = ffi.Void Function(
  ffi.Pointer<ffi.Void> ptr,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _dart_glGetObjectPtrLabel = void Function(
  ffi.Pointer<ffi.Void> ptr,
  int bufSize,
  ffi.Pointer<ffi.Int32> length,
  ffi.Pointer<ffi.Int8> label,
);

typedef _c_glGetPointerv = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Pointer<ffi.Void>> params,
);

typedef _dart_glGetPointerv = void Function(
  int pname,
  ffi.Pointer<ffi.Pointer<ffi.Void>> params,
);

typedef _c_glEnablei = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
);

typedef _dart_glEnablei = void Function(
  int target,
  int index,
);

typedef _c_glDisablei = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
);

typedef _dart_glDisablei = void Function(
  int target,
  int index,
);

typedef _c_glBlendEquationi = ffi.Void Function(
  ffi.Uint32 buf,
  ffi.Uint32 mode,
);

typedef _dart_glBlendEquationi = void Function(
  int buf,
  int mode,
);

typedef _c_glBlendEquationSeparatei = ffi.Void Function(
  ffi.Uint32 buf,
  ffi.Uint32 modeRGB,
  ffi.Uint32 modeAlpha,
);

typedef _dart_glBlendEquationSeparatei = void Function(
  int buf,
  int modeRGB,
  int modeAlpha,
);

typedef _c_glBlendFunci = ffi.Void Function(
  ffi.Uint32 buf,
  ffi.Uint32 src,
  ffi.Uint32 dst,
);

typedef _dart_glBlendFunci = void Function(
  int buf,
  int src,
  int dst,
);

typedef _c_glBlendFuncSeparatei = ffi.Void Function(
  ffi.Uint32 buf,
  ffi.Uint32 srcRGB,
  ffi.Uint32 dstRGB,
  ffi.Uint32 srcAlpha,
  ffi.Uint32 dstAlpha,
);

typedef _dart_glBlendFuncSeparatei = void Function(
  int buf,
  int srcRGB,
  int dstRGB,
  int srcAlpha,
  int dstAlpha,
);

typedef _c_glColorMaski = ffi.Void Function(
  ffi.Uint32 index,
  ffi.Uint8 r,
  ffi.Uint8 g,
  ffi.Uint8 b,
  ffi.Uint8 a,
);

typedef _dart_glColorMaski = void Function(
  int index,
  int r,
  int g,
  int b,
  int a,
);

typedef _c_glIsEnabledi = ffi.Uint8 Function(
  ffi.Uint32 target,
  ffi.Uint32 index,
);

typedef _dart_glIsEnabledi = int Function(
  int target,
  int index,
);

typedef _c_glDrawElementsBaseVertex = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Int32 count,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indices,
  ffi.Int32 basevertex,
);

typedef _dart_glDrawElementsBaseVertex = void Function(
  int mode,
  int count,
  int type,
  ffi.Pointer<ffi.Void> indices,
  int basevertex,
);

typedef _c_glDrawRangeElementsBaseVertex = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Uint32 start,
  ffi.Uint32 end,
  ffi.Int32 count,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indices,
  ffi.Int32 basevertex,
);

typedef _dart_glDrawRangeElementsBaseVertex = void Function(
  int mode,
  int start,
  int end,
  int count,
  int type,
  ffi.Pointer<ffi.Void> indices,
  int basevertex,
);

typedef _c_glDrawElementsInstancedBaseVertex = ffi.Void Function(
  ffi.Uint32 mode,
  ffi.Int32 count,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Void> indices,
  ffi.Int32 instancecount,
  ffi.Int32 basevertex,
);

typedef _dart_glDrawElementsInstancedBaseVertex = void Function(
  int mode,
  int count,
  int type,
  ffi.Pointer<ffi.Void> indices,
  int instancecount,
  int basevertex,
);

typedef _c_glFramebufferTexture = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 attachment,
  ffi.Uint32 texture,
  ffi.Int32 level,
);

typedef _dart_glFramebufferTexture = void Function(
  int target,
  int attachment,
  int texture,
  int level,
);

typedef _c_glPrimitiveBoundingBox = ffi.Void Function(
  ffi.Float minX,
  ffi.Float minY,
  ffi.Float minZ,
  ffi.Float minW,
  ffi.Float maxX,
  ffi.Float maxY,
  ffi.Float maxZ,
  ffi.Float maxW,
);

typedef _dart_glPrimitiveBoundingBox = void Function(
  double minX,
  double minY,
  double minZ,
  double minW,
  double maxX,
  double maxY,
  double maxZ,
  double maxW,
);

typedef _c_glGetGraphicsResetStatus = ffi.Uint32 Function();

typedef _dart_glGetGraphicsResetStatus = int Function();

typedef _c_glReadnPixels = ffi.Void Function(
  ffi.Int32 x,
  ffi.Int32 y,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Uint32 format,
  ffi.Uint32 type,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _dart_glReadnPixels = void Function(
  int x,
  int y,
  int width,
  int height,
  int format,
  int type,
  int bufSize,
  ffi.Pointer<ffi.Void> data,
);

typedef _c_glGetnUniformfv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Float> params,
);

typedef _dart_glGetnUniformfv = void Function(
  int program,
  int location,
  int bufSize,
  ffi.Pointer<ffi.Float> params,
);

typedef _c_glGetnUniformiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetnUniformiv = void Function(
  int program,
  int location,
  int bufSize,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetnUniformuiv = ffi.Void Function(
  ffi.Uint32 program,
  ffi.Int32 location,
  ffi.Int32 bufSize,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glGetnUniformuiv = void Function(
  int program,
  int location,
  int bufSize,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glMinSampleShading = ffi.Void Function(
  ffi.Float value,
);

typedef _dart_glMinSampleShading = void Function(
  double value,
);

typedef _c_glPatchParameteri = ffi.Void Function(
  ffi.Uint32 pname,
  ffi.Int32 value,
);

typedef _dart_glPatchParameteri = void Function(
  int pname,
  int value,
);

typedef _c_glTexParameterIiv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glTexParameterIiv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glTexParameterIuiv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glTexParameterIuiv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glGetTexParameterIiv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetTexParameterIiv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetTexParameterIuiv = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glGetTexParameterIuiv = void Function(
  int target,
  int pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glSamplerParameterIiv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> param,
);

typedef _dart_glSamplerParameterIiv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Int32> param,
);

typedef _c_glSamplerParameterIuiv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint32> param,
);

typedef _dart_glSamplerParameterIuiv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Uint32> param,
);

typedef _c_glGetSamplerParameterIiv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _dart_glGetSamplerParameterIiv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Int32> params,
);

typedef _c_glGetSamplerParameterIuiv = ffi.Void Function(
  ffi.Uint32 sampler,
  ffi.Uint32 pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _dart_glGetSamplerParameterIuiv = void Function(
  int sampler,
  int pname,
  ffi.Pointer<ffi.Uint32> params,
);

typedef _c_glTexBuffer = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 internalformat,
  ffi.Uint32 buffer,
);

typedef _dart_glTexBuffer = void Function(
  int target,
  int internalformat,
  int buffer,
);

typedef _c_glTexBufferRange = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Uint32 internalformat,
  ffi.Uint32 buffer,
  ffi.Int64 offset,
  ffi.Int64 size,
);

typedef _dart_glTexBufferRange = void Function(
  int target,
  int internalformat,
  int buffer,
  int offset,
  int size,
);

typedef _c_glTexStorage3DMultisample = ffi.Void Function(
  ffi.Uint32 target,
  ffi.Int32 samples,
  ffi.Uint32 internalformat,
  ffi.Int32 width,
  ffi.Int32 height,
  ffi.Int32 depth,
  ffi.Uint8 fixedsamplelocations,
);

typedef _dart_glTexStorage3DMultisample = void Function(
  int target,
  int samples,
  int internalformat,
  int width,
  int height,
  int depth,
  int fixedsamplelocations,
);

typedef _typedefC_1 = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);
