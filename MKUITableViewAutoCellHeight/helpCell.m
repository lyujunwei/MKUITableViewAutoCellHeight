//
//  helpCell.m
//  InShanghai
//
//  Created by zucknet on 13/3/21.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import "helpCell.h"

@implementation helpCell
@synthesize helplab,helpTitle,helpView;

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
