//
//  ViewController.m
//  ZHNResponderRouter
//
//  Created by zhn on 2017/7/26.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "ViewController.h"
#import "testView.h"
#import "containerView.h"

#import "ZHNResponderRouterHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    containerView *container = [[containerView alloc]init];
    [self.view addSubview:container];
    container.frame = CGRectMake(50, 50, 100, 100);
    
    testView *test = [[testView alloc]init];
    [self.view addSubview:test];
    test.frame = CGRectMake(50, 50, 50, 50);
}

- (void)zhn_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self zhn_responderRouterWithName:eventName userInfo:userInfo];
}

- (NSDictionary *)zhn_currentEventStrategy {
    return @{@"test":[self zhn_createInvocationWithSelector:@selector(test:)],
             @"container":[self zhn_createInvocationWithSelector:@selector(container:)]
             };
}

- (void)test:(NSDictionary *)userinfo {
    NSLog(@"test -- %@",userinfo);
}

- (void)container:(NSDictionary *)dict {
    NSLog(@"container -- %@",dict);
}


@end
