
#import <Foundation/Foundation.h>

@interface EagerEmergingData : NSObject

+ (instancetype)sharedInstance;

//: isspeakingtime
@property (nonatomic, copy) NSString *k_taiOmitPopularityText;

//: redpacket
@property (nonatomic, copy) NSString *noti_middleContent;

//: nickname
@property (nonatomic, copy) NSString *mDayTitle;

//: gender
@property (nonatomic, copy) NSString *mListenerData;

//: getpassword
@property (nonatomic, copy) NSString *show_distributeValue;

//: /other/appSetting
@property (nonatomic, copy) NSString *mainWishName;

//: autoLogin
@property (nonatomic, copy) NSString *show_alongSpeculateData;

//: islogin
@property (nonatomic, copy) NSString *dream_showerTitle;

//: globalsign
@property (nonatomic, copy) NSString *showAgainstValue;

//: application/json
@property (nonatomic, copy) NSString *mainEducatorName;

//: logininfo
@property (nonatomic, copy) NSString *noti_preventionName;

//: ismustmobile
@property (nonatomic, copy) NSString *main_ambitionValue;

//: Messageread
@property (nonatomic, copy) NSString *kVideoValue;

//: /user/getBookStatus
@property (nonatomic, copy) NSString *app_controlItsText;

//: isavatar
@property (nonatomic, copy) NSString *m_recallData;

//: servicer
@property (nonatomic, copy) NSString *user_drumData;

//: https://www.jexhor.com/privacy.html
@property (nonatomic, copy) NSString *user_ariaLimitName;

//: /user/deleteUser
@property (nonatomic, copy) NSString *main_nationalName;

//: istsbutton
@property (nonatomic, copy) NSString *user_rollingText;

//: Content-Length
@property (nonatomic, copy) NSString *app_paintTitle;

//: mobile
@property (nonatomic, copy) NSString *show_warnLabelTitle;

//: email
@property (nonatomic, copy) NSString *showHandleSoleTitle;

//: isregitor
@property (nonatomic, copy) NSString *appMiddleTitle;

//: code
@property (nonatomic, copy) NSString *kDrumRoperName;

//: umappkey_ios
@property (nonatomic, copy) NSString *user_pressureText;

//: account
@property (nonatomic, copy) NSString *show_progressiveValue;

//: birthday
@property (nonatomic, copy) NSString *user_intellectualTitle;

//: avatar
@property (nonatomic, copy) NSString *notiOlaTitle;

//: POST
@property (nonatomic, copy) NSString *dream_submitTitle;

//: Content-Type
@property (nonatomic, copy) NSString *mainPapData;

//: /user/checkmoments
@property (nonatomic, copy) NSString *showAriaValue;

//: issecret
@property (nonatomic, copy) NSString *show_emotionValue;

//: /user/generateUser
@property (nonatomic, copy) NSString *userComfortableValue;

//: https://imapi.9idbq.cn/api/user/edit
@property (nonatomic, copy) NSString *dreamWithTitle;

//: sex
@property (nonatomic, copy) NSString *k_injureData;

//: yinnihione
@property (nonatomic, copy) NSString *user_peerTitle;

//: /other/systemSetting
@property (nonatomic, copy) NSString *showPapName;

//: birth
@property (nonatomic, copy) NSString *dream_severName;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *app_beastText;

//: isinvitecode
@property (nonatomic, copy) NSString *showLengthPursuitText;

//: isclear
@property (nonatomic, copy) NSString *kOlaData;

//: sign
@property (nonatomic, copy) NSString *userMiddleName;

//: isweixinlogin
@property (nonatomic, copy) NSString *kAccountContent;

//: umappkey_android
@property (nonatomic, copy) NSString *dreamInfoCousinText;

//: chatnotify
@property (nonatomic, copy) NSString *dreamGrossName;

//: password
@property (nonatomic, copy) NSString *dreamImageName;

//: data
@property (nonatomic, copy) NSString *notiGymTitle;

//: allowdeletion
@property (nonatomic, copy) NSString *noti_barrelTitle;

@end

@implementation EagerEmergingData

+ (instancetype)sharedInstance {
    static EagerEmergingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EagerEmergingDataToCache:(Byte *)data {
    int troop = data[0];
    Byte relative = data[1];
    int presidingSwitchicer = data[2];
    for (int i = presidingSwitchicer; i < presidingSwitchicer + troop; i++) {
        int value = data[i] + relative;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[presidingSwitchicer + troop] = 0;
    return data + presidingSwitchicer;
}

- (NSString *)StringFromEagerEmergingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EagerEmergingDataToCache:data]];
}

