//
//  ViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/14.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PieChartView.h"

@interface KaoqinViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic,strong) PieChartView *pieChartView2;
@property (nonatomic,assign) BOOL isBtnClicked;

@end

