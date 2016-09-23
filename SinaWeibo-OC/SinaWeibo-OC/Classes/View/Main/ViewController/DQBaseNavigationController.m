//
//  DQBaseNavigationController.m
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import "DQBaseNavigationController.h"
#import "UIBarButtonItem+Extension.h"
@interface DQBaseNavigationController ()

@end

@implementation DQBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        
        UIBarButtonItem *leftBackItem = [[UIBarButtonItem alloc]initWithImage:@"navigationbar_back_withtext" title:@"返回" target:self action:@selector(backItemClick)];
        viewController.navigationItem.leftBarButtonItem = leftBackItem;
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
    
}

- (void)backItemClick{
    [self popViewControllerAnimated:YES];
}
@end
