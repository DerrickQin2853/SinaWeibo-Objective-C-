//
//  DQBaseTabBar.h
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DQBaseTabBar : UITabBar
@property (nonatomic, copy) void(^composeBlock)();
@end
