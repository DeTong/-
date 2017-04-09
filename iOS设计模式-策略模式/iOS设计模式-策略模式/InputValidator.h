//
//  InputValidator.h
//  iOS设计模式-策略模式
//
//  Created by DeTong on 2017/4/9.
//  Copyright © 2017年 DeTong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InputValidator : NSObject

{
    
}

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
