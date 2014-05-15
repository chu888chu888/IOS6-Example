//
//  ViewController.m
//  TabBarController
//
//  Created by skyler on 12-11-15.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"
#import "cityDataViewController.h"
#import "DiscountDataViewController.h"
#import "GDCell.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize window;
- (void)viewDidLoad
{
    
    UIBarButtonItem *discountButton=[[UIBarButtonItem alloc]
                                     initWithTitle:@"折扣信息" style:UIBarButtonItemStyleBordered
                                     target:self action:@selector(clickDiscountButton)];
    self.navigationItem.leftBarButtonItem=discountButton;
   
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)selectCity:(id)sender{
    
    cityDataViewController *cityDetaContrl= [[cityDataViewController alloc]
                                             initWithNibName:@"cityDataViewController" bundle:nil];//声明第二个视图控制器
	cityDetaContrl.title = @ "北京欢迎您"; //设置第二个视图控制器的标题
    //把第二个视图控制器推入堆栈中
	[self.navigationController pushViewController:cityDetaContrl animated:YES];
    
    
    
}
-(void)clickDiscountButton{

  // DiscountDataViewController *discountData=[[DiscountDataViewController alloc]
                                          //    initWithNibName:@"DiscountDataViewController" bundle:nil];
    //[self.navigationController pushViewController:discountData animated:YES];
   // [self presentModalViewController:discountData animated:YES];
    //[discountData release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
