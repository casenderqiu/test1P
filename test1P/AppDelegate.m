//
//  AppDelegate.m
//  test1P
//
//  Created by Deanqiu on 14/12/11.
//  Copyright (c) 2014年 Deanqiu. All rights reserved.
//

#import "AppDelegate.h"
#import "TestLoginControl.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, UI_IOS_WINDOW_WIDTH, UI_IOS_WINDOW_HEIGHT)];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        //设置tabbar选中时图片图片和文字颜色
        self.window.tintColor = UIColorMakeRGB(241, 67, 52);
        [[UIApplication sharedApplication] setStatusBarHidden:NO];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    }
    else
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:YES];
    }
    
    [UIApplication sharedApplication].applicationSupportsShakeToEdit = YES;
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    TestLoginControl *loginVC = [[TestLoginControl alloc] init];
    _navigationController = [[UINavigationController alloc] initWithRootViewController:loginVC];
    
//    loginVC.navigationController.navigationBarHidden = YES;
    if ([_window respondsToSelector:@selector(setRootViewController:)]) {
        [self.window setRootViewController:_navigationController];
    } else {
        [self.window addSubview:_navigationController.view];
    }
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
