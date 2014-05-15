//
//  RegisterViewController.m
//  TestLogin
//
//  Created by skyler on 12-12-14.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

@synthesize BeingText;
@synthesize UserName;
@synthesize Password;
@synthesize RePad;

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
    
    /*UIBarButtonItem* Return=[[UIBarButtonItem alloc]initWithTitle:@"Return" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
     self.navigationItem.leftBarButtonItem = Return;*/
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}


- (IBAction)Submit:(id)sender{
    
    NSString * Ress=RePad.text;
    if([UserName.text length]==0){
        
        UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"缺少信息" message:@"用户名不能为空" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
        [alert show];
        
    }else if([Password.text length]==0){
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"缺少信息" message:@"密码不能为空" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
        [alert show];
    
    }else if([RePad.text length]==0){
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"缺少信息" message:@"请再次输入密码" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
        
        [alert show];
    }else if([RePad.text isEqualToString:Password.text]){
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"亲，信息错误" message:@"密码不一致" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
        [alert show];
    }
}




//delegate 实现伪托 返回登陆页面

- (IBAction)Return:(id)sender {
    
   
    
    [self.delegate flipsideViewControllerDidFish:self];
    
 }




//当点击Return时键盘隐藏
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    BeingText=textField;

}
-(void)textFieldDidEndEditing:(UITextField *)textField{

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {

    if(textField==self.BeingText){
    
        [textField resignFirstResponder];
    
    }
    return YES;
}

@end
