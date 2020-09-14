//
//  RegisterViewController.h
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterView.h"

@protocol PassValueDelegate <NSObject>

- (void)Passname:(NSString *)name andPass:(NSString *)pass;

@end

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController

@property RegisterView *registerView;
@property (nonatomic, weak) id <PassValueDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
