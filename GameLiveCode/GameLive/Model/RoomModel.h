//
//  RoomModel.h
//  GameLive
//
//  Created by tarena012 on 16/4/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RoomDataModel;
@interface RoomModel : NSObject



@property (nonatomic, assign) NSInteger page;

@property (nonatomic, assign) NSInteger size;

@property (nonatomic, copy) NSString *icon;

/** Data -> RoomDataModel */
@property (nonatomic, strong) NSArray<RoomDataModel *> *data;

@property (nonatomic, assign) NSInteger total;

@property (nonatomic, assign) NSInteger pageCount;

@end
@interface RoomDataModel : NSObject

@property (nonatomic, copy) NSString *nick;
//weight_add weightAdd
@property (nonatomic, copy) NSString *weightAdd;

@property (nonatomic, copy) NSString *uid;

@property (nonatomic, copy) NSString *level;
//follow_add followAdd
@property (nonatomic, copy) NSString *followAdd;

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *check;

@property (nonatomic, copy) NSString *thumb;
//play_count
@property (nonatomic, copy) NSString *playCount;
//negative_view
@property (nonatomic, copy) NSString *negativeView;

@property (nonatomic, copy) NSString *view;

@property (nonatomic, copy) NSString *grade;

@property (nonatomic, copy) NSString *coin;
//coin_add
@property (nonatomic, copy) NSString *coinAdd;
//default_image
@property (nonatomic, copy) NSString *defaultImage;
//create_at
@property (nonatomic, copy) NSString *createAt;

@property (nonatomic, copy) NSString *intro;
//category_name
@property (nonatomic, copy) NSString *categoryName;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSString *avatar;
//recommend_image
@property (nonatomic, copy) NSString *recommendImage;
//locked_view
@property (nonatomic, copy) NSString *lockedView;
//last_end_at
@property (nonatomic, copy) NSString *lastEndAt;
//video_quality
@property (nonatomic, copy) NSString *videoQuality;

@property (nonatomic, copy) NSString *announcement;
//first_play_at
@property (nonatomic, copy) NSString *firstPlayAt;

@property (nonatomic, assign) NSInteger follow;
//follow_bak
@property (nonatomic, copy) NSString *followBak;
//play_at
@property (nonatomic, copy) NSString *playAt;

@property (nonatomic, copy) NSString *weight;
//app_shuffling_image
@property (nonatomic, copy) NSString *appShufflingImage;
//category_id
@property (nonatomic, copy) NSString *categoryId;

@property (nonatomic, copy) NSString *title;
//category_slug
@property (nonatomic, copy) NSString *categorySlug;

@end

