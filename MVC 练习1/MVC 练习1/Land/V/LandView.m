//
//  LandView.m
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "LandView.h"

@implementation LandView

- (void)viewInit {
    
    self.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
    _loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self addSubview:_loginButton];
    _loginButton.frame = CGRectMake(85, 460, 70, 35);
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    _loginButton.backgroundColor = [UIColor whiteColor];
    _loginButton.tintColor = [UIColor blackColor];
    _loginButton.layer.cornerRadius = 7;
    
    
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self addSubview:_registerButton];
    _registerButton.frame = CGRectMake(240, 460, 70, 35);
    [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
    _registerButton.backgroundColor = [UIColor whiteColor];
    _registerButton.tintColor = [UIColor blackColor];
    _registerButton.layer.cornerRadius = 7;
    

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
