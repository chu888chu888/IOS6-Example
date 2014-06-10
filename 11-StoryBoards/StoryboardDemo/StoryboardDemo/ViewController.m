//
//  ViewController.m
//  StoryboardDemo
//
//  Created by chuguangming on 14-6-10.
//  Copyright (c) 2014年 chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize dataTableSource;
- (void)viewDidLoad
{
    [super viewDidLoad];
	dataTableSource=[NSMutableArray arrayWithObjects:
                     @"One",@"Two",@"Three",nil];
    

}

    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataTableSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier=@"recipeCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text=[dataTableSource objectAtIndex:indexPath.row];
    return cell;
}
@end
