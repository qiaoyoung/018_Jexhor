
#import <Foundation/Foundation.h>

@interface StemData : NSObject

+ (instancetype)sharedInstance;

//: isavatar
@property (nonatomic, copy) NSString *noti_viewName;

//: code
@property (nonatomic, copy) NSString *main_termPullButtFormat;

//: Messageread
@property (nonatomic, copy) NSString *mAllyPath;

//: account
@property (nonatomic, copy) NSString *dreamConstrainStr;

//: /other/appSetting
@property (nonatomic, copy) NSString *notiSpeculateIdent;

//: getpassword
@property (nonatomic, copy) NSString *app_globData;

//: sex
@property (nonatomic, copy) NSString *mFarMsg;

//: umappkey_ios
@property (nonatomic, copy) NSString *dreamRelaxStr;

//: allowdeletion
@property (nonatomic, copy) NSString *showBrownId;

//: birth
@property (nonatomic, copy) NSString *mUserIdent;

//: avatar
@property (nonatomic, copy) NSString *main_legallyCancelData;

//: https://www.jexhor.com/privacy.html
@property (nonatomic, copy) NSString *show_costlyValue;

//: gender
@property (nonatomic, copy) NSString *app_textTitle;

//: globalsign
@property (nonatomic, copy) NSString *showSessionFormat;

//: redpacket
@property (nonatomic, copy) NSString *k_economicalUrl;

//: birthday
@property (nonatomic, copy) NSString *show_negativeAffairValue;

//: isinvitecode
@property (nonatomic, copy) NSString *mRandomNuclearKey;

//: Content-Length
@property (nonatomic, copy) NSString *dream_affectAffairIconMessage;

//: password
@property (nonatomic, copy) NSString *user_displayFormat;

//: isweixinlogin
@property (nonatomic, copy) NSString *showButtPath;

//: ismustmobile
@property (nonatomic, copy) NSString *mProposedRelaxValue;

//: nickname
@property (nonatomic, copy) NSString *mainBlueChildFormat;

//: /user/getBookStatus
@property (nonatomic, copy) NSString *m_wipeInputStr;

//: sign
@property (nonatomic, copy) NSString *userGlobName;

//: servicer
@property (nonatomic, copy) NSString *mSustainPickStr;

//: chatnotify
@property (nonatomic, copy) NSString *user_teamPath;

//: Content-Type
@property (nonatomic, copy) NSString *dreamDepartIdent;

//: /user/checkmoments
@property (nonatomic, copy) NSString *app_stressTitle;

//: autoLogin
@property (nonatomic, copy) NSString *mainQuipPenaltyFormat;

//: issecret
@property (nonatomic, copy) NSString *app_userHostageIdent;

//: islogin
@property (nonatomic, copy) NSString *dream_pervIdent;

//: application/json
@property (nonatomic, copy) NSString *notiPinYinValue;

//: data
@property (nonatomic, copy) NSString *show_photographyUrl;

//: /user/generateUser
@property (nonatomic, copy) NSString *showDogName;

//: isclear
@property (nonatomic, copy) NSString *dreamRageIdent;

//: isregitor
@property (nonatomic, copy) NSString *m_teamMsg;

//: yinnihione
@property (nonatomic, copy) NSString *m_allotButtName;

//: istsbutton
@property (nonatomic, copy) NSString *showPropertyName;

//: /user/deleteUser
@property (nonatomic, copy) NSString *kGuidanceMessage;

//: mobile
@property (nonatomic, copy) NSString *mainSufferingAbasePervStr;

//: email
@property (nonatomic, copy) NSString *main_milkData;

//: /other/systemSetting
@property (nonatomic, copy) NSString *mainShowPropertyStr;

//: umappkey_android
@property (nonatomic, copy) NSString *showJustifyUrl;

//: POST
@property (nonatomic, copy) NSString *mPathKey;

//: isspeakingtime
@property (nonatomic, copy) NSString *app_statData;

//: https://imapi.9idbq.cn/api/user/edit
@property (nonatomic, copy) NSString *notiStatusData;

//: logininfo
@property (nonatomic, copy) NSString *dreamLittleName;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *app_quipFormat;

@end

@implementation StemData

