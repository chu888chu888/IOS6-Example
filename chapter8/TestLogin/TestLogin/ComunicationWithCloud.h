//
//  ComunicationWithCloud.h
//  TestLogin
//
//  Created by skyler on 12-12-17.
//  Copyright (c) 2012年 skyler. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>



#define CLOUDURL @"http://192.168.200.2:9080/IDOC/WebService"

//#define CLOUDURL @"http://www.huanbaoyun.com:9080/IDOC/WebService"
typedef void (^HandleResponseBlock)(NSURLResponse *response, NSData *data, NSError *error);

@interface ComunicationWithCloud : NSObject

//测试用户是否已经存在
+(BOOL) TestUser: (NSString*) userName andPassWord: (NSString*)password andBlock: (HandleResponseBlock) block;
//添加用户
+(void) addUser: (NSString*) username andPassWord: (NSString*)password andNewUsername:(NSString*) newusername andNewPassword:(NSString*)newpassword andBlock: (HandleResponseBlock) aBlock;
//
@end
