//
//  GDCell.m
//  TabBarController
//
//  Created by skyler on 12-11-16.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "GDCell.h"

@implementation GDCell

@synthesize nameLabel;
@synthesize prepTimeLabel;
@synthesize img;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
