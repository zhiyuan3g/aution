//
//  BaseMidAndBotView.m
//  aution
//
//  Created by Janae on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "BaseMidAndBotView.h"
#import "BaseTopBarView.h"

#define COUNT 5 //底部导航个数
@class BaseViewController;
@implementation BaseMidAndBotView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        CGRect rect = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)-44);
        /// 界面布局
        self.syDefaultView = [[YCSYDefaultView alloc]initWithFrame:rect];
        [self addSubview:self.syDefaultView];
        _currentView = self.syDefaultView;
        
        self.pmDefaultView = [[YCPMDefaultView alloc]initWithFrame:rect];
        
        self.ppDefaultView = [[YCPPDefaultView alloc]initWithFrame:rect];
        
        self.jgDefaultView = [[YCJGDefaultView alloc]initWithFrame:rect];
        
        self.gzDefaultView = [[YCGZDefaultView alloc]initWithFrame:rect];
        

        /// 自定义底部导航栏
        self.tabBarBG = [[UIImageView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame)-44, CGRectGetWidth(self.frame), 44)];
        self.tabBarBG.backgroundColor = [UIColor whiteColor];
        self.tabBarBG.userInteractionEnabled = YES;
        [self addSubview:self.tabBarBG];
        
        /// 自定义底部导航栏图标
        CGFloat initialX = CGRectGetWidth(self.frame)/COUNT;
        // 默认（导航栏图标数组）
        NSArray * picArr = @[@"icon_menu_index_sel.png", @"icon_menu_auction_nor.png", @"icon_menu_goods_nor.png", @"icon_menu_jigou_nor.png", @"icon_menu_user_nor.png"];
        // 选中（导航栏图标数组）
        NSArray * titleArr = @[@"首页", @"拍卖会", @"拍品", @"拍卖机构", @"个人中心"];
        // 布局
        for (int i = 0; i < COUNT; i++) {
            UIButton * tabBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            tabBtn.frame = CGRectMake(i * initialX, 0, initialX, 44);
            [tabBtn setImage:[UIImage imageNamed:[picArr objectAtIndex:i]] forState:UIControlStateNormal];
            tabBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 17, 0);
            if (i == 0) _currentTab = tabBtn;
            tabBtn.titleLabel.font = [UIFont systemFontOfSize:10];
            // tag 值
            [tabBtn setTag:i+101];
            [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
            [self.tabBarBG addSubview:tabBtn];
            // label 标签 
            UILabel * tabLab = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(tabBtn.frame)-20, CGRectGetWidth(tabBtn.frame), 20)];
            tabLab.backgroundColor = [UIColor clearColor];
            tabLab.text = [titleArr objectAtIndex:i];
            tabLab.font = [UIFont systemFontOfSize:10];
            tabLab.textAlignment = NSTextAlignmentCenter;
            [tabBtn addSubview:tabLab];
            
        }
        _currentTab = (UIButton *)[self viewWithTag:101];
        
    }
    return self;
}

- (void)tabBtnAction:(UIButton *)btn {
//    [btn setSelected:![btn isSelected]];
    [self lastSelectedTabWithButton:btn];
    
    if (101 == btn.tag) {
        [btn setImage:[UIImage imageNamed:@"icon_menu_index_sel.png"] forState:UIControlStateNormal];
        [_currentView removeFromSuperview];
        [self addSubview:self.syDefaultView];
        _currentView = self.syDefaultView;
       [self.topBarView.titleLable setText:@"雅昌拍卖图录"];
    }else if (102 == btn.tag) {
        [btn setImage:[UIImage imageNamed:@"icon_menu_auction_sel.png"] forState:UIControlStateNormal];
        [_currentView removeFromSuperview];
        [self addSubview:self.pmDefaultView];
        _currentView = self.pmDefaultView;
        [self.topBarView.titleLable setText:@"拍卖会"];
    }else if (103 == btn.tag) {
        [btn setImage:[UIImage imageNamed:@"icon_menu_goods_sel.png"] forState:UIControlStateNormal];
        [_currentView removeFromSuperview];
        [self addSubview:self.ppDefaultView];
        _currentView = self.ppDefaultView;
        [self.topBarView.titleLable setText:@"拍品"];
    }else if (104 == btn.tag) {
        [btn setImage:[UIImage imageNamed:@"icon_menu_jigou_sel.png"] forState:UIControlStateNormal];
        [_currentView removeFromSuperview];
        [self addSubview:self.jgDefaultView];
        _currentView = self.jgDefaultView;
        [self.topBarView.titleLable setText:@"拍卖机构"];
    }else if (105 == btn.tag) {
        [btn setImage:[UIImage imageNamed:@"icon_menu_user_sel.png"] forState:UIControlStateNormal];
        [_currentView removeFromSuperview];
        [self addSubview:self.gzDefaultView];
        _currentView = self.gzDefaultView;
        [self.topBarView.titleLable setText:@"个人中心"];
    }
    _currentTab = btn;
}

- (void)lastSelectedTabWithButton:(UIButton *)btn {
    
    // 使上次选中的按钮背景图片恢复未被选中时
    if (101 == _currentTab.tag) {
        [_currentTab setImage:[UIImage imageNamed:@"icon_menu_index_nor.png"] forState:UIControlStateNormal];
    }
    else if (102 == _currentTab.tag) {
        [_currentTab setImage:[UIImage imageNamed:@"icon_menu_auction_nor.png"] forState:UIControlStateNormal];
    }
    else if (103 == _currentTab.tag) {
        [_currentTab setImage:[UIImage imageNamed:@"icon_menu_goods_nor.png"] forState:UIControlStateNormal];
    }
    else if (104 == _currentTab.tag) {
        [_currentTab setImage:[UIImage imageNamed:@"icon_menu_jigou_nor.png"] forState:UIControlStateNormal];
    }
    else if (105 == _currentTab.tag) {
        [_currentTab setImage:[UIImage imageNamed:@"icon_menu_user_nor.png"] forState:UIControlStateNormal];
    }

}


@end
