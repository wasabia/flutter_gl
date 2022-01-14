import 'dart:ffi' as ffi;

/// https://www.khronos.org/registry/OpenGL/index_es.php#headers3
class LibEGL {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  LibEGL(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  LibEGL.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int eglChooseConfig(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Int32> attrib_list,
    ffi.Pointer<ffi.Pointer<ffi.Void>> configs,
    int config_size,
    ffi.Pointer<ffi.Int32> num_config,
  ) {
    return _eglChooseConfig(
      dpy,
      attrib_list,
      configs,
      config_size,
      num_config,
    );
  }

  late final _eglChooseConfig_ptr =
      _lookup<ffi.NativeFunction<_c_eglChooseConfig>>('eglChooseConfig');
  late final _dart_eglChooseConfig _eglChooseConfig =
      _eglChooseConfig_ptr.asFunction<_dart_eglChooseConfig>();

  int eglCopyBuffers(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
    ffi.Pointer<ffi.Void> target,
  ) {
    return _eglCopyBuffers(
      dpy,
      surface,
      target,
    );
  }

  late final _eglCopyBuffers_ptr =
      _lookup<ffi.NativeFunction<_c_eglCopyBuffers>>('eglCopyBuffers');
  late final _dart_eglCopyBuffers _eglCopyBuffers =
      _eglCopyBuffers_ptr.asFunction<_dart_eglCopyBuffers>();

  ffi.Pointer<ffi.Void> eglCreateContext(
    int dpy,
    int config,
    int share_context,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreateContext(
      dpy,
      config,
      share_context,
      attrib_list,
    );
  }

  late final _eglCreateContext_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreateContext>>('eglCreateContext');
  late final _dart_eglCreateContext _eglCreateContext =
      _eglCreateContext_ptr.asFunction<_dart_eglCreateContext>();

  ffi.Pointer<ffi.Void> eglCreatePbufferSurface(
    int dpy,
    int config,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreatePbufferSurface(
      dpy,
      config,
      attrib_list,
    );
  }

  late final _eglCreatePbufferSurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreatePbufferSurface>>(
          'eglCreatePbufferSurface');
  late final _dart_eglCreatePbufferSurface _eglCreatePbufferSurface =
      _eglCreatePbufferSurface_ptr.asFunction<_dart_eglCreatePbufferSurface>();

  ffi.Pointer<ffi.Void> eglCreatePixmapSurface(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> config,
    ffi.Pointer<ffi.Void> pixmap,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreatePixmapSurface(
      dpy,
      config,
      pixmap,
      attrib_list,
    );
  }

  late final _eglCreatePixmapSurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreatePixmapSurface>>(
          'eglCreatePixmapSurface');
  late final _dart_eglCreatePixmapSurface _eglCreatePixmapSurface =
      _eglCreatePixmapSurface_ptr.asFunction<_dart_eglCreatePixmapSurface>();

  ffi.Pointer<ffi.Void> eglCreateWindowSurface(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> config,
    ffi.Pointer<ffi.Void> win,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreateWindowSurface(
      dpy,
      config,
      win,
      attrib_list,
    );
  }

  late final _eglCreateWindowSurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreateWindowSurface>>(
          'eglCreateWindowSurface');
  late final _dart_eglCreateWindowSurface _eglCreateWindowSurface =
      _eglCreateWindowSurface_ptr.asFunction<_dart_eglCreateWindowSurface>();

  int eglDestroyContext(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> ctx,
  ) {
    return _eglDestroyContext(
      dpy,
      ctx,
    );
  }

  late final _eglDestroyContext_ptr =
      _lookup<ffi.NativeFunction<_c_eglDestroyContext>>('eglDestroyContext');
  late final _dart_eglDestroyContext _eglDestroyContext =
      _eglDestroyContext_ptr.asFunction<_dart_eglDestroyContext>();

  int eglDestroySurface(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
  ) {
    return _eglDestroySurface(
      dpy,
      surface,
    );
  }

  late final _eglDestroySurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglDestroySurface>>('eglDestroySurface');
  late final _dart_eglDestroySurface _eglDestroySurface =
      _eglDestroySurface_ptr.asFunction<_dart_eglDestroySurface>();

  int eglGetConfigAttrib(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> config,
    int attribute,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _eglGetConfigAttrib(
      dpy,
      config,
      attribute,
      value,
    );
  }

  late final _eglGetConfigAttrib_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetConfigAttrib>>('eglGetConfigAttrib');
  late final _dart_eglGetConfigAttrib _eglGetConfigAttrib =
      _eglGetConfigAttrib_ptr.asFunction<_dart_eglGetConfigAttrib>();

  int eglGetConfigs(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Pointer<ffi.Void>> configs,
    int config_size,
    ffi.Pointer<ffi.Int32> num_config,
  ) {
    return _eglGetConfigs(
      dpy,
      configs,
      config_size,
      num_config,
    );
  }

  late final _eglGetConfigs_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetConfigs>>('eglGetConfigs');
  late final _dart_eglGetConfigs _eglGetConfigs =
      _eglGetConfigs_ptr.asFunction<_dart_eglGetConfigs>();

  ffi.Pointer<ffi.Void> eglGetCurrentDisplay() {
    return _eglGetCurrentDisplay();
  }

  late final _eglGetCurrentDisplay_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetCurrentDisplay>>(
          'eglGetCurrentDisplay');
  late final _dart_eglGetCurrentDisplay _eglGetCurrentDisplay =
      _eglGetCurrentDisplay_ptr.asFunction<_dart_eglGetCurrentDisplay>();

  ffi.Pointer<ffi.Void> eglGetCurrentSurface(
    int readdraw,
  ) {
    return _eglGetCurrentSurface(
      readdraw,
    );
  }

  late final _eglGetCurrentSurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetCurrentSurface>>(
          'eglGetCurrentSurface');
  late final _dart_eglGetCurrentSurface _eglGetCurrentSurface =
      _eglGetCurrentSurface_ptr.asFunction<_dart_eglGetCurrentSurface>();

  int eglGetDisplay(
    ffi.Pointer<ffi.Void> display_id,
  ) {
    return _eglGetDisplay(
      display_id,
    );
  }

  late final _eglGetDisplay_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetDisplay>>('eglGetDisplay');
  late final _dart_eglGetDisplay _eglGetDisplay =
      _eglGetDisplay_ptr.asFunction<_dart_eglGetDisplay>();

  int eglGetError() {
    return _eglGetError();
  }

  late final _eglGetError_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetError>>('eglGetError');
  late final _dart_eglGetError _eglGetError =
      _eglGetError_ptr.asFunction<_dart_eglGetError>();

  ffi.Pointer<ffi.NativeFunction<__eglMustCastToProperFunctionPointerType>>
      eglGetProcAddress(
    ffi.Pointer<ffi.Int8> procname,
  ) {
    return _eglGetProcAddress(
      procname,
    );
  }

  late final _eglGetProcAddress_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetProcAddress>>('eglGetProcAddress');
  late final _dart_eglGetProcAddress _eglGetProcAddress =
      _eglGetProcAddress_ptr.asFunction<_dart_eglGetProcAddress>();

  int eglInitialize(
    int dpy,
    ffi.Pointer<ffi.Int32> major,
    ffi.Pointer<ffi.Int32> minor,
  ) {
    return _eglInitialize(
      dpy,
      major,
      minor,
    );
  }

  late final _eglInitialize_ptr =
      _lookup<ffi.NativeFunction<_c_eglInitialize>>('eglInitialize');
  late final _dart_eglInitialize _eglInitialize =
      _eglInitialize_ptr.asFunction<_dart_eglInitialize>();

  int eglMakeCurrent(
    int dpy,
    int draw,
    int read,
    int ctx,
  ) {
    return _eglMakeCurrent(
      dpy,
      draw,
      read,
      ctx,
    );
  }

  late final _eglMakeCurrent_ptr =
      _lookup<ffi.NativeFunction<_c_eglMakeCurrent>>('eglMakeCurrent');
  late final _dart_eglMakeCurrent _eglMakeCurrent =
      _eglMakeCurrent_ptr.asFunction<_dart_eglMakeCurrent>();

  int eglQueryContext(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> ctx,
    int attribute,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _eglQueryContext(
      dpy,
      ctx,
      attribute,
      value,
    );
  }

  late final _eglQueryContext_ptr =
      _lookup<ffi.NativeFunction<_c_eglQueryContext>>('eglQueryContext');
  late final _dart_eglQueryContext _eglQueryContext =
      _eglQueryContext_ptr.asFunction<_dart_eglQueryContext>();

  ffi.Pointer<ffi.Int8> eglQueryString(
    ffi.Pointer<ffi.Void> dpy,
    int name,
  ) {
    return _eglQueryString(
      dpy,
      name,
    );
  }

  late final _eglQueryString_ptr =
      _lookup<ffi.NativeFunction<_c_eglQueryString>>('eglQueryString');
  late final _dart_eglQueryString _eglQueryString =
      _eglQueryString_ptr.asFunction<_dart_eglQueryString>();

  int eglQuerySurface(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
    int attribute,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _eglQuerySurface(
      dpy,
      surface,
      attribute,
      value,
    );
  }

  late final _eglQuerySurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglQuerySurface>>('eglQuerySurface');
  late final _dart_eglQuerySurface _eglQuerySurface =
      _eglQuerySurface_ptr.asFunction<_dart_eglQuerySurface>();

  int eglSwapBuffers(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
  ) {
    return _eglSwapBuffers(
      dpy,
      surface,
    );
  }

  late final _eglSwapBuffers_ptr =
      _lookup<ffi.NativeFunction<_c_eglSwapBuffers>>('eglSwapBuffers');
  late final _dart_eglSwapBuffers _eglSwapBuffers =
      _eglSwapBuffers_ptr.asFunction<_dart_eglSwapBuffers>();

  int eglTerminate(
    ffi.Pointer<ffi.Void> dpy,
  ) {
    return _eglTerminate(
      dpy,
    );
  }

  late final _eglTerminate_ptr =
      _lookup<ffi.NativeFunction<_c_eglTerminate>>('eglTerminate');
  late final _dart_eglTerminate _eglTerminate =
      _eglTerminate_ptr.asFunction<_dart_eglTerminate>();

  int eglWaitGL() {
    return _eglWaitGL();
  }

  late final _eglWaitGL_ptr =
      _lookup<ffi.NativeFunction<_c_eglWaitGL>>('eglWaitGL');
  late final _dart_eglWaitGL _eglWaitGL =
      _eglWaitGL_ptr.asFunction<_dart_eglWaitGL>();

  int eglWaitNative(
    int engine,
  ) {
    return _eglWaitNative(
      engine,
    );
  }

  late final _eglWaitNative_ptr =
      _lookup<ffi.NativeFunction<_c_eglWaitNative>>('eglWaitNative');
  late final _dart_eglWaitNative _eglWaitNative =
      _eglWaitNative_ptr.asFunction<_dart_eglWaitNative>();

  int eglBindTexImage(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
    int buffer,
  ) {
    return _eglBindTexImage(
      dpy,
      surface,
      buffer,
    );
  }

  late final _eglBindTexImage_ptr =
      _lookup<ffi.NativeFunction<_c_eglBindTexImage>>('eglBindTexImage');
  late final _dart_eglBindTexImage _eglBindTexImage =
      _eglBindTexImage_ptr.asFunction<_dart_eglBindTexImage>();

  int eglReleaseTexImage(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
    int buffer,
  ) {
    return _eglReleaseTexImage(
      dpy,
      surface,
      buffer,
    );
  }

  late final _eglReleaseTexImage_ptr =
      _lookup<ffi.NativeFunction<_c_eglReleaseTexImage>>('eglReleaseTexImage');
  late final _dart_eglReleaseTexImage _eglReleaseTexImage =
      _eglReleaseTexImage_ptr.asFunction<_dart_eglReleaseTexImage>();

  int eglSurfaceAttrib(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> surface,
    int attribute,
    int value,
  ) {
    return _eglSurfaceAttrib(
      dpy,
      surface,
      attribute,
      value,
    );
  }

  late final _eglSurfaceAttrib_ptr =
      _lookup<ffi.NativeFunction<_c_eglSurfaceAttrib>>('eglSurfaceAttrib');
  late final _dart_eglSurfaceAttrib _eglSurfaceAttrib =
      _eglSurfaceAttrib_ptr.asFunction<_dart_eglSurfaceAttrib>();

  int eglSwapInterval(
    ffi.Pointer<ffi.Void> dpy,
    int interval,
  ) {
    return _eglSwapInterval(
      dpy,
      interval,
    );
  }

  late final _eglSwapInterval_ptr =
      _lookup<ffi.NativeFunction<_c_eglSwapInterval>>('eglSwapInterval');
  late final _dart_eglSwapInterval _eglSwapInterval =
      _eglSwapInterval_ptr.asFunction<_dart_eglSwapInterval>();

  int eglBindAPI(
    int api,
  ) {
    return _eglBindAPI(
      api,
    );
  }

  late final _eglBindAPI_ptr =
      _lookup<ffi.NativeFunction<_c_eglBindAPI>>('eglBindAPI');
  late final _dart_eglBindAPI _eglBindAPI =
      _eglBindAPI_ptr.asFunction<_dart_eglBindAPI>();

  int eglQueryAPI() {
    return _eglQueryAPI();
  }

  late final _eglQueryAPI_ptr =
      _lookup<ffi.NativeFunction<_c_eglQueryAPI>>('eglQueryAPI');
  late final _dart_eglQueryAPI _eglQueryAPI =
      _eglQueryAPI_ptr.asFunction<_dart_eglQueryAPI>();

  ffi.Pointer<ffi.Void> eglCreatePbufferFromClientBuffer(
    ffi.Pointer<ffi.Void> dpy,
    int buftype,
    ffi.Pointer<ffi.Void> buffer,
    ffi.Pointer<ffi.Void> config,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreatePbufferFromClientBuffer(
      dpy,
      buftype,
      buffer,
      config,
      attrib_list,
    );
  }

  late final _eglCreatePbufferFromClientBuffer_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreatePbufferFromClientBuffer>>(
          'eglCreatePbufferFromClientBuffer');
  late final _dart_eglCreatePbufferFromClientBuffer
      _eglCreatePbufferFromClientBuffer = _eglCreatePbufferFromClientBuffer_ptr
          .asFunction<_dart_eglCreatePbufferFromClientBuffer>();

  int eglReleaseThread() {
    return _eglReleaseThread();
  }

  late final _eglReleaseThread_ptr =
      _lookup<ffi.NativeFunction<_c_eglReleaseThread>>('eglReleaseThread');
  late final _dart_eglReleaseThread _eglReleaseThread =
      _eglReleaseThread_ptr.asFunction<_dart_eglReleaseThread>();

  int eglWaitClient() {
    return _eglWaitClient();
  }

  late final _eglWaitClient_ptr =
      _lookup<ffi.NativeFunction<_c_eglWaitClient>>('eglWaitClient');
  late final _dart_eglWaitClient _eglWaitClient =
      _eglWaitClient_ptr.asFunction<_dart_eglWaitClient>();

  ffi.Pointer<ffi.Void> eglGetCurrentContext() {
    return _eglGetCurrentContext();
  }

  late final _eglGetCurrentContext_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetCurrentContext>>(
          'eglGetCurrentContext');
  late final _dart_eglGetCurrentContext _eglGetCurrentContext =
      _eglGetCurrentContext_ptr.asFunction<_dart_eglGetCurrentContext>();

  ffi.Pointer<ffi.Void> eglCreateSync(
    ffi.Pointer<ffi.Void> dpy,
    int type,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreateSync(
      dpy,
      type,
      attrib_list,
    );
  }

  late final _eglCreateSync_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreateSync>>('eglCreateSync');
  late final _dart_eglCreateSync _eglCreateSync =
      _eglCreateSync_ptr.asFunction<_dart_eglCreateSync>();

  int eglDestroySync(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> sync_1,
  ) {
    return _eglDestroySync(
      dpy,
      sync_1,
    );
  }

  late final _eglDestroySync_ptr =
      _lookup<ffi.NativeFunction<_c_eglDestroySync>>('eglDestroySync');
  late final _dart_eglDestroySync _eglDestroySync =
      _eglDestroySync_ptr.asFunction<_dart_eglDestroySync>();

  int eglClientWaitSync(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> sync_1,
    int flags,
    int timeout,
  ) {
    return _eglClientWaitSync(
      dpy,
      sync_1,
      flags,
      timeout,
    );
  }

  late final _eglClientWaitSync_ptr =
      _lookup<ffi.NativeFunction<_c_eglClientWaitSync>>('eglClientWaitSync');
  late final _dart_eglClientWaitSync _eglClientWaitSync =
      _eglClientWaitSync_ptr.asFunction<_dart_eglClientWaitSync>();

  int eglGetSyncAttrib(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> sync_1,
    int attribute,
    ffi.Pointer<ffi.Int32> value,
  ) {
    return _eglGetSyncAttrib(
      dpy,
      sync_1,
      attribute,
      value,
    );
  }

  late final _eglGetSyncAttrib_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetSyncAttrib>>('eglGetSyncAttrib');
  late final _dart_eglGetSyncAttrib _eglGetSyncAttrib =
      _eglGetSyncAttrib_ptr.asFunction<_dart_eglGetSyncAttrib>();

  ffi.Pointer<ffi.Void> eglCreateImage(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> ctx,
    int target,
    ffi.Pointer<ffi.Void> buffer,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreateImage(
      dpy,
      ctx,
      target,
      buffer,
      attrib_list,
    );
  }

  late final _eglCreateImage_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreateImage>>('eglCreateImage');
  late final _dart_eglCreateImage _eglCreateImage =
      _eglCreateImage_ptr.asFunction<_dart_eglCreateImage>();

  int eglDestroyImage(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> image,
  ) {
    return _eglDestroyImage(
      dpy,
      image,
    );
  }

  late final _eglDestroyImage_ptr =
      _lookup<ffi.NativeFunction<_c_eglDestroyImage>>('eglDestroyImage');
  late final _dart_eglDestroyImage _eglDestroyImage =
      _eglDestroyImage_ptr.asFunction<_dart_eglDestroyImage>();

  ffi.Pointer<ffi.Void> eglGetPlatformDisplay(
    int platform,
    ffi.Pointer<ffi.Void> native_display,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglGetPlatformDisplay(
      platform,
      native_display,
      attrib_list,
    );
  }

  late final _eglGetPlatformDisplay_ptr =
      _lookup<ffi.NativeFunction<_c_eglGetPlatformDisplay>>(
          'eglGetPlatformDisplay');
  late final _dart_eglGetPlatformDisplay _eglGetPlatformDisplay =
      _eglGetPlatformDisplay_ptr.asFunction<_dart_eglGetPlatformDisplay>();

  ffi.Pointer<ffi.Void> eglCreatePlatformWindowSurface(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> config,
    ffi.Pointer<ffi.Void> native_window,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreatePlatformWindowSurface(
      dpy,
      config,
      native_window,
      attrib_list,
    );
  }

  late final _eglCreatePlatformWindowSurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreatePlatformWindowSurface>>(
          'eglCreatePlatformWindowSurface');
  late final _dart_eglCreatePlatformWindowSurface
      _eglCreatePlatformWindowSurface = _eglCreatePlatformWindowSurface_ptr
          .asFunction<_dart_eglCreatePlatformWindowSurface>();

  ffi.Pointer<ffi.Void> eglCreatePlatformPixmapSurface(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> config,
    ffi.Pointer<ffi.Void> native_pixmap,
    ffi.Pointer<ffi.Int32> attrib_list,
  ) {
    return _eglCreatePlatformPixmapSurface(
      dpy,
      config,
      native_pixmap,
      attrib_list,
    );
  }

  late final _eglCreatePlatformPixmapSurface_ptr =
      _lookup<ffi.NativeFunction<_c_eglCreatePlatformPixmapSurface>>(
          'eglCreatePlatformPixmapSurface');
  late final _dart_eglCreatePlatformPixmapSurface
      _eglCreatePlatformPixmapSurface = _eglCreatePlatformPixmapSurface_ptr
          .asFunction<_dart_eglCreatePlatformPixmapSurface>();

  int eglWaitSync(
    ffi.Pointer<ffi.Void> dpy,
    ffi.Pointer<ffi.Void> sync_1,
    int flags,
  ) {
    return _eglWaitSync(
      dpy,
      sync_1,
      flags,
    );
  }

  late final _eglWaitSync_ptr =
      _lookup<ffi.NativeFunction<_c_eglWaitSync>>('eglWaitSync');
  late final _dart_eglWaitSync _eglWaitSync =
      _eglWaitSync_ptr.asFunction<_dart_eglWaitSync>();

  late final ffi.Pointer<ffi.Int32> _angle = _lookup<ffi.Int32>('angle');

  int get angle => _angle.value;

  set angle(int value) => _angle.value = value;

  int eglTest() {
    return _eglTest();
  }

  late final _eglTest_ptr = _lookup<ffi.NativeFunction<_c_eglTest>>('testEgl');
  late final _dart_eglTest _eglTest = _eglTest_ptr.asFunction<_dart_eglTest>();

  int makeCurrent(int context) {
    return _makeCurrent(context);
  }

  late final _makeCurrent_ptr =
      _lookup<ffi.NativeFunction<_c_makeCurrent>>('makeCurrent');
  late final _dart_makeCurrent _makeCurrent =
      _makeCurrent_ptr.asFunction<_dart_makeCurrent>();
}

typedef _c_makeCurrent = ffi.Int64 Function(ffi.Int64);
typedef _dart_makeCurrent = int Function(int);

typedef _c_eglTest = ffi.Int32 Function();
typedef _dart_eglTest = int Function();

class AHardwareBuffer extends ffi.Opaque {}

// class EGLClientPixmapHI extends ffi.Struct {
//   external ffi.Pointer<ffi.Void> pData;

//   external ffi.NativeFunction<EGLint> iWidth;

//   external ffi.NativeFunction<EGLint> iHeight;

//   external ffi.NativeFunction<EGLint> iStride;
// }

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

const int __egl_h_ = 1;

const int EGL_VERSION_1_0 = 1;

const int EGL_ALPHA_SIZE = 12321;

const int EGL_BAD_ACCESS = 12290;

const int EGL_BAD_ALLOC = 12291;

const int EGL_BAD_ATTRIBUTE = 12292;

const int EGL_BAD_CONFIG = 12293;

const int EGL_BAD_CONTEXT = 12294;

const int EGL_BAD_CURRENT_SURFACE = 12295;

const int EGL_BAD_DISPLAY = 12296;

const int EGL_BAD_MATCH = 12297;

const int EGL_BAD_NATIVE_PIXMAP = 12298;

const int EGL_BAD_NATIVE_WINDOW = 12299;

const int EGL_BAD_PARAMETER = 12300;

const int EGL_BAD_SURFACE = 12301;

const int EGL_BLUE_SIZE = 12322;

const int EGL_BUFFER_SIZE = 12320;

const int EGL_CONFIG_CAVEAT = 12327;

const int EGL_CONFIG_ID = 12328;

const int EGL_CORE_NATIVE_ENGINE = 12379;

const int EGL_DEPTH_SIZE = 12325;

const int EGL_DONT_CARE = -1;

const int EGL_DRAW = 12377;

const int EGL_EXTENSIONS = 12373;

const int EGL_FALSE = 0;

const int EGL_GREEN_SIZE = 12323;

const int EGL_HEIGHT = 12374;

const int EGL_LARGEST_PBUFFER = 12376;

const int EGL_LEVEL = 12329;

const int EGL_MAX_PBUFFER_HEIGHT = 12330;

const int EGL_MAX_PBUFFER_PIXELS = 12331;

const int EGL_MAX_PBUFFER_WIDTH = 12332;

const int EGL_NATIVE_RENDERABLE = 12333;

const int EGL_NATIVE_VISUAL_ID = 12334;

const int EGL_NATIVE_VISUAL_TYPE = 12335;

const int EGL_NONE = 12344;

const int EGL_NON_CONFORMANT_CONFIG = 12369;

const int EGL_NOT_INITIALIZED = 12289;

const int EGL_PBUFFER_BIT = 1;

const int EGL_PIXMAP_BIT = 2;

const int EGL_READ = 12378;

const int EGL_RED_SIZE = 12324;

const int EGL_SAMPLES = 12337;

const int EGL_SAMPLE_BUFFERS = 12338;

const int EGL_SLOW_CONFIG = 12368;

const int EGL_STENCIL_SIZE = 12326;

const int EGL_SUCCESS = 12288;

const int EGL_SURFACE_TYPE = 12339;

const int EGL_TRANSPARENT_BLUE_VALUE = 12341;

const int EGL_TRANSPARENT_GREEN_VALUE = 12342;

const int EGL_TRANSPARENT_RED_VALUE = 12343;

const int EGL_TRANSPARENT_RGB = 12370;

const int EGL_TRANSPARENT_TYPE = 12340;

const int EGL_TRUE = 1;

const int EGL_VENDOR = 12371;

const int EGL_VERSION = 12372;

const int EGL_WIDTH = 12375;

const int EGL_WINDOW_BIT = 4;

const int EGL_VERSION_1_1 = 1;

const int EGL_BACK_BUFFER = 12420;

const int EGL_BIND_TO_TEXTURE_RGB = 12345;

const int EGL_BIND_TO_TEXTURE_RGBA = 12346;

const int EGL_CONTEXT_LOST = 12302;

const int EGL_MIN_SWAP_INTERVAL = 12347;

const int EGL_MAX_SWAP_INTERVAL = 12348;

const int EGL_MIPMAP_TEXTURE = 12418;

const int EGL_MIPMAP_LEVEL = 12419;

const int EGL_NO_TEXTURE = 12380;

const int EGL_TEXTURE_2D = 12383;

const int EGL_TEXTURE_FORMAT = 12416;

const int EGL_TEXTURE_RGB = 12381;

const int EGL_TEXTURE_RGBA = 12382;

const int EGL_TEXTURE_TARGET = 12417;

const int EGL_VERSION_1_2 = 1;

const int EGL_ALPHA_FORMAT = 12424;

const int EGL_ALPHA_FORMAT_NONPRE = 12427;

const int EGL_ALPHA_FORMAT_PRE = 12428;

const int EGL_ALPHA_MASK_SIZE = 12350;

const int EGL_BUFFER_PRESERVED = 12436;

const int EGL_BUFFER_DESTROYED = 12437;

const int EGL_CLIENT_APIS = 12429;

const int EGL_COLORSPACE = 12423;

const int EGL_COLORSPACE_sRGB = 12425;

const int EGL_COLORSPACE_LINEAR = 12426;

const int EGL_COLOR_BUFFER_TYPE = 12351;

const int EGL_CONTEXT_CLIENT_TYPE = 12439;

const int EGL_DISPLAY_SCALING = 10000;

const int EGL_HORIZONTAL_RESOLUTION = 12432;

const int EGL_LUMINANCE_BUFFER = 12431;

const int EGL_LUMINANCE_SIZE = 12349;

const int EGL_OPENGL_ES_BIT = 1;

const int EGL_OPENVG_BIT = 2;

const int EGL_OPENGL_ES_API = 12448;

const int EGL_OPENVG_API = 12449;

const int EGL_OPENVG_IMAGE = 12438;

const int EGL_PIXEL_ASPECT_RATIO = 12434;

const int EGL_RENDERABLE_TYPE = 12352;

const int EGL_RENDER_BUFFER = 12422;

const int EGL_RGB_BUFFER = 12430;

const int EGL_SINGLE_BUFFER = 12421;

const int EGL_SWAP_BEHAVIOR = 12435;

const int EGL_UNKNOWN = -1;

const int EGL_VERTICAL_RESOLUTION = 12433;

const int EGL_VERSION_1_3 = 1;

const int EGL_CONFORMANT = 12354;

const int EGL_CONTEXT_CLIENT_VERSION = 12440;

const int EGL_MATCH_NATIVE_PIXMAP = 12353;

const int EGL_OPENGL_ES2_BIT = 4;

const int EGL_VG_ALPHA_FORMAT = 12424;

const int EGL_VG_ALPHA_FORMAT_NONPRE = 12427;

const int EGL_VG_ALPHA_FORMAT_PRE = 12428;

const int EGL_VG_ALPHA_FORMAT_PRE_BIT = 64;

const int EGL_VG_COLORSPACE = 12423;

const int EGL_VG_COLORSPACE_sRGB = 12425;

const int EGL_VG_COLORSPACE_LINEAR = 12426;

const int EGL_VG_COLORSPACE_LINEAR_BIT = 32;

const int EGL_VERSION_1_4 = 1;

const int EGL_MULTISAMPLE_RESOLVE_BOX_BIT = 512;

const int EGL_MULTISAMPLE_RESOLVE = 12441;

const int EGL_MULTISAMPLE_RESOLVE_DEFAULT = 12442;

const int EGL_MULTISAMPLE_RESOLVE_BOX = 12443;

const int EGL_OPENGL_API = 12450;

const int EGL_OPENGL_BIT = 8;

const int EGL_SWAP_BEHAVIOR_PRESERVED_BIT = 1024;

const int EGL_VERSION_1_5 = 1;

const int EGL_CONTEXT_MAJOR_VERSION = 12440;

const int EGL_CONTEXT_MINOR_VERSION = 12539;

const int EGL_CONTEXT_OPENGL_PROFILE_MASK = 12541;

const int EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY = 12733;

const int EGL_NO_RESET_NOTIFICATION = 12734;

const int EGL_LOSE_CONTEXT_ON_RESET = 12735;

const int EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT = 1;

const int EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT = 2;

const int EGL_CONTEXT_OPENGL_DEBUG = 12720;

const int EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE = 12721;

const int EGL_CONTEXT_OPENGL_ROBUST_ACCESS = 12722;

const int EGL_OPENGL_ES3_BIT = 64;

const int EGL_CL_EVENT_HANDLE = 12444;

const int EGL_SYNC_CL_EVENT = 12542;

const int EGL_SYNC_CL_EVENT_COMPLETE = 12543;

const int EGL_SYNC_PRIOR_COMMANDS_COMPLETE = 12528;

const int EGL_SYNC_TYPE = 12535;

const int EGL_SYNC_STATUS = 12529;

const int EGL_SYNC_CONDITION = 12536;

const int EGL_SIGNALED = 12530;

const int EGL_UNSIGNALED = 12531;

const int EGL_SYNC_FLUSH_COMMANDS_BIT = 1;

const int EGL_FOREVER = -1;

const int EGL_TIMEOUT_EXPIRED = 12533;

const int EGL_CONDITION_SATISFIED = 12534;

const int EGL_SYNC_FENCE = 12537;

const int EGL_GL_COLORSPACE = 12445;

const int EGL_GL_COLORSPACE_SRGB = 12425;

const int EGL_GL_COLORSPACE_LINEAR = 12426;

const int EGL_GL_RENDERBUFFER = 12473;

const int EGL_GL_TEXTURE_2D = 12465;

const int EGL_GL_TEXTURE_LEVEL = 12476;

const int EGL_GL_TEXTURE_3D = 12466;

const int EGL_GL_TEXTURE_ZOFFSET = 12477;

const int EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X = 12467;

const int EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 12468;

const int EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 12469;

const int EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 12470;

const int EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 12471;

const int EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 12472;

const int EGL_IMAGE_PRESERVED = 12498;

const int __eglext_h_ = 1;

const int EGL_EGLEXT_VERSION = 20181204;

const int EGL_KHR_cl_event = 1;

const int EGL_CL_EVENT_HANDLE_KHR = 12444;

const int EGL_SYNC_CL_EVENT_KHR = 12542;

const int EGL_SYNC_CL_EVENT_COMPLETE_KHR = 12543;

const int EGL_KHR_cl_event2 = 1;

const int EGL_KHR_client_get_all_proc_addresses = 1;

const int EGL_KHR_config_attribs = 1;

const int EGL_CONFORMANT_KHR = 12354;

const int EGL_VG_COLORSPACE_LINEAR_BIT_KHR = 32;

const int EGL_VG_ALPHA_FORMAT_PRE_BIT_KHR = 64;

const int EGL_KHR_context_flush_control = 1;

const int EGL_CONTEXT_RELEASE_BEHAVIOR_NONE_KHR = 0;

const int EGL_CONTEXT_RELEASE_BEHAVIOR_KHR = 8343;

const int EGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR = 8344;

const int EGL_KHR_create_context = 1;

const int EGL_CONTEXT_MAJOR_VERSION_KHR = 12440;

const int EGL_CONTEXT_MINOR_VERSION_KHR = 12539;

const int EGL_CONTEXT_FLAGS_KHR = 12540;

const int EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR = 12541;

const int EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR = 12733;

const int EGL_NO_RESET_NOTIFICATION_KHR = 12734;

const int EGL_LOSE_CONTEXT_ON_RESET_KHR = 12735;

const int EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR = 1;

const int EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR = 2;

const int EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR = 4;

const int EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR = 1;

const int EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR = 2;

const int EGL_OPENGL_ES3_BIT_KHR = 64;

const int EGL_KHR_create_context_no_error = 1;

const int EGL_CONTEXT_OPENGL_NO_ERROR_KHR = 12723;

const int EGL_KHR_debug = 1;

const int EGL_OBJECT_THREAD_KHR = 13232;

const int EGL_OBJECT_DISPLAY_KHR = 13233;

const int EGL_OBJECT_CONTEXT_KHR = 13234;

const int EGL_OBJECT_SURFACE_KHR = 13235;

const int EGL_OBJECT_IMAGE_KHR = 13236;

const int EGL_OBJECT_SYNC_KHR = 13237;

const int EGL_OBJECT_STREAM_KHR = 13238;

const int EGL_DEBUG_MSG_CRITICAL_KHR = 13241;

const int EGL_DEBUG_MSG_ERROR_KHR = 13242;

const int EGL_DEBUG_MSG_WARN_KHR = 13243;

const int EGL_DEBUG_MSG_INFO_KHR = 13244;

const int EGL_DEBUG_CALLBACK_KHR = 13240;

const int EGL_KHR_display_reference = 1;

const int EGL_TRACK_REFERENCES_KHR = 13138;

const int EGL_KHR_fence_sync = 1;

const int EGL_KHR_get_all_proc_addresses = 1;

const int EGL_KHR_gl_colorspace = 1;

const int EGL_GL_COLORSPACE_KHR = 12445;

const int EGL_GL_COLORSPACE_SRGB_KHR = 12425;

const int EGL_GL_COLORSPACE_LINEAR_KHR = 12426;

const int EGL_KHR_gl_renderbuffer_image = 1;

const int EGL_GL_RENDERBUFFER_KHR = 12473;

const int EGL_KHR_gl_texture_2D_image = 1;

const int EGL_GL_TEXTURE_2D_KHR = 12465;

const int EGL_GL_TEXTURE_LEVEL_KHR = 12476;

const int EGL_KHR_gl_texture_3D_image = 1;

const int EGL_GL_TEXTURE_3D_KHR = 12466;

const int EGL_GL_TEXTURE_ZOFFSET_KHR = 12477;

const int EGL_KHR_gl_texture_cubemap_image = 1;

const int EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X_KHR = 12467;

const int EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X_KHR = 12468;

const int EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y_KHR = 12469;

const int EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_KHR = 12470;

const int EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z_KHR = 12471;

const int EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_KHR = 12472;

const int EGL_KHR_image = 1;

const int EGL_NATIVE_PIXMAP_KHR = 12464;

const int EGL_KHR_image_base = 1;

const int EGL_IMAGE_PRESERVED_KHR = 12498;

const int EGL_KHR_image_pixmap = 1;

const int EGL_KHR_lock_surface = 1;

const int EGL_READ_SURFACE_BIT_KHR = 1;

const int EGL_WRITE_SURFACE_BIT_KHR = 2;

const int EGL_LOCK_SURFACE_BIT_KHR = 128;

const int EGL_OPTIMAL_FORMAT_BIT_KHR = 256;

const int EGL_MATCH_FORMAT_KHR = 12355;

const int EGL_FORMAT_RGB_565_EXACT_KHR = 12480;

const int EGL_FORMAT_RGB_565_KHR = 12481;

const int EGL_FORMAT_RGBA_8888_EXACT_KHR = 12482;

const int EGL_FORMAT_RGBA_8888_KHR = 12483;

const int EGL_MAP_PRESERVE_PIXELS_KHR = 12484;

const int EGL_LOCK_USAGE_HINT_KHR = 12485;

const int EGL_BITMAP_POINTER_KHR = 12486;

const int EGL_BITMAP_PITCH_KHR = 12487;

const int EGL_BITMAP_ORIGIN_KHR = 12488;

const int EGL_BITMAP_PIXEL_RED_OFFSET_KHR = 12489;

const int EGL_BITMAP_PIXEL_GREEN_OFFSET_KHR = 12490;

const int EGL_BITMAP_PIXEL_BLUE_OFFSET_KHR = 12491;

const int EGL_BITMAP_PIXEL_ALPHA_OFFSET_KHR = 12492;

const int EGL_BITMAP_PIXEL_LUMINANCE_OFFSET_KHR = 12493;

const int EGL_LOWER_LEFT_KHR = 12494;

const int EGL_UPPER_LEFT_KHR = 12495;

const int EGL_KHR_lock_surface2 = 1;

const int EGL_BITMAP_PIXEL_SIZE_KHR = 12560;

const int EGL_KHR_lock_surface3 = 1;

const int EGL_KHR_mutable_render_buffer = 1;

const int EGL_MUTABLE_RENDER_BUFFER_BIT_KHR = 4096;

const int EGL_KHR_no_config_context = 1;

const int EGL_KHR_partial_update = 1;

const int EGL_BUFFER_AGE_KHR = 12605;

const int EGL_KHR_platform_android = 1;

const int EGL_PLATFORM_ANDROID_KHR = 12609;

const int EGL_KHR_platform_gbm = 1;

const int EGL_PLATFORM_GBM_KHR = 12759;

const int EGL_KHR_platform_wayland = 1;

const int EGL_PLATFORM_WAYLAND_KHR = 12760;

const int EGL_KHR_platform_x11 = 1;

const int EGL_PLATFORM_X11_KHR = 12757;

const int EGL_PLATFORM_X11_SCREEN_KHR = 12758;

const int EGL_KHR_reusable_sync = 1;

const int EGL_KHR_stream = 1;

const int EGL_KHR_stream_attrib = 1;

const int EGL_KHR_stream_consumer_gltexture = 1;

const int EGL_CONSUMER_ACQUIRE_TIMEOUT_USEC_KHR = 12830;

const int EGL_KHR_stream_cross_process_fd = 1;

const int EGL_NO_FILE_DESCRIPTOR_KHR = -1;

const int EGL_KHR_stream_fifo = 1;

const int EGL_STREAM_FIFO_LENGTH_KHR = 12796;

const int EGL_STREAM_TIME_NOW_KHR = 12797;

const int EGL_STREAM_TIME_CONSUMER_KHR = 12798;

const int EGL_STREAM_TIME_PRODUCER_KHR = 12799;

const int EGL_KHR_stream_producer_aldatalocator = 1;

const int EGL_KHR_stream_producer_eglsurface = 1;

const int EGL_STREAM_BIT_KHR = 2048;

const int EGL_KHR_surfaceless_context = 1;

const int EGL_KHR_swap_buffers_with_damage = 1;

const int EGL_KHR_vg_parent_image = 1;

const int EGL_VG_PARENT_IMAGE_KHR = 12474;

const int EGL_KHR_wait_sync = 1;

const int EGL_ANDROID_blob_cache = 1;

const int EGL_ANDROID_create_native_client_buffer = 1;

const int EGL_NATIVE_BUFFER_USAGE_ANDROID = 12611;

const int EGL_NATIVE_BUFFER_USAGE_PROTECTED_BIT_ANDROID = 1;

const int EGL_NATIVE_BUFFER_USAGE_RENDERBUFFER_BIT_ANDROID = 2;

const int EGL_NATIVE_BUFFER_USAGE_TEXTURE_BIT_ANDROID = 4;

const int EGL_ANDROID_framebuffer_target = 1;

const int EGL_FRAMEBUFFER_TARGET_ANDROID = 12615;

const int EGL_ANDROID_front_buffer_auto_refresh = 1;

const int EGL_FRONT_BUFFER_AUTO_REFRESH_ANDROID = 12620;

const int EGL_ANDROID_get_frame_timestamps = 1;

const int EGL_TIMESTAMP_PENDING_ANDROID = -2;

const int EGL_TIMESTAMP_INVALID_ANDROID = -1;

const int EGL_TIMESTAMPS_ANDROID = 13360;

const int EGL_COMPOSITE_DEADLINE_ANDROID = 13361;

const int EGL_COMPOSITE_INTERVAL_ANDROID = 13362;

const int EGL_COMPOSITE_TO_PRESENT_LATENCY_ANDROID = 13363;

const int EGL_REQUESTED_PRESENT_TIME_ANDROID = 13364;

const int EGL_RENDERING_COMPLETE_TIME_ANDROID = 13365;

const int EGL_COMPOSITION_LATCH_TIME_ANDROID = 13366;

const int EGL_FIRST_COMPOSITION_START_TIME_ANDROID = 13367;

const int EGL_LAST_COMPOSITION_START_TIME_ANDROID = 13368;

const int EGL_FIRST_COMPOSITION_GPU_FINISHED_TIME_ANDROID = 13369;

const int EGL_DISPLAY_PRESENT_TIME_ANDROID = 13370;

const int EGL_DEQUEUE_READY_TIME_ANDROID = 13371;

const int EGL_READS_DONE_TIME_ANDROID = 13372;

const int EGL_ANDROID_get_native_client_buffer = 1;

const int EGL_ANDROID_image_native_buffer = 1;

const int EGL_NATIVE_BUFFER_ANDROID = 12608;

const int EGL_ANDROID_native_fence_sync = 1;

const int EGL_SYNC_NATIVE_FENCE_ANDROID = 12612;

const int EGL_SYNC_NATIVE_FENCE_FD_ANDROID = 12613;

const int EGL_SYNC_NATIVE_FENCE_SIGNALED_ANDROID = 12614;

const int EGL_NO_NATIVE_FENCE_FD_ANDROID = -1;

const int EGL_ANDROID_presentation_time = 1;

const int EGL_ANDROID_recordable = 1;

const int EGL_RECORDABLE_ANDROID = 12610;

const int EGL_ANGLE_d3d_share_handle_client_buffer = 1;

const int EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE = 12800;

const int EGL_ANGLE_device_d3d = 1;

const int EGL_D3D9_DEVICE_ANGLE = 13216;

const int EGL_D3D11_DEVICE_ANGLE = 13217;

const int EGL_ANGLE_query_surface_pointer = 1;

const int EGL_ANGLE_surface_d3d_texture_2d_share_handle = 1;

const int EGL_ANGLE_window_fixed_size = 1;

const int EGL_FIXED_SIZE_ANGLE = 12801;

const int EGL_ARM_implicit_external_sync = 1;

const int EGL_SYNC_PRIOR_COMMANDS_IMPLICIT_EXTERNAL_ARM = 12938;

const int EGL_ARM_pixmap_multisample_discard = 1;

const int EGL_DISCARD_SAMPLES_ARM = 12934;

const int EGL_EXT_bind_to_front = 1;

const int EGL_FRONT_BUFFER_EXT = 13412;

const int EGL_EXT_buffer_age = 1;

const int EGL_BUFFER_AGE_EXT = 12605;

const int EGL_EXT_client_extensions = 1;

const int EGL_EXT_client_sync = 1;

const int EGL_SYNC_CLIENT_EXT = 13156;

const int EGL_SYNC_CLIENT_SIGNAL_EXT = 13157;

const int EGL_EXT_compositor = 1;

const int EGL_PRIMARY_COMPOSITOR_CONTEXT_EXT = 13408;

const int EGL_EXTERNAL_REF_ID_EXT = 13409;

const int EGL_COMPOSITOR_DROP_NEWEST_FRAME_EXT = 13410;

const int EGL_COMPOSITOR_KEEP_NEWEST_FRAME_EXT = 13411;

const int EGL_EXT_create_context_robustness = 1;

const int EGL_CONTEXT_OPENGL_ROBUST_ACCESS_EXT = 12479;

const int EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_EXT = 12600;

const int EGL_NO_RESET_NOTIFICATION_EXT = 12734;

const int EGL_LOSE_CONTEXT_ON_RESET_EXT = 12735;

const int EGL_EXT_device_base = 1;

const int EGL_BAD_DEVICE_EXT = 12843;

const int EGL_DEVICE_EXT = 12844;

const int EGL_EXT_device_drm = 1;

const int EGL_DRM_DEVICE_FILE_EXT = 12851;

const int EGL_DRM_MASTER_FD_EXT = 13116;

const int EGL_EXT_device_enumeration = 1;

const int EGL_EXT_device_openwf = 1;

const int EGL_OPENWF_DEVICE_ID_EXT = 12855;

const int EGL_EXT_device_query = 1;

const int EGL_EXT_gl_colorspace_bt2020_linear = 1;

const int EGL_GL_COLORSPACE_BT2020_LINEAR_EXT = 13119;

const int EGL_EXT_gl_colorspace_bt2020_pq = 1;

const int EGL_GL_COLORSPACE_BT2020_PQ_EXT = 13120;

const int EGL_EXT_gl_colorspace_display_p3 = 1;

const int EGL_GL_COLORSPACE_DISPLAY_P3_EXT = 13155;

const int EGL_EXT_gl_colorspace_display_p3_linear = 1;

const int EGL_GL_COLORSPACE_DISPLAY_P3_LINEAR_EXT = 13154;

const int EGL_EXT_gl_colorspace_display_p3_passthrough = 1;

const int EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT = 13456;

const int EGL_EXT_gl_colorspace_scrgb = 1;

const int EGL_GL_COLORSPACE_SCRGB_EXT = 13137;

const int EGL_EXT_gl_colorspace_scrgb_linear = 1;

const int EGL_GL_COLORSPACE_SCRGB_LINEAR_EXT = 13136;

const int EGL_EXT_image_dma_buf_import = 1;

const int EGL_LINUX_DMA_BUF_EXT = 12912;

const int EGL_LINUX_DRM_FOURCC_EXT = 12913;

const int EGL_DMA_BUF_PLANE0_FD_EXT = 12914;

const int EGL_DMA_BUF_PLANE0_OFFSET_EXT = 12915;

const int EGL_DMA_BUF_PLANE0_PITCH_EXT = 12916;

const int EGL_DMA_BUF_PLANE1_FD_EXT = 12917;

const int EGL_DMA_BUF_PLANE1_OFFSET_EXT = 12918;

const int EGL_DMA_BUF_PLANE1_PITCH_EXT = 12919;

const int EGL_DMA_BUF_PLANE2_FD_EXT = 12920;

const int EGL_DMA_BUF_PLANE2_OFFSET_EXT = 12921;

const int EGL_DMA_BUF_PLANE2_PITCH_EXT = 12922;

const int EGL_YUV_COLOR_SPACE_HINT_EXT = 12923;

const int EGL_SAMPLE_RANGE_HINT_EXT = 12924;

const int EGL_YUV_CHROMA_HORIZONTAL_SITING_HINT_EXT = 12925;

const int EGL_YUV_CHROMA_VERTICAL_SITING_HINT_EXT = 12926;

const int EGL_ITU_REC601_EXT = 12927;

const int EGL_ITU_REC709_EXT = 12928;

const int EGL_ITU_REC2020_EXT = 12929;

const int EGL_YUV_FULL_RANGE_EXT = 12930;

const int EGL_YUV_NARROW_RANGE_EXT = 12931;

const int EGL_YUV_CHROMA_SITING_0_EXT = 12932;

const int EGL_YUV_CHROMA_SITING_0_5_EXT = 12933;

const int EGL_EXT_image_dma_buf_import_modifiers = 1;

const int EGL_DMA_BUF_PLANE3_FD_EXT = 13376;

const int EGL_DMA_BUF_PLANE3_OFFSET_EXT = 13377;

const int EGL_DMA_BUF_PLANE3_PITCH_EXT = 13378;

const int EGL_DMA_BUF_PLANE0_MODIFIER_LO_EXT = 13379;

const int EGL_DMA_BUF_PLANE0_MODIFIER_HI_EXT = 13380;

const int EGL_DMA_BUF_PLANE1_MODIFIER_LO_EXT = 13381;

const int EGL_DMA_BUF_PLANE1_MODIFIER_HI_EXT = 13382;

const int EGL_DMA_BUF_PLANE2_MODIFIER_LO_EXT = 13383;

const int EGL_DMA_BUF_PLANE2_MODIFIER_HI_EXT = 13384;

const int EGL_DMA_BUF_PLANE3_MODIFIER_LO_EXT = 13385;

const int EGL_DMA_BUF_PLANE3_MODIFIER_HI_EXT = 13386;

const int EGL_EXT_image_gl_colorspace = 1;

const int EGL_GL_COLORSPACE_DEFAULT_EXT = 12621;

const int EGL_EXT_image_implicit_sync_control = 1;

const int EGL_IMPORT_SYNC_TYPE_EXT = 13424;

const int EGL_IMPORT_IMPLICIT_SYNC_EXT = 13425;

const int EGL_IMPORT_EXPLICIT_SYNC_EXT = 13426;

const int EGL_EXT_multiview_window = 1;

const int EGL_MULTIVIEW_VIEW_COUNT_EXT = 12596;

const int EGL_EXT_output_base = 1;

const int EGL_BAD_OUTPUT_LAYER_EXT = 12845;

const int EGL_BAD_OUTPUT_PORT_EXT = 12846;

const int EGL_SWAP_INTERVAL_EXT = 12847;

const int EGL_EXT_output_drm = 1;

const int EGL_DRM_CRTC_EXT = 12852;

const int EGL_DRM_PLANE_EXT = 12853;

const int EGL_DRM_CONNECTOR_EXT = 12854;

const int EGL_EXT_output_openwf = 1;

const int EGL_OPENWF_PIPELINE_ID_EXT = 12856;

const int EGL_OPENWF_PORT_ID_EXT = 12857;

const int EGL_EXT_pixel_format_float = 1;

const int EGL_COLOR_COMPONENT_TYPE_EXT = 13113;

const int EGL_COLOR_COMPONENT_TYPE_FIXED_EXT = 13114;

const int EGL_COLOR_COMPONENT_TYPE_FLOAT_EXT = 13115;

const int EGL_EXT_platform_base = 1;

const int EGL_EXT_platform_device = 1;

const int EGL_PLATFORM_DEVICE_EXT = 12607;

const int EGL_EXT_platform_wayland = 1;

const int EGL_PLATFORM_WAYLAND_EXT = 12760;

const int EGL_EXT_platform_x11 = 1;

const int EGL_PLATFORM_X11_EXT = 12757;

const int EGL_PLATFORM_X11_SCREEN_EXT = 12758;

const int EGL_EXT_protected_content = 1;

const int EGL_PROTECTED_CONTENT_EXT = 12992;

const int EGL_EXT_protected_surface = 1;

const int EGL_EXT_stream_consumer_egloutput = 1;

const int EGL_EXT_surface_CTA861_3_metadata = 1;

const int EGL_CTA861_3_MAX_CONTENT_LIGHT_LEVEL_EXT = 13152;

const int EGL_CTA861_3_MAX_FRAME_AVERAGE_LEVEL_EXT = 13153;

const int EGL_EXT_surface_SMPTE2086_metadata = 1;

const int EGL_SMPTE2086_DISPLAY_PRIMARY_RX_EXT = 13121;

const int EGL_SMPTE2086_DISPLAY_PRIMARY_RY_EXT = 13122;

const int EGL_SMPTE2086_DISPLAY_PRIMARY_GX_EXT = 13123;

const int EGL_SMPTE2086_DISPLAY_PRIMARY_GY_EXT = 13124;

const int EGL_SMPTE2086_DISPLAY_PRIMARY_BX_EXT = 13125;

const int EGL_SMPTE2086_DISPLAY_PRIMARY_BY_EXT = 13126;

const int EGL_SMPTE2086_WHITE_POINT_X_EXT = 13127;

const int EGL_SMPTE2086_WHITE_POINT_Y_EXT = 13128;

const int EGL_SMPTE2086_MAX_LUMINANCE_EXT = 13129;

const int EGL_SMPTE2086_MIN_LUMINANCE_EXT = 13130;

const int EGL_METADATA_SCALING_EXT = 50000;

const int EGL_EXT_swap_buffers_with_damage = 1;

const int EGL_EXT_sync_reuse = 1;

const int EGL_EXT_yuv_surface = 1;

const int EGL_YUV_ORDER_EXT = 13057;

const int EGL_YUV_NUMBER_OF_PLANES_EXT = 13073;

const int EGL_YUV_SUBSAMPLE_EXT = 13074;

const int EGL_YUV_DEPTH_RANGE_EXT = 13079;

const int EGL_YUV_CSC_STANDARD_EXT = 13066;

const int EGL_YUV_PLANE_BPP_EXT = 13082;

const int EGL_YUV_BUFFER_EXT = 13056;

const int EGL_YUV_ORDER_YUV_EXT = 13058;

const int EGL_YUV_ORDER_YVU_EXT = 13059;

const int EGL_YUV_ORDER_YUYV_EXT = 13060;

const int EGL_YUV_ORDER_UYVY_EXT = 13061;

const int EGL_YUV_ORDER_YVYU_EXT = 13062;

const int EGL_YUV_ORDER_VYUY_EXT = 13063;

const int EGL_YUV_ORDER_AYUV_EXT = 13064;

const int EGL_YUV_SUBSAMPLE_4_2_0_EXT = 13075;

const int EGL_YUV_SUBSAMPLE_4_2_2_EXT = 13076;

const int EGL_YUV_SUBSAMPLE_4_4_4_EXT = 13077;

const int EGL_YUV_DEPTH_RANGE_LIMITED_EXT = 13080;

const int EGL_YUV_DEPTH_RANGE_FULL_EXT = 13081;

const int EGL_YUV_CSC_STANDARD_601_EXT = 13067;

const int EGL_YUV_CSC_STANDARD_709_EXT = 13068;

const int EGL_YUV_CSC_STANDARD_2020_EXT = 13069;

const int EGL_YUV_PLANE_BPP_0_EXT = 13083;

const int EGL_YUV_PLANE_BPP_8_EXT = 13084;

const int EGL_YUV_PLANE_BPP_10_EXT = 13085;

const int EGL_HI_clientpixmap = 1;

const int EGL_CLIENT_PIXMAP_POINTER_HI = 36724;

const int EGL_HI_colorformats = 1;

const int EGL_COLOR_FORMAT_HI = 36720;

const int EGL_COLOR_RGB_HI = 36721;

const int EGL_COLOR_RGBA_HI = 36722;

const int EGL_COLOR_ARGB_HI = 36723;

const int EGL_IMG_context_priority = 1;

const int EGL_CONTEXT_PRIORITY_LEVEL_IMG = 12544;

const int EGL_CONTEXT_PRIORITY_HIGH_IMG = 12545;

const int EGL_CONTEXT_PRIORITY_MEDIUM_IMG = 12546;

const int EGL_CONTEXT_PRIORITY_LOW_IMG = 12547;

const int EGL_IMG_image_plane_attribs = 1;

const int EGL_NATIVE_BUFFER_MULTIPLANE_SEPARATE_IMG = 12549;

const int EGL_NATIVE_BUFFER_PLANE_OFFSET_IMG = 12550;

const int EGL_MESA_drm_image = 1;

const int EGL_DRM_BUFFER_FORMAT_MESA = 12752;

const int EGL_DRM_BUFFER_USE_MESA = 12753;

const int EGL_DRM_BUFFER_FORMAT_ARGB32_MESA = 12754;

const int EGL_DRM_BUFFER_MESA = 12755;

const int EGL_DRM_BUFFER_STRIDE_MESA = 12756;

const int EGL_DRM_BUFFER_USE_SCANOUT_MESA = 1;

const int EGL_DRM_BUFFER_USE_SHARE_MESA = 2;

const int EGL_DRM_BUFFER_USE_CURSOR_MESA = 4;

const int EGL_MESA_image_dma_buf_export = 1;

const int EGL_MESA_platform_gbm = 1;

const int EGL_PLATFORM_GBM_MESA = 12759;

const int EGL_MESA_platform_surfaceless = 1;

const int EGL_PLATFORM_SURFACELESS_MESA = 12765;

const int EGL_NOK_swap_region = 1;

const int EGL_NOK_swap_region2 = 1;

const int EGL_NOK_texture_from_pixmap = 1;

const int EGL_Y_INVERTED_NOK = 12415;

const int EGL_NV_3dvision_surface = 1;

const int EGL_AUTO_STEREO_NV = 12598;

const int EGL_NV_context_priority_realtime = 1;

const int EGL_CONTEXT_PRIORITY_REALTIME_NV = 13143;

const int EGL_NV_coverage_sample = 1;

const int EGL_COVERAGE_BUFFERS_NV = 12512;

const int EGL_COVERAGE_SAMPLES_NV = 12513;

const int EGL_NV_coverage_sample_resolve = 1;

const int EGL_COVERAGE_SAMPLE_RESOLVE_NV = 12593;

const int EGL_COVERAGE_SAMPLE_RESOLVE_DEFAULT_NV = 12594;

const int EGL_COVERAGE_SAMPLE_RESOLVE_NONE_NV = 12595;

const int EGL_NV_cuda_event = 1;

const int EGL_CUDA_EVENT_HANDLE_NV = 12859;

const int EGL_SYNC_CUDA_EVENT_NV = 12860;

const int EGL_SYNC_CUDA_EVENT_COMPLETE_NV = 12861;

const int EGL_NV_depth_nonlinear = 1;

const int EGL_DEPTH_ENCODING_NV = 12514;

const int EGL_DEPTH_ENCODING_NONE_NV = 0;

const int EGL_DEPTH_ENCODING_NONLINEAR_NV = 12515;

const int EGL_NV_device_cuda = 1;

const int EGL_CUDA_DEVICE_NV = 12858;

const int EGL_NV_native_query = 1;

const int EGL_NV_post_convert_rounding = 1;

const int EGL_NV_post_sub_buffer = 1;

const int EGL_POST_SUB_BUFFER_SUPPORTED_NV = 12478;

const int EGL_NV_robustness_video_memory_purge = 1;

const int EGL_GENERATE_RESET_ON_VIDEO_MEMORY_PURGE_NV = 13132;

const int EGL_NV_stream_consumer_gltexture_yuv = 1;

const int EGL_YUV_PLANE0_TEXTURE_UNIT_NV = 13100;

const int EGL_YUV_PLANE1_TEXTURE_UNIT_NV = 13101;

const int EGL_YUV_PLANE2_TEXTURE_UNIT_NV = 13102;

const int EGL_NV_stream_cross_display = 1;

const int EGL_STREAM_CROSS_DISPLAY_NV = 13134;

const int EGL_NV_stream_cross_object = 1;

const int EGL_STREAM_CROSS_OBJECT_NV = 13133;

const int EGL_NV_stream_cross_partition = 1;

const int EGL_STREAM_CROSS_PARTITION_NV = 12863;

const int EGL_NV_stream_cross_process = 1;

const int EGL_STREAM_CROSS_PROCESS_NV = 12869;

const int EGL_NV_stream_cross_system = 1;

const int EGL_STREAM_CROSS_SYSTEM_NV = 13135;

const int EGL_NV_stream_fifo_next = 1;

const int EGL_PENDING_FRAME_NV = 13097;

const int EGL_STREAM_TIME_PENDING_NV = 13098;

const int EGL_NV_stream_fifo_synchronous = 1;

const int EGL_STREAM_FIFO_SYNCHRONOUS_NV = 13110;

const int EGL_NV_stream_flush = 1;

const int EGL_NV_stream_frame_limits = 1;

const int EGL_PRODUCER_MAX_FRAME_HINT_NV = 13111;

const int EGL_CONSUMER_MAX_FRAME_HINT_NV = 13112;

const int EGL_NV_stream_metadata = 1;

const int EGL_MAX_STREAM_METADATA_BLOCKS_NV = 12880;

const int EGL_MAX_STREAM_METADATA_BLOCK_SIZE_NV = 12881;

const int EGL_MAX_STREAM_METADATA_TOTAL_SIZE_NV = 12882;

const int EGL_PRODUCER_METADATA_NV = 12883;

const int EGL_CONSUMER_METADATA_NV = 12884;

const int EGL_PENDING_METADATA_NV = 13096;

const int EGL_METADATA0_SIZE_NV = 12885;

const int EGL_METADATA1_SIZE_NV = 12886;

const int EGL_METADATA2_SIZE_NV = 12887;

const int EGL_METADATA3_SIZE_NV = 12888;

const int EGL_METADATA0_TYPE_NV = 12889;

const int EGL_METADATA1_TYPE_NV = 12890;

const int EGL_METADATA2_TYPE_NV = 12891;

const int EGL_METADATA3_TYPE_NV = 12892;

const int EGL_NV_stream_remote = 1;

const int EGL_STREAM_STATE_INITIALIZING_NV = 12864;

const int EGL_STREAM_TYPE_NV = 12865;

const int EGL_STREAM_PROTOCOL_NV = 12866;

const int EGL_STREAM_ENDPOINT_NV = 12867;

const int EGL_STREAM_LOCAL_NV = 12868;

const int EGL_STREAM_PRODUCER_NV = 12871;

const int EGL_STREAM_CONSUMER_NV = 12872;

const int EGL_STREAM_PROTOCOL_FD_NV = 12870;

const int EGL_NV_stream_reset = 1;

const int EGL_SUPPORT_RESET_NV = 13108;

const int EGL_SUPPORT_REUSE_NV = 13109;

const int EGL_NV_stream_socket = 1;

const int EGL_STREAM_PROTOCOL_SOCKET_NV = 12875;

const int EGL_SOCKET_HANDLE_NV = 12876;

const int EGL_SOCKET_TYPE_NV = 12877;

const int EGL_NV_stream_socket_inet = 1;

const int EGL_SOCKET_TYPE_INET_NV = 12879;

const int EGL_NV_stream_socket_unix = 1;

const int EGL_SOCKET_TYPE_UNIX_NV = 12878;

const int EGL_NV_stream_sync = 1;

const int EGL_SYNC_NEW_FRAME_NV = 12831;

const int EGL_NV_sync = 1;

const int EGL_NV_system_time = 1;

const int EGL_TIZEN_image_native_buffer = 1;

const int EGL_NATIVE_BUFFER_TIZEN = 12960;

const int EGL_TIZEN_image_native_surface = 1;

const int EGL_NATIVE_SURFACE_TIZEN = 12961;

const int EGL_ANGLE_robust_resource_initialization = 1;

const int EGL_ROBUST_RESOURCE_INITIALIZATION_ANGLE = 13395;

const int EGL_ANGLE_keyed_mutex = 1;

const int EGL_DXGI_KEYED_MUTEX_ANGLE = 13218;

const int EGL_ANGLE_d3d_texture_client_buffer = 1;

const int EGL_D3D_TEXTURE_ANGLE = 13219;

const int EGL_ANGLE_software_display = 1;

const int EGL_ANGLE_direct3d_display = 1;

const int EGL_ANGLE_direct_composition = 1;

const int EGL_DIRECT_COMPOSITION_ANGLE = 13221;

const int EGL_ANGLE_platform_angle = 1;

const int EGL_PLATFORM_ANGLE_ANGLE = 12802;

const int EGL_PLATFORM_ANGLE_TYPE_ANGLE = 12803;

const int EGL_PLATFORM_ANGLE_MAX_VERSION_MAJOR_ANGLE = 12804;

const int EGL_PLATFORM_ANGLE_MAX_VERSION_MINOR_ANGLE = 12805;

const int EGL_PLATFORM_ANGLE_TYPE_DEFAULT_ANGLE = 12806;

const int EGL_PLATFORM_ANGLE_DEBUG_LAYERS_ENABLED_ANGLE = 13393;

const int EGL_PLATFORM_ANGLE_DEVICE_TYPE_ANGLE = 12809;

const int EGL_PLATFORM_ANGLE_DEVICE_TYPE_HARDWARE_ANGLE = 12810;

const int EGL_PLATFORM_ANGLE_DEVICE_TYPE_NULL_ANGLE = 13406;

const int EGL_ANGLE_platform_angle_d3d = 1;

const int EGL_PLATFORM_ANGLE_TYPE_D3D9_ANGLE = 12807;

const int EGL_PLATFORM_ANGLE_TYPE_D3D11_ANGLE = 12808;

const int EGL_PLATFORM_ANGLE_DEVICE_TYPE_D3D_WARP_ANGLE = 12811;

const int EGL_PLATFORM_ANGLE_DEVICE_TYPE_D3D_REFERENCE_ANGLE = 12812;

const int EGL_PLATFORM_ANGLE_ENABLE_AUTOMATIC_TRIM_ANGLE = 12815;

const int EGL_ANGLE_platform_angle_opengl = 1;

const int EGL_PLATFORM_ANGLE_TYPE_OPENGL_ANGLE = 12813;

const int EGL_PLATFORM_ANGLE_TYPE_OPENGLES_ANGLE = 12814;

const int EGL_PLATFORM_ANGLE_EGL_HANDLE_ANGLE = 13440;

const int EGL_ANGLE_platform_angle_null = 1;

const int EGL_PLATFORM_ANGLE_TYPE_NULL_ANGLE = 13230;

const int EGL_ANGLE_platform_angle_vulkan = 1;

const int EGL_PLATFORM_ANGLE_TYPE_VULKAN_ANGLE = 13392;

const int EGL_ANGLE_platform_angle_context_virtualization = 1;

const int EGL_PLATFORM_ANGLE_CONTEXT_VIRTUALIZATION_ANGLE = 13441;

const int EGL_X11_VISUAL_ID_ANGLE = 13219;

const int EGL_ANGLE_flexible_surface_compatibility = 1;

const int EGL_FLEXIBLE_SURFACE_COMPATIBILITY_SUPPORTED_ANGLE = 13222;

const int EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE = 13223;

const int EGL_SURFACE_ORIENTATION_ANGLE = 13224;

const int EGL_SURFACE_ORIENTATION_INVERT_X_ANGLE = 1;

const int EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE = 2;

const int EGL_EXPERIMENTAL_PRESENT_PATH_ANGLE = 13220;

const int EGL_EXPERIMENTAL_PRESENT_PATH_FAST_ANGLE = 13225;

const int EGL_EXPERIMENTAL_PRESENT_PATH_COPY_ANGLE = 13226;

const int EGL_D3D_TEXTURE_SUBRESOURCE_ID_ANGLE = 13227;

const int EGL_ANGLE_create_context_webgl_compatibility = 1;

const int EGL_CONTEXT_WEBGL_COMPATIBILITY_ANGLE = 13228;

const int EGL_ANGLE_display_texture_share_group = 1;

const int EGL_DISPLAY_TEXTURE_SHARE_GROUP_ANGLE = 13231;

const int EGL_CHROMIUM_create_context_bind_generates_resource = 1;

const int EGL_CONTEXT_BIND_GENERATES_RESOURCE_CHROMIUM = 13229;

const int EGL_ANGLE_create_context_client_arrays = 1;

const int EGL_CONTEXT_CLIENT_ARRAYS_ENABLED_ANGLE = 13394;

const int EGL_ANGLE_device_creation = 1;

const int EGL_ANGLE_program_cache_control = 1;

const int EGL_PROGRAM_CACHE_SIZE_ANGLE = 13397;

const int EGL_PROGRAM_CACHE_KEY_LENGTH_ANGLE = 13398;

const int EGL_PROGRAM_CACHE_RESIZE_ANGLE = 13399;

const int EGL_PROGRAM_CACHE_TRIM_ANGLE = 13400;

const int EGL_CONTEXT_PROGRAM_BINARY_CACHE_ENABLED_ANGLE = 13401;

const int EGL_ANGLE_iosurface_client_buffer = 1;

const int EGL_IOSURFACE_ANGLE = 13396;

const int EGL_IOSURFACE_PLANE_ANGLE = 13402;

const int EGL_TEXTURE_RECTANGLE_ANGLE = 13403;

const int EGL_TEXTURE_TYPE_ANGLE = 13404;

const int EGL_TEXTURE_INTERNAL_FORMAT_ANGLE = 13405;

const int EGL_ANGLE_create_context_extensions_enabled = 1;

const int EGL_EXTENSIONS_ENABLED_ANGLE = 13407;

const int EGL_PLATFORM_ANGLE_PLATFORM_METHODS_ANGLEX = 13442;

typedef _c_eglChooseConfig = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Int32> attrib_list,
  ffi.Pointer<ffi.Pointer<ffi.Void>> configs,
  ffi.Int32 config_size,
  ffi.Pointer<ffi.Int32> num_config,
);

