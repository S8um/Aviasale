//
//  AppDelegate.m
//  Aviasale
//
//  Created by admin on 28.02.2021.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CGRect windowFrame = [UIScreen mainScreen].bounds;
    self.window = [[UIWindow alloc] initWithFrame:windowFrame];
    
//    FirstViewController *firstViewController = [FirstViewController new];
//    SecondViewController *secondViewController = [SecondViewController new];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[FirstViewController new]];
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
