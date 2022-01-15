import 'OpenGL-Base.dart';
import 'OpenGL-ES.dart' if (dart.library.js) 'OpenGL-Web.dart';

class OpenGL {
  OpenGLBase? _instance;

  OpenGLBase init(Map<String, dynamic> options) {
    _instance ??= getInstance(options);
    return _instance!;
  }

  dispose() {
    _instance?.dispose();
  }
}
