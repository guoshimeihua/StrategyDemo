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
 *  这些属性的值，由其子类提供来进行配置的。
 */
@property (nonatomic, copy) NSString *regExpressPatter;
@property (nonatomic, copy) NSString *descriptionStr;
@property (nonatomic, copy) NSString *reason;
@property (nonatomic, assign) NSInteger errorCode;

/**
 *  实际验证策略的存根方法
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error;

/**
 *  配置与验证相关的信息，这个要求子类必须重写，不进行重写的话，就抛出异常。
 */
- (void)configValidateInfo;

/**
 *  预留接口，留给将来扩展使用。
 */
- (void)configExtraInfo;

@end
