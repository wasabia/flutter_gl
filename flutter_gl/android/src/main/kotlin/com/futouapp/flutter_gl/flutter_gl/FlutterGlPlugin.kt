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
      var options = args["options"] as Map<String, Any>;

      val entry = registry.createSurfaceTexture();
      val surfaceTexture = entry.surfaceTexture();
      var textureID = entry.id().toInt();

      var render = CustomRender(options, surfaceTexture, textureID);
      renders[textureID] = render;
      var resp = mapOf(
        "textureId" to textureID
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
