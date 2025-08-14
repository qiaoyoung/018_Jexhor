// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamTing.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkKitDevice.h"
#import "TeamTing.h"
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"

//: @interface WorkKitDevice ()
@interface TeamTing ()

//: @end
@end

//: @implementation WorkKitDevice
@implementation TeamTing

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {

    }
    //: return self;
    return self;
}


//: + (WorkKitDevice *)currentDevice{
+ (TeamTing *)style{
    //: static WorkKitDevice *instance = nil;
    static TeamTing *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[WorkKitDevice alloc] init];
        instance = [[TeamTing alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

/// 语言
//: + (NSString *)language {
+ (NSString *)emptyMedia {
    //: NSString *language;
    NSString *language;
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: if ([[NSLocale preferredLanguages] count] > 0) {
    if ([[NSLocale preferredLanguages] count] > 0) {
        //: language = [[NSLocale preferredLanguages]objectAtIndex:0];
        language = [[NSLocale preferredLanguages]objectAtIndex:0];
    //: } else {
    } else {
        //: language = [locale objectForKey:NSLocaleLanguageCode];
        language = [locale objectForKey:NSLocaleLanguageCode];
    }
    //: return language;
    return language;
}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)gamut{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)necessary{
    //: return 0.5;
    return 0.5;
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)quick{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice heightShowStop];
}


//: @end
@end
