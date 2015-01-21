//
//  TestLoginControl.m
//  test1P
//
//  Created by Deanqiu on 14/12/11.
//  Copyright (c) 2014年 Deanqiu. All rights reserved.
//

#import "TestLoginControl.h"

@interface TestLoginControl ()

@end

@implementation TestLoginControl

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = UIColorMakeRGB(241, 67, 52);
    [tool showAlert:@"testing,testing!"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
