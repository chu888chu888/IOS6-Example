//
//  VC1ViewController.m
//  TabBarDemo2
//
//  Created by chuguangming on 14-5-20.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "VC1ViewController.h"
#import "VC3ViewController.h"
@interface VC1ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnNes;
@end

@implementation VC1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)btnNewsEvent:(id)sender {
    NSLog(@"sss");
    VC3ViewController *VC3=[[VC3ViewController alloc] init];
    [self.navigationController pushViewController:VC3 animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //自定义UIBarButtonItem
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(leftItemEvent)];
    self.navigationItem.leftBarButtonItem=leftItem;
    
    
    UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(rightItemEvent)];
    self.navigationItem.rightBarButtonItem=rightItem;
    // Do any additional setup after loading the view from its nib.
}
-(void) rightItemEvent
{
    UIActionSheet *actionSheet=[[UIActionSheet alloc] initWithTitle:@"这是一个测试" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"确定", nil];
    [actionSheet showInView:self.view];
}
-(void) leftItemEvent
{
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"study" message:@"study" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alertView show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
