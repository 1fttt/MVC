//
//  LandView.h
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandView : UIView

@property (nonatomic, strong) UIButton *loginButton;
@property (nonatomic, strong) UIButton *registerButton;
@property (nonatomic, strong) UITextField *nameTextfield;
@property (nonatomic, strong) UITextField *passTextField;

- (void)viewInit;

@end

NS_ASSUME_NONNULL_END
