//
//  CityDataViewController.h
//  Lvyou
//
//  Created by skyler on 12-12-18.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityDataViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *cityName;

@property (copy) NSString *city;
@end
