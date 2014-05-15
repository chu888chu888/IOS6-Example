//
//  ViewController.h
//  SlectPerson
//
//  Created by skyler on 12-11-19.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBookUI/AddressBookUI.h>

@interface ViewController : UIViewController<ABPeoplePickerNavigationControllerDelegate,UINavigationControllerDelegate>
{
    UITextField *personField;

}
@property(retain)IBOutlet UITextField *personField;
-(IBAction)selectPerson:(id)sender;//按下按钮后要触发的方法
@end
