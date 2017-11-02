//
//  LimitInputPriceDecimal.h
//  TextFiledLimitInputContent
//
//  Created by iOS on 2017/9/27.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LimitInputPriceDecimal : UITextField

- (instancetype)initWithFrame:(CGRect)frame;

- (BOOL)decimalTextField:(UITextField *)textField withRange:(NSRange)range replaceStr:(NSString *)string;

@end
