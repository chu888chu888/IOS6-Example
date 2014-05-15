//
//  ViewController.m
//  Loging
//
//  Created by skyler on 12-12-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize userName;
@synthesize Password;
@synthesize BeginTest;

- (void)viewDidLoad
{
    Password.secureTextEntry=YES;//设置password文本框文安全的 也就是输入字符以后不会显示字符本身
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//点击return键让键盘消失
-(void)textFieldDidBeginEditing:(UITextField *)textField{

    BeginTest=textField;

}
-(void)textFieldDidEndEditing:(UITextField *)textField{


}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (void)dealloc {
    [userName release];
    [Password release];
   
    [super dealloc];
}
@end
