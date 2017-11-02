//
//  LimitInputTwoDecimal.m
//  TextFiledLimitInputContent
//
//  Created by iOS on 2017/9/27.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import "LimitInputTwoDecimal.h"

@implementation LimitInputTwoDecimal {
    BOOL _isDot; // 是否是点
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self=[super initWithFrame:frame]) {
        self.borderStyle=UITextBorderStyleLine;
        self.keyboardType=UIKeyboardTypeDecimalPad;
    }
    return self;
    
}

- (BOOL)decimalTextField:(UITextField *)textField withRange:(NSRange)range replaceStr:(NSString *)string {
    
    if (![string isEqualToString:@""]) {
        
        NSInteger dotLocation = [textField.text rangeOfString:@"."].location;
        
        if (dotLocation == NSNotFound && range.location != 0) {
            if (range.location >= self.wholeNumDigits+self.DecimalDigits) {
                if ([string isEqualToString:@"."] && range.location == self.wholeNumDigits+self.DecimalDigits) {
                    return YES;
                }
                return NO;
            } else {
                if (_isDot ==YES) {
                    if ([string isEqualToString:@"."]) {
                        return YES;
                    }
                    return NO;
                } else {
                    NSString *first = [textField.text substringFromIndex:0];
                    if ([first isEqualToString:@"0"]) {
                        if ([string isEqualToString:@"."]) {
                            return YES;
                        }
                        return NO;
                    } else {
                        return YES;
                    }
                }
            }
        } else {
            if ([string isEqualToString:@"."]) {
                NSString *first = [textField.text substringFromIndex:0];
                if ([first isEqualToString:@"0"]) {
                    textField.text = @"0";
                }else if ([first isEqualToString:@""]){
                    textField.text = @"0";
                }else{
                    if ([string isEqualToString:@"."]){
                        return NO;
                    }
                    return YES;
                }
            }
            if ([string isEqualToString:@"0"]) {
                _isDot =YES;
            } else {
                _isDot =NO;
            }
        }
        if (dotLocation != NSNotFound && range.location > dotLocation + self.DecimalDigits) {
            return NO;
        }
        if (textField.text.length > self.wholeNumDigits+self.DecimalDigits) {
            return NO;
        }
    }
    
    return YES;
    
}

@end
