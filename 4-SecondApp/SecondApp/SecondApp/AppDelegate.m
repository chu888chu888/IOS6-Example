//
//  AppDelegate.m
//  SecondApp
//
//  Created by chuguangming on 14-4-28.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "AppDelegate.h"
#import "SubView.h"
#import "RootViewController.h"
#import "MainViewController.h"
@implementation AppDelegate
@synthesize view1,view2,subView;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blueColor];
    [self.window makeKeyAndVisible];
    
    self.window.windowLevel=UIWindowLevelNormal;
    
    /*
    UIButton *startButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    startButton.backgroundColor=[UIColor blueColor];
    startButton.frame=CGRectMake(320/2-120/2, 300, 120, 35);
    [startButton setTitle:@"警告" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(rotateView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:startButton];
     */

    /*
    NSBundle *bundle=[NSBundle mainBundle];
    NSArray *arr=[bundle loadNibNamed:@"MyView" owner:self options:nil];
    UIView *myView=[arr objectAtIndex:0];
    [self.window addSubview:myView];
     */
    
    /*
    view1=[[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor=[UIColor redColor];
    view1.tag=1;
    [self.window addSubview:view1];
    
    view2=[[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view2.backgroundColor=[UIColor yellowColor];
    view2.tag=2;
    [self.window addSubview:view2];
    
    NSLog(@"view1 superview:%@",[view1 superview]);
    NSLog(@"view2 superview:%@",[view2 superview]);
     */
    
    /*
    subView=[[SubView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    subView.tag=4;
    subView.backgroundColor=[UIColor yellowColor];
    [self.window addSubview:subView];
     */
    /*
    RootViewController *rootViewController=[[RootViewController alloc] init];
    rootViewController.view.backgroundColor=[UIColor blueColor];
    self.window.rootViewController=rootViewController;
     */
    /*
    RootViewController *rootViewController=[[RootViewController alloc] initWithNibName:@"View" bundle:nil];
    self.window.rootViewController=rootViewController;
     */
    /*UIViewController的生命周期
    RootViewController *rootViewController=[[RootViewController alloc] init];
    self.window.rootViewController=rootViewController;
     */
    /*
    MainViewController *mainViewController=[[MainViewController alloc] init];
    self.window.rootViewController=mainViewController;
    */
    /*
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(90, 100, 140, 40)];
    label.text=@"abcdefg";
    [self.window addSubview:label];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame=CGRectMake(90, 150, 140, 40);
    [button setTitle:@"abc" forState:UIControlStateNormal];
    button.backgroundColor=[UIColor redColor];
    [button addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button];
    
    UITextField *tf=[[UITextField alloc] initWithFrame:CGRectMake(90, 200, 140, 40)];
    tf.tag=101;
    tf.borderStyle=UITextBorderStyleRoundedRect;
    tf.delegate=self;
    [self.window addSubview:tf];
     */
    
    return YES;
}
#pragma mark -TextField Delegate
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始输入");
}

-(void) changeView
{
    UITextField *tf=(UITextField *)[self.window viewWithTag:101];
    [tf resignFirstResponder];
}
-(void) rotateView
{
    UIView *view=[self.window viewWithTag:4];
    view.transform=CGAffineTransformRotate(view.transform, 0.2);
}
-(void) translateView
{
    UIView *view=[self.window viewWithTag:4];
    view.transform=CGAffineTransformTranslate(view.transform, 50, 50);
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
