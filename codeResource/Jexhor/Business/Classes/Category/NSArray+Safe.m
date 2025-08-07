
#import <Foundation/Foundation.h>

NSString *StringFromHurtData(Byte *data);


//: __NSArrayM
Byte appMothSeriesTitle[] = {19, 10, 9, 12, 216, 167, 204, 172, 128, 77, 121, 97, 114, 114, 65, 83, 78, 95, 95, 196};

//: __NSPlaceholderArray
Byte appScarValue[] = {15, 20, 12, 106, 9, 52, 34, 211, 235, 9, 80, 40, 121, 97, 114, 114, 65, 114, 101, 100, 108, 111, 104, 101, 99, 97, 108, 80, 83, 78, 95, 95, 228};

//: __NSArrayI
Byte app_departmentValue[] = {68, 10, 8, 127, 126, 234, 6, 207, 73, 121, 97, 114, 114, 65, 83, 78, 95, 95, 55};

//: __NSArray0
Byte dreamBrokerJournalistName[] = {65, 10, 9, 135, 130, 105, 220, 233, 240, 48, 121, 97, 114, 114, 65, 83, 78, 95, 95, 210};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSArray+Safe.m
//  BustVideo
//
//  Created by jiangenhao on 2017/10/27.
//  Copyright © 2017年 360Video. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"

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

//: @implementation NSArray (Safe)
@implementation NSArray (Safe)

//: + (void)initialize
+ (void)initialize
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSArrayM = NSClassFromString(@"__NSArrayM");
        Class NSArrayM = NSClassFromString(StringFromHurtData(appMothSeriesTitle));
        //: swizzle(NSArrayM, @selector(objectAtIndex:), @selector(objectAtSafeIndex_M:));
        swizzle(NSArrayM, @selector(objectAtIndex:), @selector(toM:));
        //: swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_M:));
        swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(sized:));
        //: swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(insertObject:atIndex_M:));
        swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(placeM:languageSave:));

        //: Class NSArrayI = NSClassFromString(@"__NSArrayI");
        Class NSArrayI = NSClassFromString(StringFromHurtData(app_departmentValue));
        //: swizzle(NSArrayI, @selector(objectAtIndex:), @selector(objectAtSafeIndex_I:));
        swizzle(NSArrayI, @selector(objectAtIndex:), @selector(exhibits:));
        //: swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_I:));
        swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(objected:));

        //: Class NSArray0 = NSClassFromString(@"__NSArray0");
        Class NSArray0 = NSClassFromString(StringFromHurtData(dreamBrokerJournalistName));
        //: swizzle(NSArray0, @selector(objectAtIndex:), @selector(objectAtSafeIndex_0:));
        swizzle(NSArray0, @selector(objectAtIndex:), @selector(selected:));
        //: swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_0:));
        swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(recordEnable:));

        //: Class NSPlaceholderArray = NSClassFromString(@"__NSPlaceholderArray");
        Class NSPlaceholderArray = NSClassFromString(StringFromHurtData(appScarValue));
        //: swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithPlaceholderObjectsSafely:count:));
        swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithExpanse:linkCell:));
    //: });
    });
}

//: - (id)objectAtSafeIndex_M:(NSUInteger)index
- (id)toM:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_M:index];
    return [self toM:index];
}

//: - (id)objectAtSafeIndex_I:(NSUInteger)index
- (id)exhibits:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_I:index];
    return [self exhibits:index];
}


//: - (id)objectAtIndexedSubscript_M:(NSUInteger)index
- (id)sized:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_M:index];
    return [self sized:index];
}

//: - (id)objectAtIndexedSubscript_I:(NSUInteger)index
- (id)objected:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_I:index];
    return [self objected:index];
}

//: - (id)objectAtSafeIndex_0:(NSUInteger)index
- (id)selected:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_0:index];
    return [self selected:index];
}

