//
//  qingjiaViewController.h
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/21.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QingjiaViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (nonatomic, strong) UITableView *tableView1;
@property (nonatomic, strong) UITableView *tableView2;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UISegmentedControl *segment;
@property (nonatomic,strong) UIImagePickerController *imagePicker;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,retain) NSString *namestr;
@end

NS_ASSUME_NONNULL_END
