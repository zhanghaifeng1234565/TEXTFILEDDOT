//
//  ViewController.m
//  TextFiledLimitInputContent
//
//  Created by iOS on 2017/9/27.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import "ViewController.h"
#import "LimitInputPriceDecimal.h"
#import "LimitInputTwoDecimal.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) LimitInputTwoDecimal *textFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textFiled = [[LimitInputTwoDecimal alloc] initWithFrame:CGRectMake(30, 100, [UIScreen mainScreen].bounds.size.width-60, 30)];
    [self.view addSubview:self.textFiled];
    self.textFiled.delegate = self;
    self.textFiled.wholeNumDigits=5;
    self.textFiled.DecimalDigits=2;
    
}

- (BOOL)textField:(LimitInputTwoDecimal *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    return [textField decimalTextField:textField withRange:range replaceStr:string];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
