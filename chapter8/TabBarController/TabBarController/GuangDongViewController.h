//
//  GuangDongViewController.h
//  TabBarController
//
//  Created by skyler on 12-11-15.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuangDongViewController : UITableViewController

@property(nonatomic ,retain) NSArray *array;
@property(nonatomic ,retain) NSArray *list;
//@property(nonatomic ,retain) UINavigationController *navControll;
@property (nonatomic, retain) IBOutlet UITableView* table;
@end
