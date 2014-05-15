//
//  ViewController.h
//  HelloBeijing
//
//  Created by skyler on 12-12-18.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *number;

- (IBAction)ChangeNumber:(id)sender;
@end
