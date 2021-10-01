#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVOpenInBrowser: CDVPlugin
{}

//+ (NSString*)cordovaVersion;

- (void)open:(CDVInvokedUrlCommand*)command;

@end
