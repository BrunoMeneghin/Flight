//
//  AppDelegate.m
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"


@interface AppDelegate ()

// private
@property(nonatomic, strong) ViewController *rootViewController;

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<NSString *, id> *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = [ViewController new];
    
    self.rootViewController = [ViewController new];
    self.rootViewController.view.backgroundColor = UIColor.cyanColor; 
    
    self.window.rootViewController = self.rootViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

