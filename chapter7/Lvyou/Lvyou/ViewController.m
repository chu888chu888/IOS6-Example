//
//  ViewController.m
//  Lvyou
//
//  Created by skyler on 12-12-18.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"
#import "CityDataViewController.h"
@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)selectCity:(id)sender {
    CityDataViewController *cityDetailControl
    = [[CityDataViewController alloc] init]; //声明第二个视图控制器
	cityDetailControl.title = @ "北京欢迎您"; //设置第二个视图控制器的标题
    cityDetailControl.city=@"北京";
    //把第二个视图控制器推入堆栈中
	[self.navigationController pushViewController:cityDetailControl animated:YES];
	[cityDetailControl release]; // 释放内存
    
}
@end
