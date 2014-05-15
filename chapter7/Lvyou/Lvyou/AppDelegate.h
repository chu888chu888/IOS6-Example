//
//  AppDelegate.h
//  Lvyou
//
//  Created by skyler on 12-12-18.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
