//
//  ViewController.m
//  Hellobeijing
//
//  Created by skyler on 12-11-18.
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
    
    UISlider *slider=(UISlider*)sender;
    number.text=[NSString stringWithFormat:@"%d",(int)slider.value];
}

- (IBAction)crateView:(id)sender {
    
    CGRect frame = CGRectMake(50, 200, 200, 20);//新加视图的位置
	UILabel *label =[[UILabel alloc]initWithFrame:frame];  //一个文本标签
	[self.view addSubview:label];     //添加到窗口上
	[label setText:@"这是动态加上去的视图"];
	
}
@end
