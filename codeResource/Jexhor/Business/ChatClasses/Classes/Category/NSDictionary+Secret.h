// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+Secret.h
// Secret
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (MyUserKit)
@interface NSDictionary (Secret)

//: - (NSString *)nimkit_jsonString: (NSString *)key;
- (NSString *)jsonEnable: (NSString *)key;

//: - (NSDictionary *)nimkit_jsonDict: (NSString *)key;
- (NSDictionary *)cell: (NSString *)key;
//: - (NSArray *)nimkit_jsonArray: (NSString *)key;
- (NSArray *)nameChange: (NSString *)key;
//: - (NSArray *)nimkit_jsonStringArray: (NSString *)key;
- (NSArray *)should: (NSString *)key;


//: - (BOOL)nimkit_jsonBool: (NSString *)key;
- (BOOL)showOn: (NSString *)key;
//: - (NSInteger)nimkit_jsonInteger: (NSString *)key;
- (NSInteger)input: (NSString *)key;
//: - (long long)nimkit_jsonLongLong: (NSString *)key;
- (long long)clear: (NSString *)key;
//: - (unsigned long long)nimkit_jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)nameFor:(NSString *)key;

//: - (double)nimkit_jsonDouble: (NSString *)key;
- (double)bubble: (NSString *)key;

//: @end
@end