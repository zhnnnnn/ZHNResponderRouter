//
//  containerView.m
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/26.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "containerView.h"
#import "UIResponder+ZHNResponderRouter.h"

@implementation containerView
- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self zhn_routerEventWithName:@"container" userInfo:@{@"key":@"container"}];
}

@end
