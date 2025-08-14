// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+SubjectMatterJson.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (NTESJson)
@interface NSDictionary (SubjectMatterJson)
//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)table: (NSString *)key;

//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)format: (NSString *)key;
//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)dataFormat: (NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)temp: (NSString *)key;


//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)light: (NSString *)key;
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)cell: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)add: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)subDoing:(NSString *)key;

//: - (double)jsonDouble: (NSString *)key;
- (double)discoverNumber: (NSString *)key;
//: @end
@end