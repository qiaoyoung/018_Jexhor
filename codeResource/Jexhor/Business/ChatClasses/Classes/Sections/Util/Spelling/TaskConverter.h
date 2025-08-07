// __DEBUG__
// __CLOSE_PRINT__
//
//  TaskConverter.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface PushPinyinConverter : NSObject
@interface TaskConverter : NSObject

//: + (PushPinyinConverter *)sharedInstance;
+ (TaskConverter *)can;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)exist: (NSString *)source;

//: @end
@end
