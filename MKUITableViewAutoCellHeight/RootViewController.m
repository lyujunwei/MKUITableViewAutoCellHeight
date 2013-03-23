//
//  RootViewController.m
//  TableRow
//
//  Created by zucknet on 13/3/22.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import "RootViewController.h"
#import "helpCell.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    clickcell = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    clickcell = YES;
    
    if (clickcell == YES) {
        str1 = @"苏州物华天宝，人杰地灵，被誉为“人间天堂”，素来以山水秀丽、园林典雅而闻名天下，有“江南园林甲天下，苏州园林甲江南”的美称，又因其小桥流水人家的水乡古城特色，而有“东方威尼斯”美誉。";
    } else {
        str1 =@"苏州物华天宝，人杰地灵，被誉为“人间天堂”，素来以山水秀丽、园林典雅而闻名天下，有“江南园林甲天下，苏州园林甲江南”的美称，又因其小桥流水人家的水乡古城特色，而有“东方威尼斯”美誉。苏州自有文字记载以来的历史已有4000多年，公元前514年建城，中国重点风景旅游城市，长三角重要经济中心。苏州是江苏省第二大城市、经济最发达的城市、对外贸易、工商业和物流中心，也是重要的文化、艺术、教育和交通中心。";
    }
    
    list = [[NSMutableArray alloc]initWithObjects:@"概括",@"风景名胜",@"最佳旅游时间",@"区域分布",@"历史文化",nil];
    
    
    NSString *str2 = @"如果第一次来苏州，花上一天时间，游玩苏州的园林，还是很有必要，比如拙政园、狮子林、虎丘、盘门。如果已经来过，那大可跟着我们的步伐，寻找幽静的春色，花上半天游山塘，下午逛逛平江路。贡献一天半给西山。此外，余下的时间，可以抽空听听评弹，逛逛夜园林。苏州现有拙政园、留园、狮子林、沧浪亭、环秀山庄、艺圃、耦园、网师园、退思园等九座园林被列入《世界遗产名录》，城区另有怡园、五峰园、惠荫园等73处园林遗存。";
    
    NSString *str3 = @"苏州属亚热带季风性气候，气候温和、湿润，四季分明，全年皆宜旅游，尤以春天最佳。4~10月间玩苏州，既可欣赏到桃红柳绿的自然风光，又有品尝鲜桃、碧螺春、糖藕等、杨梅、枇杷、糖藕、大闸蟹、腌笃鲜等轮番上市，足够让游客在眼福之余大饱口福。";
    
    NSString *str4 = @"苏州位于太湖之滨，长江南岸的入海口处，苏州共辖5个市辖区：姑苏区、虎丘区（高新区）、吴中区、相城区、吴江区。代管4个县级市：昆山市、常熟市、张家港市、太仓市。";
    
    NSString *str5 = @"苏州于公元前514年，吴王夫差的父亲阖闾命前来投奔的楚国大臣伍子胥建吴国都城阖闾大城，距今已有2500多年的历史，至今还保留着许多有关西施、伍子胥等的古迹，城里仍有许多当年留下的地名。隋开皇九年始称苏州，沿用至今。苏州城建城早，规模大，基本保持着古代“水陆并行、河街相邻”的双棋盘格局、三纵三横一环的河道水系和”小桥流水、粉墙黛瓦、古迹名园“的独特风貌。城市至今仍坐落在原址上，为国内外所罕见。苏州古城的古迹密度在中国仅次于北京和西安，列全国第三位。苏州古城和苏州园林为世界文化遗产和世界非物质文化遗产＂双遗产＂集于一身。而昆曲、阳澄湖大闸蟹、周庄是三张国际级、重量级品牌。";
    
    hello = [[NSArray alloc]initWithObjects:str1,str2,str3,str4,str5,nil];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return hello.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    helpCell *cell = (helpCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"helpCell" owner:self options:nil] objectAtIndex:0];
        
        cell.helplab.text = [list objectAtIndex:indexPath.row];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.tag = 1;
        label.lineBreakMode = NSLineBreakByClipping;
        label.highlightedTextColor = [UIColor whiteColor];
        label.numberOfLines = 0;
        label.opaque = NO; // 选中Opaque表示视图后面的任何内容都不应该绘制
        label.backgroundColor = [UIColor clearColor];
        [cell.helpView addSubview:label];
    }
    
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    NSString *text;
    text = [hello objectAtIndex:indexPath.row];
    CGRect cellFrame = [cell frame];
    cellFrame.origin = CGPointMake(0, 40);
    
    label.text = text;
    label.font = [UIFont systemFontOfSize:13.0f];
    CGRect rect = CGRectInset(cellFrame, 10, 2);
    label.frame = rect;
    [label sizeToFit];
    if (label.frame.size.height > 46) {
        cellFrame.size.height = 50 + label.frame.size.height - 46;
    }
    else {
        cellFrame.size.height = 50;
    }
    [cell setFrame:cellFrame];
    
    if (indexPath.row == 0) {
        cell.helpView.backgroundColor =[UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1.0];
        cell.contentView.backgroundColor = [UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1.0];
    }
    
    if (indexPath.row == 1) {
        cell.helpView.backgroundColor =[UIColor colorWithRed:224.0/255.0 green:224.0/255.0 blue:224.0/255.0 alpha:1.0];
        cell.contentView.backgroundColor = [UIColor colorWithRed:224.0/255.0 green:224.0/255.0 blue:224.0/255.0 alpha:1.0];
    }
    
    if (indexPath.row == 2) {
        cell.helpView.backgroundColor =[UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1.0];
        cell.contentView.backgroundColor = [UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1.0];
    }
    
    if (indexPath.row == 3) {
        cell.helpView.backgroundColor =[UIColor colorWithRed:224.0/255.0 green:224.0/255.0 blue:224.0/255.0 alpha:1.0];
        cell.contentView.backgroundColor = [UIColor colorWithRed:224.0/255.0 green:224.0/255.0 blue:224.0/255.0 alpha:1.0];
    }
    
    if (indexPath.row == 4) {
        cell.helpView.backgroundColor =[UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1.0];
        cell.contentView.backgroundColor = [UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1.0];
        
    }
    
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height + 50;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        
        clickcell = NO;
        
        [self.tableView reloadData];
        
    }
        
}


@end
