//
//  RootViewController.m
//  TableDemo2
//
//  Created by chuguangming on 14-5-28.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void) loadView
{
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view=view;
    
    _listArray=[UIFont familyNames];
    _tableView=[[UITableView alloc] initWithFrame:view.bounds style:UITableViewStylePlain];
    _tableView.dataSource=self;
    _tableView.rowHeight=100;
    //IOS7下失效
    UIImageView *backgroundView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    //_tableView.backgroundColor=[UIColor yellowColor];
    _tableView.backgroundView=backgroundView;
    //去掉分割线
    //_tableView.separatorColor=[UIColor whiteColor];
    //设置表视图的分割线的风格
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    //设置表视图的头部视图
    UIView *headerView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 80) ];
    headerView.backgroundColor=[UIColor redColor];
    //设置表视图的Label
    UILabel *headText=[[UILabel alloc] initWithFrame:CGRectMake(120, 0, 200, 80)];
    headText.text=@"很好很好。。。";
    [headerView addSubview:headText];
    
    _tableView.tableHeaderView=headerView;
    //设置表视图的尾部视图
    UIView *footerView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40) ];
    footerView.backgroundColor=[UIColor redColor];
    _tableView.tableFooterView=footerView;
    
    
    [self.view addSubview:_tableView];
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - TableRequment
//表中有多少行数据
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _listArray.count;
}
//每一个单元格的内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 定义一个静态标识符
    static NSString *cellIdentifier = @"cell";
    // 检查是否限制单元格
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    // 创建单元格
    if (cell == nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"s"];
    }
    NSLog(@"indexPath row: %d section:%d", indexPath.row,indexPath.section);
    // 给cell内容赋值
    NSString *fontName = _listArray[indexPath.row];
    cell.textLabel.text = fontName;
    cell.textLabel.font = [UIFont fontWithName:fontName size:14];
    
    return cell;
}

@end
