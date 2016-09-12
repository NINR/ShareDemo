//
//  CustomButton.m
//  DEMO
//
//  Created by 123 on 16/9/12.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType WithFrame:(CGRect)rect WithTitle:(NSString *)title WithImageName:(NSString *)imageName
{
    CustomButton *instance=[super buttonWithType:buttonType];
    [instance setTitle:title forState:UIControlStateNormal];
    UIImage *image=[UIImage imageNamed:imageName];
    [instance setImage:image forState:UIControlStateNormal];
    instance.frame=rect;
    return instance;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    //视图上的子空间位置
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
