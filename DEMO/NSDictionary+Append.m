//
//  NSDictionary+Append.m
//  DEMO
//
//  Created by BearClawr on 16/9/13.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import "NSDictionary+Append.h"

@implementation NSDictionary (Append)
+ (instancetype)dictionaryWithTitleValue:(NSString *)title WithImage:(UIImage *)image WithSelectImage:(UIImage *)selectImage{
    NSDictionary *dic=@{@"title":title,@"image":image,@"selectImage":selectImage};
    return dic;
}
@end
