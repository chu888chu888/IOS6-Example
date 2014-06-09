//
//  MasterViewController.m
//  XibTableDemo
//
//  Created by chuguangming on 14-6-4.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
@interface MasterViewController ()

@end


@implementation MasterViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"复杂的表格";
    }
    return self;
}
- (void)InitView
{
    UIView *view=[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view=view;
    _listArray=[UIFont familyNames];
    _tableView=[[UITableView alloc]initWithFrame:view.bounds style:UITableViewStylePlain];
    _tableView.dataSource=self;
    _tableView.delegate=self;
    _tableView.rowHeight=80;
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_tableView];
}

-(void) loadView
{
    [self InitView];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -表格数据源实现
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _listArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"s"];
    }
    _fontName=_listArray[indexPath.row];
    cell.textLabel.text=_fontName;
    cell.textLabel.font=[UIFont fontWithName:_fontName size:14];
    return cell;
}
#pragma mark -表格点击实现
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailViewController *detailVC=[[DetailViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
}
@end