typedef _dart_eglChooseConfig = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Int32> attrib_list,
  ffi.Pointer<ffi.Pointer<ffi.Void>> configs,
  int config_size,
  ffi.Pointer<ffi.Int32> num_config,
);

typedef _c_eglCopyBuffers = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  ffi.Pointer<ffi.Void> target,
);

typedef _dart_eglCopyBuffers = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  ffi.Pointer<ffi.Void> target,
);

typedef _c_eglCreateContext = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 dpy,
  ffi.Int32 config,
  ffi.Int32 share_context,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreateContext = ffi.Pointer<ffi.Void> Function(
  int dpy,
  int config,
  int share_context,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglCreatePbufferSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 dpy,
  ffi.Int32 config,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreatePbufferSurface = ffi.Pointer<ffi.Void> Function(
  int dpy,
  int config,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglCreatePixmapSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> pixmap,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreatePixmapSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> pixmap,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglCreateWindowSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> win,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreateWindowSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> win,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglDestroyContext = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> ctx,
);

typedef _dart_eglDestroyContext = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> ctx,
);

typedef _c_eglDestroySurface = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
);

typedef _dart_eglDestroySurface = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
);

typedef _c_eglGetConfigAttrib = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Int32 attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_eglGetConfigAttrib = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  int attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_eglGetConfigs = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Pointer<ffi.Void>> configs,
  ffi.Int32 config_size,
  ffi.Pointer<ffi.Int32> num_config,
);

