//
//  testView.m
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/27.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "testView.h"
#import "UIResponder+ZHNResponderRouter.h"

@implementation testView
- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self zhn_routerEventWithName:@"test" userInfo:@{@"key":@"test"}];
}
@end
