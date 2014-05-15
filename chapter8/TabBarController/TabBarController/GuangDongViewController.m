//
//  GuangDongViewController.m
//  TabBarController
//
//  Created by skyler on 12-11-15.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "GuangDongViewController.h"
#import "DiscountViewController.h"
#import "ResponsetViewController.h"

#import "GDCell.h"



@interface GuangDongViewController ()

@end

@implementation GuangDongViewController
@synthesize array;
@synthesize list;


@synthesize table;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
        
    
    array=[[NSArray alloc]initWithObjects:@"双豆焖凤爪",@"家常菜",@"木须肉",@"香碗",@"老厨白菜",@"四季豆叉烧肉",
           @"西芹虾段",@"喜悦烹饪之可口家常菜",@"青椒猪耳",@"家常泡饭菜",@"鱼香肉丝",@"春节家常菜镶翠鸡卷",@"糖醋带鱼家常菜",@"黄瓜炒鸡蛋",@"家常菜芋儿鸡", nil];
    list=[[NSArray alloc]initWithObjects:@"13.jpg",@"03.jpg",@"10.jpg",@"14.jpg",@"12.jpg",@"04.jpg",@"07.jpg",@"08.jpg",@"05.jpg",
          @"09.jpg",@"02.jpg",@"01.jpg",@"11.jpg",@"08.jpg",@"15.jpg", nil];
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    //cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    cell.textLabel.text=[array objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:[list objectAtIndex:indexPath.row]];
         
    
    /*static NSString *CellIdentifier = @"GDCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell==nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GDListCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    

    cell.nameLabel.text = [array objectAtIndex:indexPath.row];
    cell.img.image = [UIImage imageNamed:[list objectAtIndex:indexPath.row]];
    //cell.prepTimeLabel.text = [prepTimeLabel objectAtIndex:indexPath.row];*/
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    NSLog(@"%@",[array objectAtIndex:indexPath.row]);
        
    //DiscountViewController *DVC=[[DiscountViewController alloc]init];
    
    ResponsetViewController *DVC =[[ResponsetViewController alloc]initWithNibName:@"ResponsetViewController" bundle:nil];
    
    DVC.title=[[array objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
    
    DVC.data= [array objectAtIndex:indexPath.row];
    
   
    
    [self.navigationController pushViewController:DVC animated:YES];
    
    
    //NSLog(@"%d",(int)[array objectAtIndex:indexPath.section]);
    //NSLog(@"%d",(int)[array objectAtIndex:indexPath.row]);
    
}

@end
