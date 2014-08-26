//
//  AppDelegate.m
//  SampleApp
//
//  Created by Lukas Petr on 24/08/14.
//  Copyright (c) 2014 Glimsoft. All rights reserved.
//

#import "AppDelegate.h"
#import "GSTouchesShowingWindow.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (GSTouchesShowingWindow *)window {
    static GSTouchesShowingWindow *window = nil;
    if (!window) {
        window = [[GSTouchesShowingWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    }
    return window;
}

@end
