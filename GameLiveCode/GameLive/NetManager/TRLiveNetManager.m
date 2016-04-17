//
//  TRLiveNetManager.m
//  GameLive
//
//  Created by tarena012 on 16/4/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRLiveNetManager.h"

@implementation TRLiveNetManager




/** 直播页 */
+ (id)getRoomListWithPage:(NSInteger)page completionHandler:(void (^)(RoomModel *, NSError *))completionHandler {
    
    NSString *urlStr = [NSString stringWithFormat:@"http://www.quanmin.tv/json/play/list_%ld.json",page];
    
    return [self GET:urlStr parameters:nil progress:nil completionHandler:^(id responseObj, NSError *error) {
        
        !completionHandler ?: completionHandler([RoomModel parseJSON:responseObj],error);
    }];
}


//测试接口
+ (id)getTextCompletionHandler:(void (^)(TextModel *, NSError *))completionHandler {
    return [self GET:@"http://www.quanmin.tv/json/page/ad-slot/info.json" parameters:nil progress:nil completionHandler:^(id responseObj, NSError *error) {
       
        //TextModel *model = [TextModel modelWithJSON:responseObj];
        
        !completionHandler ?: completionHandler([VideoModel parseJSON:responseObj],error);
    }];
}

//测试接口
+ (id)getVideosCompletionHandler:(void (^)(VideoModel *, NSError *))completionHandler {
    return [self GET:@"http://c.m.163.com/nc/video/home/1-10.html" parameters:nil progress:nil completionHandler:^(id responseObj, NSError *error) {
        
       // VideoModel *model = [VideoModel modelWithJSON:responseObj];
        !completionHandler ?: completionHandler([VideoModel parseJSON:responseObj],error);
    }];
}


//获取栏目的接口
+ (id)getCategoriesCompletionHandler:(void (^)(NSArray<CategoryModel *> *, NSError *))completionHandler {
    return [self GET:@"http://www.quanmin.tv/json/categories/list.json" parameters:nil progress:nil completionHandler:^(id responseObj, NSError *error) {

        /** modelArrayWithClass 这个方法是YYModel提供的  */
       // NSArray<CategoryModel *> *tmpArr = [NSArray modelArrayWithClass:[CategoryModel class] json:responseObj];
        
        /** 空和运算符 前方表达式为空 执行后面的语句 */
        !completionHandler ?: completionHandler([CategoryModel parseJSON:responseObj],error);
    }];
}
/*
 模块化:MVVM MVC 写代码更加舒服 一样的东西写在一起 只留出一个接口 代码耦合性低
 自动化:把人的思考转化成电脑思考，把人要做的教给电脑做
*/






@end



