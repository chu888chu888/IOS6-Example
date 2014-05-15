//
//  ViewController.h
//  WebView
//
//  Created by skyler on 12-11-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{
    IBOutlet UIWebView *webView;
    UITextField* TF_BeingEdited;

}
@property(nonatomic,strong) UITextField* TF_BeingEdited; ;
@end
