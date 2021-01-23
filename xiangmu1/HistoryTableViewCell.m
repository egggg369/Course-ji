//
//  HistoryTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/21.
//  Copyright © 2020 无. All rights reserved.
//

#import "HistoryTableViewCell.h"

@implementation HistoryTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"article2"]) {
        UILabel *illlebel = [[UILabel alloc] init];
        illlebel.frame = CGRectMake(20, 0, 90, 60);
        illlebel.text = _namestr;
        illlebel.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:illlebel];
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(35, 35, 100, 50);
        nameLabel.text = @"李明";
        nameLabel.textColor = [UIColor grayColor];
        nameLabel.font = [UIFont systemFontOfSize:17];
        [self.contentView addSubview:nameLabel];
        
        UILabel *beginLabel = [[UILabel alloc] init];
        beginLabel.frame = CGRectMake(35, 60, 100, 50);
        beginLabel.text = @"2020-12-5";
        beginLabel.font = [UIFont systemFontOfSize:17];
        beginLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:beginLabel];
        
        UILabel *endLabel = [[UILabel alloc] init];
        endLabel.frame = CGRectMake(130, 60, 100, 50);
        endLabel.text = @"2020-12-6";
        endLabel.font = [UIFont systemFontOfSize:17];
        endLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:endLabel];
        
        UILabel *leavelabel = [[UILabel alloc] init];
        leavelabel.frame = CGRectMake(35, 85, 160, 50);
        leavelabel.text = @"发烧请假";
        leavelabel.font = [UIFont systemFontOfSize:17];
        leavelabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:leavelabel];
        
        UIButton *containbtn = [UIButton buttonWithType:UIButtonTypeSystem];
        containbtn.frame = CGRectMake(70, 19, 50, 20);
        containbtn.backgroundColor = [UIColor colorWithRed:0/255.0 green:206/255.0 blue:86/255.0 alpha:1];
        [containbtn setTitle:@"已销假" forState:UIControlStateNormal];
        containbtn.tintColor = [UIColor whiteColor];
        [self.contentView addSubview:containbtn];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
