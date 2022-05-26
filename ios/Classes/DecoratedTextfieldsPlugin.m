#import "DecoratedTextfieldsPlugin.h"
#if __has_include(<decorated_textfields/decorated_textfields-Swift.h>)
#import <decorated_textfields/decorated_textfields-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "decorated_textfields-Swift.h"
#endif

@implementation DecoratedTextfieldsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDecoratedTextfieldsPlugin registerWithRegistrar:registrar];
}
@end
