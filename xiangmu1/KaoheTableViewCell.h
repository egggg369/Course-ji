//
//  KaoheTableViewCell.h
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/15.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PieChartView.h"

NS_ASSUME_NONNULL_BEGIN

@interface KaoheTableViewCell : UITableViewCell
@property(nonatomic, strong) UILabel *timelabel;
@property(nonatomic, strong) UILabel *label;
//@property(nonatomic, retain) PieCharView *piecharview;
@property (nonatomic,strong) PieChartView *pieChartView2;
@property (nonatomic,assign) BOOL isBtnClicked;

@end

NS_ASSUME_NONNULL_END
