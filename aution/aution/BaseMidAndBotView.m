//
//  BaseMidAndBotView.m
//  aution
//
//  Created by Janae on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "BaseMidAndBotView.h"
#define COUNT 5 //底部导航个数
@class BaseViewController;
@implementation BaseMidAndBotView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 0; i < 5; i++) {
            UIView * midView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)-44)];
            midView.tag = i;
            [self addSubview:midView];
        }
        _currentView = (UIView *)[self viewWithTag:0];

        /// 自定义底部导航栏
        self.tabBarBG = [[UIImageView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame)-44, CGRectGetWidth(self.frame), 44)];
        self.tabBarBG.backgroundColor = [UIColor whiteColor];
        self.tabBarBG.userInteractionEnabled = YES;
        [self addSubview:self.tabBarBG];
        
        /// 自定义底部导航栏图标
        CGFloat initialX = CGRectGetWidth(self.frame)/COUNT;
        // 默认（导航栏图标数组）
        NSArray * picArr = @[@"首页", @"拍卖会", @"拍品", @"拍卖机构", @"个人中心"];
        // 选中（导航栏图标数组）
        NSArray * picSelectedArr = @[@"*首页", @"*拍卖会", @"*拍品", @"*拍卖机构", @"*个人中心"];
        // 布局
        for (int i = 0; i < COUNT; i++) {
            UIButton * tabBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            tabBtn.frame = CGRectMake(i * initialX, 0, initialX, 44);
            [tabBtn setTitle:[picArr objectAtIndex:i] forState:UIControlStateNormal];
            [tabBtn setTitle:[picSelectedArr objectAtIndex:i] forState:UIControlStateSelected];
            [tabBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            // tag 值
            [tabBtn setTag:i+100];
            [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
            [self.tabBarBG addSubview:tabBtn];
        }
        
    }
    return self;
}

- (void)tabBtnAction:(UIButton *)btn {
    [btn setSelected:![btn isSelected]];
    switch (btn.tag) {
        case 100:
        {
            [(UIButton *)[self viewWithTag:101]setSelected:NO];
            [(UIButton *)[self viewWithTag:102]setSelected:NO];
            [(UIButton *)[self viewWithTag:103]setSelected:NO];
            [(UIButton *)[self viewWithTag:104]setSelected:NO];
        }
            break;
        case 101:
        {
            [(UIButton *)[self viewWithTag:100]setSelected:NO];
            [(UIButton *)[self viewWithTag:102]setSelected:NO];
            [(UIButton *)[self viewWithTag:103]setSelected:NO];
            [(UIButton *)[self viewWithTag:104]setSelected:NO];
        }
            break;
        case 102:
        {
            [(UIButton *)[self viewWithTag:100]setSelected:NO];
            [(UIButton *)[self viewWithTag:101]setSelected:NO];
            [(UIButton *)[self viewWithTag:103]setSelected:NO];
            [(UIButton *)[self viewWithTag:104]setSelected:NO];
        }
            break;
        case 103:
        {
            [(UIButton *)[self viewWithTag:101]setSelected:NO];
            [(UIButton *)[self viewWithTag:102]setSelected:NO];
            [(UIButton *)[self viewWithTag:100]setSelected:NO];
            [(UIButton *)[self viewWithTag:104]setSelected:NO];
        }
            break;
        case 104:
        {
            [(UIButton *)[self viewWithTag:101]setSelected:NO];
            [(UIButton *)[self viewWithTag:102]setSelected:NO];
            [(UIButton *)[self viewWithTag:103]setSelected:NO];
            [(UIButton *)[self viewWithTag:100]setSelected:NO];
        }
            break;
        default:
            break;
    }
}



@end
