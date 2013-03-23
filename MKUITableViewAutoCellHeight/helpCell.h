//
//  helpCell.h
//  InShanghai
//
//  Created by zucknet on 13/3/21.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface helpCell : UITableViewCell{
    IBOutlet UILabel *helplab;
    IBOutlet UILabel *helpTitle;
    IBOutlet UIView *helpView;
}

@property(nonatomic,strong)UILabel *helplab;
@property(nonatomic,strong)UILabel *helpTitle;
@property(nonatomic,strong)UIView *helpView;

@end
