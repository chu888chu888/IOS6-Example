//
//  ViewController.m
//  HelloBeijing
//
//  Created by skyler on 12-11-9.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label,words;

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
//拖地滑动条时  改变labeld值
-(IBAction)chanageNumber:(id)sender{

    UISlider *slider=(UISlider *)sender;
    label.text=[NSString stringWithFormat:@"%d",(int)slider.value];
   }
//当拖动滑动条时  改变label的值
-(IBAction)chanageWord:(id)sender{

  words.text=@"世博欢迎您";

}

@end
