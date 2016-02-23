//
//  ViewController.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

// ******************************
// 临时首页，自行添加各版块首页跳转代码
// ******************************

// 拍卖会按钮点击事件
- (IBAction)tapPMHBtn:(UIButton *)sender {
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController * vc = [sb instantiateViewControllerWithIdentifier:@"pmhIndexVC"];
    [self presentViewController:vc animated:YES completion:nil];
}

// 拍品按钮点击事件
- (IBAction)tapPPBtn:(UIButton *)sender {
    
}

// 拍卖机构按钮点击事件
- (IBAction)tapPMJGBtn:(UIButton *)sender {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
