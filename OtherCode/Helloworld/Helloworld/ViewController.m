//
//  ViewController.m
//  Helloworld
//
//  Created by skyler on 12-12-12.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)ChangeGreeting:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController
@synthesize userName;

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


- (IBAction)ChangeGreeting:(id)sender {
    self.userName=self.textField.text;
    NSString * name=self.userName;
    if([name length]==0){
    
       name=@"World";
    
    }
    NSString * hh=[[NSString alloc]initWithFormat:@"Hello,%@!",name];
    self.label.text=hh;
}
//通过切换文本输入 UI 元素的第一响应器状态这种间接方式，使键盘出现或消失。
 -(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField==self.textField){
        [textField resignFirstResponder];
    
    }
    return YES;
}
@end
