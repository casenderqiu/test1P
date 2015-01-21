//
//  TestHTTPRequest.h
//  test1P
//
//  Created by Deanqiu on 14/12/30.
//  Copyright (c) 2014年 Deanqiu. All rights reserved.
//

#import <Foundation/Foundation.h>
//网络请求数据类型
typedef enum{
    POST_JSON,
    POST_STRING
}POST_TYPE;

//系统返回参数
typedef enum{
    CODE_SUCCESS = 0, //操作成功
    CODE_FAILED = -1, //系统内部错误
    CODE_KICKED_OUT = -4,  //为了您的账户安全，请重新登录
    CODE_WRONG_USER = -10   //用户名或密码错误
}SYSTEM_CODE;

@protocol TestHTTPRequestDelegate;

@interface TestHTTPRequest : NSObject
@property (nonatomic) id<TestHTTPRequestDelegate> delegate;
@property (nonatomic, assign) NSInteger requestTag;
@property (retain) NSDictionary *userInfo;
@property (nonatomic, strong) MKNetworkEngine *engine;


@end
