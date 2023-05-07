// RadioButtonView.h
#import <UIKit/UIKit.h>
#import "ButtonModel.h"


@interface RadioButtonView : UIControl

@property (nonatomic, strong) UIFont *titleFont; // 标题字体
@property (nonatomic, strong) UIColor *titleColor; // 标题颜色
@property (nonatomic, strong) UIColor *selectedTitleColor; // 选中时的标题颜色
@property (nonatomic, assign) CGSize iconSize; // 图标大小
@property (nonatomic, assign) CGFloat iconTitleSpacing; // 图标和标题之间的间距


@property (nonatomic, copy) NSArray<ButtonModel *> *models; // 按钮的数据模型数组
@property (nonatomic, assign) NSUInteger selectedIndex; // 当前选中的按钮索引

@end
