//
//  YCPMHTableViewCell.h
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import <UIKit/UIKit.h>

// 拍卖会自定义Cell
@interface YCPMHTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *stateLabel; //状态（待预展，预展中，已结束）
@property (weak, nonatomic) IBOutlet UILabel *nameLabel; //名称
@property (weak, nonatomic) IBOutlet UILabel *organizationLabel; //机构名称
@property (weak, nonatomic) IBOutlet UILabel *dateLabel; // 日期时间
@property (weak, nonatomic) IBOutlet UILabel *addressLabel; // 地址
@property (weak, nonatomic) IBOutlet UIView *bgView; // 背景view
@property (weak, nonatomic) IBOutlet UIImageView *picImageView; //右侧图片
@end
