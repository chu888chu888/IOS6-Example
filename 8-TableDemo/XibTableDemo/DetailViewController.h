//
//  DetailViewController.h
//  XibTableDemo
//
//  Created by chuguangming on 14-6-4.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailViewController;

@protocol DetailViewControllerDelegate <NSObject>

- (void)detailViewControllerDidCancel:(DetailViewController *)controller;
- (void)detailViewControllerDidClose:(DetailViewController *)controller;

@end
@interface DetailViewController : UIViewController

@end
