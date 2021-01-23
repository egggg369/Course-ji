//
//  qingjiaViewController.m
//  xiangmu1
//
//  Created by 郭红乐 on 2020/12/21.
//  Copyright © 2020 无. All rights reserved.
//

#import "QingjiaViewController.h"
#import "XinxiTableViewCell.h"
#import "HistoryTableViewCell.h"

@interface QingjiaViewController ()

@end

@implementation QingjiaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:1];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        _scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height);
        _scrollView.pagingEnabled = YES;
        _scrollView.bounces = NO;
        _scrollView.bouncesZoom = NO;
        _scrollView.alwaysBounceVertical = NO;
        _scrollView.scrollEnabled = YES;
        _scrollView.delegate = self;
        [self.view addSubview:_scrollView];
        
        
            
        
        _tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(20, 60, self.view.frame.size.width - 40, self.view.frame.size.height - 170) style:UITableViewStyleGrouped];
    
        _tableView2 = [[UITableView alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 1 + 20, 40, self.view.frame.size.width -40, 140 * 5/*self.view.frame.size.height*/)];
//    _tableView2.backgroundColor = [UIColor colorWithRed:255/255.0 green:0/255.0 blue:40/255.0 alpha:1];
//
        _tableView1.delegate = self;
        _tableView1.dataSource = self;
        _tableView2.delegate = self;
        _tableView2.dataSource = self;
        
    [_tableView1  setSeparatorColor:[UIColor whiteColor]];
        
        [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-1"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-2"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-3"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-4"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-5"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-6"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-7"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-8"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-9"];
    
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-2-0"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-3-0"];
    [_tableView1 registerClass:[XinxiTableViewCell class] forCellReuseIdentifier:@"article1-4-0"];
    
        [_tableView2 registerClass:[HistoryTableViewCell class] forCellReuseIdentifier:@"article2"];
        
        _tableView1.tag = 1;
        _tableView2.tag = 2;
        
        
//        [_tableView1 registerClass:[ArticleTableViewCell class] forCellReuseIdentifier:@"article1-1"];
//        [_tableView2 registerClass:[ArticleTableViewCell class] forCellReuseIdentifier:@"article1-2"];
//        [_tableView3 registerClass:[ArticleTableViewCell class] forCellReuseIdentifier:@"article1-3"];
//
        [_scrollView addSubview:_tableView1];
        [_scrollView addSubview:_tableView2];
      
        
        NSArray *array = @[@"提交请假", @"请假记录"];
        
        _segment = [[UISegmentedControl alloc] initWithItems:array];
        _segment.frame = CGRectMake(0, 0, self.view.frame.size.width, 50);
        _segment.tintColor = [UIColor grayColor];
        _segment.backgroundColor = [UIColor whiteColor];
        _segment.momentary = NO;
        _segment.selectedSegmentIndex = 0;
        [_segment setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        //未被选中状态
        [_segment setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blueColor]} forState:UIControlStateSelected];
        //被选中状态
        [_segment setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
        [self.view addSubview:_segment];
        [_segment addTarget:self action:@selector(roll) forControlEvents:UIControlEventValueChanged];
    
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
    
        
}

