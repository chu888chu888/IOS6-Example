//
//  RootViewController.m
//  TableDemo
//
//  Created by chuguangming on 14-5-23.
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
-(void) loadView
{
    UIView *view=[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    //view.backgroundColor=[UIColor redColor];
    self.view=view;
    
    _listArray=[UIFont familyNames];
    _tableView=[[UITableView alloc] initWithFrame:view.bounds style:UITableViewStylePlain];
    _tableView.dataSource=self;
    [self.view addSubview:_tableView];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [_listArray count];
} // section 中包含row的数量

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
    NSLog(@"indexPath : %d", indexPath.row);
    // 给cell内容赋值
    NSString *fontName = _listArray[indexPath.row];
    cell.textLabel.text = fontName;
    cell.textLabel.font = [UIFont fontWithName:fontName size:14];
    
    return cell;
    
} // 创建单元格

/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
}
 */
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
