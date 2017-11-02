//
//  LimitInputTwoDecimal.h
//  TextFiledLimitInputContent
//
//  Created by iOS on 2017/9/27.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LimitInputTwoDecimal : UITextField

/*
 
 使用创建
 self.textFiled = [[LimitInputTwoDecimal alloc] initWithFrame:CGRectMake(30, 100, [UIScreen mainScreen].bounds.size.width-60, 30)];
 [self.view addSubview:self.textFiled];
 self.textFiled.delegate = self;
 
 实现方法
 - (BOOL)textField:(LimitInputTwoDecimal *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
 
 return [textField decimalTextField:textField withRange:range replaceStr:string];
 }
 
 */

/**
 整数位数
 */
@property (nonatomic, assign) int wholeNumDigits;

/**
 小数的位数
 */
@property (nonatomic, assign) int DecimalDigits;

/**
 初始化限制输入小数 textFiled

 @param frame frame description
 @return textFiled
 */
- (instancetype)initWithFrame:(CGRect)frame;

/**
 限制输入小数的方法

 @param textField textField description
 @param range range description
 @param string string description
 @return return value description
 */
- (BOOL)decimalTextField:(UITextField *)textField withRange:(NSRange)range replaceStr:(NSString *)string;


@end
