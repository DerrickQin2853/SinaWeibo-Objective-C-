//
//  DQTabBarController.m
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import "DQTabBarController.h"
#import "DQBaseNavigationController.h"
#import "DQBaseTabBar.h"
#import "DQHomeViewController.h"
@interface DQTabBarController ()

@end

@implementation DQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    DQBaseTabBar *tabBar = [DQBaseTabBar new];
    //KVC赋值
    [self setValue:tabBar forKey:@"tabBar"];
    
    tabBar.composeBlock = ^{
        NSLog(@"composeBlock Clicked!");
    };
    
    //添加子控制器
    [self addChildViewControllers];
    
}

- (void)addChildViewControllers {
    
    [self addChildViewController:[[DQHomeViewController alloc]init] title:@"首页" imageName:@"tabbar_home"];
    [self addChildViewController:[[DQHomeViewController alloc]init] title:@"消息" imageName:@"tabbar_message_center"];
    [self addChildViewController:[[DQHomeViewController alloc]init] title:@"发现" imageName:@"tabbar_discover"];
    [self addChildViewController:[[DQHomeViewController alloc]init] title:@"我" imageName:@"tabbar_profile"];
}

- (void)addChildViewController:(UIViewController *)viewController title:(NSString *)title imageName:(NSString *)imageName{
    //设置title
    viewController.navigationItem.title = title;
    viewController.tabBarItem.title = title;
    //设置图片
    UIImage *tabImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.image = tabImage;
    
    UIImage *tabSelectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = tabSelectedImage;
    
    NSDictionary *attrDict = @{NSForegroundColorAttributeName:[UIColor orangeColor]};
    
    [viewController.tabBarItem setTitleTextAttributes:attrDict forState:UIControlStateSelected];
    
    [viewController.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    
    viewController.tabBarItem.badgeValue = nil;
    
    DQBaseNavigationController *naviVC = [[DQBaseNavigationController alloc]initWithRootViewController:viewController];
    
    [self addChildViewController:naviVC];
}

@end
