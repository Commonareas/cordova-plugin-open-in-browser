#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVOpenInBrowser: CDVPlugin
{}


- (void)open:(CDVInvokedUrlCommand*)command;

@end
