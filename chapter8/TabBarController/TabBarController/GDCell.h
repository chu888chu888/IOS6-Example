//
//  GDCell.h
//  TabBarController
//
//  Created by skyler on 12-11-16.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GDCell : UITableViewCell

@property (nonatomic ,weak)IBOutlet UILabel *nameLabel;
@property (nonatomic ,weak)IBOutlet UILabel *prepTimeLabel;
@property (nonatomic ,weak)IBOutlet UIImageView *img;

@end
