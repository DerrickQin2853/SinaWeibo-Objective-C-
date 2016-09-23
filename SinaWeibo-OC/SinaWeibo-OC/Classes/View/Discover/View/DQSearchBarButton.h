//
//  DQSearchBarButton.h
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface DQSearchBarButton : UIButton
@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;
+(instancetype)loadSearchButton;
@end
