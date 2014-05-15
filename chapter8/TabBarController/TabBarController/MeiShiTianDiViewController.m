//
//  MeiShiTianDiViewController.m
//  TabBarController
//
//  Created by skyler on 12-11-13.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "MeiShiTianDiViewController.h"
#import "GuangDongViewController.h"
#import "ZheJianViewController.h"

@interface MeiShiTianDiViewController ()

@end

@implementation MeiShiTianDiViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selectGuangdong:(id)sender{

    GuangDongViewController *guangDong=[[GuangDongViewController alloc]
                                        initWithNibName:@"GuangDongViewController" bundle:nil];
    [self.navigationController pushViewController:guangDong animated:YES];
    //guangDong.title=@"广东菜系";
    //[self presentModalViewController : guangDong animated:YES];
    
     //[self performSegueWithIdentifier:@"welcome" sender:self];
}
-(IBAction)selectZhiJian:(id)sender{

    ZheJianViewController *zheJian=[[ZheJianViewController alloc]initWithNibName:@"ZheJianViewController" bundle:nil];
    [self.navigationController pushViewController:zheJian animated:YES];


}
@end