//: email
- (NSString *)showHandleSoleTitle {
    if (!_showHandleSoleTitle) {
        Byte value[] = {5, 36, 7, 205, 90, 163, 119, 65, 73, 61, 69, 72, 164};
        _showHandleSoleTitle = [self StringFromEagerEmergingData:value];
    }
    return _showHandleSoleTitle;
}

//: umappkey_ios
- (NSString *)user_pressureText {
    if (!_user_pressureText) {
        Byte value[] = {12, 31, 9, 246, 237, 50, 165, 165, 35, 86, 78, 66, 81, 81, 76, 70, 90, 64, 74, 80, 84, 34};
        _user_pressureText = [self StringFromEagerEmergingData:value];
    }
    return _user_pressureText;
}

//: POST
- (NSString *)dream_submitTitle {
    if (!_dream_submitTitle) {
        Byte value[] = {4, 78, 9, 226, 28, 226, 124, 69, 20, 2, 1, 5, 6, 127};
        _dream_submitTitle = [self StringFromEagerEmergingData:value];
    }
    return _dream_submitTitle;
}

//: autoLogin
- (NSString *)show_alongSpeculateData {
    if (!_show_alongSpeculateData) {
        Byte value[] = {9, 58, 12, 58, 22, 3, 222, 113, 138, 198, 81, 149, 39, 59, 58, 53, 18, 53, 45, 47, 52, 20};
        _show_alongSpeculateData = [self StringFromEagerEmergingData:value];
    }
    return _show_alongSpeculateData;
}

//: umappkey_android
- (NSString *)dreamInfoCousinText {
    if (!_dreamInfoCousinText) {
        Byte value[] = {16, 20, 7, 231, 133, 231, 118, 97, 89, 77, 92, 92, 87, 81, 101, 75, 77, 90, 80, 94, 91, 85, 80, 51};
        _dreamInfoCousinText = [self StringFromEagerEmergingData:value];
    }
    return _dreamInfoCousinText;
}

//: istsbutton
- (NSString *)user_rollingText {
    if (!_user_rollingText) {
        Byte value[] = {10, 24, 5, 88, 97, 81, 91, 92, 91, 74, 93, 92, 92, 87, 86, 77};
        _user_rollingText = [self StringFromEagerEmergingData:value];
    }
    return _user_rollingText;
}

//: https://imapi.9idbq.cn/api/user/edit
- (NSString *)dreamWithTitle {
    if (!_dreamWithTitle) {
        Byte value[] = {36, 61, 13, 87, 70, 186, 231, 54, 152, 128, 75, 85, 226, 43, 55, 55, 51, 54, 253, 242, 242, 44, 48, 36, 51, 44, 241, 252, 44, 39, 37, 52, 241, 38, 49, 242, 36, 51, 44, 242, 56, 54, 40, 53, 242, 40, 39, 44, 55, 1};
        _dreamWithTitle = [self StringFromEagerEmergingData:value];
    }
    return _dreamWithTitle;
}

//: globalsign
- (NSString *)showAgainstValue {
    if (!_showAgainstValue) {
        Byte value[] = {10, 65, 3, 38, 43, 46, 33, 32, 43, 50, 40, 38, 45, 140};
        _showAgainstValue = [self StringFromEagerEmergingData:value];
    }
    return _showAgainstValue;
}

//: /user/ismustmobile
- (NSString *)app_beastText {
    if (!_app_beastText) {
        Byte value[] = {18, 27, 6, 164, 110, 93, 20, 90, 88, 74, 87, 20, 78, 88, 82, 90, 88, 89, 82, 84, 71, 78, 81, 74, 123};
        _app_beastText = [self StringFromEagerEmergingData:value];
    }
    return _app_beastText;
}

//: password
- (NSString *)dreamImageName {
    if (!_dreamImageName) {
        Byte value[] = {8, 38, 3, 74, 59, 77, 77, 81, 73, 76, 62, 223};
        _dreamImageName = [self StringFromEagerEmergingData:value];
    }
    return _dreamImageName;
}

//: servicer
- (NSString *)user_drumData {
    if (!_user_drumData) {
        Byte value[] = {8, 61, 10, 13, 85, 3, 101, 149, 186, 203, 54, 40, 53, 57, 44, 38, 40, 53, 191};
        _user_drumData = [self StringFromEagerEmergingData:value];
    }
    return _user_drumData;
}

//: isregitor
- (NSString *)appMiddleTitle {
    if (!_appMiddleTitle) {
        Byte value[] = {9, 13, 9, 105, 79, 127, 32, 226, 116, 92, 102, 101, 88, 90, 92, 103, 98, 101, 152};
        _appMiddleTitle = [self StringFromEagerEmergingData:value];
    }
    return _appMiddleTitle;
}

