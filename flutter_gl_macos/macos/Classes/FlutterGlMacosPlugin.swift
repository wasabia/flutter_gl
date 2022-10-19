import Cocoa
import FlutterMacOS

public class FlutterGlMacosPlugin: NSObject, FlutterPlugin {

  var renders: [Int64: CustomRender];

  var registry: FlutterTextureRegistry;
  var textureId: Int64?;
  static var messenger : FlutterBinaryMessenger? = nil;
  
  init(textureRegistry: FlutterTextureRegistry) {
    self.renders = [Int64: CustomRender]();
    self.registry = textureRegistry;
  }

  public static func register(with registrar: FlutterPluginRegistrar) {
    let _messenger = registrar.messenger;
    messenger = _messenger;
    
    let channel = FlutterMethodChannel(name: "flutter_gl", binaryMessenger: messenger as! FlutterBinaryMessenger)
    let instance = FlutterGlMacosPlugin(textureRegistry: registrar.textures)
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    case "initialize":
      guard let args = call.arguments as? [String : Any] else {
        result(" arguments error.... ")
        return
      }
      
      let options = args["options"] as! Dictionary<String, Any>;
      let renderToVideo = args["renderToVideo"] as! Bool;
      
      let render = CustomRender(
        options: options,
        renderToVideo: renderToVideo,
        onNewFrame: {() -> Void in
//          print(" self.registry.textureFrameAvailable(self.textureId!): \(self.textureId) ")
          self.registry.textureFrameAvailable(self.textureId!)
        }
      );
      
      self.textureId = Int64( self.registry.register(render) );
      
      
      self.renders[textureId!] = render;
      
      
      
      let _info = [
        "textureId": textureId
      ];
      
      result(_info);
   
    case "dispose":
      guard let args = call.arguments as? [String : Any] else {
        result(" arguments error.... ")
        return
      }
      let textureId = args["textureId"] as? Int64;
      
      if(textureId != nil) {
        registry.unregisterTexture(textureId!);
        let render = self.renders[textureId!];
         render?.dispose();
        self.renders.removeValue(forKey: textureId!);
      }
     
      
      result(nil);
    
    case "getEgl":
      guard let args = call.arguments as? [String : Any] else {
        result(" arguments error.... ")
        return
      }

      let textureId = args["textureId"] as? Int64;
        let render = self.renders[textureId!];

        let eglResult = render?.getEgl();

      result(eglResult);
    case "updateTexture":
      guard let args = call.arguments as? [String : Any] else {
        result(" arguments error.... ")
        return
      }

      let textureId = args["textureId"] as? Int64;
      let sourceTexture = args["sourceTexture"] as? Int64;

      let render = self.renders[textureId!];

      let resp = render?.updateTexture(sourceTexture: sourceTexture!);

      result(resp);  
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
