//
//  ViewController.h
//  HelloBeijing
//
//  Created by skyler on 12-11-9.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
   // IBOutlet UIView *view;
    IBOutlet UIButton *button;
}
@property   IBOutlet UILabel * label,*words;
-(IBAction)chanageNumber:(id)sender;
-(IBAction)chanageWord:(id)sender;
-(IBAction)drawView:(id)sender;
@end