//: data
- (NSString *)notiGymTitle {
    if (!_notiGymTitle) {
        Byte value[] = {4, 16, 13, 126, 126, 94, 141, 46, 5, 251, 16, 130, 90, 84, 81, 100, 81, 94};
        _notiGymTitle = [self StringFromEagerEmergingData:value];
    }
    return _notiGymTitle;
}

//: isspeakingtime
- (NSString *)k_taiOmitPopularityText {
    if (!_k_taiOmitPopularityText) {
        Byte value[] = {14, 12, 10, 123, 47, 50, 230, 203, 197, 209, 93, 103, 103, 100, 89, 85, 95, 93, 98, 91, 104, 93, 97, 89, 73};
        _k_taiOmitPopularityText = [self StringFromEagerEmergingData:value];
    }
    return _k_taiOmitPopularityText;
}

//: /user/getBookStatus
- (NSString *)app_controlItsText {
    if (!_app_controlItsText) {
        Byte value[] = {19, 49, 5, 155, 213, 254, 68, 66, 52, 65, 254, 54, 52, 67, 17, 62, 62, 58, 34, 67, 48, 67, 68, 66, 20};
        _app_controlItsText = [self StringFromEagerEmergingData:value];
    }
    return _app_controlItsText;
}

//: issecret
- (NSString *)show_emotionValue {
    if (!_show_emotionValue) {
        Byte value[] = {8, 57, 10, 90, 230, 17, 57, 40, 236, 26, 48, 58, 58, 44, 42, 57, 44, 59, 162};
        _show_emotionValue = [self StringFromEagerEmergingData:value];
    }
    return _show_emotionValue;
}

//: nickname
- (NSString *)mDayTitle {
    if (!_mDayTitle) {
        Byte value[] = {8, 67, 7, 197, 208, 26, 56, 43, 38, 32, 40, 43, 30, 42, 34, 249};
        _mDayTitle = [self StringFromEagerEmergingData:value];
    }
    return _mDayTitle;
}

//: chatnotify
- (NSString *)dreamGrossName {
    if (!_dreamGrossName) {
        Byte value[] = {10, 71, 9, 215, 108, 185, 250, 118, 142, 28, 33, 26, 45, 39, 40, 45, 34, 31, 50, 254};
        _dreamGrossName = [self StringFromEagerEmergingData:value];
    }
    return _dreamGrossName;
}

//: avatar
- (NSString *)notiOlaTitle {
    if (!_notiOlaTitle) {
        Byte value[] = {6, 11, 4, 102, 86, 107, 86, 105, 86, 103, 247};
        _notiOlaTitle = [self StringFromEagerEmergingData:value];
    }
    return _notiOlaTitle;
}

//: yinnihione
- (NSString *)user_peerTitle {
    if (!_user_peerTitle) {
        Byte value[] = {10, 1, 5, 251, 37, 120, 104, 109, 109, 104, 103, 104, 110, 109, 100, 255};
        _user_peerTitle = [self StringFromEagerEmergingData:value];
    }
    return _user_peerTitle;
}

//: /user/checkmoments
- (NSString *)showAriaValue {
    if (!_showAriaValue) {
        Byte value[] = {18, 96, 8, 216, 92, 14, 220, 8, 207, 21, 19, 5, 18, 207, 3, 8, 5, 3, 11, 13, 15, 13, 5, 14, 20, 19, 229};
        _showAriaValue = [self StringFromEagerEmergingData:value];
    }
    return _showAriaValue;
}

//: /other/appSetting
- (NSString *)mainWishName {
    if (!_mainWishName) {
        Byte value[] = {17, 63, 6, 111, 123, 124, 240, 48, 53, 41, 38, 51, 240, 34, 49, 49, 20, 38, 53, 53, 42, 47, 40, 43};
        _mainWishName = [self StringFromEagerEmergingData:value];
    }
    return _mainWishName;
}

//: /user/generateUser
- (NSString *)userComfortableValue {
    if (!_userComfortableValue) {
        Byte value[] = {18, 73, 8, 4, 129, 88, 209, 76, 230, 44, 42, 28, 41, 230, 30, 28, 37, 28, 41, 24, 43, 28, 12, 42, 28, 41, 93};
        _userComfortableValue = [self StringFromEagerEmergingData:value];
    }
    return _userComfortableValue;
}

//: allowdeletion
- (NSString *)noti_barrelTitle {
    if (!_noti_barrelTitle) {
        Byte value[] = {13, 35, 3, 62, 73, 73, 76, 84, 65, 66, 73, 66, 81, 70, 76, 75, 219};
        _noti_barrelTitle = [self StringFromEagerEmergingData:value];
    }
    return _noti_barrelTitle;
}

