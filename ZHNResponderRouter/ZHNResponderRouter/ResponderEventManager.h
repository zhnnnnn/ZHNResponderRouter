//
//  ResponderEventManager.h
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/27.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResponderEventManager : NSObject
@property (nonatomic,strong) NSMutableDictionary <NSString *, NSInvocation *> *eventInvocationDict;
+ (instancetype)shareInstance;
@end
