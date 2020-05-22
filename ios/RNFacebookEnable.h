
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RNFacebookEnable : NSObject <RCTBridgeModule>

#define USER_DEFAULTS_KEY @"fb_enabled"

@end
  
