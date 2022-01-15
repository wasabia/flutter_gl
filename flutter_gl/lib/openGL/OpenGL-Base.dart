class OpenGLBase {
  int get defaultFrameBuffer => 0;
  int get defaultTexture => 0;
  dynamic _gl;

  dynamic element;

  dynamic get gl => _gl;

  OpenGLBase(Map<String, dynamic> options) {}

  void initOpenGL(int width, int height, bool bool, List<int> egls) {}

  void glFlush() {}

  void dispose() {}

  void makeCurrent(List<int> egls) {}
}
