// RadioButtonView.m
#import "RadioButtonView.h"
#import "ButtonView.h"


@interface RadioButtonView ()

@property (nonatomic, strong) NSMutableArray<ButtonView *> *buttonViews; // 按钮View数组

@end

@implementation RadioButtonView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
//        [self setupSubviews];
    }
    return self;
}


- (void)setModels:(NSArray<ButtonModel *> *)models
{
    _models = models;
    [self removeAllSubviews];
    [self setupSubviews];
}

- (void)setupSubviews {
    // 添加按钮View
    self.buttonViews = [NSMutableArray array];
    for (NSInteger i = 0; i < self.models.count; i++) {
        ButtonView *buttonView = [[ButtonView alloc] initWithFrame:CGRectZero];
        buttonView.tag = i;
        buttonView.titleLabel.textColor = self.titleColor;
        [buttonView addTarget:self action:@selector(buttonViewDidTapped:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:buttonView];
        [self.buttonViews addObject:buttonView];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 布局按钮View
    CGFloat buttonWidth = self.bounds.size.width / self.models.count;
    for (NSInteger i = 0; i < self.buttonViews.count; i++) {
        ButtonView *buttonView = self.buttonViews[i];
        buttonView.frame = CGRectMake(i * buttonWidth, 0, buttonWidth, self.bounds.size.height);
        buttonView.model = self.models[i];
        buttonView.selected = (i == self.selectedIndex);
    }
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex {
    if (_selectedIndex == selectedIndex) {
        return;
    }
    
    // 更新选中状态
    _selectedIndex = selectedIndex;
    for (NSInteger i = 0; i < self.buttonViews.count; i++) {
        ButtonView *buttonView = self.buttonViews[i];
        buttonView.selected = (i == selectedIndex);
    }
    
    // 发送事件
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)buttonViewDidTapped:(ButtonView *)buttonView {
    self.selectedIndex = buttonView.tag;
}

@end
