//
//  NSDictionary+Append.h
//  DEMO
//
//  Created by BearClawr on 16/9/13.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Append)

//创建controller的item字典
+ (instancetype)dictionaryWithTitleValue:(NSString *)title WithImage:(UIImage *)image WithSelectImage:(UIImage *)selectImage;
@end
