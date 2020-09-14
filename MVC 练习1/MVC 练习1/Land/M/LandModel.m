//
//  LandModel.m
//  MVC 练习1
//
//  Created by 房彤 on 2020/9/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "LandModel.h"

@implementation LandModel

- (void)modelInit {
    _nameArray = [[NSMutableArray alloc] init];
    _passArray = [[NSMutableArray alloc] init];
    [_nameArray addObject:@"ft"];
    [_passArray addObject:@"123"];
}

- (void)userName:(NSString *)name andPass:(NSString *)pass {
    int flag = 0;
    for(int i = 0; i < _nameArray.count; i++) {
        if([name isEqualToString:_nameArray[i]] && [pass isEqualToString:_passArray[i]]) {
            flag = 1;
        }
    }
    if(flag){
        [[NSNotificationCenter defaultCenter] postNotificationName:@"ok" object:self];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"no" object:self];
    }
}

- (void)addUserName:(NSString *)name andPass:(NSString *)pass {
    [[self mutableArrayValueForKey:@"nameArray"] addObject:name];
    [_passArray addObject:pass];
}



@end