//: code
- (NSString *)kDrumRoperName {
    if (!_kDrumRoperName) {
        Byte value[] = {4, 63, 12, 167, 225, 77, 173, 51, 135, 116, 103, 50, 36, 48, 37, 38, 69};
        _kDrumRoperName = [self StringFromEagerEmergingData:value];
    }
    return _kDrumRoperName;
}

//: Content-Type
- (NSString *)mainPapData {
    if (!_mainPapData) {
        Byte value[] = {12, 11, 3, 56, 100, 99, 105, 90, 99, 105, 34, 73, 110, 101, 90, 56};
        _mainPapData = [self StringFromEagerEmergingData:value];
    }
    return _mainPapData;
}

//: application/json
- (NSString *)mainEducatorName {
    if (!_mainEducatorName) {
        Byte value[] = {16, 51, 8, 167, 248, 105, 221, 141, 46, 61, 61, 57, 54, 48, 46, 65, 54, 60, 59, 252, 55, 64, 60, 59, 112};
        _mainEducatorName = [self StringFromEagerEmergingData:value];
    }
    return _mainEducatorName;
}

//: gender
- (NSString *)mListenerData {
    if (!_mListenerData) {
        Byte value[] = {6, 44, 11, 242, 222, 190, 97, 157, 104, 179, 206, 59, 57, 66, 56, 57, 70, 68};
        _mListenerData = [self StringFromEagerEmergingData:value];
    }
    return _mListenerData;
}

//: Content-Length
- (NSString *)app_paintTitle {
    if (!_app_paintTitle) {
        Byte value[] = {14, 67, 13, 250, 218, 177, 237, 138, 85, 146, 228, 131, 26, 0, 44, 43, 49, 34, 43, 49, 234, 9, 34, 43, 36, 49, 37, 128};
        _app_paintTitle = [self StringFromEagerEmergingData:value];
    }
    return _app_paintTitle;
}

//: /user/deleteUser
- (NSString *)main_nationalName {
    if (!_main_nationalName) {
        Byte value[] = {16, 23, 12, 85, 37, 162, 236, 96, 170, 214, 67, 2, 24, 94, 92, 78, 91, 24, 77, 78, 85, 78, 93, 78, 62, 92, 78, 91, 176};
        _main_nationalName = [self StringFromEagerEmergingData:value];
    }
    return _main_nationalName;
}

//: ismustmobile
- (NSString *)main_ambitionValue {
    if (!_main_ambitionValue) {
        Byte value[] = {12, 62, 7, 145, 168, 243, 255, 43, 53, 47, 55, 53, 54, 47, 49, 36, 43, 46, 39, 251};
        _main_ambitionValue = [self StringFromEagerEmergingData:value];
    }
    return _main_ambitionValue;
}

//: isinvitecode
- (NSString *)showLengthPursuitText {
    if (!_showLengthPursuitText) {
        Byte value[] = {12, 1, 8, 83, 13, 88, 109, 116, 104, 114, 104, 109, 117, 104, 115, 100, 98, 110, 99, 100, 145};
        _showLengthPursuitText = [self StringFromEagerEmergingData:value];
    }
    return _showLengthPursuitText;
}

//: getpassword
- (NSString *)show_distributeValue {
    if (!_show_distributeValue) {
        Byte value[] = {11, 48, 4, 94, 55, 53, 68, 64, 49, 67, 67, 71, 63, 66, 52, 220};
        _show_distributeValue = [self StringFromEagerEmergingData:value];
    }
    return _show_distributeValue;
}

//: /other/systemSetting
- (NSString *)showPapName {
    if (!_showPapName) {
        Byte value[] = {20, 80, 7, 93, 241, 253, 51, 223, 31, 36, 24, 21, 34, 223, 35, 41, 35, 36, 21, 29, 3, 21, 36, 36, 25, 30, 23, 144};
        _showPapName = [self StringFromEagerEmergingData:value];
    }
    return _showPapName;
}

//: Messageread
- (NSString *)kVideoValue {
    if (!_kVideoValue) {
        Byte value[] = {11, 39, 12, 238, 255, 162, 170, 233, 173, 95, 100, 136, 38, 62, 76, 76, 58, 64, 62, 75, 62, 58, 61, 190};
        _kVideoValue = [self StringFromEagerEmergingData:value];
    }
    return _kVideoValue;
}

//: isweixinlogin
- (NSString *)kAccountContent {
    if (!_kAccountContent) {
        Byte value[] = {13, 8, 6, 144, 231, 217, 97, 107, 111, 93, 97, 112, 97, 102, 100, 103, 95, 97, 102, 166};
        _kAccountContent = [self StringFromEagerEmergingData:value];
    }
    return _kAccountContent;
}

