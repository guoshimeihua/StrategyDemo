//
//  AlphaInputValidator.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

//- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
//    NSError *regError = nil;
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
//    
//    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, input.text.length)];
//    // 如果没有匹配，就会错误和NO.
//    if (numberOfMatches == 0) {
//        if (error != nil) {
//            // 先判断error对象是存在的
//            NSString *description = NSLocalizedString(@"验证失败", @"");
//            NSString *reason = NSLocalizedString(@"输入仅能包字母", @"");
//            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
//            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
//            
//            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
//            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1002 userInfo:userInfo]; //错误被关联到定制的错误代码1002和在InputValidator的头文件中。
//        }
//        
//        return NO;
//    }
//    
//    return YES;
//}

- (void)configValidateInfo {
    self.regExpressPatter = @"^[a-zA-Z]*$";
    self.descriptionStr = NSLocalizedString(@"验证失败", @"");
    self.reason = NSLocalizedString(@"输入仅能包字母", @"");
    self.errorCode = 1002;
}

@end
