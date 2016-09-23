//
//  DQSearchBarButton.m
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import "DQSearchBarButton.h"

@implementation DQSearchBarButton

-(void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    //设置图片的内边距
    self.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    //设置文字的内边距
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0);
 
    CGRect selfBounds = self.bounds;
    
    selfBounds.size.width = [UIScreen mainScreen].bounds.size.width;
    
    [self setBounds:selfBounds];
    
    self.adjustsImageWhenHighlighted = NO;
    
    self.layer.cornerRadius = 6;
}

+(instancetype)loadSearchButton{
    UINib *nib = [UINib nibWithNibName:@"DQSearchBarButton" bundle:nil];
    
    return [[nib instantiateWithOwner:nil options:nil] lastObject];
}

@end
