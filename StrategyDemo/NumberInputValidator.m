//
//  NumberInputValidator.m
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "NumberInputValidator.h"

@implementation NumberInputValidator

- (void)configValidateInfo {
    self.regExpressPatter = @"^[0-9]*$";
    self.descriptionStr = NSLocalizedString(@"验证失败", @"");
    self.reason = NSLocalizedString(@"输入仅能包含数字", @"");
    self.errorCode = 1001;
}

@end
