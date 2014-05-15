//
//  RegisterViewController.h
//  TestLogin
//
//  Created by skyler on 12-12-14.
//  Copyright (c) 2012年 skyler. All rights reserved.
//






#import <UIKit/UIKit.h>
@protocol FlipsViewControllerDelegate;

@interface RegisterViewController : UIViewController<UITextFieldDelegate>
{
     

}

@property(nonatomic, assign) id<FlipsViewControllerDelegate>delegate;
@property(nonatomic, weak) IBOutlet UITextField * BeingText;
- (IBAction)Return:(id)sender;
- (IBAction)Submit:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *UserName;
@property (weak, nonatomic) IBOutlet UITextField *Password;

@property (weak, nonatomic) IBOutlet UITextField *RePad;

@end
@protocol FlipsViewControllerDelegate <NSObject>

-(void)flipsideViewControllerDidFish:(RegisterViewController*)Registr;

@end