typedef _dart_eglGetConfigs = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Pointer<ffi.Void>> configs,
  int config_size,
  ffi.Pointer<ffi.Int32> num_config,
);

typedef _c_eglGetCurrentDisplay = ffi.Pointer<ffi.Void> Function();

typedef _dart_eglGetCurrentDisplay = ffi.Pointer<ffi.Void> Function();

typedef _c_eglGetCurrentSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 readdraw,
);

typedef _dart_eglGetCurrentSurface = ffi.Pointer<ffi.Void> Function(
  int readdraw,
);

typedef _c_eglGetDisplay = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> display_id,
);

typedef _dart_eglGetDisplay = int Function(
  ffi.Pointer<ffi.Void> display_id,
);

typedef _c_eglGetError = ffi.Int32 Function();

typedef _dart_eglGetError = int Function();

typedef __eglMustCastToProperFunctionPointerType = ffi.Void Function();

typedef _c_eglGetProcAddress
    = ffi.Pointer<ffi.NativeFunction<__eglMustCastToProperFunctionPointerType>>
        Function(
  ffi.Pointer<ffi.Int8> procname,
);

typedef _dart_eglGetProcAddress
    = ffi.Pointer<ffi.NativeFunction<__eglMustCastToProperFunctionPointerType>>
        Function(
  ffi.Pointer<ffi.Int8> procname,
);

