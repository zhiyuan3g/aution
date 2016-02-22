//
//  YCPMHTableViewCell.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "YCPMHTableViewCell.h"

@implementation YCPMHTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    // 使用贝塞尔曲线绘制圆角
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bgView.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(5, 5)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bgView.bounds;
    maskLayer.path = maskPath.CGPath;
    self.bgView.layer.mask = maskLayer;
    
    UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:self.stateLabel.bounds byRoundingCorners:UIRectCornerBottomLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(3, 3)];
    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] init];
    maskLayer2.frame = self.stateLabel.bounds;
    maskLayer2.path = maskPath2.CGPath;
    self.stateLabel.layer.mask = maskLayer2;
    
    // 方正正准黑简体
    self.nameLabel.font = [UIFont fontWithName:@"FZZZHUNHJW--GB1-0" size:17.0];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
