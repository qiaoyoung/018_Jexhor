// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyShow.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface WorkPinyinConverter : NSObject
@interface KeyShow : NSObject

//: + (WorkPinyinConverter *)sharedInstance;
+ (KeyShow *)app;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)file: (NSString *)source;

//: @end
@end
