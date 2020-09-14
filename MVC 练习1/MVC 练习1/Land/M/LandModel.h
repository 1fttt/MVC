//
//  LandModel.h
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandModel : NSObject

@property (nonatomic, strong) NSMutableArray *nameArray;
@property (nonatomic, strong) NSMutableArray *passArray;


- (void)modelInit;
- (void)userName:(NSString *)name andPass:(NSString *)pass;
- (void)addUserName:(NSString *)name andPass:(NSString *)pass;

@end

NS_ASSUME_NONNULL_END
