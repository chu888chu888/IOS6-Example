//
//  ViewController.h
//  TestLogin
//
//  Created by skyler on 12-12-14.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "RegisterViewController.h"


@interface ViewController : UIViewController <FlipsViewControllerDelegate,UITextFieldDelegate>
{

        
    RegisterViewController * Register;
    
    

}
@property (weak, nonatomic) IBOutlet UITextField *UserName;

@property (weak, nonatomic) IBOutlet UITextField *Password;

@property (nonatomic, weak) IBOutlet UITextField *BeginTest;



- (IBAction)Register:(id)sender;

- (IBAction)Login:(id)sender;

-(IBAction)Quxiao:(id)sender;


@end
