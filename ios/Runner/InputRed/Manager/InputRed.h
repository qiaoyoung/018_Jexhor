// __DEBUG__
// __CLOSE_PRINT__
//
//  InputRed.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WorkLanguageManager : NSObject
@interface InputRed : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (WorkLanguageManager *)shareInstance;
+ (InputRed *)mortificationDisable;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setApposeCellLanguagre:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)preserve:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)locale;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