typedef _c_eglInitialize = ffi.Uint32 Function(
  ffi.Int32 dpy,
  ffi.Pointer<ffi.Int32> major,
  ffi.Pointer<ffi.Int32> minor,
);

typedef _dart_eglInitialize = int Function(
  int dpy,
  ffi.Pointer<ffi.Int32> major,
  ffi.Pointer<ffi.Int32> minor,
);

typedef _c_eglMakeCurrent = ffi.Uint32 Function(
  ffi.Int32 dpy,
  ffi.Int32 draw,
  ffi.Int32 read,
  ffi.Int32 ctx,
);

typedef _dart_eglMakeCurrent = int Function(
  int dpy,
  int draw,
  int read,
  int ctx,
);

typedef _c_eglQueryContext = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> ctx,
  ffi.Int32 attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_eglQueryContext = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> ctx,
  int attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_eglQueryString = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Int32 name,
);

typedef _dart_eglQueryString = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Void> dpy,
  int name,
);

typedef _c_eglQuerySurface = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  ffi.Int32 attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_eglQuerySurface = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  int attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_eglSwapBuffers = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
);

typedef _dart_eglSwapBuffers = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
);

typedef _c_eglTerminate = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
);

typedef _dart_eglTerminate = int Function(
  ffi.Pointer<ffi.Void> dpy,
);

