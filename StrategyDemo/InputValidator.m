//
//  InputValidator.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

/**
 *  在基类方法中，这个方法的默认实现只是把错误指针设置为nil,并向调用者返回NO。
 *  具体的实现，可以由子类重载来实现的。(这种思想，自己要多学下)
 *  子类重载父类的方法，直接重载就可以了。
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
