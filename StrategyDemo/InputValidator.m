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
 *  在基类方法中，这个方法的默认实现只是把错误指针设置为nil,并向调用者返回NO。
 *  具体的实现，可以由子类重载来实现的。(这种思想，自己要多学下)
 *  子类重载父类的方法，直接重载就可以了。
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
//    if (error) {
//        *error = nil;
//    }
//    return NO;
    
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:_regExpressPatter options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, input.text.length)];
    // 如果没有匹配，就会错误和NO.
    if (numberOfMatches == 0) {
        if (error != nil) {
            // 先判断error对象是存在的
//            NSString *description = NSLocalizedString(@"验证失败", @"");
//            NSString *reason = NSLocalizedString(@"输入仅能包含数字", @"");
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
    // 必须要让子类进行重载，不进行重载就抛出异常的错误。
    [NSException raise:NSInternalInconsistencyException format:@"你必须重载InputValidator子类的configValidateInfo方法"];
}

- (void)configExtraInfo {
    // 预留接口，留给将来使用。
}

@end
