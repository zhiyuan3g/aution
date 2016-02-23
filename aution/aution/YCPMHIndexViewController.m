//
//  YCPMHIndexViewController.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "YCPMHIndexViewController.h"
#import "YCPMHTableViewCell.h"

@interface YCPMHIndexViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation YCPMHIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 表格背景颜色
    self.tableView.backgroundColor = [UIColor colorWithRed:1.000 green:0.843 blue:0.815 alpha:1.00];
    // 表格背景图片
    UIImageView * bgIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"640bg"]];
    self.tableView.backgroundView = bgIV;
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    // 去掉分割线
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YCPMHTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"YCPMHCell" forIndexPath:indexPath];
    cell.nameLabel.text = @"香港秋季拍卖会";
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController * vc = [sb instantiateViewControllerWithIdentifier:@"pmzcListVC"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
