
#import <Foundation/Foundation.h>

@interface OvalTingData : NSObject

@end

@implementation OvalTingData

+ (Byte *)OvalTingDataToCache:(Byte *)data {
    int statusDevice = data[0];
    Byte important = data[1];
    int prepared = data[2];
    for (int i = prepared; i < prepared + statusDevice; i++) {
        int value = data[i] + important;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[prepared + statusDevice] = 0;
    return data + prepared;
}

+ (NSString *)StringFromOvalTingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OvalTingDataToCache:data]];
}

//: Webpage
+ (NSString *)userPrisonUrl {
    /* static */ NSString *userPrisonUrl = nil;
    if (!userPrisonUrl) {
        Byte value[] = {7, 54, 5, 186, 76, 33, 47, 44, 58, 43, 49, 47, 238};
        userPrisonUrl = [self StringFromOvalTingData:value];
    }
    return userPrisonUrl;
}

//: webViewURL
+ (NSString *)main_sustainValue {
    /* static */ NSString *main_sustainValue = nil;
    if (!main_sustainValue) {
        Byte value[] = {10, 92, 3, 27, 9, 6, 250, 13, 9, 27, 249, 246, 240, 20};
        main_sustainValue = [self StringFromOvalTingData:value];
    }
    return main_sustainValue;
}

//: logininfo
+ (NSString *)show_underForeignPath {
    /* static */ NSString *show_underForeignPath = nil;
    if (!show_underForeignPath) {
        Byte value[] = {9, 22, 4, 35, 86, 89, 81, 83, 88, 83, 88, 80, 89, 63};
        show_underForeignPath = [self StringFromOvalTingData:value];
    }
    return show_underForeignPath;
}

//: language
+ (NSString *)dream_dogPath {
    /* static */ NSString *dream_dogPath = nil;
    if (!dream_dogPath) {
        Byte value[] = {8, 22, 4, 157, 86, 75, 88, 81, 95, 75, 81, 79, 183};
        dream_dogPath = [self StringFromOvalTingData:value];
    }
    return dream_dogPath;
}

//: isregitor
+ (NSString *)mainTemperatureStr {
    /* static */ NSString *mainTemperatureStr = nil;
    if (!mainTemperatureStr) {
        Byte value[] = {9, 50, 3, 55, 65, 64, 51, 53, 55, 66, 61, 64, 249};
        mainTemperatureStr = [self StringFromOvalTingData:value];
    }
    return mainTemperatureStr;
}

//: appkey
+ (NSString *)show_promotionText {
    /* static */ NSString *show_promotionText = nil;
    if (!show_promotionText) {
        Byte value[] = {6, 99, 7, 89, 46, 228, 248, 254, 13, 13, 8, 2, 22, 26};
        show_promotionText = [self StringFromOvalTingData:value];
    }
    return show_promotionText;
}

//: isclose
+ (NSString *)noti_sodRockMaxContent {
    /* static */ NSString *noti_sodRockMaxContent = nil;
    if (!noti_sodRockMaxContent) {
        Byte value[] = {7, 78, 3, 27, 37, 21, 30, 33, 37, 23, 164};
        noti_sodRockMaxContent = [self StringFromOvalTingData:value];
    }
    return noti_sodRockMaxContent;
}

//: KEKENotificationLanguageChanged
+ (NSString *)noti_approximateIdent {
    /* static */ NSString *noti_approximateIdent = nil;
    if (!noti_approximateIdent) {
        Byte value[] = {31, 4, 6, 98, 7, 106, 71, 65, 71, 65, 74, 107, 112, 101, 98, 101, 95, 93, 112, 101, 107, 106, 72, 93, 106, 99, 113, 93, 99, 97, 63, 100, 93, 106, 99, 97, 96, 29};
        noti_approximateIdent = [self StringFromOvalTingData:value];
    }
    return noti_approximateIdent;
}

