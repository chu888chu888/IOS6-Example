//
//  ViewController.h
//  PickPhoto
//
//  Created by skyler on 12-12-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputWordsViewController.h"

@interface ViewController : UIViewController
<UIImagePickerControllerDelegate,UINavigationControllerDelegate,InputWordsViewControllerDelegate>
//符合InputWordsViewControllerDelegate协议
{
    
    
}
@property (weak) IBOutlet UIImageView *imageView;//当中的照片

@property (weak) IBOutlet UILabel *wordsLabel;//照片描述信息

- (IBAction)showImagePicker:(id)sender;//
- (IBAction)inputWords:(id)sender;//按输入“输入照片描述文字”后调用



@end
