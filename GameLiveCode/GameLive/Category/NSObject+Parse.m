//
//  NSObject+Parse.m
//  GameLive
//
//  Created by admin on 16/4/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "NSObject+Parse.h"

@implementation NSObject (Parse)


+ (NSDictionary *)modelContainerPropertyGenericClass {
    return nil;
}
+ (NSDictionary *)modelCustomPropertyMapper {
    return nil;
}



+ (id)parseJSON:(id)json
{
    if ([json isKindOfClass:[NSDictionary class]]) {
        return [self modelWithJSON:json];
    }
    if ([json isKindOfClass:[NSArray class]]) {
        return [NSArray modelArrayWithClass:[self class] json:json];
    }
    /** 传的既不是字典或数组 */
    return [self modelWithJSON:json];
}

@end
