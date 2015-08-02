//
//  AlphaInputValidator.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

- (void)configValidateInfo {
    self.regExpressPatter = @"^[a-zA-Z]*$";
    self.descriptionStr = NSLocalizedString(@"验证失败", @"");
    self.reason = NSLocalizedString(@"输入仅能包字母", @"");
    self.errorCode = 1002;
}

@end
