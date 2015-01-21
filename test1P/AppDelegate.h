//
//  AppDelegate.h
//  test1P
//
//  Created by Deanqiu on 14/12/11.
//  Copyright (c) 2014年 Deanqiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *_guideWindow;
    UIWindow *_window;
    UINavigationController *_navigationController;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIWindow *guideWindow;
@property (strong, nonatomic) UINavigationController *navigationController;

@end

