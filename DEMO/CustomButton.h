//
//  CustomButton.h
//  DEMO
//
//  Created by 123 on 16/9/12.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomButton : UIButton
+ (instancetype)buttonWithType:(UIButtonType)buttonType WithFrame:(CGRect)rect WithTitle:(NSString *)title WithImageName:(NSString *)imageName;
@end
