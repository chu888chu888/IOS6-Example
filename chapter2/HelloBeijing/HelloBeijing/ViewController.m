//
//  ViewController.m
//  HelloBeijing
//
//  Created by skyler on 12-12-18.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize number;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChangeNumber:(id)sender {
    UISlider *slider=(UISlider *)sender;
    number.text=[NSString stringWithFormat:@"%d",(int)slider.value];

}
@end
