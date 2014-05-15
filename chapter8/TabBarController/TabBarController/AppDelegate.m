//
//  AppDelegate.m
//  TabBarController
//
//  Created by skyler on 12-11-13.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "cityDataViewController.h"
#import "MeiShiTianDiViewController.h"
#import "MingShenViewController.h"
#import "DiscountDataViewController.h"
#import "GDCell.h"

@implementation AppDelegate
@synthesize window;
@synthesize viewController;
@synthesize tabBarController;   

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    tabBarController=[[UITabBarController alloc]init];
    MeiShiTianDiViewController *Mview=[[MeiShiTianDiViewController alloc]init];
    Mview.title=@"美食天地";
    
    
    //tabBarController=[[UITabBarController alloc]init];
    
    MingShenViewController *Ming=[[MingShenViewController alloc]init];
    
    //Ming.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:0];添加系统图片给标签栏
       Ming.title=@"名胜古迹";
    Ming.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"名胜古迹"image:[UIImage imageNamed:@"01.png"] tag:0];
    
    
    UINavigationController *navController=[[UINavigationController alloc]init];//初始化导航控制器
    UINavigationController *navController2=[[UINavigationController alloc]init];
    UINavigationController *navController3=[[UINavigationController alloc]init];
    
    tabBarController.viewControllers=[NSArray arrayWithObjects:navController,navController2,navController3, nil];
    [navController2 pushViewController:Mview animated:NO];//美食天地
    [navController3 pushViewController:Ming animated:NO];//名胜古迹
    
    

    //[Mview release];
    
    UIBarButtonItem *backButton=[[UIBarButtonItem alloc]
                                 initWithTitle:@"所有城市" style:UIBarButtonItemStyleBordered
                                 target:nil action:nil];
    
    ViewController *cityViewController=[[ViewController alloc]init];//第一个显示控制器
    cityViewController.title=@"旅游指南";
    cityViewController.navigationItem.backBarButtonItem=backButton;
    //[backButton release];
    [navController pushViewController:cityViewController animated:NO];//把第一个视图推到堆栈中
    
    //[cityViewController release];//释放内存
    
    //[window addSubview:navController.view];
    [window addSubview:tabBarController.view];
    
    [window makeKeyAndVisible];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
