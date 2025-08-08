// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryExtend.h
//  sohunews
//
//  Created by yanchen wang on 12-5-28.
//  Copyright (c) 2012年 Sohu.com Inc. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary(Extend)
@interface NSDictionary(Extend)

// for value
//: - (id)objectForKey:(NSString *)key defaultObj:(id)defaultObj;
- (id)clear:(NSString *)key coatButton:(id)defaultObj;
//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj;
- (id)defaultColor:(id)aKey record:(Class)aClass team:(id)defaultObj;
//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)nim:(NSString *)key mark:(int)defaultValue;
//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)itemBy:(NSString *)key selected:(float)defaultValue;
//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)numberernalRepresentation:(NSString *)key view:(double)defaultValue;
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)offComment:(NSString *)key tapChild:(long)defaultValue;
//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)areaValue:(NSString *)key enable:(long long)defaultValue;
//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)canValue:(NSString *)key background:(NSString *)defaultValue;
//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)tap:(NSString *)key date:(NSArray *)defaultValue;
//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue;
- (NSDictionary *)holder:(NSString *)key sum:(NSDictionary *)defaultValue;


// xml
//: - (NSArray*) toArray;
- (NSArray*) byTitle;
//: - (NSString*) toXMLString;
- (NSString*) nameOn;

// url string

//: - (NSString *)toUrlString;
- (NSString *)greenText;
//: - (NSMutableString *)mutableUrlString;
- (NSMutableString *)low;

/// e.g. {a1:b1,a2:b2} ===> a1=b1&a2=b2
//: - (NSString *)toQueryString;
- (NSString *)position;
//: - (NSString *)translateDictionaryToJsonString;
- (NSString *)line;

//: @end
@end