//
//  ViewController.m
//  PickPhoto
//
//  Created by skyler on 12-12-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize wordsLabel;
@synthesize imageView;

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

- (IBAction)showImagePicker:(id)sender {
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;//设置委托类为自己
    //弹出照片选择的页面
    [self presentModalViewController:imagePickerController animated:YES];
}

//回调方法：当选择一个照片后调用
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    imageView.image = image;//获取所选择的照片，并显示
    [self dismissModalViewControllerAnimated:YES];//关闭照片选择页面
}
//回调方法：当取消选择照片后调用
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissModalViewControllerAnimated:YES]; //关闭照片选择页面
}


- (IBAction)inputWords:(id)sender {
    
    InputWordsViewController *inputWordsViewController = [[InputWordsViewController alloc] init];//初始化
    inputWordsViewController.delegate = self;
    //弹出文本输入的页面
    [self presentModalViewController:inputWordsViewController animated:YES];
    
}



-(void)InputWordsViewController:(InputWordsViewController*)controller didInputWords:(NSString*)text
{
    wordsLabel.text = text;//显示输入的文本
    [self dismissModalViewControllerAnimated:YES]; //关闭文本输入视图
}

@end
