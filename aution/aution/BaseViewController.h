//
//  BaseViewController.h
//  aution
//
//  Created by Janae on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseTopBarView;

@interface BaseViewController : UIViewController
/// 自定义导航栏
@property(nonatomic, strong)BaseTopBarView * topBarView;

@end
