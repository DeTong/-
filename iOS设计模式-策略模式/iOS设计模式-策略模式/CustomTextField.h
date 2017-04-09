//
//  CustomTextField.h
//  iOS设计模式-策略模式
//
//  Created by DeTong on 2017/4/9.
//  Copyright © 2017年 DeTong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomTextField : UITextField

{
    @private
//    InputValidator *inputValidator_;
}

@property (nonatomic , strong) InputValidator *inputValidator;

- (BOOL)validate;

@end
