
#import "RNFacebookEnable.h"

@implementation RNFacebookEnable

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setEnabler:(BOOL)value)
{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:USER_DEFAULTS_KEY];
}

RCT_EXPORT_METHOD(isEnabled:(RCTResponseSenderBlock)callback)
{
    BOOL result = [[NSUserDefaults standardUserDefaults] boolForKey:USER_DEFAULTS_KEY];
    callback(@[[NSNull null], [NSNumber numberWithBool:result]]);
}

RCT_EXPORT_METHOD(hasValue:(RCTResponseSenderBlock)callback)
{
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:USER_DEFAULTS_KEY];
    NSNumber *result = [NSNumber numberWithBool:value != nil];
    callback(@[[NSNull null], result]);
}

@end
  
