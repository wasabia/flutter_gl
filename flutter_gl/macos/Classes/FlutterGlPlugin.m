#import "FlutterGlPlugin.h"
#if __has_include(<flutter_gl/flutter_gl-Swift.h>)
#import <flutter_gl/flutter_gl-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_gl-Swift.h"
#endif


@implementation FlutterGlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterGlPlugin registerWithRegistrar:registrar];
}
@end
