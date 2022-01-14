#include "include/flutter_gl_windows/flutter_gl_windows_plugin.h"

// This must be included before many other Windows headers.
#include <windows.h>

// For getPlatformVersion; remove unless needed for your plugin implementation.
#include <VersionHelpers.h>

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <map>
#include <memory>
#include <sstream>

#include "CustomRender.h"


namespace {

class FlutterGlWindowsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);
  flutter::MethodChannel<flutter::EncodableValue>* channel() const {
    return channel_.get();
  }

  FlutterGlWindowsPlugin(
    std::unique_ptr<flutter::MethodChannel<flutter::EncodableValue>> channel,
    flutter::TextureRegistrar* texture_registrar,
    flutter::PluginRegistrarWindows *registrar);

  // FlutterGlWindowsPlugin();

  // virtual ~FlutterGlWindowsPlugin();

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);

   flutter::TextureRegistrar* texture_registrar_;
   std::unique_ptr<flutter::MethodChannel<flutter::EncodableValue>> channel_;
   std::unordered_map<int64_t, std::unique_ptr<CustomRender>> renders_;
   // The registrar for this plugin, for accessing the window.
    flutter::PluginRegistrarWindows *registrar_;
};

// static
void FlutterGlWindowsPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows *registrar) {

  auto plugin = std::make_unique<FlutterGlWindowsPlugin>(
    std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "flutter_gl",
          &flutter::StandardMethodCodec::GetInstance()), 
          registrar->texture_registrar(),
          registrar
  );

  // auto plugin = std::make_unique<FlutterGlWindowsPlugin>();

  plugin->channel()->SetMethodCallHandler(
    [plugin_pointer = plugin.get()](const auto &call, auto result) {
      plugin_pointer->HandleMethodCall(call, std::move(result));
    });

  registrar->AddPlugin(std::move(plugin));
}

FlutterGlWindowsPlugin::FlutterGlWindowsPlugin(
    std::unique_ptr<flutter::MethodChannel<flutter::EncodableValue>> channel,
    flutter::TextureRegistrar* texture_registrar,
    flutter::PluginRegistrarWindows *registrar) : channel_(std::move(channel)), texture_registrar_(texture_registrar), registrar_(registrar) {}

// FlutterGlWindowsPlugin::FlutterGlWindowsPlugin() {}


// FlutterGlWindowsPlugin::~FlutterGlWindowsPlugin() {}

void FlutterGlWindowsPlugin::HandleMethodCall(
    const flutter::MethodCall<flutter::EncodableValue> &method_call,
    std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
  if (method_call.method_name().compare("getPlatformVersion") == 0) {
    std::ostringstream version_stream;
    version_stream << "Windows ";
    if (IsWindows10OrGreater()) {
      version_stream << "10+";
    } else if (IsWindows8OrGreater()) {
      version_stream << "8";
    } else if (IsWindows7OrGreater()) {
      version_stream << "7";
    }
    result->Success(flutter::EncodableValue(version_stream.str()));

  } else if(method_call.method_name().compare("initialize") == 0) {
    flutter::EncodableMap arguments = std::get<flutter::EncodableMap>(*method_call.arguments());
    flutter::EncodableMap options = std::get<flutter::EncodableMap>(arguments[flutter::EncodableValue("options")]);
    
    int width = std::get<int>(options[flutter::EncodableValue("width")]);
    int height = std::get<int>(options[flutter::EncodableValue("height")]);

    HWND m_hWnd = registrar_->GetView()->GetNativeWindow();
    
    auto customRender = std::make_unique<CustomRender>(width, height, texture_registrar_, m_hWnd);

    int64_t textureID = customRender->texture_id();

    auto [it, added] = renders_.try_emplace( textureID, std::move(customRender) );

 
    auto data = flutter::EncodableMap{
      {flutter::EncodableValue("textureId"), textureID}
    };

    result->Success( data );

  } else if(method_call.method_name().compare("getEgl") == 0) {
    flutter::EncodableMap arguments = std::get<flutter::EncodableMap>(*method_call.arguments());
    int64_t textureId = std::get<int64_t>(arguments[flutter::EncodableValue("textureId")]);

    auto render = renders_.find(textureId);

    if(render != renders_.end()) {
     
    }

    flutter::EncodableList eglResult;
    eglResult = render->second->getEgls();

    result->Success( eglResult );
  } else if(method_call.method_name().compare("updateTexture") == 0) {
    flutter::EncodableMap arguments = std::get<flutter::EncodableMap>(*method_call.arguments());

    int64_t textureId = std::get<int64_t>(arguments[flutter::EncodableValue("textureId")]);
    int sourceTexture = std::get<int>(arguments[flutter::EncodableValue("sourceTexture")]);


    auto render = renders_.find(textureId);

    if(render != renders_.end()) {
     
    }

    int data = render->second->updateTexture( sourceTexture );

    result->Success( flutter::EncodableValue( data ) ); 
  } else {
    result->NotImplemented();
  }
}

}  // namespace

void FlutterGlWindowsPluginRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  FlutterGlWindowsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}


extern "C" {
  __declspec( dllexport ) int64_t makeCurrent(int64_t window) {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    
    glfwWindowHint(GLFW_VISIBLE, GLFW_FALSE);
    glfwMakeContextCurrent( (GLFWwindow*)window );
    return 1;
  }
}