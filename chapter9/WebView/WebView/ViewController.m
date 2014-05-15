//
//  ViewController.m
//  WebView
//
//  Created by skyler on 12-11-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize TF_BeingEdited;
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
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
//这个方法回调方法，当用户载输入框上完成输入后调用
    NSURL *url=[NSURL URLWithString:textField.text];//获取用户输入的URL
    NSURLRequest *request=[NSURLRequest requestWithURL:url];//一个请求
    [webView loadRequest:request];//装载URL所指向的内容
    //[textField resignFirstResponder];
    return YES;
    

}
/* -(void)viewWillAppear:(BOOL)animated {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:self.view.window];
    [super viewWillAppear:animated];
}
-(void)webViewDidStartLoad:(UIWebView *)webView{

    netWorkActivityIndicatorVisible=YES;//装载网页时显示

}
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    networkActivityIndicatorVisible=NO;//转载后，停止显示
}*/

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    TF_BeingEdited=textField;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{

}


@end
