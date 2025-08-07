
#import <Foundation/Foundation.h>

@interface ConductData : NSObject

@end

@implementation ConductData

+ (Byte *)ConductDataToCache:(Byte *)data {
    int consideration = data[0];
    int combat = data[1];
    for (int i = 0; i < consideration / 2; i++) {
        int begin = combat + i;
        int end = combat + consideration - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[combat + consideration] = 0;
    return data + combat;
}

+ (NSString *)StringFromConductData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConductDataToCache:data]];
}  

//: emoji.plist
+ (NSString *)app_rocMessage {
    /* static */ NSString *app_rocMessage = nil;
    if (!app_rocMessage) {
        Byte value[] = {11, 12, 75, 2, 227, 84, 18, 244, 129, 112, 186, 20, 116, 115, 105, 108, 112, 46, 105, 106, 111, 109, 101, 131};
        app_rocMessage = [self StringFromConductData:value];
    }
    return app_rocMessage;
}

//: emoji_ios.plist
+ (NSString *)notiPowerPath {
    /* static */ NSString *notiPowerPath = nil;
    if (!notiPowerPath) {
        Byte value[] = {15, 9, 81, 89, 254, 164, 224, 30, 57, 116, 115, 105, 108, 112, 46, 115, 111, 105, 95, 105, 106, 111, 109, 101, 109};
        notiPowerPath = [self StringFromConductData:value];
    }
    return notiPowerPath;
}

//: bundle
+ (NSString *)dreamSunnyStr {
    /* static */ NSString *dreamSunnyStr = nil;
    if (!dreamSunnyStr) {
        Byte value[] = {6, 11, 62, 231, 128, 1, 126, 163, 196, 84, 232, 101, 108, 100, 110, 117, 98, 21};
        dreamSunnyStr = [self StringFromConductData:value];
    }
    return dreamSunnyStr;
}

//: StableBehindSuper
+ (NSString *)appGuidancePath {
    /* static */ NSString *appGuidancePath = nil;
    if (!appGuidancePath) {
        Byte value[] = {17, 4, 53, 175, 114, 101, 112, 117, 83, 100, 110, 105, 104, 101, 66, 101, 108, 98, 97, 116, 83, 124};
        appGuidancePath = [self StringFromConductData:value];
    }
    return appGuidancePath;
}

//: %@.lproj
+ (NSString *)m_speculateStr {
    /* static */ NSString *m_speculateStr = nil;
    if (!m_speculateStr) {
        Byte value[] = {8, 9, 237, 55, 171, 110, 43, 133, 246, 106, 111, 114, 112, 108, 46, 64, 37, 76};
        m_speculateStr = [self StringFromConductData:value];
    }
    return m_speculateStr;
}

//: en.lproj
+ (NSString *)appSingleDramaRentUrl {
    /* static */ NSString *appSingleDramaRentUrl = nil;
    if (!appSingleDramaRentUrl) {
        Byte value[] = {8, 2, 106, 111, 114, 112, 108, 46, 110, 101, 8};
        appSingleDramaRentUrl = [self StringFromConductData:value];
    }
    return appSingleDramaRentUrl;
}

//: NSUserDefaultLanguage
+ (NSString *)userKneeIdent {
    /* static */ NSString *userKneeIdent = nil;
    if (!userKneeIdent) {
        Byte value[] = {21, 4, 96, 39, 101, 103, 97, 117, 103, 110, 97, 76, 116, 108, 117, 97, 102, 101, 68, 114, 101, 115, 85, 83, 78, 18};
        userKneeIdent = [self StringFromConductData:value];
    }
    return userKneeIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// Secret
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "PushInputEmoticonDefine.h"
#import "PushInputEmoticonDefine.h"
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (Secret)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)titleBundle {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[Secret class]];
    //: NSURL *url = [bundle URLForResource:@"StableBehindSuper" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:[ConductData appGuidancePath] withExtension:[ConductData dreamSunnyStr]];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)systemBundle {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[SharedContentView manager] value];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self successPin];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:[ConductData m_speculateStr], languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:[ConductData appSingleDramaRentUrl]];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
            //: return nil;
            return nil;
        }
    }
    // 创建并返回语言资源包
    //: return [NSBundle bundleWithPath:fullLprojPath];
    return [NSBundle bundleWithPath:fullLprojPath];
}

//: + (NSString *)nim_EmojiPlistFile {
+ (NSString *)path {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[SharedContentView manager] titleModel];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[ConductData notiPowerPath]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Secret sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)format {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[SharedContentView manager] titleModel];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[ConductData app_rocMessage]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Secret sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)successPin
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:[ConductData userKneeIdent]];
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }

    //: return lang;
    return lang;
}


//: @end
@end
