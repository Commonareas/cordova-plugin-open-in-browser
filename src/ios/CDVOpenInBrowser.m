#import <Cordova/CDV.h>
#import "CDVOpenInBrowser.h"

- (void)open:(CDVInvokedUrlCommand*)command
{
    NSDictionary* deviceProperties = [self deviceProperties];
    static NSInteger _parallelUploadsLimit = 1;

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:_parallelUploadsLimit];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}