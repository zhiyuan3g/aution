//
//  YCPMZCHeaderView.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "YCPMZCHeaderView.h"

@implementation YCPMZCHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadView];
    }
    return self;
}

- (void)loadView{
    UIImageView * bgImageView = [[UIImageView alloc] initWithFrame:self.bounds];
    bgImageView.image = [UIImage imageNamed:@"home_selectBtn_Bg00"];
    [self addSubview:bgImageView];
    
    UIButton *scBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [scBtn setTitle:@"收藏" forState:UIControlStateNormal];
    [scBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:scBtn];
    
    UIButton *fxBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [fxBtn setTitle:@"分享" forState:UIControlStateNormal];
    [fxBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:fxBtn];
    
    UIButton *jrxcBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [jrxcBtn setTitle:@"加入行程" forState:UIControlStateNormal];
    [jrxcBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:jrxcBtn];
    
    [scBtn setBackgroundImage:[UIImage imageNamed:@"home_selectBtn_Bg01"] forState:UIControlStateHighlighted];
    [fxBtn setBackgroundImage:[UIImage imageNamed:@"home_selectBtn_Bg02"] forState:UIControlStateHighlighted];
    [jrxcBtn setBackgroundImage:[UIImage imageNamed:@"home_selectBtn_Bg03"] forState:UIControlStateHighlighted];
    
    scBtn.translatesAutoresizingMaskIntoConstraints = NO;
    fxBtn.translatesAutoresizingMaskIntoConstraints = NO;
    jrxcBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSArray * c1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[scBtn]-0-[fxBtn(==scBtn)]-0-[jrxcBtn(==scBtn)]-0-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(scBtn,fxBtn,jrxcBtn)];
    
    NSArray * c2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[scBtn]-0-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(scBtn)];
    NSArray * c3 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[fxBtn]-0-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(fxBtn)];
    NSArray * c4 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[jrxcBtn]-0-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(jrxcBtn)];
    
    [self addConstraints:c1];
    [self addConstraints:c2];
    [self addConstraints:c3];
    [self addConstraints:c4];
    
}

@end
