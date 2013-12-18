//
//  DataManager.m
//  CleanCollection
//
//  Created by guo liang on 13-12-18.
//  Copyright (c) 2013年 sniper. All rights reserved.
//

#import "DataManager.h"
#import "Video.h"
@implementation DataManager

+(DataManager*)shareInstance
{
    static DataManager *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[DataManager alloc] init];
    });
    
    return _instance;
}
/**
 * load data , here just return test data
 */
- (NSArray *) getData
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < 30; i++) {
        Video *video = [[Video alloc] init];
        video.name = [NSString stringWithFormat:@"sniper %d",i ];
        video.imageUrl = @"";
        [array addObject:video];
    }
    return array;
}

@end
