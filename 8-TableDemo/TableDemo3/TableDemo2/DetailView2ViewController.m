//
//  DetailView2ViewController.m
//  TableDemo2
//
//  Created by chuguangming on 14-6-4.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "DetailView2ViewController.h"

@interface DetailView2ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *txtShow;

@end

@implementation DetailView2ViewController
@synthesize DetailFontName;
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
    self.txtShow.font=[UIFont fontWithName:self.DetailFontName size:20];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