typedef _c_eglWaitGL = ffi.Uint32 Function();

typedef _dart_eglWaitGL = int Function();

typedef _c_eglWaitNative = ffi.Uint32 Function(
  ffi.Int32 engine,
);

typedef _dart_eglWaitNative = int Function(
  int engine,
);

typedef _c_eglBindTexImage = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  ffi.Int32 buffer,
);

typedef _dart_eglBindTexImage = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  int buffer,
);

typedef _c_eglReleaseTexImage = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  ffi.Int32 buffer,
);

typedef _dart_eglReleaseTexImage = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  int buffer,
);

typedef _c_eglSurfaceAttrib = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  ffi.Int32 attribute,
  ffi.Int32 value,
);

typedef _dart_eglSurfaceAttrib = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> surface,
  int attribute,
  int value,
);

typedef _c_eglSwapInterval = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Int32 interval,
);

typedef _dart_eglSwapInterval = int Function(
  ffi.Pointer<ffi.Void> dpy,
  int interval,
);

typedef _c_eglBindAPI = ffi.Uint32 Function(
  ffi.Uint32 api,
);

typedef _dart_eglBindAPI = int Function(
  int api,
);

typedef _c_eglQueryAPI = ffi.Uint32 Function();

typedef _dart_eglQueryAPI = int Function();