//: birth
- (NSString *)dream_severName {
    if (!_dream_severName) {
        Byte value[] = {5, 61, 9, 105, 12, 98, 175, 96, 78, 37, 44, 53, 55, 43, 129};
        _dream_severName = [self StringFromEagerEmergingData:value];
    }
    return _dream_severName;
}

//: logininfo
- (NSString *)noti_preventionName {
    if (!_noti_preventionName) {
        Byte value[] = {9, 86, 10, 176, 41, 239, 174, 40, 12, 67, 22, 25, 17, 19, 24, 19, 24, 16, 25, 97};
        _noti_preventionName = [self StringFromEagerEmergingData:value];
    }
    return _noti_preventionName;
}

//: isavatar
- (NSString *)m_recallData {
    if (!_m_recallData) {
        Byte value[] = {8, 73, 7, 166, 254, 44, 250, 32, 42, 24, 45, 24, 43, 24, 41, 158};
        _m_recallData = [self StringFromEagerEmergingData:value];
    }
    return _m_recallData;
}

//: sex
- (NSString *)k_injureData {
    if (!_k_injureData) {
        Byte value[] = {3, 76, 12, 163, 23, 38, 122, 147, 148, 165, 119, 175, 39, 25, 44, 29};
        _k_injureData = [self StringFromEagerEmergingData:value];
    }
    return _k_injureData;
}

//: sign
- (NSString *)userMiddleName {
    if (!_userMiddleName) {
        Byte value[] = {4, 38, 4, 3, 77, 67, 65, 72, 93};
        _userMiddleName = [self StringFromEagerEmergingData:value];
    }
    return _userMiddleName;
}

//: birthday
- (NSString *)user_intellectualTitle {
    if (!_user_intellectualTitle) {
        Byte value[] = {8, 59, 9, 199, 190, 254, 105, 70, 132, 39, 46, 55, 57, 45, 41, 38, 62, 185};
        _user_intellectualTitle = [self StringFromEagerEmergingData:value];
    }
    return _user_intellectualTitle;
}

//: isclear
- (NSString *)kOlaData {
    if (!_kOlaData) {
        Byte value[] = {7, 54, 13, 190, 57, 91, 6, 30, 188, 135, 191, 106, 116, 51, 61, 45, 54, 47, 43, 60, 155};
        _kOlaData = [self StringFromEagerEmergingData:value];
    }
    return _kOlaData;
}

//: redpacket
- (NSString *)noti_middleContent {
    if (!_noti_middleContent) {
        Byte value[] = {9, 36, 10, 123, 228, 83, 43, 52, 126, 162, 78, 65, 64, 76, 61, 63, 71, 65, 80, 247};
        _noti_middleContent = [self StringFromEagerEmergingData:value];
    }
    return _noti_middleContent;
}

//: mobile
- (NSString *)show_warnLabelTitle {
    if (!_show_warnLabelTitle) {
        Byte value[] = {6, 8, 9, 145, 114, 226, 129, 162, 244, 101, 103, 90, 97, 100, 93, 130};
        _show_warnLabelTitle = [self StringFromEagerEmergingData:value];
    }
    return _show_warnLabelTitle;
}

//: account
- (NSString *)show_progressiveValue {
    if (!_show_progressiveValue) {
        Byte value[] = {7, 45, 9, 74, 95, 150, 204, 42, 42, 52, 54, 54, 66, 72, 65, 71, 185};
        _show_progressiveValue = [self StringFromEagerEmergingData:value];
    }
    return _show_progressiveValue;
}

//: islogin
- (NSString *)dream_showerTitle {
    if (!_dream_showerTitle) {
        Byte value[] = {7, 44, 3, 61, 71, 64, 67, 59, 61, 66, 192};
        _dream_showerTitle = [self StringFromEagerEmergingData:value];
    }
    return _dream_showerTitle;
}