+ (instancetype)sharedInstance {
    static StemData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StemDataToCache:(Byte *)data {
    int forthwith = data[0];
    Byte quake = data[1];
    int displayResent = data[2];
    for (int i = displayResent; i < displayResent + forthwith; i++) {
        int value = data[i] - quake;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[displayResent + forthwith] = 0;
    return data + displayResent;
}

- (NSString *)StringFromStemData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StemDataToCache:data]];
}

//: isspeakingtime
- (NSString *)app_statData {
    if (!_app_statData) {
        Byte value[] = {14, 89, 8, 228, 136, 183, 82, 73, 194, 204, 204, 201, 190, 186, 196, 194, 199, 192, 205, 194, 198, 190, 242};
        _app_statData = [self StringFromStemData:value];
    }
    return _app_statData;
}

//: account
- (NSString *)dreamConstrainStr {
    if (!_dreamConstrainStr) {
        Byte value[] = {7, 11, 10, 50, 29, 129, 185, 238, 134, 241, 108, 110, 110, 122, 128, 121, 127, 162};
        _dreamConstrainStr = [self StringFromStemData:value];
    }
    return _dreamConstrainStr;
}

//: /user/getBookStatus
- (NSString *)m_wipeInputStr {
    if (!_m_wipeInputStr) {
        Byte value[] = {19, 11, 3, 58, 128, 126, 112, 125, 58, 114, 112, 127, 77, 122, 122, 118, 94, 127, 108, 127, 128, 126, 48};
        _m_wipeInputStr = [self StringFromStemData:value];
    }
    return _m_wipeInputStr;
}

//: gender
- (NSString *)app_textTitle {
    if (!_app_textTitle) {
        Byte value[] = {6, 5, 4, 85, 108, 106, 115, 105, 106, 119, 66};
        _app_textTitle = [self StringFromStemData:value];
    }
    return _app_textTitle;
}

//: /user/ismustmobile
- (NSString *)app_quipFormat {
    if (!_app_quipFormat) {
        Byte value[] = {18, 92, 7, 114, 194, 101, 177, 139, 209, 207, 193, 206, 139, 197, 207, 201, 209, 207, 208, 201, 203, 190, 197, 200, 193, 78};
        _app_quipFormat = [self StringFromStemData:value];
    }
    return _app_quipFormat;
}

//: sign
- (NSString *)userGlobName {
    if (!_userGlobName) {
        Byte value[] = {4, 93, 8, 170, 171, 209, 90, 14, 208, 198, 196, 203, 78};
        _userGlobName = [self StringFromStemData:value];
    }
    return _userGlobName;
}

//: ismustmobile
- (NSString *)mProposedRelaxValue {
    if (!_mProposedRelaxValue) {
        Byte value[] = {12, 84, 10, 173, 164, 32, 104, 30, 67, 28, 189, 199, 193, 201, 199, 200, 193, 195, 182, 189, 192, 185, 144};
        _mProposedRelaxValue = [self StringFromStemData:value];
    }
    return _mProposedRelaxValue;
}

//: Messageread
- (NSString *)mAllyPath {
    if (!_mAllyPath) {
        Byte value[] = {11, 55, 10, 118, 233, 155, 191, 96, 208, 132, 132, 156, 170, 170, 152, 158, 156, 169, 156, 152, 155, 33};
        _mAllyPath = [self StringFromStemData:value];
    }
    return _mAllyPath;
}

//: redpacket
- (NSString *)k_economicalUrl {
    if (!_k_economicalUrl) {
        Byte value[] = {9, 24, 10, 51, 14, 82, 84, 206, 28, 64, 138, 125, 124, 136, 121, 123, 131, 125, 140, 57};
        _k_economicalUrl = [self StringFromStemData:value];
    }
    return _k_economicalUrl;
}

//: isavatar
- (NSString *)noti_viewName {
    if (!_noti_viewName) {
        Byte value[] = {8, 73, 8, 132, 51, 128, 121, 11, 178, 188, 170, 191, 170, 189, 170, 187, 164};
        _noti_viewName = [self StringFromStemData:value];
    }
    return _noti_viewName;
}

//: chatnotify
- (NSString *)user_teamPath {
    if (!_user_teamPath) {
        Byte value[] = {10, 30, 9, 247, 125, 197, 82, 116, 20, 129, 134, 127, 146, 140, 141, 146, 135, 132, 151, 26};
        _user_teamPath = [self StringFromStemData:value];
    }
    return _user_teamPath;
}

