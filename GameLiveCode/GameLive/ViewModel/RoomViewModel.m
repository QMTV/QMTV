//
//  RoomViewModel.m
//  GameLive
//
//  Created by tarena012 on 16/4/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "RoomViewModel.h"

@implementation RoomViewModel

- (NSURL *)iconURLForIndex:(NSInteger)index {
    return [NSURL URLWithString:self.roomList[index].thumb];
}

- (NSString *)titleForIndex:(NSInteger)index {
    return self.roomList[index].title;
}

- (NSString *)nameForIndex:(NSInteger)index {
    return self.roomList[index].nick;
}

- (NSString *)viewsForIndex:(NSInteger)index {
    
    NSString *views = self.roomList[index].weight;
    if (views.integerValue >= 10000) {
        views = [NSString stringWithFormat:@"%.1f万",[views integerValue] / 10000.0];
    }
    return views;
}

- (void)getRoomListWithRequestMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler {
    
    NSInteger tmpPage = 1;
    if (requestMode == RequestModeMore) {
        tmpPage = _pageNum++;
    }
    
    [TRLiveNetManager getRoomListWithPage:tmpPage completionHandler:^(RoomModel *model, NSError *error) {
        if (!error) {
            _pageNum = tmpPage;
            if (requestMode == RequestModeRefresh) {
                [self.roomList removeAllObjects];
            }
            [self.roomList addObjectsFromArray:model.data];
        }
        
        !completionHandler ?: completionHandler(error);
    }];
}

@end
