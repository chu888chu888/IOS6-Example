//
//  ViewController.m
//  TestLogin
//
//  Created by skyler on 12-12-14.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"
#import "ComunicationWithCloud.h"
#import "Mypaser.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize UserName;
@synthesize Password;

@synthesize BeginTest;

- (void)viewDidLoad
{
    [super viewDidLoad];
    Password.secureTextEntry=YES;
    UserName.placeholder=@"UserName";
    Password.placeholder = @"password";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Register:(id)sender {
    
    Register=[[RegisterViewController alloc]init];
    Register.delegate=self;
    Register.modalPresentationStyle=UIModalTransitionStyleFlipHorizontal;
    
    //[self presentViewController:Register animated:YES completion:nil];
    
    
}

- (IBAction)Login:(id)sender {
    
    if([UserName.text length]==0){
        
        UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"缺少信息" message:@"用户名不能为空" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
        [alert show];
        
    }else if([Password.text length]==0){
    
        UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"缺少信息" message:@"密码不能为空" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"YES", nil];
        [alert show];
    
    }else{
    
        NSString *name=UserName.text;
        NSString *passw0rd=Password.text;
        
        [ComunicationWithCloud TestUser:name andPassWord:passw0rd andBlock:^(NSURLResponse *response, NSData *data, NSError *error) {
              NSString *result =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
              NSLog(@"%@",result);
           
            
            }
         ];
        
            
             
        
       

        
        
        
    }
}


-(IBAction)Quxiao:(id)sender {

    [BeginTest resignFirstResponder];


}

-(void)flipsideViewControllerDidFish:(RegisterViewController *)Registr{

    [self dismissViewControllerAnimated:YES completion:nil];
}





-(void)textFieldDidBeginEditing:(UITextField *)textField{
     BeginTest=textField;
    
}
-(void)textFieldDidEndEditing:(UITextField *)textField{

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField==BeginTest) {
        [textField resignFirstResponder];
    }
return YES;
}

@end
