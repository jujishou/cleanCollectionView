//
//  DataManager.h
//  CleanCollection
//
//  Created by guo liang on 13-12-18.
//  Copyright (c) 2013年 sniper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

+(DataManager*)shareInstance;
- (NSArray *) getData;
@end
