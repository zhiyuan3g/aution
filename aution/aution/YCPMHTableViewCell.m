//
//  YCPMHTableViewCell.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "YCPMHTableViewCell.h"

@interface YCPMHTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *stateLabel; //状态标签
@end

@implementation YCPMHTableViewCell

- (void)awakeFromNib {
    // Initialization code
    switch (self.state) {
        case 2:
            self.stateLabel.backgroundColor = [UIColor redColor];
            self.stateLabel.text = @"预展中";
            break;
        case 3:
            self.stateLabel.backgroundColor = [UIColor colorWithRed:0.484 green:0.500 blue:0.483 alpha:1.00];
            self.stateLabel.text = @"已结束";
            break;
        default:
            //1
            self.stateLabel.backgroundColor = [UIColor colorWithRed:0.193 green:0.617 blue:0.508 alpha:1.00];
            self.stateLabel.text = @"待预展";
            break;
    }
    
    // 使用贝塞尔曲线绘制圆角
    // 背景view四个角为圆角
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bgView.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(5, 5)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bgView.bounds;
    maskLayer.path = maskPath.CGPath;
    self.bgView.layer.mask = maskLayer;
    // 状态标签下面两个角为圆角
    UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:self.stateLabel.bounds byRoundingCorners:UIRectCornerBottomLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(3, 3)];
    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] init];
    maskLayer2.frame = self.stateLabel.bounds;
    maskLayer2.path = maskPath2.CGPath;
    self.stateLabel.layer.mask = maskLayer2;
    
    // 方正正准黑简体
    self.nameLabel.font = [UIFont fontWithName:@"FZZZHUNHJW--GB1-0" size:17.0];
    
    // 设置选中无状态
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
