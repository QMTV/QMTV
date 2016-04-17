//
//  AppDelegate+Custom.m
//  GameLive
//
//  Created by admin on 16/4/15.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AppDelegate+Custom.h"
@implementation AppDelegate (Custom)

- (void)setupGlobalConfig
{
    /** 监听当前网络状态 */
    [[AFNetworkReachabilityManager sharedManager]setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"Reachability:%@",AFStringFromNetworkReachabilityStatus(status));
    }];
    /** 启动监听 */
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    /** 统一配置 */
    [UINavigationBar appearance].barTintColor = [UIColor redColor];
    
    /** 更改状态栏和标题颜色 */
    [UINavigationBar appearance].barStyle = UIBarStyleBlackOpaque;
    
    /** 全局的所有的子视图标题高亮状态颜色 */
    self.window.tintColor = [UIColor redColor];
}
- (AFNetworkReachabilityStatus)netStatus
{
    return [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus;
}

- (BOOL)isOnLine
{
    switch (self.netStatus) {
        case AFNetworkReachabilityStatusUnknown:
        case AFNetworkReachabilityStatusNotReachable:
            return NO;
            break;
        case AFNetworkReachabilityStatusReachableViaWiFi:
        case AFNetworkReachabilityStatusReachableViaWWAN:
            return YES;
    }
}


@end
