//
//  ViewController.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
#import "InputValidator.h"
#import "NumberInputValidator.h"
#import "AlphaInputValidator.h"
@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CustomTextField *numberTF;
@property (weak, nonatomic) IBOutlet CustomTextField *alphaTF;

@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    InputValidator *numberValidator = [[NumberInputValidator alloc] init];
    InputValidator *alphaValidator = [[AlphaInputValidator alloc] init];
    
    _numberTF.inputValidator = numberValidator;
    _alphaTF.inputValidator = alphaValidator;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}

@end
