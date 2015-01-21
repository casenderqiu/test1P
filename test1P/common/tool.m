//
//  tool.m
//  test1P
//
//  Created by Deanqiu on 14/12/11.
//  Copyright (c) 2014年 Deanqiu. All rights reserved.
//

#import "tool.h"
UIAlertView *alert;

@implementation tool

+(void)showAlert:(NSString *)text{
    if (alert != nil && ![alert isHidden]) {
        return;
    }
    [alert dismissWithClickedButtonIndex:0 animated:YES];
    alert = [[UIAlertView alloc] initWithTitle:nil message:text delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    
    [alert performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(dismissAlertView) userInfo:nil repeats:NO];
}

+(void)dismissAlertView{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
    alert = nil;
}

@end
