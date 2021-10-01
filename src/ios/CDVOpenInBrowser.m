#import <Cordova/CDV.h>
#import "CDVOpenInBrowser.h"

@implementation CDVOpenInBrowser

- (void)open:(CDVInvokedUrlCommand*)commands
{
    // NSDictionary* deviceProperties = [self deviceProperties];
    // static NSInteger _parallelUploadsLimit = 1;

    // CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:_parallelUploadsLimit];

    // [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    NSLog(@"CDVOpenInBrowser open is been called");
    NSLog(@"%@", commands);
}
@end
