//
//  AppDelegate.m
//  GameLive
//
//  Created by jiyingxin on 16/4/5.
//  Copyright © 2016年 Tarena. All rights reserved.
//


#import "TRLiveNetManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setupGlobalConfig];
    

    [TRLiveNetManager getRoomListWithPage:4 completionHandler:^(RoomModel *model, NSError *error) {
       
        NSLog(@"...");
    }];
    
    return YES;
}

@end
