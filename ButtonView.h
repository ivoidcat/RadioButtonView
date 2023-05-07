//
//  ButtonView.h
//  UniversalApp
//
//  Created by 志刚杨 on 2023/5/6.
//  Copyright © 2023 voidcat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ButtonView : UIControl
@property (nonatomic, strong) ButtonModel *model; // 按钮的数据模型
@property (nonatomic, strong) UILabel *titleLabel; // 标题Label
@property (nonatomic, strong) UIImageView *iconView; // 图标ImageView
@end



NS_ASSUME_NONNULL_END
