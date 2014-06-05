//
//  HelloWorldViewController.m
//  HelloWorldDemo2
//
//  Created by chuguangming on 14-6-5.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController
- (IBAction)ShowMessage:(id)sender {
    UIAlertView *helloWorldAlert=[[UIAlertView alloc] initWithTitle:@"My First App" message:@"Hello World!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [helloWorldAlert show];
}

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
