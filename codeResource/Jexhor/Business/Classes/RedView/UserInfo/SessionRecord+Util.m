
#import <Foundation/Foundation.h>
typedef struct {
    Byte middle;
    Byte *entertain;
    unsigned int bubbleProfession;
    Byte assaultMedia;
	int numberAccount;
	int apologeticsComment;
	int boutOn;
} TraceData;

NSString *StringFromTraceData(TraceData *data);


//: webViewURL
TraceData dream_lendData = (TraceData){237, (Byte []){154, 136, 143, 187, 132, 136, 154, 184, 191, 161, 170}, 10, 172, 43, 180, 147};

//: appkey
TraceData userControlName = (TraceData){81, (Byte []){48, 33, 33, 58, 52, 40, 73}, 6, 247, 109, 8, 227};

//: isclose
TraceData user_bikeViewRecallValue = (TraceData){28, (Byte []){117, 111, 127, 112, 115, 111, 121, 194}, 7, 230, 85, 210, 31};

//: Hello World
TraceData m_sliceVideoMortalValue = (TraceData){42, (Byte []){98, 79, 70, 70, 69, 10, 125, 69, 88, 70, 78, 127}, 11, 227, 40, 29, 223};

//: webViewTitle
TraceData appStoveText = (TraceData){164, (Byte []){211, 193, 198, 242, 205, 193, 211, 240, 205, 208, 200, 193, 17}, 12, 255, 100, 105, 30};

//: language
TraceData show_acknowledgeBreastCompleteName = (TraceData){78, (Byte []){34, 47, 32, 41, 59, 47, 41, 43, 92}, 8, 238, 156, 131, 33};

//: isregitor
TraceData dream_cliffText = (TraceData){248, (Byte []){145, 139, 138, 157, 159, 145, 140, 151, 138, 102}, 9, 152, 204, 152, 18};

//: e6548ec2fe71a38961430ee520b0ad47
TraceData m_troopText = (TraceData){134, (Byte []){227, 176, 179, 178, 190, 227, 229, 180, 224, 227, 177, 183, 231, 181, 190, 191, 176, 183, 178, 181, 182, 227, 227, 179, 180, 182, 228, 182, 231, 226, 178, 177, 224}, 32, 157, 125, 93, 206};

//: logininfo
TraceData showParentRantData = (TraceData){245, (Byte []){153, 154, 146, 156, 155, 156, 155, 147, 154, 65}, 9, 234, 102, 49, 9};

//: KEKENotificationLanguageChanged
TraceData appQuantitymitPapFeedbackName = (TraceData){180, (Byte []){255, 241, 255, 241, 250, 219, 192, 221, 210, 221, 215, 213, 192, 221, 219, 218, 248, 213, 218, 211, 193, 213, 211, 209, 247, 220, 213, 218, 211, 209, 208, 112}, 31, 174, 251, 117, 61};

//: Webpage
TraceData show_crowdedValue = (TraceData){144, (Byte []){199, 245, 242, 224, 241, 247, 245, 61}, 7, 237, 26, 246, 90};

//: NSUserDefault%@
TraceData kWeekData = (TraceData){64, (Byte []){14, 19, 21, 51, 37, 50, 4, 37, 38, 33, 53, 44, 52, 101, 0, 10}, 15, 188, 195, 76, 172};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionRecord+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "SessionRecord+Util.h"
//: #import "ZCHttpManager.h"
#import "TitleManager.h"

//: @implementation NIMUserDefaults (Util)
@implementation SessionRecord (Util)

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
- (NSDictionary *)doing {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromTraceData(&appStoveText) : StringFromTraceData(&show_crowdedValue),
             //: @"webViewURL" : @"",
             StringFromTraceData(&dream_lendData) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromTraceData(&userControlName) : StringFromTraceData(&m_troopText),
             //: @"isclose" : @"0",
             StringFromTraceData(&user_bikeViewRecallValue) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromTraceData(&showParentRantData) : StringFromTraceData(&m_sliceVideoMortalValue),
             //: @"isregitor" : @"1",
             StringFromTraceData(&dream_cliffText) : @"1",
             //: @"language" : @""
             StringFromTraceData(&show_acknowledgeBreastCompleteName) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)time:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [TitleManager ting].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    SessionRecord *userDefaults = [SessionRecord afterUser];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[WorkLanguageManager shareInstance] setLanguagre:lang];
    [[InputRed mortificationDisable] setApposeCellLanguagre:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [MessageContent secretResolution].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromTraceData(&appQuantitymitPapFeedbackName) object:nil];

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
- (NSString *)palletses:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromTraceData(&kWeekData), key];
}
//: @end
@end

Byte *TraceDataToByte(TraceData *data) {
    if (data->assaultMedia < 109) return data->entertain;
    for (int i = 0; i < data->bubbleProfession; i++) {
        data->entertain[i] ^= data->middle;
    }
    data->entertain[data->bubbleProfession] = 0;
    data->assaultMedia = 7;
	if (data->bubbleProfession >= 3) {
		data->numberAccount = data->entertain[0];
		data->apologeticsComment = data->entertain[1];
		data->boutOn = data->entertain[2];
	}
    return data->entertain;
}

NSString *StringFromTraceData(TraceData *data) {
    return [NSString stringWithUTF8String:(char *)TraceDataToByte(data)];
}
