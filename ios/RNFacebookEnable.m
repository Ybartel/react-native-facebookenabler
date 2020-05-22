
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

RCT_REMAP_METHOD(isEnabled,
                 isEnabledWithResolver:(RCTPromiseResolveBlock)resolve
                 reject:(RCTPromiseRejectBlock)reject)
{
    BOOL result = [[NSUserDefaults standardUserDefaults] boolForKey:USER_DEFAULTS_KEY];
    resolve([NSNumber numberWithBool:result]);
}

RCT_REMAP_METHOD(hasValue,
                 hasValueWithResolver:(RCTPromiseResolveBlock)resolve
                 reject:(RCTPromiseRejectBlock)reject)
{
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:USER_DEFAULTS_KEY];
    resolve([NSNumber numberWithBool:value != nil]);
}

@end
  