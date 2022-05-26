import Flutter
import UIKit

public class SwiftDecoratedTextfieldsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "decorated_textfields", binaryMessenger: registrar.messenger())
    let instance = SwiftDecoratedTextfieldsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