- (void) roll
{
    switch(_segment.selectedSegmentIndex) {
        case 0:
            [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
            break;
        case 1:
            [_scrollView setContentOffset:CGPointMake(self.view.frame.size.width, 0) animated:YES];
            break;
        default:
            break;
    }
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    if(_scrollView.contentOffset.x == 0) {
        _segment.selectedSegmentIndex = 0;
    }
    if(_scrollView.contentOffset.x == self.view.frame.size.width) {
        _segment.selectedSegmentIndex = 1;
    }
}




- (CGFloat)tableView: (UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if(tableView.tag == 1 && indexPath.section == 0) {
        return 60;
    }else if(tableView.tag == 1 && indexPath.section == 1){
        return 160;
    }else if(tableView.tag == 1 && indexPath.section == 2) {
        return 160;
    }else if(tableView.tag == 1 && indexPath.section == 3) {
        return 100;
    }else {
        return 140;
    }
}

//- (void)

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if(tableView.tag == 1) {
        return 4;
    }else {
        return 5;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(tableView.tag == 1 && section == 0) {
        return 9;
    }else if(tableView.tag == 1 && section == 1) {
        return 1;
    }else if(tableView.tag == 1 && section == 2) {
        return 1;
    }else if(tableView.tag == 1 && section == 3) {
        return 1;
    }else {
        return 1;
    }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"home"forIndexPath:indexPath];
    if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 0) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-1" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 1){
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-2" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 2) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-3" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 3) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-4" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 4) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-5" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 5) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-6" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 6) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-7" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 7) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-8" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 0 && indexPath.row == 8) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-9" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else  if(tableView.tag == 1 && indexPath.section == 1){
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-2-0" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;

    }else if(tableView.tag == 1 && indexPath.section == 2) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-3-0" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        
        UIButton *addbtn = [[UIButton alloc] init];
        addbtn.frame = CGRectMake(0, 790, 100, 100);
        [addbtn setImage:[[UIImage imageNamed:@"添加照片.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [addbtn addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
        //[addbtn setBackgroundImage:[self imageWithColor:[UIColor redColor]] forState:UIControlStateNormal];
        [self.tableView1 addSubview:addbtn];
        
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 805, 100, 100)];
        [self.tableView1 addSubview:self.imageView];
        
        return cell;
    }else if(tableView.tag == 1 && indexPath.section == 3) {
        XinxiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article1-4-0" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }else {
        HistoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article2" forIndexPath:indexPath];
        cell.selectionStyle = 0;
        return cell;
    }
    
}

//cell的背景颜色
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
//
//        [cell setBackgroundColor:[UIColor redColor]];
//
//}





- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = nil;
    headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 25)];
    headerView.backgroundColor = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:1];
    
    return headerView;
    //return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if(tableView.tag == 1 && section == 0) {
        return 0;
    }else if(tableView.tag == 2) {
        return 20;
    }
    return 25;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self.view endEditing:YES];
//    [self.tableView1 endEditing:YES];
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    //[[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}



//-(BOOL)textFieldShouldReturn:(UITextField *)textField{
//    //返回一个BOOL值，指明是否允许在按下回车键时结束编辑
//    //如果允许要调用resignFirstResponder 方法，这回导致结束编辑，而键盘会被收起
//    [self.tableView1 endEditing:YES];
//    return YES;
//}



- (void)keyboardWillDisAppear:(NSNotification *)notification{
    [UIView animateWithDuration:1 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, 0);}];
}

- (void)keyboardWillAppear:(NSNotification *)notification{
    CGRect keyboardFrame = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGFloat keyboardY = keyboardFrame.origin.y;
    [UIView animateWithDuration:1.0 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, keyboardY  - self.view.frame.size.height);}];
}

- (void) add {
    self.imagePicker = [[UIImagePickerController alloc] init];
    _imagePicker.delegate = self;
    _imagePicker.allowsEditing = YES;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"请选择打开方式" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *camera = [UIAlertAction actionWithTitle:@"相机" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self->_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        self->_imagePicker.modalPresentationStyle = UIModalPresentationFullScreen;
        self->_imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
        [self presentViewController:self->_imagePicker animated:YES completion:nil];
    }];
    UIAlertAction *photo = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        [self presentViewController:self->_imagePicker animated:YES completion:nil];
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:alert completion:nil];
    }];
    [alert addAction:camera];
    [alert addAction:photo];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}
                             
- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    [picker dismissViewControllerAnimated:YES completion:nil];
    UIImage *image = [info valueForKey:UIImagePickerControllerEditedImage];
    NSLog(@"%@", info);
    _imageView.image = image;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
