//
//  ViewController.h
//  StoryboardDemo
//
//  Created by chuguangming on 14-6-10.
//  Copyright (c) 2014年 chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *dataTableSource;

}
@property (weak, nonatomic) IBOutlet UITableView *mytable;
@property(nonatomic,retain) NSMutableArray *dataTableSource;
@end
