//
//  guangDongListCell.m
//  TabBarController
//
//  Created by skyler on 12-11-15.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "guangDongListCell.h"


@implementation guangDongListCell

@synthesize nameLabel= _nameLabel;
@synthesize prepTimeLabe=_prepTimeLabe;
@synthesize lisImageView= _lisImageView;

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