//: https://www.jexhor.com/privacy.html
- (NSString *)user_ariaLimitName {
    if (!_user_ariaLimitName) {
        Byte value[] = {35, 18, 4, 59, 86, 98, 98, 94, 97, 40, 29, 29, 101, 101, 101, 28, 88, 83, 102, 86, 93, 96, 28, 81, 93, 91, 29, 94, 96, 87, 100, 79, 81, 103, 28, 86, 98, 91, 90, 77};
        _user_ariaLimitName = [self StringFromEagerEmergingData:value];
    }
    return _user_ariaLimitName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleManager+SoleMode.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager+Addtionals.h"
#import "TitleManager+SoleMode.h"
//: #import "CCCAutoLoginManager.h"
#import "RedSame.h"

//: @implementation ZCHttpManager (Addtionals)
@implementation TitleManager (SoleMode)


//: #pragma mark - 传入用户信息 转换出 请求修改参数
#pragma mark - 传入用户信息 转换出 请求修改参数
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo{
+(NSDictionary *)top:(NSDictionary *)userInfo{

    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"mobile"] = [userInfo newStringValueForKey:@"mobile"];
    dict[[EagerEmergingData sharedInstance].show_warnLabelTitle] = [userInfo route:[EagerEmergingData sharedInstance].show_warnLabelTitle];
    //: dict[@"avatar"] = [userInfo newStringValueForKey:@"avatar"];
    dict[[EagerEmergingData sharedInstance].notiOlaTitle] = [userInfo route:[EagerEmergingData sharedInstance].notiOlaTitle];
    //: dict[@"nickname"] = [userInfo newStringValueForKey:@"nickname"];
    dict[[EagerEmergingData sharedInstance].mDayTitle] = [userInfo route:[EagerEmergingData sharedInstance].mDayTitle];
    //: dict[@"sex"] = [userInfo newStringValueForKey:@"gender"];
    dict[[EagerEmergingData sharedInstance].k_injureData] = [userInfo route:[EagerEmergingData sharedInstance].mListenerData];
    //: dict[@"birth"] = [userInfo newStringValueForKey:@"birthday"];
    dict[[EagerEmergingData sharedInstance].dream_severName] = [userInfo route:[EagerEmergingData sharedInstance].user_intellectualTitle];
    //: dict[@"email"] = me.userInfo.email.length ? me.userInfo.email : @"";
    dict[[EagerEmergingData sharedInstance].showHandleSoleTitle] = me.userInfo.email.length ? me.userInfo.email : @"";
    //: dict[@"sign"] = [userInfo newStringValueForKey:@"sign"];
    dict[[EagerEmergingData sharedInstance].userMiddleName] = [userInfo route:[EagerEmergingData sharedInstance].userMiddleName];
    //: return dict;
    return dict;
}

//: #pragma mark - 修改操作
#pragma mark - 修改操作
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value{
+(void)numericalQuantityTitle:(NSDictionary *)userInfo changeAccount:(NSString *)key display:(NSString *)value{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    //: [dict setObject:value forKey:key];
    [dict setObject:value forKey:key];
    //: [ZCHttpManager getWithUrl:@"https://imapi.9idbq.cn/api/user/edit" params:dict isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[EagerEmergingData sharedInstance].dreamWithTitle queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = resultDict[@"code"];
        NSString *code = resultDict[[EagerEmergingData sharedInstance].kDrumRoperName];
        //: if (code.integerValue > 0) {
        if (code.integerValue > 0) {

        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}




//: + (void)refreshRegistConfig:(GlobalConfigBlock)block{
+ (void)tag:(GlobalConfigBlock)block{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].app_beastText] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict objectColor:[EagerEmergingData sharedInstance].notiGymTitle];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *ismustmobile = [data newStringValueForKey:@"ismustmobile"];
            NSString *ismustmobile = [data route:[EagerEmergingData sharedInstance].main_ambitionValue];//客户端注册ID是否必须为手机号
            //: NSString *isinvitecode = [data newStringValueForKey:@"isinvitecode"];
            NSString *isinvitecode = [data route:[EagerEmergingData sharedInstance].showLengthPursuitText];//邀请码是否必填
            //: NSString *isavatar = [data newStringValueForKey:@"isavatar"];
            NSString *isavatar = [data route:[EagerEmergingData sharedInstance].m_recallData];//是否强制上传头像
            //: NSString *issecret = [data newStringValueForKey:@"issecret"];
            NSString *issecret = [data route:[EagerEmergingData sharedInstance].show_emotionValue];//是否强制密保
            //: NSString *logininfo = [data newStringValueForKey:@"logininfo"];
            NSString *logininfo = [data route:[EagerEmergingData sharedInstance].noti_preventionName];//登录页自定义信息
            //: NSString *isregitor = [data newStringValueForKey:@"isregitor"];
            NSString *isregitor = [data route:[EagerEmergingData sharedInstance].appMiddleTitle];//1 允许注册 0 不允许
            //: NSString *isweixinlogin = [data newStringValueForKey:@"isweixinlogin"];
            NSString *isweixinlogin = [data route:[EagerEmergingData sharedInstance].kAccountContent];//是/开启微信登录
            //: NSString *isspeakingtime = [data newStringValueForKey:@"isspeakingtime"];
            NSString *isspeakingtime = [data route:[EagerEmergingData sharedInstance].k_taiOmitPopularityText];//是否控制发言间隔时间

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            SessionRecord *userDefaults = [SessionRecord afterUser];
            //: userDefaults.ismustmobile = ismustmobile;
            userDefaults.ismustmobile = ismustmobile;
            //: userDefaults.isinvitecode = isinvitecode;
            userDefaults.isinvitecode = isinvitecode;
            //: userDefaults.isavatar = isavatar;
            userDefaults.isavatar = isavatar;
            //: userDefaults.issecret = issecret;
            userDefaults.issecret = issecret;
            //: userDefaults.logininfo = logininfo;
            userDefaults.logininfo = logininfo;
            //: userDefaults.isregitor = isregitor;
            userDefaults.isregitor = isregitor;
            //: userDefaults.isweixinlogin = isweixinlogin;
            userDefaults.isweixinlogin = isweixinlogin;
            //: userDefaults.isspeakingtime = isspeakingtime;
            userDefaults.isspeakingtime = isspeakingtime;
            //: !block ? :block(data);
            !block ? :block(data);
        //: }else{
        }else{
            //: !block ? :block(@{});
            !block ? :block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: !block ? :block(@{});
        !block ? :block(@{});
    //: }];
    }];
}

