//
//  RootViewController.m
//  UINavigationControllerDemo
//
//  Created by skyler on 12-12-27.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
    
    
    UIBarButtonItem *leftBut=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(SelectLeftButton:)];
    self.navigationItem.leftBarButtonItem=leftBut;
    
    UIBarButtonItem *rightBut=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(SelectRightButton:)];
    
    self.navigationItem.rightBarButtonItem=rightBut;
}

-(void)SelectLeftButton:(id)sender
{
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"this is Left Butoom" message:@"hello I'm Left" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
    [alert show];

}
-(void)SelectRightButton:(id)sender
{
   
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GoTOSecond:(UIButton *)sender {
    SecondViewController *second=[[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    second.title=@"subView";
    [self.navigationController pushViewController:second animated:YES];
    

}
@end
