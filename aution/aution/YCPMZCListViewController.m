//
//  YCPMZCListViewController.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "YCPMZCListViewController.h"
#import "YCPMZCHeaderView.h"

@interface YCPMZCListViewController ()
@property (weak, nonatomic) IBOutlet UIButton *auctionNameBtn;
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property(strong,nonatomic)YCPMZCHeaderView * headerView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation YCPMZCListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.headerView = [[YCPMZCHeaderView alloc] initWithFrame:self.bgView.bounds];
    [self.bgView addSubview:self.headerView];

    // 表格背景颜色
    self.tableView.backgroundColor = [UIColor colorWithRed:1.000 green:0.843 blue:0.815 alpha:1.00];
    // 表格背景图片
    UIImageView * bgIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"640bg"]];
    self.tableView.backgroundView = bgIV;
    
//    self.tableView.dataSource = self;
//    self.tableView.delegate = self;
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

@end
