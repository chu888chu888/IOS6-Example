//
//  MainViewController.m
//  SecondApp
//
//  Created by chuguangming on 14-5-6.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void) loadView
{
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    view.backgroundColor=[UIColor blueColor];
    self.view=view;
    UIView *subView=[[UIView alloc] initWithFrame:CGRectMake(60, 60, 200, 200)];
    subView.backgroundColor=[UIColor redColor];
    [self.view addSubview:subView];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"网络初始化");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated
{
    NSLog(@"1 viewWillAppear");
}
-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"2 viewDidAppear");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
