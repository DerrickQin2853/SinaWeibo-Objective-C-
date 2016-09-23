//
//  DQBaseTabBar.m
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import "DQBaseTabBar.h"

@interface DQBaseTabBar ()
@property (nonatomic, weak) UIButton *composeButton;
@end

@implementation DQBaseTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        UIButton *tempButton = [[UIButton alloc]init];
        
        _composeButton = tempButton;
        
        [_composeButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [_composeButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        [_composeButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [_composeButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        
        [self addSubview:_composeButton];
        [_composeButton addTarget:self action:@selector(composeButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    //设置宽高
    CGFloat buttonWidth = self.bounds.size.width / 5;
    CGFloat buttonheight = self.bounds.size.height;
    //索引
    int i = 0;
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            subview.frame = CGRectMake(i * buttonWidth, 0, buttonWidth, buttonheight);
            
            i += (i == 1)? 2:1;
        }
    }
    
    CGRect composebuttonBounds = self.composeButton.bounds;
    composebuttonBounds.size = CGSizeMake(buttonWidth, buttonheight);
    self.composeButton.bounds = composebuttonBounds;
    
    self.composeButton.center = CGPointMake(self.center.x, self.frame.size.height * 0.5);
    
    
}

- (void)composeButtonClick{
    if (self.composeBlock) {
        self.composeBlock();
    }
}

@end
