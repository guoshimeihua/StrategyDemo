//
//  InputValidator.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "InputValidator.h"

@interface InputValidator ()



@end

@implementation InputValidator

/**
 *  使用模板方法的时候，把公共的部分给抽离出来。不同的部分，交给子类去实现。
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:_regExpressPatter options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, input.text.length)];
    // 如果没有匹配，就会错误和NO.
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSArray *objArray = [NSArray arrayWithObjects:_descriptionStr, _reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:_errorCode userInfo:userInfo]; //错误被关联到定制的错误代码1001和在InputValidator的头文件中。
        }
        
        return NO;
    }
    
    return YES;
}

- (void)configValidateInfo {
    // 必须要让子类进行重写，不进行重写就抛出异常的错误。
    [NSException raise:NSInternalInconsistencyException format:@"你必须重写InputValidator子类的configValidateInfo方法"];
}

- (void)configExtraInfo {
    // 预留接口，留给将来使用。
}

@end
