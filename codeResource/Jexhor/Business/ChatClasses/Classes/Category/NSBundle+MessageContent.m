
#import <Foundation/Foundation.h>

@interface PdaButtonData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PdaButtonData

+ (instancetype)sharedInstance {
    static PdaButtonData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PdaButtonDataToCache:(Byte *)data {
    int peakNurse = data[0];
    int gooInfo = data[1];
    for (int i = 0; i < peakNurse / 2; i++) {
        int begin = gooInfo + i;
        int end = gooInfo + peakNurse - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[gooInfo + peakNurse] = 0;
    return data + gooInfo;
}

- (NSString *)StringFromPdaButtonData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PdaButtonDataToCache:data]];
}  

//: NSUserDefaultLanguage
- (NSString *)main_farmerName {
    /* static */ NSString *main_farmerName = nil;
    if (!main_farmerName) {
        Byte value[] = {21, 4, 145, 91, 101, 103, 97, 117, 103, 110, 97, 76, 116, 108, 117, 97, 102, 101, 68, 114, 101, 115, 85, 83, 78, 81};
        main_farmerName = [self StringFromPdaButtonData:value];
    }
    return main_farmerName;
}

//: bundle
- (NSString *)noti_forwardValue {
    /* static */ NSString *noti_forwardValue = nil;
    if (!noti_forwardValue) {
        Byte value[] = {6, 4, 70, 32, 101, 108, 100, 110, 117, 98, 39};
        noti_forwardValue = [self StringFromPdaButtonData:value];
    }
    return noti_forwardValue;
}

//: en.lproj
- (NSString *)m_blindAssaultData {
    /* static */ NSString *m_blindAssaultData = nil;
    if (!m_blindAssaultData) {
        Byte value[] = {8, 11, 240, 188, 7, 240, 21, 171, 56, 213, 131, 106, 111, 114, 112, 108, 46, 110, 101, 120};
        m_blindAssaultData = [self StringFromPdaButtonData:value];
    }
    return m_blindAssaultData;
}

//: emoji_ios.plist
- (NSString *)mArrestTitle {
    /* static */ NSString *mArrestTitle = nil;
    if (!mArrestTitle) {
        Byte value[] = {15, 10, 118, 254, 83, 4, 58, 55, 129, 29, 116, 115, 105, 108, 112, 46, 115, 111, 105, 95, 105, 106, 111, 109, 101, 236};
        mArrestTitle = [self StringFromPdaButtonData:value];
    }
    return mArrestTitle;
}

//: StableBehindSuper
- (NSString *)mDeepData {
    /* static */ NSString *mDeepData = nil;
    if (!mDeepData) {
        Byte value[] = {17, 2, 114, 101, 112, 117, 83, 100, 110, 105, 104, 101, 66, 101, 108, 98, 97, 116, 83, 70};
        mDeepData = [self StringFromPdaButtonData:value];
    }
    return mDeepData;
}

//: %@.lproj
- (NSString *)notiWillingnessName {
    /* static */ NSString *notiWillingnessName = nil;
    if (!notiWillingnessName) {
        Byte value[] = {8, 11, 208, 249, 230, 132, 196, 56, 245, 28, 58, 106, 111, 114, 112, 108, 46, 64, 37, 27};
        notiWillingnessName = [self StringFromPdaButtonData:value];
    }
    return notiWillingnessName;
}

//: emoji.plist
- (NSString *)dreamShowerData {
    /* static */ NSString *dreamShowerData = nil;
    if (!dreamShowerData) {
        Byte value[] = {11, 5, 27, 2, 15, 116, 115, 105, 108, 112, 46, 105, 106, 111, 109, 101, 161};
        dreamShowerData = [self StringFromPdaButtonData:value];
    }
    return dreamShowerData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// MessageContent
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "WorkInputEmoticonDefine.h"
#import "WorkInputEmoticonDefine.h"
//: #import "SSZipArchiveManager.h"
#import "ButtonManager.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (MessageContent)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)showRobot {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[MessageContent class]];
    //: NSURL *url = [bundle URLForResource:@"StableBehindSuper" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:[[PdaButtonData sharedInstance] mDeepData] withExtension:[[PdaButtonData sharedInstance] noti_forwardValue]];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)file {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[ButtonManager examineedManager] bottom];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self masterVideo];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:[[PdaButtonData sharedInstance] notiWillingnessName], languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:[[PdaButtonData sharedInstance] m_blindAssaultData]];
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
+ (NSString *)atBubble {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ButtonManager examineedManager] phone];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[[PdaButtonData sharedInstance] mArrestTitle]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [MessageContent sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)innerCity {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ButtonManager examineedManager] phone];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[[PdaButtonData sharedInstance] dreamShowerData]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [MessageContent sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)masterVideo
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:[[PdaButtonData sharedInstance] main_farmerName]];
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
