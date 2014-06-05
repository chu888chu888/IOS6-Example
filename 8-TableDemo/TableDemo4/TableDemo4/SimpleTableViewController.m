//
//  SimpleTableViewController.m
//  TableDemo4
//
//  Created by chuguangming on 14-6-5.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCell.h"
@interface SimpleTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *mytable;
@end

@implementation SimpleTableViewController
{
    NSArray *tableNameData;
    NSArray *tableAgeData;
    NSArray *thumbnails;
}
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
    // 初始化表格数据
    tableNameData=@[@"楚广明",@"王力印",@"余炯",@"小谢",@"小贾"];
    tableAgeData=@[@"36",@"30",@"27",@"26",@"30"];
    // 初始化表格的图片数据
    thumbnails=@[@"head.gif",@"head2.jpg",@"head3.jpg",@"head4.jpg",@"head2.jpg"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableNameData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    static NSString *simpleTableIdentifier=@"Simple";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    cell.textLabel.text=tableData[indexPath.row];
    cell.imageView.image=[UIImage imageNamed:thumbnails[indexPath.row]];
    return cell;
     */
    static NSString *simpleTableIdentifier=@"SimpleTableCell";
    SimpleTableCell *cell=(SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        NSArray *nib=[[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell=[nib objectAtIndex:0];
        
    }
    cell.nameLabel.text=tableNameData[indexPath.row];
    cell.thumbnailImageView.image=[UIImage imageNamed:thumbnails[indexPath.row]];
    cell.ageLabel.text=tableAgeData[indexPath.row];
    return cell;
}
@end
