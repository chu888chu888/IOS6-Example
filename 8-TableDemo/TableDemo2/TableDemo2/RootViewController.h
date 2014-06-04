//
//  RootViewController.h
//  TableDemo2
//
//  Created by chuguangming on 14-5-28.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UITableViewDataSource>
{
    @private
    UITableView *_tableView;
    NSArray *_listArray;
}

@end
