//
//  MyViewController.m
//  XibDemo
//
//  Created by chuguangming on 14-5-17.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtIntWeight;
@property (weak, nonatomic) IBOutlet UIButton *btnCalculate;
@property (weak, nonatomic) IBOutlet UILabel *txtResult;

@end

@implementation MyViewController
@synthesize txtIntWeight,btnCalculate,txtResult;
- (IBAction)CalculateWeight:(id)sender {
    txtResult.text=@"sss";
    
}
- (IBAction)txtChange:(id)sender {
    txtResult.text=@"sssss";
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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