//: nickname
- (NSString *)mainBlueChildFormat {
    if (!_mainBlueChildFormat) {
        Byte value[] = {8, 34, 13, 79, 106, 51, 153, 59, 110, 159, 91, 217, 252, 144, 139, 133, 141, 144, 131, 143, 135, 224};
        _mainBlueChildFormat = [self StringFromStemData:value];
    }
    return _mainBlueChildFormat;
}

//: https://imapi.9idbq.cn/api/user/edit
- (NSString *)notiStatusData {
    if (!_notiStatusData) {
        Byte value[] = {36, 41, 4, 77, 145, 157, 157, 153, 156, 99, 88, 88, 146, 150, 138, 153, 146, 87, 98, 146, 141, 139, 154, 87, 140, 151, 88, 138, 153, 146, 88, 158, 156, 142, 155, 88, 142, 141, 146, 157, 41};
        _notiStatusData = [self StringFromStemData:value];
    }
    return _notiStatusData;
}

//: issecret
- (NSString *)app_userHostageIdent {
    if (!_app_userHostageIdent) {
        Byte value[] = {8, 77, 7, 74, 152, 70, 254, 182, 192, 192, 178, 176, 191, 178, 193, 92};
        _app_userHostageIdent = [self StringFromStemData:value];
    }
    return _app_userHostageIdent;
}

//: isclear
- (NSString *)dreamRageIdent {
    if (!_dreamRageIdent) {
        Byte value[] = {7, 66, 11, 168, 59, 112, 164, 154, 200, 59, 23, 171, 181, 165, 174, 167, 163, 180, 140};
        _dreamRageIdent = [self StringFromStemData:value];
    }
    return _dreamRageIdent;
}

//: password
- (NSString *)user_displayFormat {
    if (!_user_displayFormat) {
        Byte value[] = {8, 57, 7, 33, 157, 113, 198, 169, 154, 172, 172, 176, 168, 171, 157, 22};
        _user_displayFormat = [self StringFromStemData:value];
    }
    return _user_displayFormat;
}

//: allowdeletion
- (NSString *)showBrownId {
    if (!_showBrownId) {
        Byte value[] = {13, 73, 13, 225, 218, 181, 20, 198, 114, 1, 109, 129, 139, 170, 181, 181, 184, 192, 173, 174, 181, 174, 189, 178, 184, 183, 112};
        _showBrownId = [self StringFromStemData:value];
    }
    return _showBrownId;
}

//: /user/checkmoments
- (NSString *)app_stressTitle {
    if (!_app_stressTitle) {
        Byte value[] = {18, 7, 6, 234, 197, 181, 54, 124, 122, 108, 121, 54, 106, 111, 108, 106, 114, 116, 118, 116, 108, 117, 123, 122, 116};
        _app_stressTitle = [self StringFromStemData:value];
    }
    return _app_stressTitle;
}

//: globalsign
- (NSString *)showSessionFormat {
    if (!_showSessionFormat) {
        Byte value[] = {10, 31, 6, 160, 97, 118, 134, 139, 142, 129, 128, 139, 146, 136, 134, 141, 79};
        _showSessionFormat = [self StringFromStemData:value];
    }
    return _showSessionFormat;
}

//: Content-Type
- (NSString *)dreamDepartIdent {
    if (!_dreamDepartIdent) {
        Byte value[] = {12, 28, 12, 175, 171, 145, 221, 211, 142, 180, 64, 9, 95, 139, 138, 144, 129, 138, 144, 73, 112, 149, 140, 129, 164};
        _dreamDepartIdent = [self StringFromStemData:value];
    }
    return _dreamDepartIdent;
}

//: avatar
- (NSString *)main_legallyCancelData {
    if (!_main_legallyCancelData) {
        Byte value[] = {6, 59, 3, 156, 177, 156, 175, 156, 173, 85};
        _main_legallyCancelData = [self StringFromStemData:value];
    }
    return _main_legallyCancelData;
}

//: islogin
- (NSString *)dream_pervIdent {
    if (!_dream_pervIdent) {
        Byte value[] = {7, 80, 12, 78, 101, 79, 236, 182, 121, 214, 231, 160, 185, 195, 188, 191, 183, 185, 190, 79};
        _dream_pervIdent = [self StringFromStemData:value];
    }
    return _dream_pervIdent;
}

