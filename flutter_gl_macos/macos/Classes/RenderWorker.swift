import FlutterMacOS
import AVFoundation
import GLKit
import OpenGL

struct SenceVertex {
  var positionCoord: (CFloat, CFloat, CFloat); // (X, Y, Z)
  var textureCoord: (CFloat, CFloat) ; // (U, V)
};

//三角形的三个顶点
var vertices = [SenceVertex]();

enum VertexAttrs: GLuint {
  case position = 0
  case texture = 1
}


public class RenderWorker: NSObject {
  

  var vertexBuffer: GLuint = 0;
  
  var vertexBuffer4FBO: GLuint = 0;
  

  var openGLProgram: OpenGLProgram;
  var program: GLuint?;
  


  
  var disposed = false;
  
  override init() {
    self.openGLProgram = OpenGLProgram();
    super.init();
  }
  
  func setup() {
    setupVBO();
    setupVBO4FBO();
  }
  
  
  
  
  // 不可修改 仅供renderTargetFrameBuffer 最后一步显示画面  倒置画面使用 与android 不同
  // 安卓 与ios 纹理 坐标有差异？
  func renderTexture(texture: GLuint, matrix: GLKMatrix4?, isFBO: Bool = true) {
    var _vertexBuffer: GLuint;
    
    if(isFBO) {
      _vertexBuffer = vertexBuffer4FBO;
    } else {
      _vertexBuffer = vertexBuffer;
    }
    
    drawTexture(texture: texture, vertexBuffer: _vertexBuffer, matrix: matrix);
  }
  
  
  func drawTexture(texture: GLuint, vertexBuffer: GLuint, matrix: GLKMatrix4?) {
   
    checkGlError(op: "drawTexture 01");
    
    var _program = getProgram();
    glUseProgram(_program)
    
    checkGlError(op: "drawTexture 02");
    
    var _positionSlot = GLuint(glGetAttribLocation(_program, "Position"))
    var _textureSlot = GLuint(glGetAttribLocation(_program, "TextureCoords"))
    
    
    var _texture0Uniform = GLuint(glGetUniformLocation(_program, "Texture0"))
    
    // 将纹理 ID 传给着色器程序
    // 是否是
    glActiveTexture(GLenum(GL_TEXTURE8));
    glBindTexture(GLenum(GL_TEXTURE_2D), texture);
    glUniform1i(GLint(_texture0Uniform), 8);
    // 将 textureSlot 赋值为 0，而 0 与 GL_TEXTURE0 对应，这里如果写 1，上面也要改成 GL_TEXTURE1
    
    checkGlError(op: "drawTexture 03");
    
    var _matrix = GLKMatrix4Make(
      1.0, 0.0, 0.0, 0.0,
      0.0, 1.0, 0.0, 0.0,
      0.0, 0.0, 1.0, 0.0,
      0.0, 0.0, 0.0, 1.0
    );
    
    if(matrix != nil) {
      _matrix = matrix!;
    }
    let _matrixUniform = GLuint(glGetUniformLocation(_program, "matrix"))
    withUnsafePointer(to: &_matrix.m) {
      $0.withMemoryRebound(to: GLfloat.self, capacity: 16) {
        glUniformMatrix4fv(GLint(_matrixUniform), 1, GLboolean(GL_FALSE), $0)
      }
    }
    
    checkGlError(op: "drawTexture 04");
    
    
    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer);
    
    checkGlError(op: "drawTexture 041");
    
    let step: GLsizei = GLsizei(MemoryLayout<CFloat>.size * 5);
 
    var vao = GLuint(0);
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);
    
    
    
    let positionSlotFirstComponent = UnsafeRawPointer(bitPattern: 0)
    glVertexAttribPointer(_positionSlot, 3, GLenum(GL_FLOAT), GLboolean(GL_FALSE), step, positionSlotFirstComponent);
    checkGlError(op: "drawTexture 042");
    // 设置顶点数据
    glEnableVertexAttribArray(_positionSlot);
    
    checkGlError(op: "drawTexture 05");
    
    // 设置纹理数据
    let textureSlotFirstComponent = UnsafeRawPointer(bitPattern: MemoryLayout<CFloat>.size * 3)
    glVertexAttribPointer(_textureSlot, 2, GLenum(GL_FLOAT), GLboolean(GL_FALSE), step, textureSlotFirstComponent);
    
    glEnableVertexAttribArray(_textureSlot);
    
    
    checkGlError(op: "drawTexture 06");
    
    // 开始绘制
    glDrawArrays(GLenum(GL_TRIANGLE_STRIP), 0, 4);
    
    
    glDeleteVertexArrays(1, &vao);
    
    
    checkGlError(op: "drawTexture 11");
  }
  
  
  func getProgram() -> GLuint {
    
    if(program == nil) {
      program = self.openGLProgram.getProgram();
    }
    
    return program!;
  }
  

  

  
  
  
  func setupVBO() {
    // 创建顶点缓存
    var w = CFloat(1);
    var h = CFloat(1);
    var vertices = [
      SenceVertex(positionCoord: (-w,-h,0), textureCoord: (0,1)), // 左上角
      SenceVertex(positionCoord: (w,-h,0), textureCoord: (1,1)), // 左下角
      SenceVertex(positionCoord: (-w,h,0), textureCoord: (0,0)), // 右上角
      SenceVertex(positionCoord: (w,h,0), textureCoord: (1,0)) // 右下角
    ];
    
    glGenBuffers(1, &vertexBuffer);
    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer);
    let bufferSizeBytes = vertices.count * MemoryLayout<SenceVertex>.size;
    
    glBufferData(GLenum(GL_ARRAY_BUFFER), bufferSizeBytes, vertices, GLenum(GL_STATIC_DRAW));
  }
  
  
  func setupVBO4FBO() {
    var w = CFloat(1);
    var h = CFloat(1);
    
    let vertices = [
      SenceVertex(positionCoord: (-w,-h,0), textureCoord: (0,0)), // 左下角
      SenceVertex(positionCoord: (w,-h,0), textureCoord: (1,0)), // 右下角
      SenceVertex(positionCoord: (-w,h,0), textureCoord: (0,1)), // 左上角
      SenceVertex(positionCoord: (w,h,0), textureCoord: (1,1)) // 右上角
      
    ];
    
    glGenBuffers(1, &vertexBuffer4FBO);
    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer4FBO);
    let bufferSizeBytes = vertices.count * MemoryLayout<SenceVertex>.size;
    
    glBufferData(GLenum(GL_ARRAY_BUFFER), bufferSizeBytes, vertices, GLenum(GL_STATIC_DRAW));
  }
  
  
  //检查每一步操作是否有错误的方法
  func checkGlError(op: String) {
    let error = glGetError();
    if (error != GL_NO_ERROR) {
      print("RenderWorker GL_ERROR", "\(op): glError \(error)")
    }
  }
  
  
  func dispose() {
    self.disposed = true;
  }
  
}
