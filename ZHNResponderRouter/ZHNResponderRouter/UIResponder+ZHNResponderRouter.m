//
//  UIResponder+ZHNResponderRouter.m
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/26.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "UIResponder+ZHNResponderRouter.h"
#import <objc/runtime.h>
#import "ResponderEventManager.h"

@implementation UIResponder (ZHNResponderRouter)
- (instancetype)init {
    if (self = [super init]) {
        [[ResponderEventManager shareInstance].eventInvocationDict addEntriesFromDictionary:[self zhn_currentEventStrategy]];
    }
    return self;
}

- (void)zhn_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self.nextResponder zhn_routerEventWithName:eventName userInfo:userInfo];
}

- (NSDictionary *)zhn_currentEventStrategy {
    return nil;
}
@end