//: /user/deleteUser
- (NSString *)kGuidanceMessage {
    if (!_kGuidanceMessage) {
        Byte value[] = {16, 74, 12, 25, 28, 131, 158, 197, 109, 42, 254, 83, 121, 191, 189, 175, 188, 121, 174, 175, 182, 175, 190, 175, 159, 189, 175, 188, 209};
        _kGuidanceMessage = [self StringFromStemData:value];
    }
    return _kGuidanceMessage;
}

//: email
- (NSString *)main_milkData {
    if (!_main_milkData) {
        Byte value[] = {5, 9, 7, 189, 62, 182, 108, 110, 118, 106, 114, 117, 59};
        _main_milkData = [self StringFromStemData:value];
    }
    return _main_milkData;
}

//: logininfo
- (NSString *)dreamLittleName {
    if (!_dreamLittleName) {
        Byte value[] = {9, 91, 12, 91, 89, 87, 207, 216, 78, 121, 96, 104, 199, 202, 194, 196, 201, 196, 201, 193, 202, 89};
        _dreamLittleName = [self StringFromStemData:value];
    }
    return _dreamLittleName;
}

//: /other/appSetting
- (NSString *)notiSpeculateIdent {
    if (!_notiSpeculateIdent) {
        Byte value[] = {17, 16, 8, 237, 36, 45, 226, 45, 63, 127, 132, 120, 117, 130, 63, 113, 128, 128, 99, 117, 132, 132, 121, 126, 119, 39};
        _notiSpeculateIdent = [self StringFromStemData:value];
    }
    return _notiSpeculateIdent;
}

//: sex
- (NSString *)mFarMsg {
    if (!_mFarMsg) {
        Byte value[] = {3, 17, 9, 154, 130, 88, 147, 206, 61, 132, 118, 137, 52};
        _mFarMsg = [self StringFromStemData:value];
    }
    return _mFarMsg;
}

//: code
- (NSString *)main_termPullButtFormat {
    if (!_main_termPullButtFormat) {
        Byte value[] = {4, 7, 12, 234, 173, 37, 145, 227, 94, 142, 240, 60, 106, 118, 107, 108, 145};
        _main_termPullButtFormat = [self StringFromStemData:value];
    }
    return _main_termPullButtFormat;
}

//: https://www.jexhor.com/privacy.html
- (NSString *)show_costlyValue {
    if (!_show_costlyValue) {
        Byte value[] = {35, 69, 7, 241, 90, 253, 3, 173, 185, 185, 181, 184, 127, 116, 116, 188, 188, 188, 115, 175, 170, 189, 173, 180, 183, 115, 168, 180, 178, 116, 181, 183, 174, 187, 166, 168, 190, 115, 173, 185, 178, 177, 82};
        _show_costlyValue = [self StringFromStemData:value];
    }
    return _show_costlyValue;
}

//: isinvitecode
- (NSString *)mRandomNuclearKey {
    if (!_mRandomNuclearKey) {
        Byte value[] = {12, 9, 4, 46, 114, 124, 114, 119, 127, 114, 125, 110, 108, 120, 109, 110, 215};
        _mRandomNuclearKey = [self StringFromStemData:value];
    }
    return _mRandomNuclearKey;
}

//: /user/generateUser
- (NSString *)showDogName {
    if (!_showDogName) {
        Byte value[] = {18, 42, 13, 39, 15, 68, 38, 49, 79, 15, 244, 7, 61, 89, 159, 157, 143, 156, 89, 145, 143, 152, 143, 156, 139, 158, 143, 127, 157, 143, 156, 241};
        _showDogName = [self StringFromStemData:value];
    }
    return _showDogName;
}

//: umappkey_ios
- (NSString *)dreamRelaxStr {
    if (!_dreamRelaxStr) {
        Byte value[] = {12, 97, 7, 226, 108, 59, 178, 214, 206, 194, 209, 209, 204, 198, 218, 192, 202, 208, 212, 59};
        _dreamRelaxStr = [self StringFromStemData:value];
    }
    return _dreamRelaxStr;
}

