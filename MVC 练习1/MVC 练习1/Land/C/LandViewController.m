//
//  LandViewController.m
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "LandViewController.h"
#import "RegisterViewController.h"

@interface LandViewController () <PassValueDelegate>

@end

@implementation LandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pressOK) name:@"ok" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pressNO) name:@"no" object:nil];

    
    _landView = [[LandView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_landView];
    [_landView viewInit];
    [_landView.loginButton addTarget:self action:@selector(pressLand) forControlEvents:UIControlEventTouchUpInside];
    [_landView.registerButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    _landModel = [[LandModel alloc] init];
    [_landModel modelInit];
    
    //[self.landView addObserver:self forKeyPath:@"nameTextfield.text" options:NSKeyValueObservingOptionNew context:nil];
    //注册kvo观察者
    [self.landModel addObserver:self forKeyPath:@"nameArray" options:NSKeyValueObservingOptionNew context:nil];
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
   NSLog(@"注册成功+1");
    //NSLog(@"shuru");
}


- (void)pressLand {
    
    [_landModel userName:_landView.nameTextfield.text andPass:_landView.passTextField.text];

}

- (void)pressRegister {
    RegisterViewController *registerController = [[RegisterViewController alloc] init];
    registerController.delegate = self;
    [self presentViewController:registerController animated:YES completion:nil];
}

- (void)Passname:(NSString *)name andPass :(NSString *)pass {
    _landView.nameTextfield.text = name;
    _landView.passTextField.text = pass;
    
    [_landModel addUserName:name andPass:pass];
}

- (void)pressOK {
    UIViewController *view1 = [[UIViewController alloc] init];
    view1.view.backgroundColor = [UIColor whiteColor];
    
    [self presentViewController:view1 animated:YES completion:nil];
}

- (void)pressNO {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"账号或密码错误" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
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
