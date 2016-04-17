//
//  CategoryViewModel.h
//  GameLive
//
//  Created by admin on 16/4/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 ViewModel:视图模型层
 主要任务:
 1.从接口中获取数据
 2.根据UI的逻辑从接口数据中取得对应的数据
 特点:
 文件中不能出现UI开头的类
 
 程序编写时有一个大的方向:解耦合
 Model ↑ NetManager ↑ ViewModel ↑ View ↑ ViewController
 Model不知道NetManager,但是NetManager引入了Model
 NetManager不知道ViewModel,但是ViewModel引入了NetManager
 ...
 */

#import "TRLiveNetManager.h"

@interface CategoryViewModel : NSObject
//UI
//有多少个栏目（英雄联盟）
@property (nonatomic,readonly) NSInteger rowNumber;
//每个栏目的图片
- (NSURL *)iconURLForIndex:(NSInteger)index;
//每张图片的标题
- (NSString *)titleForIndex:(NSInteger)index;


//接口
//存储所有栏目的数组
@property (nonatomic) NSArray<CategoryModel *> *categories;
//这个方法是在view调用的，不需要让view层指定model层的东西，所以block的参数不需要填model
- (void)getDataCompletionHandler:(void(^)(NSError *error))completionHandler;


@end
