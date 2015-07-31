//
//  InputValidator.h
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static NSString *const InputValidationErrorDomain = @"InputValidationErrorDomain";

@interface InputValidator : NSObject
/**
 *  实际验证策略的存根方法
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error;

@end
