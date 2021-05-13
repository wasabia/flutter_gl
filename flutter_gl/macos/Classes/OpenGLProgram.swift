
import Flutter

import OpenGLES.ES3

// 单例
public class OpenGLProgram {
  

  init() {
    
  }

  
  
  func getProgram() -> GLuint {
    
    var vertex_shader = """
    #version 300 es
    precision mediump float;

    layout (location = 0) in vec4 Position;
    layout (location = 1) in vec2 TextureCoords;
    out vec2 TextureCoordsVarying;

    uniform mat4 matrix;

    void main (void) {
        gl_Position = matrix * Position;
        TextureCoordsVarying = TextureCoords;
    }

    """;
    
    var fragment_shader = """
    #version 300 es
    precision mediump float;

    uniform sampler2D Texture0;
    in vec2 TextureCoordsVarying;

    out vec4 fragColor;

    void main (void) {
        vec4 mask = texture(Texture0, TextureCoordsVarying);
        fragColor = vec4(mask.rgb, mask.a);
    }
    """;
    
    return compileShaders(vertex_shader: vertex_shader, fragment_shader: fragment_shader);
  }

  
  func compileShaders(vertex_shader: String, fragment_shader: String) -> GLuint {

    let vertexShader = compileShader(shader: vertex_shader, shaderType: GLenum(GL_VERTEX_SHADER))
    let fragmentShader = compileShader(shader: fragment_shader, shaderType: GLenum(GL_FRAGMENT_SHADER))
    
    let programHandle = glCreateProgram()
    

    glAttachShader(programHandle, vertexShader)
    glAttachShader(programHandle, fragmentShader)
    glLinkProgram(programHandle)
    
    var linkSuccess = GL_FALSE
    glGetProgramiv(programHandle, GLenum(GL_LINK_STATUS), &linkSuccess)
    if linkSuccess == GL_FALSE {
//      let bufferSize = 256
//      let infoLog = UnsafeMutablePointer<GLchar>.allocate(capacity: bufferSize)
//      glGetProgramInfoLog(programHandle, GLsizei(bufferSize), nil, infoLog)
//      let msg = String(cString: infoLog)
//      print(msg)
      
      var shaderLogLength: GLint = 0
      glGetProgramiv(GLuint(programHandle), GLenum(GL_INFO_LOG_LENGTH), &shaderLogLength)
      
      let shaderLog = UnsafeMutablePointer<GLchar>.allocate(capacity: Int(shaderLogLength))
      
      glGetProgramInfoLog(GLuint(programHandle), shaderLogLength, nil, shaderLog)
      
      let shaderLogString = NSString(utf8String: shaderLog)!
      
      print("compileShaders Failure ERROR: \(shaderLogString)")
      
      
//      exit(1)
    }
    
    return programHandle;
  }
  
  func compileShader(shader: String, shaderType: GLenum) -> GLuint {
    return compileShaderCode(shaderCode: shader, type: shaderType);
  }

  func compileShaderCode(shaderCode: String, type: GLenum) -> GLuint {
    let shaderHandle = glCreateShader(type)
    var shaderStringUTF8 = (shaderCode as NSString).utf8String
    var shaderStringLength: GLint = GLint((shaderCode as NSString).length)
    
    glShaderSource(shaderHandle, 1, &shaderStringUTF8, &shaderStringLength)
    glCompileShader(shaderHandle)
    
    var compileSuccess: GLint = GL_FALSE
    glGetShaderiv(shaderHandle, GLenum(GL_COMPILE_STATUS), &compileSuccess)
    if compileSuccess == GL_FALSE {
      var shaderLogLength: GLint = 0
      glGetShaderiv(GLuint(shaderHandle), GLenum(GL_INFO_LOG_LENGTH), &shaderLogLength)
      
      let shaderLog = UnsafeMutablePointer<GLchar>.allocate(capacity: Int(shaderLogLength))
      
      glGetShaderInfoLog(GLuint(shaderHandle), shaderLogLength, nil, shaderLog)
      
      let shaderLogString = NSString(utf8String: shaderLog)!
      
      print("compileShaderCode Failure ERROR: \(shaderLogString)")

    }
    
    return shaderHandle
    
  }
  
  func compileShaderCode2(shaderCode: String, type: GLenum) -> GLuint {
    let shaderHandle = glCreateShader(type)
//    var shaderStringUTF8 = (shaderCode as NSString).utf8String
    var shaderStringUTF8 = shaderCode.cString(using: .utf8);
    var shaderSource = UnsafePointer<GLchar>(shaderStringUTF8);
    
//    var shaderStringLength: GLint = GLint((shaderCode as NSString).length)
    var shaderStringLength: GLint = GLint((shaderCode as NSString).length);
    
    
    glShaderSource(shaderHandle, 1, &shaderSource, &shaderStringLength)
    glCompileShader(shaderHandle)
    
    var compileSuccess: GLint = GL_FALSE
    glGetShaderiv(shaderHandle, GLenum(GL_COMPILE_STATUS), &compileSuccess)
    if compileSuccess == GL_FALSE {
      let bufferSize = 256
      let infoLog = UnsafeMutablePointer<GLchar>.allocate(capacity: bufferSize)
      glGetShaderInfoLog(shaderHandle, GLsizei(bufferSize), nil, infoLog)
      let msgString = String(cString: infoLog)
      //      infoLog.deallocate(capacity: bufferSize)
      infoLog.deallocate()
      print(msgString)
      
      exit(1)
    }
    
    return shaderHandle
    
  }
  
  
  
  func dispose() {
    // TODO
  }
  
}
