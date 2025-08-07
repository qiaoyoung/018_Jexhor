
#import <Foundation/Foundation.h>

@interface TelevisionData : NSObject

+ (instancetype)sharedInstance;

//: __NSDictionaryM
@property (nonatomic, copy) NSString *show_birthdayName;

//: __NSPlaceholderDictionary
@property (nonatomic, copy) NSString *notiQuickValue;

@end

@implementation TelevisionData

+ (instancetype)sharedInstance {
    static TelevisionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TelevisionDataToCache:(Byte *)data {
    int acceptableShow = data[0];
    Byte viseThan = data[1];
    int variation = data[2];
    for (int i = variation; i < variation + acceptableShow; i++) {
        int value = data[i] + viseThan;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[variation + acceptableShow] = 0;
    return data + variation;
}

- (NSString *)StringFromTelevisionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TelevisionDataToCache:data]];
}

//: __NSDictionaryM
- (NSString *)show_birthdayName {
    if (!_show_birthdayName) {
        Byte value[] = {15, 14, 13, 34, 183, 128, 105, 240, 124, 247, 59, 68, 126, 81, 81, 64, 69, 54, 91, 85, 102, 91, 97, 96, 83, 100, 107, 63, 242};
        _show_birthdayName = [self StringFromTelevisionData:value];
    }
    return _show_birthdayName;
}

//: __NSPlaceholderDictionary
- (NSString *)notiQuickValue {
    if (!_notiQuickValue) {
        Byte value[] = {25, 28, 3, 67, 67, 50, 55, 52, 80, 69, 71, 73, 76, 83, 80, 72, 73, 86, 40, 77, 71, 88, 77, 83, 82, 69, 86, 93, 32};
        _notiQuickValue = [self StringFromTelevisionData:value];
    }
    return _notiQuickValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableDictionary+Safe.m
//  sohunews
//
//  Created by wang shun on 2018/12/21.
//  Copyright © 2018 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"

//: static void swizzle(Class class, SEL originalSEL, SEL newSEL)
static void swizzle(Class class, SEL originalSEL, SEL newSEL)
{
    //: Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    //: Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    //: method_exchangeImplementations(originalMethod, swizzledMethod);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

//: @implementation NSMutableDictionary (Safe)
@implementation NSMutableDictionary (Safe)

//: + (void)load
+ (void)load
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSDictionaryM = NSClassFromString(@"__NSDictionaryM");
        Class NSDictionaryM = NSClassFromString([TelevisionData sharedInstance].show_birthdayName);
        //: swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(snnews_setObject:forKey:));
        swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(picture:bubble:));
        //: swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(snnews_setObject:forKeyedSubscript:));
        swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(paintTheLily:view:));
        //: swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(snnews_removeObjectForKey:));
        swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(addUp:));

        //: Class NSPlaceholderDictionary = NSClassFromString(@"__NSPlaceholderDictionary");
        Class NSPlaceholderDictionary = NSClassFromString([TelevisionData sharedInstance].notiQuickValue);
        //: swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithNullObjects:forKeys:count:));
        swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithMargin:green:index:));
    //: });
    });
}

//: - (void)snnews_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
- (void)picture:(id)anObject bubble:(id<NSCopying>)aKey {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && anObject && aKey) {
        if (self && anObject && aKey) {
            //: [self snnews_setObject:anObject forKey:aKey];
            [self picture:anObject bubble:aKey];
        }
    }
}

//: - (void)snnews_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
- (void)paintTheLily:(id)obj view:(id<NSCopying>)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_setObject:obj forKeyedSubscript:key];
            [self paintTheLily:obj view:key];
        }
    }
}


//: - (void)snnews_removeObjectForKey:(id)key {
- (void)addUp:(id)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_removeObjectForKey:key];
            [self addUp:key];
        }
    }
}

//: - (instancetype)initWithNullObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)count
- (instancetype)initWithMargin:(const id [])objects green:(const id <NSCopying> [])keys index:(NSUInteger)count
{
    //: for (NSUInteger i = 0; i < count; i++) {
    for (NSUInteger i = 0; i < count; i++) {
        //: if (objects[i] == nil || keys[i] == nil) {
        if (objects[i] == nil || keys[i] == nil) {
            //: return nil;
            return nil;
        }
    }

    //: return [self initWithNullObjects:objects forKeys:keys count:count];
    return [self initWithMargin:objects green:keys index:count];
}

//: @end
@end

//: @implementation NSDictionary (Null)
@implementation NSDictionary (Null)

//: - (NSDictionary *)dictionaryByReplacingNullsWithBlanks;
- (NSDictionary *)range;
{
    //: NSMutableDictionary *replaced = [self mutableCopy];
    NSMutableDictionary *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (NSString *key in self) {
    for (NSString *key in self) {
        //: id object = [self objectForKey:key];
        id object = [self objectForKey:key];
        //: if (object == null) {
        if (object == null) {
            //: [replaced setObject:blank forKey:key];
            [replaced setObject:blank forKey:key];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object range] forKey:key];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object can] forKey:key];
        }
    }

    //: return replaced;
    return replaced;
}
//: @end
@end