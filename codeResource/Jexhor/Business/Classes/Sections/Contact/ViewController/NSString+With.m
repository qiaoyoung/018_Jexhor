
#import <Foundation/Foundation.h>

@interface UserData : NSObject

+ (instancetype)sharedInstance;

//: chang
@property (nonatomic, copy) NSString *mMaxPath;

//: shen
@property (nonatomic, copy) NSString *userDeviceUrl;

//: xia
@property (nonatomic, copy) NSString *main_containerKey;

//: chong
@property (nonatomic, copy) NSString *user_holderPath;

@end

@implementation UserData

+ (instancetype)sharedInstance {
    static UserData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)UserDataToCache:(Byte *)data {
    int atThread = data[0];
    Byte tingIcon = data[1];
    int device = data[2];
    for (int i = device; i < device + atThread; i++) {
        int value = data[i] + tingIcon;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[device + atThread] = 0;
    return data + device;
}

- (NSString *)StringFromUserData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self UserDataToCache:data]];
}

//: chong
- (NSString *)user_holderPath {
    if (!_user_holderPath) {
        Byte value[] = {5, 77, 8, 167, 207, 50, 225, 216, 22, 27, 34, 33, 26, 188};
        _user_holderPath = [self StringFromUserData:value];
    }
    return _user_holderPath;
}

//: xia
- (NSString *)main_containerKey {
    if (!_main_containerKey) {
        Byte value[] = {3, 96, 11, 203, 14, 93, 243, 55, 155, 51, 213, 24, 9, 1, 149};
        _main_containerKey = [self StringFromUserData:value];
    }
    return _main_containerKey;
}

//: chang
- (NSString *)mMaxPath {
    if (!_mMaxPath) {
        Byte value[] = {5, 79, 6, 129, 35, 230, 20, 25, 18, 31, 24, 48};
        _mMaxPath = [self StringFromUserData:value];
    }
    return _mMaxPath;
}

//: shen
- (NSString *)userDeviceUrl {
    if (!_userDeviceUrl) {
        Byte value[] = {4, 24, 12, 207, 76, 95, 87, 123, 43, 102, 173, 153, 91, 80, 77, 86, 159};
        _userDeviceUrl = [self StringFromUserData:value];
    }
    return _userDeviceUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+With.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+With.h"

//: @implementation NSString (LJExtension)
@implementation NSString (With)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)text:(NSString *)string
{
    //: if (string == nil)
    if (string == nil)
    {
        //: return @"";
        return @"";
    }

    //: string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: return string;
    return string;
}

//: + (NSString *)lj_pinyinForString:(NSString *)string
+ (NSString *)changeFor:(NSString *)string
{
    //: if (string.length == 0)
    if (string.length == 0)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableString *mutableString = [NSMutableString stringWithString:string];
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];
    NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];

    //: NSString *str = [string substringToIndex:1];
    NSString *str = [string substringToIndex:1];

    //: if ([str isEqualToString:@"长"])
    if ([str isEqualToString:@"长"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[UserData sharedInstance].mMaxPath];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:[UserData sharedInstance].userDeviceUrl];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:[UserData sharedInstance].main_containerKey];
    }
    //: if ([str isEqualToString:@"地"])
    if ([str isEqualToString:@"地"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    //: if ([str isEqualToString:@"重"])
    if ([str isEqualToString:@"重"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[UserData sharedInstance].user_holderPath];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end