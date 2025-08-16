#import "AppDelegate.h"
#import <Flutter/Flutter.h>
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
    NSArray *arr = @[@"UIApplication", @"AppDelegate", @"Generated"];
    NSLog(@"current %@", arr[4]);
    
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end 
