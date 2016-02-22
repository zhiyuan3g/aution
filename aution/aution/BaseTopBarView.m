//
//  BaseTopBarView.m
//  aution
//
//  Created by Janae on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "BaseTopBarView.h"

@implementation BaseTopBarView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 背景图片
        self.backImageView = [[UIImageView alloc]initWithFrame:frame];
        self.backImageView.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.backImageView];
        
        // 导航栏Title
        self.titleLable = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, CGRectGetWidth(self.frame)-100, CGRectGetHeight(self.frame)-20)];
        self.titleLable.textColor = [UIColor darkGrayColor];
        self.titleLable.font = [UIFont fontWithName:@"FZZZHUNHJW—GB1-0" size:17.0];   // 方正正准黑简体
        [self addSubview:self.titleLable];
        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
