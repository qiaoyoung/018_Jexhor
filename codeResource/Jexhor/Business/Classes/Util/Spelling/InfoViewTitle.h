// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoViewTitle.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESPinyinConverter : NSObject
@interface InfoViewTitle : NSObject
//: + (NTESPinyinConverter *)sharedInstance;
+ (InfoViewTitle *)sureAtInstance;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)redDoing: (NSString *)source;
//: @end
@end