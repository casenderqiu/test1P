//
//  tool.h
//  test1P
//
//  Created by Deanqiu on 14/12/11.
//  Copyright (c) 2014年 Deanqiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 30200

#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define UI_IOS_WINDOW_WIDTH (isPad?1024:320)
#define UI_IOS_WINDOW_HEIGHT (isPad?768:([[UIScreen mainScreen] bounds].size.height))

#endif
#define UIColorMakeRGBA(nRed, nGreen, nBlue, nAlpha) [UIColor colorWithRed:(nRed)/255.0f \
green:(nGreen)/255.0f \
blue:(nBlue)/255.0f \
alpha:nAlpha]

#define UIColorMakeRGB(nRed, nGreen, nBlue) UIColorMakeRGBA(nRed, nGreen, nBlue, 1.0f)

#define CURR_IOS_DEVICE_VERSION [[[UIDevice currentDevice] systemVersion] floatValue] //获取当前系统版本号

#define version

@interface tool : NSObject

+(void)showAlert:(NSString *)text;

+(void)dismissAlertView;

@end
