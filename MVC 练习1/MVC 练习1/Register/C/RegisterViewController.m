//
//  RegisterViewController.m
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _registerView = [[RegisterView alloc] initWithFrame:self.view.frame];
    [_registerView viewInit];
    [self.view addSubview:_registerView];
    
    [_registerView.sureButton addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchUpInside];
    [_registerView.noButton addTarget:self action:@selector(pressNO) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)pressSure {
//     [[NSNotificationCenter defaultCenter] postNotificationName:@"注册成功" object:self userInfo:@{@"name":_registerView.nameTextfield.text, @"pass":_registerView.passTextField.text}];
    [self.delegate Passname:_registerView.nameTextfield.text andPass:_registerView.passTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pressNO {
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
