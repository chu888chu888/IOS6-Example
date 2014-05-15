//
//  InputWordsViewController.h
//  PickPhoto
//
//  Created by skyler on 12-12-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol InputWordsViewControllerDelegate;//协议

@interface InputWordsViewController : UIViewController
{

    id<InputWordsViewControllerDelegate>delegate;//委托程序

}

@property (retain, nonatomic) IBOutlet UITextField *textField;
@property (strong)id<InputWordsViewControllerDelegate> delegate;
- (IBAction)doneInput:(id)sender;//单击“输入完毕”按钮后调用该方法

@end

@protocol InputWordsViewControllerDelegate <NSObject>
//协议所决定的方法，在输入完毕后调用
-(void)InputWordsViewController:(InputWordsViewController*)controller didInputWords:(NSString*)text;
@end