//: Content-Length
- (NSString *)dream_affectAffairIconMessage {
    if (!_dream_affectAffairIconMessage) {
        Byte value[] = {14, 28, 10, 202, 172, 10, 82, 89, 190, 161, 95, 139, 138, 144, 129, 138, 144, 73, 104, 129, 138, 131, 144, 132, 247};
        _dream_affectAffairIconMessage = [self StringFromStemData:value];
    }
    return _dream_affectAffairIconMessage;
}

//: servicer
- (NSString *)mSustainPickStr {
    if (!_mSustainPickStr) {
        Byte value[] = {8, 62, 4, 236, 177, 163, 176, 180, 167, 161, 163, 176, 193};
        _mSustainPickStr = [self StringFromStemData:value];
    }
    return _mSustainPickStr;
}

//: birthday
- (NSString *)show_negativeAffairValue {
    if (!_show_negativeAffairValue) {
        Byte value[] = {8, 12, 3, 110, 117, 126, 128, 116, 112, 109, 133, 53};
        _show_negativeAffairValue = [self StringFromStemData:value];
    }
    return _show_negativeAffairValue;
}

//: getpassword
- (NSString *)app_globData {
    if (!_app_globData) {
        Byte value[] = {11, 4, 5, 94, 113, 107, 105, 120, 116, 101, 119, 119, 123, 115, 118, 104, 117};
        _app_globData = [self StringFromStemData:value];
    }
    return _app_globData;
}

//: umappkey_android
- (NSString *)showJustifyUrl {
    if (!_showJustifyUrl) {
        Byte value[] = {16, 48, 9, 164, 80, 162, 197, 133, 243, 165, 157, 145, 160, 160, 155, 149, 169, 143, 145, 158, 148, 162, 159, 153, 148, 54};
        _showJustifyUrl = [self StringFromStemData:value];
    }
    return _showJustifyUrl;
}

//: isregitor
- (NSString *)m_teamMsg {
    if (!_m_teamMsg) {
        Byte value[] = {9, 61, 10, 172, 94, 149, 25, 59, 103, 130, 166, 176, 175, 162, 164, 166, 177, 172, 175, 254};
        _m_teamMsg = [self StringFromStemData:value];
    }
    return _m_teamMsg;
}

//: autoLogin
- (NSString *)mainQuipPenaltyFormat {
    if (!_mainQuipPenaltyFormat) {
        Byte value[] = {9, 23, 10, 63, 156, 132, 26, 21, 124, 133, 120, 140, 139, 134, 99, 134, 126, 128, 133, 47};
        _mainQuipPenaltyFormat = [self StringFromStemData:value];
    }
    return _mainQuipPenaltyFormat;
}

//: data
- (NSString *)show_photographyUrl {
    if (!_show_photographyUrl) {
        Byte value[] = {4, 32, 3, 132, 129, 148, 129, 210};
        _show_photographyUrl = [self StringFromStemData:value];
    }
    return _show_photographyUrl;
}

//: POST
- (NSString *)mPathKey {
    if (!_mPathKey) {
        Byte value[] = {4, 1, 11, 225, 254, 231, 112, 101, 26, 88, 214, 81, 80, 84, 85, 19};
        _mPathKey = [self StringFromStemData:value];
    }
    return _mPathKey;
}

//: /other/systemSetting
- (NSString *)mainShowPropertyStr {
    if (!_mainShowPropertyStr) {
        Byte value[] = {20, 98, 5, 146, 239, 145, 209, 214, 202, 199, 212, 145, 213, 219, 213, 214, 199, 207, 181, 199, 214, 214, 203, 208, 201, 212};
        _mainShowPropertyStr = [self StringFromStemData:value];
    }
    return _mainShowPropertyStr;
}

//: yinnihione
- (NSString *)m_allotButtName {
    if (!_m_allotButtName) {
        Byte value[] = {10, 70, 9, 151, 185, 227, 251, 67, 116, 191, 175, 180, 180, 175, 174, 175, 181, 180, 171, 217};
        _m_allotButtName = [self StringFromStemData:value];
    }
    return _m_allotButtName;
}

//: mobile
- (NSString *)mainSufferingAbasePervStr {
    if (!_mainSufferingAbasePervStr) {
        Byte value[] = {6, 17, 3, 126, 128, 115, 122, 125, 118, 188};
        _mainSufferingAbasePervStr = [self StringFromStemData:value];
    }
    return _mainSufferingAbasePervStr;
}

