#import "ButtonModel.h"


@implementation ButtonModel
- (instancetype)initWithTitle:(NSString *)title selectedIcon:(UIImage *)selectedIcon unselectedIcon:(UIImage *)unselectedIcon {
    self = [super init];
    if (self) {
        self.title = title;
        self.selectedIcon = selectedIcon;
        self.unselectedIcon = unselectedIcon;
    }
    return self;
}

@end
