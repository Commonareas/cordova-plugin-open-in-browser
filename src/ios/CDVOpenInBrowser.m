#import <Cordova/CDV.h>
#import "CDVOpenInBrowser.h"

@implementation CDVOpenInBrowser

- (void)open:(CDVInvokedUrlCommand*)commands
{
    NSString* url = [commands argumentAtIndex:0];
    @try {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
    }
    @catch (NSException *exception) {
        NSLog(@"CDVOpenInBrowser open url");
        NSLog(@"%@", url);
        NSLog(@"%@", exception.reason);
    }
}

@end
