//
//  CustomTextField.m
//  iOS设计模式-策略模式
//
//  Created by DeTong on 2017/4/9.
//  Copyright © 2017年 DeTong. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

//@synthesize inputValidator = inputValidator_;

//- (InputValidator *)inputValidator
//{
//    if (!_inputValidator) {
//        _inputValidator = [[InputValidator alloc] init];
//    }
//    return _inputValidator;
//}

- (BOOL)validate
{
    NSError *error = nil;
    BOOL validationResult = [self.inputValidator validateInput:self error:&error];
    
    if (!validationResult) {
//        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[error localizedDescription] message:[error localizedFailureReason] preferredStyle:UIAlertControllerStyleAlert];
//        [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alertController animated:YES completion:nil];
        NSLog(@"description %@",error.description);
        NSLog(@"localizedFailureReason %@",error.localizedFailureReason);
    }
    return validationResult;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
