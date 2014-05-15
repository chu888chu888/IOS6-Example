//
//  InputWordsViewController.m
//  PickPhoto
//
//  Created by skyler on 12-12-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "InputWordsViewController.h"

@implementation InputWordsViewController
@synthesize textField;
@synthesize delegate;

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

- (IBAction)doneInput:(id)sender {
    if([self.delegate  respondsToSelector:@selector(InputWordsViewController:didInputWords:)]){
    
        [self.delegate  InputWordsViewController:self  didInputWords:textField.text];
    }
    
}

@end
