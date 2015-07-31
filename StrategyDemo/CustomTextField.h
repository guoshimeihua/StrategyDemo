//
//  CustomTextField.h
//  StrategyDemo
//
//  Created by Bruce on 15/7/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"
@interface CustomTextField : UITextField

@property (nonatomic, strong) InputValidator *inputValidator; //用一个属性保持对InputValidator的引用。

- (BOOL)validate;

@end