/**
 "ismustmobile": 0,//客户端注册ID必须为手机号
 "isinvitecode": 1,//客户端注册邀请码为必填项
 "isweixinlogin": 1,////是/开启微信登录
 "isspeakingtime": 1,//是否控制发言间隔时间
 "isavatar": 0,//注册是否强制上传头像
 "issecret": 0,//注册是否强制密保
 "logininfo": "探索-发现"//登录页自定义信息
 "isregitor":1//1 允许注册 0 不允许
 */
//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block{
+(void)kindness:(GlobalConfigBlock)block{


    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/appSetting"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].mainWishName] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict objectColor:[EagerEmergingData sharedInstance].notiGymTitle];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *servicer = [data newStringValueForKey:@"servicer"];
            NSString *servicer = [data route:[EagerEmergingData sharedInstance].user_drumData];
            //: NSString *globalsign = [data newStringValueForKey:@"globalsign"];
            NSString *globalsign = [data route:[EagerEmergingData sharedInstance].showAgainstValue];
            //: NSString *redpacket = [data newStringValueForKey:@"redpacket"];
            NSString *redpacket = [data route:[EagerEmergingData sharedInstance].noti_middleContent];
            //: NSString *getpassword = [data newStringValueForKey:@"getpassword"];
            NSString *getpassword = [data route:[EagerEmergingData sharedInstance].show_distributeValue];
            //: NSString *istsbutton = [data newStringValueForKey:@"istsbutton"];
            NSString *istsbutton = [data route:[EagerEmergingData sharedInstance].user_rollingText];
//            NSString *yshref = [data newStringValueForKey:@"yshref"];
            //: NSString *yshref = @"https://www.jexhor.com/privacy.html";
            NSString *yshref = [EagerEmergingData sharedInstance].user_ariaLimitName;
            //: NSString *umappkey_android = [data newStringValueForKey:@"umappkey_android"];
            NSString *umappkey_android = [data route:[EagerEmergingData sharedInstance].dreamInfoCousinText];
            //: NSString *umappkey_ios = [data newStringValueForKey:@"umappkey_ios"];
            NSString *umappkey_ios = [data route:[EagerEmergingData sharedInstance].user_pressureText];

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            SessionRecord *userDefaults = [SessionRecord afterUser];
            //: userDefaults.globalsign = globalsign;
            userDefaults.globalsign = globalsign;
            //: userDefaults.redpacket = redpacket;
            userDefaults.redpacket = redpacket;
            //: userDefaults.yshref = yshref;
            userDefaults.yshref = yshref;
            //: userDefaults.istsbutton = istsbutton;
            userDefaults.istsbutton = istsbutton;
            //: userDefaults.servicer = servicer;
            userDefaults.servicer = servicer;
            //: userDefaults.umappkey_ios = umappkey_ios;
            userDefaults.umappkey_ios = umappkey_ios;

            //: userDefaults.allowdeletion = [data stringValueForKey:@"allowdeletion" defaultValue:@"1"];
            userDefaults.allowdeletion = [data canValue:[EagerEmergingData sharedInstance].noti_barrelTitle background:@"1"];

            //: NSString *autoLogin = [data newStringValueForKey:@"autoLogin"];
            NSString *autoLogin = [data route:[EagerEmergingData sharedInstance].show_alongSpeculateData];
            //: userDefaults.autoLogin = autoLogin;
            userDefaults.autoLogin = autoLogin;

            //: userDefaults.chatnotify = [data newStringValueForKey:@"chatnotify"];
            userDefaults.chatnotify = [data route:[EagerEmergingData sharedInstance].dreamGrossName];

            //: userDefaults.showMessageRead = [data stringValueForKey:@"Messageread" defaultValue:@"1"];
            userDefaults.showMessageRead = [data canValue:[EagerEmergingData sharedInstance].kVideoValue background:@"1"];
//            userDefaults.showMessageRead =  kConstant_1;

            //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
            [RedSame manager].isRequestAutoLoginFinish = YES;

            //: userDefaults.yinnihione = [data stringValueForKey:@"yinnihione" defaultValue:@"1"];
            userDefaults.yinnihione = [data canValue:[EagerEmergingData sharedInstance].user_peerTitle background:@"1"];

            //: block(data);
            block(data);

        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block{
+(void)style:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/getBookStatus"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].app_controlItsText] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: block(resultDict);
        block(resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block {
+ (void)path:(NSDictionary *)params nearKey:(GlobalConfigBlock)block {

    //: NSString *urls = [NIMUserDefaults standardUserDefaults].chatnotify;
    NSString *urls = [SessionRecord afterUser].chatnotify;
    //: if (!urls) {
    if (!urls) {
        //: return;
        return;
    }

//    [TitleManager postWithUrl:url params:params isShow:NO success:^(id responseObject) {
//        
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSDictionary *data = [resultDict valueObjectForKey:@"data"];
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//
//        if (code.integerValue == 0 && data.count > 0) {
//            block(data);
//        }else{
//            block(@{});
//        }
//    } failed:^(id responseObject, NSError *error) {
//        block(@{});
//    }];


    //: AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: [securityPolicy setValidatesDomainName:NO];
    [securityPolicy setValidatesDomainName:NO];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: manager.securityPolicy = securityPolicy;
    manager.securityPolicy = securityPolicy;
    //: manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", nil];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[EagerEmergingData sharedInstance].mainEducatorName, nil];

    //: NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    //: [request setHTTPMethod:@"POST"];
    [request setHTTPMethod:[EagerEmergingData sharedInstance].dream_submitTitle];
    //: request.timeoutInterval = 30;
    request.timeoutInterval = 30;

    //: [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:[EagerEmergingData sharedInstance].mainEducatorName forHTTPHeaderField:[EagerEmergingData sharedInstance].mainPapData];

    // body
    //: NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];

    //: [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:@"Content-Length"];
    [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:[EagerEmergingData sharedInstance].app_paintTitle];
    //: [request setHTTPBody:postData];
    [request setHTTPBody:postData];



    //: NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {

    //: } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {

    //: } completionHandler:^(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error) {

        //: NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:responseObject];
        NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:responseObject];
        //: block(mutDic);
        block(mutDic);

    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block {
+ (void)picture:(GlobalConfigBlock)block {
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/generateUser"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].userComfortableValue] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict objectColor:[EagerEmergingData sharedInstance].notiGymTitle];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[EagerEmergingData sharedInstance].kDrumRoperName];

        //: if (code.integerValue == 0 && data.count > 0) {
        if (code.integerValue == 0 && data.count > 0) {
            //: block(data);
            block(data);
        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block{
+(void)frame:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkmoments"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].showAriaValue] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[EagerEmergingData sharedInstance].kDrumRoperName];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"1";
            [SessionRecord afterUser].friendsCircle = @"1";
        //: }else{
        }else{
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"0";
            [SessionRecord afterUser].friendsCircle = @"0";
        }
        //: block(@{});
        block(@{});
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block{
+(void)with:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/systemSetting"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].showPapName] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[EagerEmergingData sharedInstance].kDrumRoperName];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[EagerEmergingData sharedInstance].notiGymTitle];
            //: [NIMUserDefaults standardUserDefaults].islogin = [data newStringValueForKey:@"islogin"];
            [SessionRecord afterUser].islogin = [data route:[EagerEmergingData sharedInstance].dream_showerTitle];
            //: [NIMUserDefaults standardUserDefaults].isclear = [data newStringValueForKey:@"isclear"];
            [SessionRecord afterUser].isclear = [data route:[EagerEmergingData sharedInstance].kOlaData];
            //: block(data);
            block(data);
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)deleteUser:(GlobalConfigBlock)block{
+(void)doing:(GlobalConfigBlock)block{

    //: NSDictionary *params = @{@"account":[NIMUserDefaults standardUserDefaults].accountName?:@"" , @"password":[NIMUserDefaults standardUserDefaults].pCode?:@""};
    NSDictionary *params = @{[EagerEmergingData sharedInstance].show_progressiveValue:[SessionRecord afterUser].accountName?:@"" , [EagerEmergingData sharedInstance].dreamImageName:[SessionRecord afterUser].pCode?:@""};
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/deleteUser"] params:params isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EagerEmergingData sharedInstance].main_nationalName] queryedBlockOf:params managerToObject:YES presentResponseSuccess:^(id responseObject) {

        //: block(@{});
        block(@{});

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}



//: @end
@end