//
//  ResponsetViewController.m
//  TabBarController
//
//  Created by skyler on 12-11-16.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ResponsetViewController.h"

@interface ResponsetViewController ()

@end

@implementation ResponsetViewController
@synthesize data;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    NSString *str=data;
    //if([str isEqual: @"双豆闷鸡爪"]){
        
         UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 150, 50)];
         lab.text = str;
         [self.view addSubview:lab];
    //}
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
