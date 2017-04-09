//
//  InputValidator.m
//  iOS设计模式-策略模式
//
//  Created by DeTong on 2017/4/9.
//  Copyright © 2017年 DeTong. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error
{
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
