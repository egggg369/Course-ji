//
//  ViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "KaoqinViewController.h"
#import "KaoheTableViewCell.h"
#import "QingjiaViewController.h"


@interface KaoqinViewController ()

@end

@implementation KaoqinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0 green:183/255.0 blue:255/255.0 alpha:1];
    self.navigationController.navigationBar.translucent = NO;
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize: 20], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade1"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade2"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"grade3"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"kaoqin"];
    [self.tableView registerClass:[KaoheTableViewCell class] forCellReuseIdentifier:@"kaoqin1"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    UIImage *ima = [[UIImage imageNamed:@"头像"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItems = @[image];
    
}

//高度
- (CGFloat)tableView: (UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        return 150;
    }else if (indexPath.section == 0 && indexPath.row == 1){
        return 50;
    }else if (indexPath.section == 0 && indexPath.row == 2) {
        return  65;
    }else if (indexPath.section == 0 && indexPath.row == 3) {
        return  300;
    }else if (indexPath.section == 1 && indexPath.row == 0) {
        return 60;
    }else {
        return 50;
    }
    
}

//几个cell
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

//几列有几行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0) {
        return 4;
    }else {
        return 4;
    }
}




- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 && indexPath.row ==0) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade" forIndexPath:indexPath];
        cell.contentView.backgroundColor = [UIColor colorWithRed:0 green:180/255.0 blue:255/255.0 alpha:1];
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 0 && indexPath.row == 1) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade1" forIndexPath:indexPath];
        cell.contentView.backgroundColor = [UIColor colorWithRed:243/255.0 green:249/255.0 blue:249/255.0 alpha:1];
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 0 && indexPath.row == 2) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade2" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 0 && indexPath.row == 3) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grade3" forIndexPath:indexPath];
        
       
        
        cell.selectionStyle = 0;
        return cell;
    }else if(indexPath.section == 1 && indexPath.row ==0) {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kaoqin1" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else {
        KaoheTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kaoqin" forIndexPath:indexPath];
        NSArray *labelArr1 = @[@"缺勤", @"请假", @"到课"];
        NSArray *timeArr1 = @[@"10次", @"10次", @"10次"];

        cell.timelabel.text = timeArr1[indexPath.row  - 1];
        cell.label.text = labelArr1[indexPath.row - 1];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = 0;
        return cell;
        
        
    }
}

- (void) next {
    QingjiaViewController *qingjia = [[QingjiaViewController alloc] init];
    
    [self.navigationController pushViewController:qingjia animated:YES];
}
        


@end
