//
//  BaseMidAndBotView.h
//  aution
//
//  Created by Janae on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YCSYDefaultView.h"
#import "YCPMDefaultView.h"
#import "YCPPDefaultView.h"
#import "YCJGDefaultView.h"
#import "YCGZDefaultView.h"

@class BaseTopBarView;
@interface BaseMidAndBotView : UIView
/// 选中的导航界面
@property(nonatomic, strong)UIView * currentView;
/// 底部导航栏
@property(nonatomic, strong)UIImageView * tabBarBG;
/// 选中的底部导航
@property(nonatomic, strong)UIButton * currentTab;
/// 首页
@property(nonatomic, strong)YCSYDefaultView * syDefaultView;
/// 拍卖会
@property(nonatomic, strong)YCPMDefaultView * pmDefaultView;
/// 拍品
@property(nonatomic, strong)YCPPDefaultView * ppDefaultView;
/// 拍卖机构
@property(nonatomic, strong)YCJGDefaultView * jgDefaultView;
/// 个人中心
@property(nonatomic, strong)YCGZDefaultView * gzDefaultView;
/// 自定义导航栏
@property(nonatomic, strong)BaseTopBarView * topBarView;

@end
