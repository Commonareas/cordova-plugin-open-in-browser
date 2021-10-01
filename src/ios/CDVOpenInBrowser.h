#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface OpenInBrowser : CDVPlugin
{}

+ (NSString*)cordovaVersion;

- (void)open:(CDVInvokedUrlCommand*)command;

@end