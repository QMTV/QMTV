//
//  RoomViewModel.h
//  GameLive
//
//  Created by tarena012 on 16/4/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRLiveNetManager.h"

typedef NS_ENUM(NSUInteger, RequestMode) {
    RequestModeRefresh,
    RequestModeMore
};


@interface RoomViewModel : NSObject
/** 根据UI */
@property (nonatomic,readonly) NSInteger rowNumber;
/** 图片地址 Str-> URL */
- (NSURL *)iconURLForIndex:(NSInteger)index;
/** 房间名 */
- (NSString *)titleForIndex:(NSInteger)index;
/** 主播名 */
- (NSString *)nameForIndex:(NSInteger)index;
/** 观看人数 */
- (NSString *)viewsForIndex:(NSInteger)index;


/** 根据接口 */
//当前直播页
@property (nonatomic) NSInteger pageNum;
@property (nonatomic) NSMutableArray<RoomDataModel *> *roomList;

- (void)getRoomListWithRequestMode:(RequestMode)requestMode completionHandler:(void(^)(NSError *error))completionHandler;
@end
