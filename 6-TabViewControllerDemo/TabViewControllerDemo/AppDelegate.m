//
//  AppDelegate.m
//  TabViewControllerDemo
//
//  Created by chuguangming on 14-5-19.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIViewController *vc1=[[UIViewController alloc] init];
    vc1.title=@"home";
    vc1.view.backgroundColor=[UIColor redColor];
    UITabBarItem *firstItem=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    vc1.tabBarItem=firstItem;
    
    UIViewController *vc2=[[UIViewController alloc] init];
    vc2.title=@"news";
    vc2.view.backgroundColor=[UIColor yellowColor];
    UITabBarItem *secondItem=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:2];
    vc2.tabBarItem=secondItem;
    
    UIViewController *vc3=[[UIViewController alloc] init];
    vc3.title=@"history";
    vc3.view.backgroundColor=[UIColor blueColor];
    UITabBarItem *thirdItem=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:3];
    vc3.tabBarItem=thirdItem;
    
    UIViewController *vc4=[[UIViewController alloc] init];
    vc4.title=@"search";
    vc4.view.backgroundColor=[UIColor orangeColor];
    UITabBarItem *foundItem=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:4];
    vc4.tabBarItem=foundItem;
    
    UIViewController *vc5=[[UIViewController alloc] init];
    vc5.title=@"setting";
    vc5.view.backgroundColor=[UIColor redColor];
    UITabBarItem *fiveItem=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:5];
    vc5.tabBarItem=fiveItem;
    
    NSArray *viewControllers=@[vc1,vc2,vc3,vc4,vc5];
    UITabBarController *tabBarController=[[UITabBarController alloc] init];
    tabBarController.viewControllers=viewControllers;
    self.window.rootViewController=tabBarController;
    
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