typedef _c_eglCreatePbufferFromClientBuffer = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Uint32 buftype,
  ffi.Pointer<ffi.Void> buffer,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreatePbufferFromClientBuffer = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  int buftype,
  ffi.Pointer<ffi.Void> buffer,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglReleaseThread = ffi.Uint32 Function();

typedef _dart_eglReleaseThread = int Function();

typedef _c_eglWaitClient = ffi.Uint32 Function();

typedef _dart_eglWaitClient = int Function();

typedef _c_eglGetCurrentContext = ffi.Pointer<ffi.Void> Function();

typedef _dart_eglGetCurrentContext = ffi.Pointer<ffi.Void> Function();

typedef _c_eglCreateSync = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Uint32 type,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreateSync = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  int type,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglDestroySync = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
);

typedef _dart_eglDestroySync = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
);

typedef _c_eglClientWaitSync = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
  ffi.Int32 flags,
  ffi.Int32 timeout,
);

typedef _dart_eglClientWaitSync = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
  int flags,
  int timeout,
);

typedef _c_eglGetSyncAttrib = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
  ffi.Int32 attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _dart_eglGetSyncAttrib = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
  int attribute,
  ffi.Pointer<ffi.Int32> value,
);

typedef _c_eglCreateImage = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> ctx,
  ffi.Uint32 target,
  ffi.Pointer<ffi.Void> buffer,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreateImage = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> ctx,
  int target,
  ffi.Pointer<ffi.Void> buffer,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglDestroyImage = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> image,
);

