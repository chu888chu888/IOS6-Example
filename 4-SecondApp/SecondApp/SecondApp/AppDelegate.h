//
//  AppDelegate.h
//  SecondApp
//
//  Created by chuguangming on 14-4-28.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubView.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITextFieldDelegate>
{
    UIView *view1;
    UIView *view2;
    SubView *subView;
    
}
@property (strong, nonatomic) UIWindow *window;
@property (retain,nonatomic) UIView *view1;
@property (retain,nonatomic) UIView *view2;
@property (retain,nonatomic) UIView *subView;
@end
