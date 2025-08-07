// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickCenter.h
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @class NTESCustomNotificationDB;
@class VideoMessageDb;

//: extern NSString *appMakeTitle;
extern NSString *appMakeTitle;

//: @interface NTESNotificationCenter : NSObject
@interface ClickCenter : NSObject

//: + (instancetype)sharedCenter;
+ (instancetype)at;
//: - (void)start;
- (void)backgroundOn;

//: @end
@end
