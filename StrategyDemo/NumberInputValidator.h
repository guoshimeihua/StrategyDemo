//
//  NumberInputValidator.h
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "InputValidator.h"

@interface NumberInputValidator : InputValidator

/**
 *  这里重新声明了这个方法，以强调这个子类实现或重写了什么，这不是必须的，但是是个好习惯。
 */
- (void)configValidateInfo;

@end
