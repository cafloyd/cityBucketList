import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  GMSServices.provideAPIKey("AIzaSyCzibZ_I7Xct85JO5C_RhAE1M33YXR59WA")
  GMSPlacesClient.provideAPIKey("AIzaSyCzibZ_I7Xct85JO5C_RhAE1M33YXR59WA")
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}
