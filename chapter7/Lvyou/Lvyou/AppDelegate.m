//
//  AppDelegate.m
//  Lvyou
//
//  Created by skyler on 12-12-18.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "MeiShiTianDi.h"


@implementation AppDelegate
@synthesize viewController;
@synthesize window;
@synthesize tabBarController;
- (void)dealloc
{
    [window release];
    [viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    
    
    tabBarController=[[UITabBarController alloc]init];//创建一个标签栏控制器
    MeiShiTianDi *MeiviewController=[[MeiShiTianDi alloc]init];//声明美食天地视图控制器
    MeiviewController.title=@"美食天地";//设置标题
    
    UINavigationController *navContorll=[[UINavigationController alloc]init];//旧代码  初始化导航控制器
    //将上述d试图控制器和导航栏控制器放在标签栏控制器的viewControllers数组中
    tabBarController.viewControllers=[NSArray arrayWithObjects:navContorll,MeiviewController,nil];
    [MeiviewController release];//释放内存
    UIBarButtonItem *backButton=[[UIBarButtonItem alloc]initWithTitle:@"所有城市"
                                                                style:UIBarButtonItemStyleBordered
                                                               target:nil action:nil];
    viewController=[[ViewController alloc]init];//声明第一个控制器视图
    //viewController.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    
    viewController.title=@"旅游指南";//设置第一个视图控制器的标题
    
    viewController.navigationItem.backBarButtonItem=backButton;
    [backButton release];
    [navContorll pushViewController:viewController animated:NO];//把第一个视图推入到堆栈中
    [viewController release];//释放内存
    
    //把标签控制器的view放在window下
    //[window addSubview:navContorll.view];//把导航控制器放到window下
    [window addSubview:tabBarController.view];//把标签栏view放在window下
    
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
