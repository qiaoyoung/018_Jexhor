// __DEBUG__
// __CLOSE_PRINT__
//
//  OutpouringTingManager.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESLanguageManager : NSObject
@interface OutpouringTingManager : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (NTESLanguageManager *)shareInstance;
+ (OutpouringTingManager *)straddle;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setClick:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)search:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)remove;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END