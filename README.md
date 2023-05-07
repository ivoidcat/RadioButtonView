# RadioButtonView
iOS 单选按钮

        // 创建RadioButtonView实例
        RadioButtonView *radioButtonView = [[RadioButtonView alloc] initWithFrame:CGRectMake(titleLabel.right, titleLabel.top, 160, 50)];
        radioButtonView.centerY = titleLabel.centerY;
        [self.scrollView addSubview:radioButtonView];

        // 设置数据模型
        UIImage *selectedImage = [UIImage imageNamed:@"白金瀚选中"];
        UIImage *unselectedImage = [UIImage imageNamed:@"白金瀚未选"];
        
        ButtonModel *buttonModel = [[ButtonModel alloc] initWithTitle:@"是" selectedIcon:selectedImage unselectedIcon:unselectedImage];

        ButtonModel *buttonMode2 = [[ButtonModel alloc] initWithTitle:@"否" selectedIcon:selectedImage unselectedIcon:unselectedImage];

        radioButtonView.titleFont = [UIFont systemFontOfSize:14];
        radioButtonView.titleColor = [UIColor whiteColor];
        radioButtonView.selectedTitleColor = [UIColor whiteColor];
        radioButtonView.iconSize = CGSizeMake(20, 20);
        radioButtonView.iconTitleSpacing = 8;
        
        NSArray *models = @[
            buttonModel,buttonMode2
        ];
        radioButtonView.models = models;

        // 设置一些其他属性


//         添加事件处理程序
        [radioButtonView addTarget:self action:@selector(radioButtonViewValueChanged:) forControlEvents:UIControlEventValueChanged];
