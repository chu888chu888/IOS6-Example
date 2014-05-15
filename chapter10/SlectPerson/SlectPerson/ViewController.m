//
//  ViewController.m
//  SlectPerson
//
//  Created by skyler on 12-11-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize personField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selectPerson:(id)sender{
    //创建选择联系人的导航器
    ABPeoplePickerNavigationController *peoplePickerController=[[ABPeoplePickerNavigationController alloc]init];
    peoplePickerController.peoplePickerDelegate=self;//设置回调
    //设置通讯录弹出方式
    //peoplePickerController.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;//翻转显示
    peoplePickerController.modalTransitionStyle=UIModalTransitionStylePartialCurl;//翻页显示
    //peoplePickerController.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;//直接显示
    //peoplePickerController.modalTransitionStyle=UIModalTransitionStyleCoverVertical;//默认显示
    
    //显示通讯录
    [self presentModalViewController:peoplePickerController animated:YES];
       
    [peoplePickerController release];


}
//回调方法。当用户载通讯录上选择取消时调用
-(void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker{

    [self dismissModalViewControllerAnimated:YES];//关闭通讯录
}
//回调方法。当用户载通讯上选择一个联系人时调用
-(BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person{
    NSString *name=(NSString *)ABRecordCopyCompositeName(person);//姓名
    personField.text=[name autorelease];//在输入框上显示
    [self dismissModalViewControllerAnimated:YES];//关闭通讯录
    return NO;

}


//回调方法。当用户选择
//iphone有些缺省操作。比如：当你选择冒个电话时，就直接拨打出去。为了不触发这些缺省操作，返回NO

-(BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier{

    return NO;

}
-(void)dealloc{

    [personField release];
    [super dealloc];

}
@end
