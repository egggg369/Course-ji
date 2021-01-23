//
//  XinxiTableViewCell.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/21.
//  Copyright © 2020 无. All rights reserved.
//

#import "XinxiTableViewCell.h"
#import "HistoryTableViewCell.h"
#import "QingjiaViewController.h"

@implementation XinxiTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"article1-1"]) {
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(20, 10, 100, 50);
        nameLabel.text = @"姓名:";
        nameLabel.font = [UIFont systemFontOfSize:18];
        nameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:nameLabel];
        
            _nametextField = [[UITextField alloc] init];
            _nametextField.frame = CGRectMake(80, 10, 375, 50);
            //nametextField.text = @"姓名:";
            _nametextField.font = [UIFont systemFontOfSize:18];
            _nametextField.textColor = [UIColor blackColor];
            _nametextField.borderStyle = UITextBorderStyleNone;
            _nametextField.keyboardType = UIKeyboardTypeDefault;
            _nametextField.placeholder = @"姓名";
            _nametextField.secureTextEntry = NO;
            [self.contentView addSubview: _nametextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-2"]) {
        
        UILabel *classLabel = [[UILabel alloc] init];
        classLabel.frame = CGRectMake(20, 10, 100, 50);
        classLabel.text = @"班级:";
        classLabel.font = [UIFont systemFontOfSize:18];
        classLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:classLabel];

        
        UITextField* classtextField = [[UITextField alloc] init];
        classtextField.frame = CGRectMake(80, 10, 375, 50);
        //classtextField.text = @"班级:";
        classtextField.font = [UIFont systemFontOfSize:18];
        classtextField.textColor = [UIColor blackColor];
        classtextField.borderStyle = UITextBorderStyleNone;
        classtextField.keyboardType = UIKeyboardTypeDefault;
        classtextField.placeholder = @"班级";
        classtextField.secureTextEntry = NO;
        [self.contentView addSubview: classtextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-5"]) {
        
        UILabel *beginLabel = [[UILabel alloc] init];
        beginLabel.frame = CGRectMake(20, 10, 100, 50);
        beginLabel.text = @"开始时间:";
        beginLabel.font = [UIFont systemFontOfSize:18];
        beginLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:beginLabel];

        
        UITextField* begintextField = [[UITextField alloc] init];
        begintextField.frame = CGRectMake(120, 10, 375, 50);
        //begintextField.text = @"开始时间:";
        begintextField.font = [UIFont systemFontOfSize:18];
        begintextField.textColor = [UIColor blackColor];
        begintextField.borderStyle = UITextBorderStyleNone;
        begintextField.keyboardType = UIKeyboardTypeDefault;
        begintextField.placeholder = @"2020-12-02";
        begintextField.secureTextEntry = NO;
        [self.contentView addSubview: begintextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-6"]) {
        
        UILabel *endLabel = [[UILabel alloc] init];
        endLabel.frame = CGRectMake(20, 10, 100, 50);
        endLabel.text = @"结束时间:";
        endLabel.font = [UIFont systemFontOfSize:18];
        endLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:endLabel];
        
        UITextField* endtextField = [[UITextField alloc] init];
        endtextField.frame = CGRectMake(120, 10, 375, 50);
        //endtextField.text = @"结束时间:";
        endtextField.font = [UIFont systemFontOfSize:18];
        endtextField.textColor = [UIColor blackColor];
        endtextField.borderStyle = UITextBorderStyleNone;
        endtextField.keyboardType = UIKeyboardTypeDefault;
        endtextField.placeholder = @"2020-12-02";
        endtextField.secureTextEntry = NO;
        [self.contentView addSubview: endtextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-7"]) {
        
        UILabel *beginLabel = [[UILabel alloc] init];
        beginLabel.frame = CGRectMake(20, 10, 100, 50);
        beginLabel.text = @"销假地点:";
        beginLabel.font = [UIFont systemFontOfSize:18];
        beginLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:beginLabel];
        
        UITextField* placetextField = [[UITextField alloc] init];
        placetextField.frame = CGRectMake(120, 10, 375, 50);
        //placetextField.text = @"销假地点:";
        placetextField.font = [UIFont systemFontOfSize:18];
        placetextField.textColor = [UIColor blackColor];
        placetextField.borderStyle = UITextBorderStyleNone;
        placetextField.keyboardType = UIKeyboardTypeDefault;
        placetextField.placeholder = @"西安邮电大学长安校区";
        placetextField.secureTextEntry = NO;
        [self.contentView addSubview: placetextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-8"]) {
        
        UILabel *beginLabel = [[UILabel alloc] init];
        beginLabel.frame = CGRectMake(20, 10, 100, 50);
        beginLabel.text = @"联系方式:";
        beginLabel.font = [UIFont systemFontOfSize:18];
        beginLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:beginLabel];
        
        UITextField* phonetextField = [[UITextField alloc] init];
        phonetextField.frame = CGRectMake(120, 10, 375, 50);
        //phonetextField.text = @"联系方式:";
        phonetextField.font = [UIFont systemFontOfSize:18];
        phonetextField.textColor = [UIColor blackColor];
        phonetextField.borderStyle = UITextBorderStyleNone;
        phonetextField.keyboardType = UIKeyboardTypeDefault;
        phonetextField.placeholder = @"自己的电话";
        phonetextField.secureTextEntry = NO;
        [self.contentView addSubview: phonetextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-9"]) {
        
        UILabel *beginLabel = [[UILabel alloc] init];
        beginLabel.frame = CGRectMake(20, 10, 100, 50);
        beginLabel.text = @"紧急联系人:";
        beginLabel.font = [UIFont systemFontOfSize:18];
        beginLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:beginLabel];
        
        UITextField* peopletextField = [[UITextField alloc] init];
        peopletextField.frame = CGRectMake(120, 10, 375, 50);
        //peopletextField.text = @"紧急联系人:";
        peopletextField.font = [UIFont systemFontOfSize:18];
        peopletextField.textColor = [UIColor blackColor];
        peopletextField.borderStyle = UITextBorderStyleNone;
        peopletextField.keyboardType = UIKeyboardTypeDefault;
        peopletextField.placeholder = @"紧急联系人电话";
        peopletextField.secureTextEntry = NO;
        [self.contentView addSubview: peopletextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-3"]) {
        UILabel *typelabel = [[UILabel alloc] init];
        typelabel.frame = CGRectMake(20, 10, 100, 50);
        typelabel.text = @"请假类型：";
        typelabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:typelabel];
    }else if([self.reuseIdentifier isEqualToString:@"article1-4"]) {
        UILabel *leavelabel = [[UILabel alloc] init];
        leavelabel.frame = CGRectMake(20, 10, 100, 50);
        leavelabel.text = @"是否离校：";
        leavelabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:leavelabel];
    }else if([self.reuseIdentifier isEqualToString:@"article1-2-0"]) {
        UILabel *leavelabel = [[UILabel alloc] init];
        leavelabel.frame = CGRectMake(20, 10, 160, 50);
        leavelabel.text = @"请假情况说明";
        leavelabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:leavelabel];
        
        UITextField* explaintextField = [[UITextField alloc] init];
        explaintextField.frame = CGRectMake(20, 40, 375, 90);
        //explaintextField.text = @"紧急联系人:";
        explaintextField.font = [UIFont systemFontOfSize:18];
        explaintextField.textColor = [UIColor blackColor];
        explaintextField.borderStyle = UITextBorderStyleNone;
        explaintextField.keyboardType = UIKeyboardTypeDefault;
        explaintextField.placeholder = @"请输入情况说明";
        explaintextField.secureTextEntry = NO;
        [self.contentView addSubview: explaintextField];
    }else if([self.reuseIdentifier isEqualToString:@"article1-3-0"]) {
        UILabel *photolabel = [[UILabel alloc] init];
        photolabel.frame = CGRectMake(20, 10, 160, 50);
        photolabel.text = @"添加照片";
        photolabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:photolabel];
        
        
    }else if([self.reuseIdentifier isEqualToString:@"article1-4-0"]) {
        
        UIButton *holdbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        holdbtn.frame = CGRectMake(20, 20, 330, 50);
        [holdbtn setTitle:@"确定保存" forState:UIControlStateNormal];
        holdbtn.backgroundColor = [UIColor colorWithRed:3/255.0 green:214/255.0 blue:252/255.0 alpha:1];
        holdbtn.tintColor = [UIColor whiteColor];
        holdbtn.titleLabel.font = [UIFont systemFontOfSize: 23];
        [holdbtn addTarget:self action:@selector(leave) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:holdbtn];
        
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

- (void) leave {
    HistoryTableViewCell.namestr = _nametextField.text;
    
}


@end
