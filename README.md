# ZHNResponderRouter
### 前言

看完反革命工程师这篇博客https://casatwy.com/responder_chain_communication.html 。真是脱口而出，卧槽还能这么玩？光看肯定不行，动手实践封装完。感觉这种方式真是解决了我好久好久的困扰了。。开心的不行。

### 解决的主要问题

很多时候因为视图太过复杂，所以你一层层嵌套了好多好多层。这时候你点击最底层的视图，但是你想要控制器来响应这个事件。。这就非常蛋疼了。如果用`delegate`那么这个传递的链子可能就很长啊，但是你可能又会说那用`notification`吧。但是这种方式会导致任何地方都有可能响应这个事件，而且后续的代码可能不太好维护。现在用这种沿响应链的方式完美的解决了这个问题。

### 如何使用
1. 把ZHNResponderRouter文件夹拉进工程。

2. 在你需要响应事件的view或者控制器里`#import "ZHNResponderRouterHeader.h"`导入头文件

3. 在你需要响应事件的view或者控制器里实现这个方法(如果在这个链子上还需要往下传那么你需要调用下`[super zhn_routerEventWithName:eventName userInfo:userInfo];`方法) ps:这个方法的写法是固定的就两种情况，自行考虑用那种。
```
- (void)zhn_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self zhn_responderRouterWithName:eventName userInfo:userInfo];
}
```
3. 在你需要响应事件的view或者控制器里实现你事件的响应方法(方法需要接收一个字典对象);
```
- (void)test:(NSDictionary *)userinfo {
    NSLog(@"test -- %@",userinfo);
}
```

4. 在你需要响应事件的view或者控制器里按照固定的格式返回一个字典 (具体的格式为 key:invivation(这个invication的生成方法也已经封装好，直接用就行了))
```
- (NSDictionary *)zhn_currentEventStrategy {
    return @{
              @"test":[self zhn_createInvocationWithSelector:@selector(test:)],
             };
}
```
5. 在你需要往外传递事件的view里调下方法(eventname需要和第四步的字典的key值相对应)
```
[self zhn_routerEventWithName:@"test" userInfo:@{@"key":@"test"}];
```

## 站在巨人的肩膀上编程~ have fun~ 希望能帮到你们~


