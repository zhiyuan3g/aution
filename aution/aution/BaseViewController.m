//
//  BaseViewController.m
//  aution
//
//  Created by Janae on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseTopBarView.h"
#import "BaseMidAndBotView.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 背景颜色
    self.view.backgroundColor = [UIColor lightGrayColor];
    // 隐藏导航栏
    self.navigationController.navigationBarHidden = YES;
    
    // 自定义导航栏
    self.topBarView = [[BaseTopBarView alloc]initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.frame), 46)];
    self.topBarView.backgroundColor = [UIColor whiteColor];
    [self.topBarView.titleLable setText:@"雅昌拍卖图录"];
    [self.view addSubview:self.topBarView];
    
    // 其他视图
    BaseMidAndBotView * mView = [[BaseMidAndBotView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.topBarView.frame), CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-CGRectGetMaxY(self.topBarView.frame))];
    mView.topBarView = self.topBarView;
    [self.view addSubview:mView];

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
