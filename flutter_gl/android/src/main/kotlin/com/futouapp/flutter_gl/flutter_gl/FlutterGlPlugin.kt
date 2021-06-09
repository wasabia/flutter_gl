package com.futouapp.flutter_gl.flutter_gl

import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.view.TextureRegistry

/** FlutterGlPlugin */
class FlutterGlPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  var renders = mutableMapOf<Int, CustomRender>();


  companion object {
    lateinit var messenger: BinaryMessenger;
    lateinit var context: Context;
    lateinit var registry: TextureRegistry;
    lateinit var assets: FlutterPlugin.FlutterAssets;
  }

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_gl")
    channel.setMethodCallHandler(this)


    messenger = flutterPluginBinding.binaryMessenger;
    context = flutterPluginBinding.applicationContext;
    registry = flutterPluginBinding.textureRegistry;
    assets = flutterPluginBinding.flutterAssets;
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "initialize") {
      val args = call.arguments as Map<String, Any>;
      var textureID = args["textureID"] as Int?;

      var options = args["options"] as Map<String, Any>;

      val renderToVideo = args["renderToVideo"] as Boolean;


      if(textureID != null) {
        println("already initialized ........... ")
      }

      val entry = registry.createSurfaceTexture();
      val surfaceTexture = entry.surfaceTexture();
      textureID = entry.id().toInt();

      var render = CustomRender(options, surfaceTexture, textureID, renderToVideo);
      renders[textureID] = render;

      println("initialize textureID: ${textureID}  render.screenScale: ${render.screenScale} ")

      var resp = mapOf(
        "textureId" to textureID,
        "dpr" to render.screenScale
      )

      result.success(resp);

    } else if(call.method == "getEgl") {
      val args = call.arguments as Map<String, Any>;
      val textureId = args["textureId"] as Int;
      var render = this.renders[textureId];

      var eglResult = render?.getEgl();

      result.success(eglResult);
    } else if(call.method == "updateTexture") {
      val args = call.arguments as Map<String, Any>;
      val textureId = args["textureId"] as Int;
      val sourceTexture = args["sourceTexture"] as Int;

      val render = this.renders[textureId];

      val resp = render!!.updateTexture(sourceTexture);

      result.success(resp);
    } else if(call.method == "initVideo") {
      val args = call.arguments as Map<String, Any>;
      val textureId = args["textureId"] as Int;

      val render = this.renders[textureId];

      val resp = render!!.initVideo(args);

      result.success(resp);
    } else if(call.method == "getFrameFileAt") {
      val args = call.arguments as Map<String, Any>;
      val textureId = args["textureId"] as Int;
      val filePath = args["filePath"] as String;
      val framePath = args["framePath"] as String;
      val time = args["time"] as Double;

      val render = this.renders[textureId];
      render?.getFrameFileAt(filePath, time, framePath);
      result.success(null);
    } else if(call.method == "getVideoTextureAt") {
      val args = call.arguments as Map<String, Any>;
      val textureId = args["textureId"] as Int;
      val filePath = args["filePath"] as String;
      val time = args["time"] as Double;

      val render = this.renders[textureId];
      var _videoTexture = render?.getVideoTextureAt(filePath, time);
      result.success(_videoTexture);
    } else if(call.method == "dispose") {
      val args = call.arguments as Map<String, Any>;
      val textureId = args["textureId"] as? Int;

      if(textureId != null) {
        val render = this.renders[textureId];
        render?.dispose();
        this.renders.remove(textureId);
      }

      result.success(null);
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
