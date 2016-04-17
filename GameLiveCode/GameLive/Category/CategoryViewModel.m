//
//  CategoryViewModel.m
//  GameLive
//
//  Created by admin on 16/4/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "CategoryViewModel.h"

@implementation CategoryViewModel

/** 请求栏目列表 赋值给数组 */
- (void)getDataCompletionHandler:(void (^)(NSError *))completionHandler
{
    [TRLiveNetManager getCategoriesCompletionHandler:^(NSArray<CategoryModel *> *model, NSError *error) {
       
        self.categories = model;
        !completionHandler ?: completionHandler(error);
    }];
}

/** 从数组中提取数据 */
- (NSInteger)rowNumber
{
    return self.categories.count;
}
- (NSURL *)iconURLForIndex:(NSInteger)index
{
    return [NSURL URLWithString:self.categories[index].thumb];
}
- (NSString *)titleForIndex:(NSInteger)index
{
    return self.categories[index].name;
}

@end