typedef _dart_eglDestroyImage = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> image,
);

typedef _c_eglGetPlatformDisplay = ffi.Pointer<ffi.Void> Function(
  ffi.Uint32 platform,
  ffi.Pointer<ffi.Void> native_display,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglGetPlatformDisplay = ffi.Pointer<ffi.Void> Function(
  int platform,
  ffi.Pointer<ffi.Void> native_display,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglCreatePlatformWindowSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> native_window,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreatePlatformWindowSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> native_window,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglCreatePlatformPixmapSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> native_pixmap,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _dart_eglCreatePlatformPixmapSurface = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> config,
  ffi.Pointer<ffi.Void> native_pixmap,
  ffi.Pointer<ffi.Int32> attrib_list,
);

typedef _c_eglWaitSync = ffi.Uint32 Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
  ffi.Int32 flags,
);

typedef _dart_eglWaitSync = int Function(
  ffi.Pointer<ffi.Void> dpy,
  ffi.Pointer<ffi.Void> sync_1,
  int flags,
);

typedef EGLAPIENTRYP = ffi.Pointer<ffi.Void> Function(
  ffi.Int32,
  ffi.Int32,
  ffi.Pointer<ffi.Int32>,
);

typedef EGLint = ffi.Int32 Function(
  ffi.Pointer<ffi.NativeFunction<EGLAPIENTRYP>>,
);

typedef _typedefC_1 = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);
