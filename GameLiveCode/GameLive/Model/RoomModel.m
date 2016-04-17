//
//  RoomModel.m
//  GameLive
//
//  Created by tarena012 on 16/4/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "RoomModel.h"

@implementation RoomModel

//对应类名
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"data":[RoomDataModel class]};
}

@end

//对应属性名和json的key
@implementation RoomDataModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"weightAdd" : @"weight_add",
             @"followAdd" : @"follow_add",
             @"playCount" : @"play_count",
             @"negativeView" : @"negative_view",
             @"coinAdd" : @"coin_add",
             @"defaultImage" : @"default_image",
             @"createAt" : @"create_at",
             @"categoryName" : @"category_name",
             @"recommendImage" : @"recommend_image",
             @"lockedView" : @"locked_view",
             @"lastEndAt" : @"last_end_at",
             @"videoQuality" : @"video_quality",
             @"firstPlayAt" : @"first_play_at",
             @"followBak" : @"follow_bak",
             @"playAt" : @"play_at",
             @"appShufflingImage" : @"app_shuffling_image",
             @"categoryId" : @"category_id",
             @"categorySlug" : @"category_slug"};
}

@end
