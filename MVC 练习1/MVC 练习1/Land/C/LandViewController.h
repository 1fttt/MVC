//
//  LandViewController.h
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LandView.h"
#import "LandModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LandViewController : UIViewController

@property (nonatomic, strong) LandView *landView;
@property (nonatomic, strong) LandModel *landModel;

@end

NS_ASSUME_NONNULL_END