//: birth
- (NSString *)mUserIdent {
    if (!_mUserIdent) {
        Byte value[] = {5, 22, 9, 209, 218, 99, 53, 129, 107, 120, 127, 136, 138, 126, 190};
        _mUserIdent = [self StringFromStemData:value];
    }
    return _mUserIdent;
}

//: isweixinlogin
- (NSString *)showButtPath {
    if (!_showButtPath) {
        Byte value[] = {13, 93, 12, 245, 138, 105, 110, 249, 184, 28, 159, 103, 198, 208, 212, 194, 198, 213, 198, 203, 201, 204, 196, 198, 203, 166};
        _showButtPath = [self StringFromStemData:value];
    }
    return _showButtPath;
}

//: application/json
- (NSString *)notiPinYinValue {
    if (!_notiPinYinValue) {
        Byte value[] = {16, 6, 10, 107, 222, 66, 36, 155, 126, 175, 103, 118, 118, 114, 111, 105, 103, 122, 111, 117, 116, 53, 112, 121, 117, 116, 159};
        _notiPinYinValue = [self StringFromStemData:value];
    }
    return _notiPinYinValue;
}

//: istsbutton
- (NSString *)showPropertyName {
    if (!_showPropertyName) {
        Byte value[] = {10, 17, 7, 114, 237, 161, 203, 122, 132, 133, 132, 115, 134, 133, 133, 128, 127, 133};
        _showPropertyName = [self StringFromStemData:value];
    }
    return _showPropertyName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchShowMessage+DataPush.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager+Addtionals.h"
#import "TouchShowMessage+DataPush.h"
//: #import "CCCAutoLoginManager.h"
#import "ColorCounterval.h"

//: @implementation ZCHttpManager (Addtionals)
@implementation TouchShowMessage (DataPush)


//: #pragma mark - 传入用户信息 转换出 请求修改参数
#pragma mark - 传入用户信息 转换出 请求修改参数
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo{
+(NSDictionary *)view:(NSDictionary *)userInfo{

    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"mobile"] = [userInfo newStringValueForKey:@"mobile"];
    dict[[StemData sharedInstance].mainSufferingAbasePervStr] = [userInfo index:[StemData sharedInstance].mainSufferingAbasePervStr];
    //: dict[@"avatar"] = [userInfo newStringValueForKey:@"avatar"];
    dict[[StemData sharedInstance].main_legallyCancelData] = [userInfo index:[StemData sharedInstance].main_legallyCancelData];
    //: dict[@"nickname"] = [userInfo newStringValueForKey:@"nickname"];
    dict[[StemData sharedInstance].mainBlueChildFormat] = [userInfo index:[StemData sharedInstance].mainBlueChildFormat];
    //: dict[@"sex"] = [userInfo newStringValueForKey:@"gender"];
    dict[[StemData sharedInstance].mFarMsg] = [userInfo index:[StemData sharedInstance].app_textTitle];
    //: dict[@"birth"] = [userInfo newStringValueForKey:@"birthday"];
    dict[[StemData sharedInstance].mUserIdent] = [userInfo index:[StemData sharedInstance].show_negativeAffairValue];
    //: dict[@"email"] = me.userInfo.email.length ? me.userInfo.email : @"";
    dict[[StemData sharedInstance].main_milkData] = me.userInfo.email.length ? me.userInfo.email : @"";
    //: dict[@"sign"] = [userInfo newStringValueForKey:@"sign"];
    dict[[StemData sharedInstance].userGlobName] = [userInfo index:[StemData sharedInstance].userGlobName];
    //: return dict;
    return dict;
}

//: #pragma mark - 修改操作
#pragma mark - 修改操作
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value{
+(void)consumerAppear:(NSDictionary *)userInfo quantityShowCan:(NSString *)key latchkey:(NSString *)value{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    //: [dict setObject:value forKey:key];
    [dict setObject:value forKey:key];
    //: [ZCHttpManager getWithUrl:@"https://imapi.9idbq.cn/api/user/edit" params:dict isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[StemData sharedInstance].notiStatusData view:dict fort:YES generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = resultDict[@"code"];
        NSString *code = resultDict[[StemData sharedInstance].main_termPullButtFormat];
        //: if (code.integerValue > 0) {
        if (code.integerValue > 0) {

        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}




//: + (void)refreshRegistConfig:(GlobalConfigBlock)block{
+ (void)disappear:(GlobalConfigBlock)block{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].app_quipFormat] view:nil fort:NO generate:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict already:[StemData sharedInstance].show_photographyUrl];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *ismustmobile = [data newStringValueForKey:@"ismustmobile"];
            NSString *ismustmobile = [data index:[StemData sharedInstance].mProposedRelaxValue];//客户端注册ID是否必须为手机号
            //: NSString *isinvitecode = [data newStringValueForKey:@"isinvitecode"];
            NSString *isinvitecode = [data index:[StemData sharedInstance].mRandomNuclearKey];//邀请码是否必填
            //: NSString *isavatar = [data newStringValueForKey:@"isavatar"];
            NSString *isavatar = [data index:[StemData sharedInstance].noti_viewName];//是否强制上传头像
            //: NSString *issecret = [data newStringValueForKey:@"issecret"];
            NSString *issecret = [data index:[StemData sharedInstance].app_userHostageIdent];//是否强制密保
            //: NSString *logininfo = [data newStringValueForKey:@"logininfo"];
            NSString *logininfo = [data index:[StemData sharedInstance].dreamLittleName];//登录页自定义信息
            //: NSString *isregitor = [data newStringValueForKey:@"isregitor"];
            NSString *isregitor = [data index:[StemData sharedInstance].m_teamMsg];//1 允许注册 0 不允许
            //: NSString *isweixinlogin = [data newStringValueForKey:@"isweixinlogin"];
            NSString *isweixinlogin = [data index:[StemData sharedInstance].showButtPath];//是/开启微信登录
            //: NSString *isspeakingtime = [data newStringValueForKey:@"isspeakingtime"];
            NSString *isspeakingtime = [data index:[StemData sharedInstance].app_statData];//是否控制发言间隔时间

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            CrossShouldBlock *userDefaults = [CrossShouldBlock towardScaleOfMeasurement];
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
    } file:^(id responseObject, NSError *error) {
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
+(void)ambages:(GlobalConfigBlock)block{


    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/appSetting"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].notiSpeculateIdent] view:nil fort:NO generate:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict already:[StemData sharedInstance].show_photographyUrl];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *servicer = [data newStringValueForKey:@"servicer"];
            NSString *servicer = [data index:[StemData sharedInstance].mSustainPickStr];
            //: NSString *globalsign = [data newStringValueForKey:@"globalsign"];
            NSString *globalsign = [data index:[StemData sharedInstance].showSessionFormat];
            //: NSString *redpacket = [data newStringValueForKey:@"redpacket"];
            NSString *redpacket = [data index:[StemData sharedInstance].k_economicalUrl];
            //: NSString *getpassword = [data newStringValueForKey:@"getpassword"];
            NSString *getpassword = [data index:[StemData sharedInstance].app_globData];
            //: NSString *istsbutton = [data newStringValueForKey:@"istsbutton"];
            NSString *istsbutton = [data index:[StemData sharedInstance].showPropertyName];
//            NSString *yshref = [data newStringValueForKey:@"yshref"];
            //: NSString *yshref = @"https://www.jexhor.com/privacy.html";
            NSString *yshref = [StemData sharedInstance].show_costlyValue;
            //: NSString *umappkey_android = [data newStringValueForKey:@"umappkey_android"];
            NSString *umappkey_android = [data index:[StemData sharedInstance].showJustifyUrl];
            //: NSString *umappkey_ios = [data newStringValueForKey:@"umappkey_ios"];
            NSString *umappkey_ios = [data index:[StemData sharedInstance].dreamRelaxStr];

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            CrossShouldBlock *userDefaults = [CrossShouldBlock towardScaleOfMeasurement];
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
            userDefaults.allowdeletion = [data nameValue:[StemData sharedInstance].showBrownId text:@"1"];

            //: NSString *autoLogin = [data newStringValueForKey:@"autoLogin"];
            NSString *autoLogin = [data index:[StemData sharedInstance].mainQuipPenaltyFormat];
            //: userDefaults.autoLogin = autoLogin;
            userDefaults.autoLogin = autoLogin;

            //: userDefaults.chatnotify = [data newStringValueForKey:@"chatnotify"];
            userDefaults.chatnotify = [data index:[StemData sharedInstance].user_teamPath];

            //: userDefaults.showMessageRead = [data stringValueForKey:@"Messageread" defaultValue:@"1"];
            userDefaults.showMessageRead = [data nameValue:[StemData sharedInstance].mAllyPath text:@"1"];
//            userDefaults.showMessageRead =  kConstant_1;

            //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
            [ColorCounterval signal].isRequestAutoLoginFinish = YES;

            //: userDefaults.yinnihione = [data stringValueForKey:@"yinnihione" defaultValue:@"1"];
            userDefaults.yinnihione = [data nameValue:[StemData sharedInstance].m_allotButtName text:@"1"];

            //: block(data);
            block(data);

        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block{
+(void)collect:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/getBookStatus"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].m_wipeInputStr] view:nil fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: block(resultDict);
        block(resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block {
+ (void)standard:(NSDictionary *)params move:(GlobalConfigBlock)block {

    //: NSString *urls = [NIMUserDefaults standardUserDefaults].chatnotify;
    NSString *urls = [CrossShouldBlock towardScaleOfMeasurement].chatnotify;
    //: if (!urls) {
    if (!urls) {
        //: return;
        return;
    }

//    [TouchShowMessage postWithUrl:url params:params isShow:NO success:^(id responseObject) {
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
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[StemData sharedInstance].notiPinYinValue, nil];

    //: NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    //: [request setHTTPMethod:@"POST"];
    [request setHTTPMethod:[StemData sharedInstance].mPathKey];
    //: request.timeoutInterval = 30;
    request.timeoutInterval = 30;

    //: [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:[StemData sharedInstance].notiPinYinValue forHTTPHeaderField:[StemData sharedInstance].dreamDepartIdent];

    // body
    //: NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];

    //: [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:@"Content-Length"];
    [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:[StemData sharedInstance].dream_affectAffairIconMessage];
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
+ (void)screenIcon:(GlobalConfigBlock)block {
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/generateUser"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].showDogName] view:nil fort:NO generate:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict already:[StemData sharedInstance].show_photographyUrl];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[StemData sharedInstance].main_termPullButtFormat];

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
    } file:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block{
+(void)keyMonth:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkmoments"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].app_stressTitle] view:nil fort:NO generate:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[StemData sharedInstance].main_termPullButtFormat];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"1";
            [CrossShouldBlock towardScaleOfMeasurement].friendsCircle = @"1";
        //: }else{
        }else{
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"0";
            [CrossShouldBlock towardScaleOfMeasurement].friendsCircle = @"0";
        }
        //: block(@{});
        block(@{});
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block{
+(void)daylight:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/systemSetting"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].mainShowPropertyStr] view:nil fort:NO generate:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[StemData sharedInstance].main_termPullButtFormat];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[StemData sharedInstance].show_photographyUrl];
            //: [NIMUserDefaults standardUserDefaults].islogin = [data newStringValueForKey:@"islogin"];
            [CrossShouldBlock towardScaleOfMeasurement].islogin = [data index:[StemData sharedInstance].dream_pervIdent];
            //: [NIMUserDefaults standardUserDefaults].isclear = [data newStringValueForKey:@"isclear"];
            [CrossShouldBlock towardScaleOfMeasurement].isclear = [data index:[StemData sharedInstance].dreamRageIdent];
            //: block(data);
            block(data);
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)deleteUser:(GlobalConfigBlock)block{
+(void)comment:(GlobalConfigBlock)block{

    //: NSDictionary *params = @{@"account":[NIMUserDefaults standardUserDefaults].accountName?:@"" , @"password":[NIMUserDefaults standardUserDefaults].pCode?:@""};
    NSDictionary *params = @{[StemData sharedInstance].dreamConstrainStr:[CrossShouldBlock towardScaleOfMeasurement].accountName?:@"" , [StemData sharedInstance].user_displayFormat:[CrossShouldBlock towardScaleOfMeasurement].pCode?:@""};
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/deleteUser"] params:params isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[StemData sharedInstance].kGuidanceMessage] view:params fort:YES generate:^(id responseObject) {

        //: block(@{});
        block(@{});

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}



//: @end
@end