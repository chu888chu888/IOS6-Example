//
//  MasterViewController.h
//  XibTableDemo
//
//  Created by chuguangming on 14-6-4.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
@interface MasterViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    @private
    UITableView *_tableView;
    NSArray *_listArray;
    NSString *_fontName;
}

@end
