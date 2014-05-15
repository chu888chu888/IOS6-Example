//
//  SecondViewController.m
//  UINavigationControllerDemo
//
//  Created by skyler on 12-12-27.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "SecondViewController.h"
#import "BookViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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

- (IBAction)NextView:(id)sender {
    
    BookViewController *book=[[BookViewController alloc]initWithNibName:@"BookViewController" bundle:nil];
    book.title=@"Book View";
    [self.navigationController pushViewController:book animated:YES];
}
@end
