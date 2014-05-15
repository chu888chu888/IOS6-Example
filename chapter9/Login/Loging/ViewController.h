//
//  ViewController.h
//  Loging
//
//  Created by skyler on 12-12-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UITextField *userName;

@property (retain, nonatomic) IBOutlet UITextField *Password;

@property (nonatomic, retain) IBOutlet UITextField *BeginTest;
@end
