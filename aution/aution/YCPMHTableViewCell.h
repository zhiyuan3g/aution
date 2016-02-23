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
@property (assign,nonatomic)int state; //状态（1待预展，2预展中，3已结束） 只需要设置这个状态就可以

@property (weak, nonatomic) IBOutlet UILabel *nameLabel; //名称
@property (weak, nonatomic) IBOutlet UIButton *companyBtn; // 公司名称
@property (weak, nonatomic) IBOutlet UIButton *dateBtn; // 日期时间
@property (weak, nonatomic) IBOutlet UIButton *addressBtn; // 地址
@property (weak, nonatomic) IBOutlet UIView *bgView; // 背景view
@property (weak, nonatomic) IBOutlet UIImageView *picImageView; //右侧图片
@end
