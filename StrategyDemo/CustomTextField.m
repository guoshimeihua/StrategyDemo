//
//  CustomTextField.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate {
    // 调用该方法，对验证信息进行配置。
    [_inputValidator configValidateInfo];
    
    NSError *error = nil;
    BOOL validationResult = [_inputValidator validateInput:self error:&error];
    
    if (!validationResult) {
        // 通过这个例子也让自己明白了，NSError的具体用法。
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:[error localizedDescription] message:[error localizedFailureReason] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
    return validationResult;
}


@end
