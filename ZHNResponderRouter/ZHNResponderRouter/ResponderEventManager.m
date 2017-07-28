//
//  ResponderEventManager.m
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/27.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "ResponderEventManager.h"

@implementation ResponderEventManager
+ (instancetype)shareInstance {
    static ResponderEventManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[ResponderEventManager alloc]init];
    });
    return manager;
}

- (NSMutableDictionary <NSString *, NSInvocation *> *)eventInvocationDict {
    if (_eventInvocationDict == nil) {
        _eventInvocationDict = [NSMutableDictionary dictionary];
    }
    return _eventInvocationDict;
}

@end
