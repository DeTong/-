//
//  ViewController.m
//  iOS设计模式-策略模式
//
//  Created by DeTong on 2017/4/9.
//  Copyright © 2017年 DeTong. All rights reserved.
//

#import "ViewController.h"

#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"
#import "CustomTextField.h"

@interface ViewController ()<UITextFieldDelegate>

{
    @private
    CustomTextField *numericTextField_;
    CustomTextField *alphaTextField_;
}

@property (nonatomic , retain) IBOutlet CustomTextField *numericTextField;
@property (nonatomic , retain) IBOutlet CustomTextField *alphaTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.numericTextField.inputValidator = [[NumericInputValidator alloc] init];
    self.alphaTextField.inputValidator = [[AlphaInputValidator alloc] init];
}

#pragma mark - UITextFieldDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