//: Hello World
+ (NSString *)noti_chiefIdent {
    /* static */ NSString *noti_chiefIdent = nil;
    if (!noti_chiefIdent) {
        Byte value[] = {11, 72, 5, 78, 112, 0, 29, 36, 36, 39, 216, 15, 39, 42, 36, 28, 196};
        noti_chiefIdent = [self StringFromOvalTingData:value];
    }
    return noti_chiefIdent;
}

//: NSUserDefault%@
+ (NSString *)show_governRoughFormat {
    /* static */ NSString *show_governRoughFormat = nil;
    if (!show_governRoughFormat) {
        Byte value[] = {15, 95, 13, 22, 110, 8, 6, 174, 18, 217, 131, 144, 82, 239, 244, 246, 20, 6, 19, 229, 6, 7, 2, 22, 13, 21, 198, 225, 114};
        show_governRoughFormat = [self StringFromOvalTingData:value];
    }
    return show_governRoughFormat;
}

//: e6548ec2fe71a38961430ee520b0ad47
+ (NSString *)noti_statMsg {
    /* static */ NSString *noti_statMsg = nil;
    if (!noti_statMsg) {
        Byte value[] = {32, 99, 3, 2, 211, 210, 209, 213, 2, 0, 207, 3, 2, 212, 206, 254, 208, 213, 214, 211, 206, 209, 208, 205, 2, 2, 210, 207, 205, 255, 205, 254, 1, 209, 212, 236};
        noti_statMsg = [self StringFromOvalTingData:value];
    }
    return noti_statMsg;
}

//: webViewTitle
+ (NSString *)m_technicalTitle {
    /* static */ NSString *m_technicalTitle = nil;
    if (!m_technicalTitle) {
        Byte value[] = {12, 72, 13, 12, 190, 78, 147, 154, 239, 200, 241, 17, 39, 47, 29, 26, 14, 33, 29, 47, 12, 33, 44, 36, 29, 246};
        m_technicalTitle = [self StringFromOvalTingData:value];
    }
    return m_technicalTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  CrossShouldBlock+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "CrossShouldBlock+Util.h"
//: #import "ZCHttpManager.h"
#import "TouchShowMessage.h"

//: @implementation NIMUserDefaults (Util)
@implementation CrossShouldBlock (Util)

//: @dynamic webViewTitle;
@dynamic webViewTitle;
//: @dynamic webViewURL;
@dynamic webViewURL;
//: @dynamic appkey;
@dynamic appkey;
//: @dynamic isclose;
@dynamic isclose;

//: @dynamic isregitor;
@dynamic isregitor;
//: @dynamic accountName;
@dynamic accountName;

//: @dynamic loginToken;
@dynamic loginToken;
//: @dynamic language;
@dynamic language;



//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)sinceTo {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             [OvalTingData m_technicalTitle] : [OvalTingData userPrisonUrl],
             //: @"webViewURL" : @"",
             [OvalTingData main_sustainValue] : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             [OvalTingData show_promotionText] : [OvalTingData noti_statMsg],
             //: @"isclose" : @"0",
             [OvalTingData noti_sodRockMaxContent] : @"0",
             //: @"logininfo" : @"Hello World",
             [OvalTingData show_underForeignPath] : [OvalTingData noti_chiefIdent],
             //: @"isregitor" : @"1",
             [OvalTingData mainTemperatureStr] : @"1",
             //: @"language" : @""
             [OvalTingData dream_dogPath] : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)off:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [TouchShowMessage top].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    CrossShouldBlock *userDefaults = [CrossShouldBlock towardScaleOfMeasurement];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[PushLanguageManager shareInstance] setLanguagre:lang];
    [[BackgroundRandomAttribute disable] setInfoTeam:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [Secret highlight].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:[OvalTingData noti_approximateIdent] object:nil];

    //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: if (delegate.deviceToken) {
    if (delegate.deviceToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;

            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                //: if (error)
                if (error)
                {

                }
            //: }];
            }];
        //: });
        });
    }
}

//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)labelled:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:[OvalTingData show_governRoughFormat], key];
}
//: @end
@end
