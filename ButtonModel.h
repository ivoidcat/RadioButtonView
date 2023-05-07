// ButtonModel.h
@interface ButtonModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIImage *selectedIcon;
@property (nonatomic, strong) UIImage *unselectedIcon;
@property (nonatomic, assign) BOOL isSelected; // 是否选中

- (instancetype)initWithTitle:(NSString *)title selectedIcon:(UIImage *)selectedIcon unselectedIcon:(UIImage *)unselectedIcon;

@end
