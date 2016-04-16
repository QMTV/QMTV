//
//  NSObject+Parse.h
//  GameLive
//
//  Created by admin on 16/4/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYKit.h>

@interface NSObject (Parse)

/** YYModel是专门用来解析的类，但是对于字典和数据，解析方法不同，需要人脑判断，这里封装成通用方法 */
/** 通用的解析方法，可以解析字典和数组，所以传参返回值类型是id */
+ (id)parseJSON:(id)json;


/**
 YYModel解析类 用插件导出的变量名原本是与文档中一一对应的，但是因为命名规则等问题，变量名被修改了。需要调用下面2个方法 ↓↓↓
 有YYModel文档提供，写这里是为了出代码提示
 */
+ (NSDictionary *)modelContainerPropertyGenericClass;
+ (NSDictionary *)modelCustomPropertyMapper;


@end