//: - (id)objectAtIndexedSubscript_0:(NSUInteger)index
- (id)recordEnable:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_0:index];
    return [self recordEnable:index];
}

//: - (instancetype)initWithPlaceholderObjectsSafely:(id _Nonnull const [])objects count:(NSUInteger)count
- (instancetype)initWithExpanse:(id _Nonnull const [])objects linkCell:(NSUInteger)count
{
    //: id objs[count];
    id objs[count];
    //: if (nil != objects) {
    if (nil != objects) {
        //: NSUInteger realCount = count;
        NSUInteger realCount = count;
        //: for (NSUInteger i = 0, current = 0; i < count; ++i) {
        for (NSUInteger i = 0, current = 0; i < count; ++i) {
            //: if (nil != objects[i]) {
            if (nil != objects[i]) {
                //: objs[current++] = objects[i];
                objs[current++] = objects[i];
            //: } else {
            } else {
                //: --realCount;
                --realCount;
            }
        }

        //: if (realCount < count) {
        if (realCount < count) {
            //: count = realCount;
            count = realCount;
            //: objects = objs;
            objects = objs;
        }
    //: } else {
    } else {
        //: count = 0;
        count = 0;
    }

    //: return [self initWithPlaceholderObjectsSafely:objects count:count];
    return [self initWithExpanse:objects linkCell:count];
}

//: - (NSArray *)arrayByReplacingNullsWithBlanks;
- (NSArray *)can;
{
    //: NSMutableArray *replaced = [self mutableCopy];
    NSMutableArray *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (int idx = 0; idx < [replaced count]; idx++) {
    for (int idx = 0; idx < [replaced count]; idx++) {
        //: id object = [replaced objectAtIndex:idx];
        id object = [replaced objectAtIndex:idx];
        //: if (object == null) {
        if (object == null) {
            //: [replaced replaceObjectAtIndex:idx withObject:blank];
            [replaced replaceObjectAtIndex:idx withObject:blank];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object range]];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object can]];
        }
    }
    //: return replaced;
    return replaced;
}


//: - (void)insertObject:(id)anObject atIndex_M:(NSUInteger)index {
- (void)placeM:(id)anObject languageSave:(NSUInteger)index {

    //: if(!anObject || index > self.count) return;
    if(!anObject || index > self.count) return;
    //: [self insertObject:anObject atIndex_M:index];
    [self placeM:anObject languageSave:index];
}

//: - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    //: NSMutableString *mStr = [NSMutableString string];
    NSMutableString *mStr = [NSMutableString string];
    //: NSMutableString *tab = [NSMutableString stringWithString:@""];
    NSMutableString *tab = [NSMutableString stringWithString:@""];
    //: for (int i = 0; i < level; i++) {
    for (int i = 0; i < level; i++) {
        //: [tab appendString:@"\t"];
        [tab appendString:@"\t"];
    }
    //: [mStr appendString:@"(\n"];
    [mStr appendString:@"(\n"];
    //: for (int i = 0; i < self.count; i++) {
    for (int i = 0; i < self.count; i++) {
         //: NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
         NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
        //: id value = self[i];
        id value = self[i];
        //: if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
        if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
        //: } else {
        } else {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
        }
    }
    //: [mStr appendFormat:@"%@)",tab];
    [mStr appendFormat:@"%@)",tab];
    //: return mStr;
    return mStr;
}

//: @end
@end

Byte * HurtDataToCache(Byte *data) {
    int placeControl = data[0];
    int appearParentMoth = data[1];
    int pragmatist = data[2];
    if (!placeControl) return data + pragmatist;
    for (int i = 0; i < appearParentMoth / 2; i++) {
        int begin = pragmatist + i;
        int end = pragmatist + appearParentMoth - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[pragmatist + appearParentMoth] = 0;
    return data + pragmatist;
}

NSString *StringFromHurtData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HurtDataToCache(data)];
}  
