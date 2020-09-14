//
//  RegisterView.m
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView


- (void)viewInit {
    
    self.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
    _sureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self addSubview:_sureButton];
    _sureButton.frame = CGRectMake(85, 460, 70, 35);
    [_sureButton setTitle:@"确定" forState:UIControlStateNormal];
    _sureButton.backgroundColor = [UIColor whiteColor];
    _sureButton.tintColor = [UIColor blackColor];
    _sureButton.layer.cornerRadius = 7;
    
    
    
    _noButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self addSubview:_noButton];
    _noButton.frame = CGRectMake(240, 460, 70, 35);
    [_noButton setTitle:@"取消" forState:UIControlStateNormal];
    _noButton.backgroundColor = [UIColor whiteColor];
    _noButton.tintColor = [UIColor blackColor];
    _noButton.layer.cornerRadius = 7;
    

    _nameTextfield = [[UITextField alloc] init];
    [self addSubview:_nameTextfield];
    _nameTextfield.borderStyle = UITextBorderStyleRoundedRect;
    _nameTextfield.placeholder = @"请输入用户名";
    _nameTextfield.keyboardType = UIKeyboardTypeDefault;
    _nameTextfield.backgroundColor = [UIColor colorWithWhite:0.98 alpha:1];
    _nameTextfield.frame = CGRectMake(67, 270, 280, 43);
    
    _passTextField = [[UITextField alloc] init];
    [self addSubview:_passTextField];
    _passTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passTextField.placeholder = @"请输入密码";
    _passTextField.keyboardType = UIKeyboardTypeDefault;
    _passTextField.backgroundColor = [UIColor colorWithWhite:0.98 alpha:1];
    _passTextField.frame = CGRectMake(67, 333, 280, 43);
}

@end
