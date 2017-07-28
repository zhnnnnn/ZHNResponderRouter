//
//  NSObject+ReponderRouterInvocation.h
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/27.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ReponderRouterInvocation)
- (NSInvocation *)zhn_createInvocationWithSelector:(SEL)selector;
- (void)zhn_invoke:(NSInvocation *)invocation userInfo:(NSDictionary *)userInfo;
- (void)zhn_responderRouterWithName:(NSString *)name userInfo:(NSDictionary *)userInfo;
@end
