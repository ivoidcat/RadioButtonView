//
//  ButtonView.m
//  UniversalApp
//
//  Created by 志刚杨 on 2023/5/6.
//  Copyright © 2023 voidcat. All rights reserved.
//

#import "ButtonView.h"


@implementation ButtonView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews {
    // 添加标题Label
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.titleLabel];
    
    // 添加图标ImageView
    self.iconView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self addSubview:self.iconView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 布局标题Label和图标ImageView
    CGFloat padding = 5;
    CGFloat iconWidth = 20;
    self.titleLabel.frame = CGRectMake(0, 0, self.bounds.size.width - iconWidth - padding, self.bounds.size.height);
    self.iconView.frame = CGRectMake(self.bounds.size.width - iconWidth, 0, iconWidth, iconWidth);
    self.iconView.centerY = self.height/2;
}

- (void)setModel:(ButtonModel *)model {
    _model = model;
    
    // 更新标题和图标
    self.titleLabel.text = model.title;
    self.iconView.image = model.isSelected ? model.selectedIcon : model.unselectedIcon;
//    self.iconView.size = model.iconSize;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    
    // 更新图标的选中状态
    self.iconView.image = selected ? self.model.selectedIcon : self.model.unselectedIcon;
}

@end
