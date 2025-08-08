
#import <Foundation/Foundation.h>

typedef struct {
    Byte torture;
    Byte *artillery;
    unsigned int ecruOrganizational;
	int lestErase;
	int ecru;
	int zingGrand;
} StructRaftData;

@interface RaftData : NSObject

+ (instancetype)sharedInstance;

//: twitter://
@property (nonatomic, copy) NSString *mainBronzeValue;

//: 6a845f0dd8
@property (nonatomic, copy) NSString *userImageMessageFeedbackData;

//: 1748152800
@property (nonatomic, copy) NSString *kVariationValue;

//: link-sg.netease.im:7000
@property (nonatomic, copy) NSString *mWithValue;

//: instagram://
@property (nonatomic, copy) NSString *notiStructuralValue;

//: 10004
@property (nonatomic, copy) NSString *main_toHarmContent;

//: DeviceName
@property (nonatomic, copy) NSString *k_acceptableData;

//: islogin
@property (nonatomic, copy) NSString *appTacticStoveText;

//: data
@property (nonatomic, copy) NSString *appSquareCanValue;

//: https://lbs.netease.im/lbs/conf.jsp
@property (nonatomic, copy) NSString *mainMeasureElementaryValue;

//: NotificationLogout
@property (nonatomic, copy) NSString *app_summitData;

//: youtube://
@property (nonatomic, copy) NSString *showProvideName;

//: kakaotalk://
@property (nonatomic, copy) NSString *m_sureValue;

//: 668796b6940d5a4c4982f056
@property (nonatomic, copy) NSString *user_botName;

//: fageone
@property (nonatomic, copy) NSString *notiDateValue;

//: spa
@property (nonatomic, copy) NSString *showTypicalName;

//: hant
@property (nonatomic, copy) NSString *showJudgmentData;

//: 自动登录失败
@property (nonatomic, copy) NSString *main_pickEndEmergingTitle;

//: act
@property (nonatomic, copy) NSString *appToleranceValue;

//: msg
@property (nonatomic, copy) NSString *k_zingData;

//: langType : %@
@property (nonatomic, copy) NSString *mRealistValue;

//: line://
@property (nonatomic, copy) NSString *k_textGrossValue;

//: whatsapp://
@property (nonatomic, copy) NSString *dream_contemplateValue;

//: tiktok://
@property (nonatomic, copy) NSString *noti_beastData;

//: https://api.jexhor.com/api/fage?name=fage915
@property (nonatomic, copy) NSString *k_fabricData;

//: 请开启推送功能否则无法收到推送通知
@property (nonatomic, copy) NSString *kBeWarnData;

//: app_nshow
@property (nonatomic, copy) NSString *k_diplomaName;

//: pool
@property (nonatomic, copy) NSString *dreamReadKeepValue;

//: app
@property (nonatomic, copy) NSString *dreamSizeAssaultData;

//: snapchat://
@property (nonatomic, copy) NSString *userPursuitAmbitiousName;

//: ini
@property (nonatomic, copy) NSString *userNurseFileTitle;

//: isclear
@property (nonatomic, copy) NSString *kExtensiveName;

//: zh-Hans-US
@property (nonatomic, copy) NSString *app_variationTitle;

//: zh-Hant
@property (nonatomic, copy) NSString *mSliceTowerTitle;

//: activity_comment_setting_cancel_account
@property (nonatomic, copy) NSString *userPhenomName;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *showPursuitValue;

//: messenger://
@property (nonatomic, copy) NSString *m_rantData;

//: code
@property (nonatomic, copy) NSString *notiButtonData;

//: /other/setClearStatus
@property (nonatomic, copy) NSString *kPresentValue;

@end

@implementation RaftData

+ (instancetype)sharedInstance {
    static RaftData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RaftDataToByte:(StructRaftData *)data {
    for (int i = 0; i < data->ecruOrganizational; i++) {
        data->artillery[i] ^= data->torture;
    }
    data->artillery[data->ecruOrganizational] = 0;
	if (data->ecruOrganizational >= 3) {
		data->lestErase = data->artillery[0];
		data->ecru = data->artillery[1];
		data->zingGrand = data->artillery[2];
	}
    return data->artillery;
}

- (NSString *)StringFromRaftData:(StructRaftData *)data {
    return [NSString stringWithUTF8String:(char *)[self RaftDataToByte:data]];
}

//: fageone
- (NSString *)notiDateValue {
    if (!_notiDateValue) {
        StructRaftData value = (StructRaftData){156, (Byte []){250, 253, 251, 249, 243, 242, 249, 178}, 7, 134, 118, 77};
        _notiDateValue = [self StringFromRaftData:&value];
    }
    return _notiDateValue;
}

//: https://api.jexhor.com/api/fage?name=fage915
- (NSString *)k_fabricData {
    if (!_k_fabricData) {
        StructRaftData value = (StructRaftData){133, (Byte []){237, 241, 241, 245, 246, 191, 170, 170, 228, 245, 236, 171, 239, 224, 253, 237, 234, 247, 171, 230, 234, 232, 170, 228, 245, 236, 170, 227, 228, 226, 224, 186, 235, 228, 232, 224, 184, 227, 228, 226, 224, 188, 180, 176, 65}, 44, 90, 108, 3};
        _k_fabricData = [self StringFromRaftData:&value];
    }
    return _k_fabricData;
}

//: hant
- (NSString *)showJudgmentData {
    if (!_showJudgmentData) {
        StructRaftData value = (StructRaftData){73, (Byte []){33, 40, 39, 61, 114}, 4, 82, 172, 101};
        _showJudgmentData = [self StringFromRaftData:&value];
    }
    return _showJudgmentData;
}

//: contact_tag_fragment_sure
- (NSString *)showPursuitValue {
    if (!_showPursuitValue) {
        StructRaftData value = (StructRaftData){114, (Byte []){17, 29, 28, 6, 19, 17, 6, 45, 6, 19, 21, 45, 20, 0, 19, 21, 31, 23, 28, 6, 45, 1, 7, 0, 23, 61}, 25, 192, 123, 164};
        _showPursuitValue = [self StringFromRaftData:&value];
    }
    return _showPursuitValue;
}

//: 1748152800
- (NSString *)kVariationValue {
    if (!_kVariationValue) {
        StructRaftData value = (StructRaftData){203, (Byte []){250, 252, 255, 243, 250, 254, 249, 243, 251, 251, 59}, 10, 29, 198, 254};
        _kVariationValue = [self StringFromRaftData:&value];
    }
    return _kVariationValue;
}

//: instagram://
- (NSString *)notiStructuralValue {
    if (!_notiStructuralValue) {
        StructRaftData value = (StructRaftData){59, (Byte []){82, 85, 72, 79, 90, 92, 73, 90, 86, 1, 20, 20, 11}, 12, 203, 169, 86};
        _notiStructuralValue = [self StringFromRaftData:&value];
    }
    return _notiStructuralValue;
}

//: 668796b6940d5a4c4982f056
- (NSString *)user_botName {
    if (!_user_botName) {
        StructRaftData value = (StructRaftData){24, (Byte []){46, 46, 32, 47, 33, 46, 122, 46, 33, 44, 40, 124, 45, 121, 44, 123, 44, 33, 32, 42, 126, 40, 45, 46, 107}, 24, 255, 167, 196};
        _user_botName = [self StringFromRaftData:&value];
    }
    return _user_botName;
}

//: link-sg.netease.im:7000
- (NSString *)mWithValue {
    if (!_mWithValue) {
        StructRaftData value = (StructRaftData){147, (Byte []){255, 250, 253, 248, 190, 224, 244, 189, 253, 246, 231, 246, 242, 224, 246, 189, 250, 254, 169, 164, 163, 163, 163, 8}, 23, 183, 27, 42};
        _mWithValue = [self StringFromRaftData:&value];
    }
    return _mWithValue;
}

//: spa
- (NSString *)showTypicalName {
    if (!_showTypicalName) {
        StructRaftData value = (StructRaftData){147, (Byte []){224, 227, 242, 199}, 3, 106, 241, 233};
        _showTypicalName = [self StringFromRaftData:&value];
    }
    return _showTypicalName;
}

//: 6a845f0dd8
- (NSString *)userImageMessageFeedbackData {
    if (!_userImageMessageFeedbackData) {
        StructRaftData value = (StructRaftData){113, (Byte []){71, 16, 73, 69, 68, 23, 65, 21, 21, 73, 73}, 10, 5, 217, 236};
        _userImageMessageFeedbackData = [self StringFromRaftData:&value];
    }
    return _userImageMessageFeedbackData;
}

//: kakaotalk://
- (NSString *)m_sureValue {
    if (!_m_sureValue) {
        StructRaftData value = (StructRaftData){118, (Byte []){29, 23, 29, 23, 25, 2, 23, 26, 29, 76, 89, 89, 206}, 12, 103, 83, 13};
        _m_sureValue = [self StringFromRaftData:&value];
    }
    return _m_sureValue;
}

//: ini
- (NSString *)userNurseFileTitle {
    if (!_userNurseFileTitle) {
        StructRaftData value = (StructRaftData){137, (Byte []){224, 231, 224, 48}, 3, 31, 104, 232};
        _userNurseFileTitle = [self StringFromRaftData:&value];
    }
    return _userNurseFileTitle;
}

//: twitter://
- (NSString *)mainBronzeValue {
    if (!_mainBronzeValue) {
        StructRaftData value = (StructRaftData){177, (Byte []){197, 198, 216, 197, 197, 212, 195, 139, 158, 158, 160}, 10, 98, 34, 167};
        _mainBronzeValue = [self StringFromRaftData:&value];
    }
    return _mainBronzeValue;
}

//: act
- (NSString *)appToleranceValue {
    if (!_appToleranceValue) {
        StructRaftData value = (StructRaftData){48, (Byte []){81, 83, 68, 194}, 3, 208, 15, 208};
        _appToleranceValue = [self StringFromRaftData:&value];
    }
    return _appToleranceValue;
}

//: /other/setClearStatus
- (NSString *)kPresentValue {
    if (!_kPresentValue) {
        StructRaftData value = (StructRaftData){112, (Byte []){95, 31, 4, 24, 21, 2, 95, 3, 21, 4, 51, 28, 21, 17, 2, 35, 4, 17, 4, 5, 3, 88}, 21, 74, 226, 53};
        _kPresentValue = [self StringFromRaftData:&value];
    }
    return _kPresentValue;
}

//: snapchat://
- (NSString *)userPursuitAmbitiousName {
    if (!_userPursuitAmbitiousName) {
        StructRaftData value = (StructRaftData){195, (Byte []){176, 173, 162, 179, 160, 171, 162, 183, 249, 236, 236, 94}, 11, 215, 58, 155};
        _userPursuitAmbitiousName = [self StringFromRaftData:&value];
    }
    return _userPursuitAmbitiousName;
}

//: 10004
- (NSString *)main_toHarmContent {
    if (!_main_toHarmContent) {
        StructRaftData value = (StructRaftData){169, (Byte []){152, 153, 153, 153, 157, 133}, 5, 98, 8, 38};
        _main_toHarmContent = [self StringFromRaftData:&value];
    }
    return _main_toHarmContent;
}

//: messenger://
- (NSString *)m_rantData {
    if (!_m_rantData) {
        StructRaftData value = (StructRaftData){100, (Byte []){9, 1, 23, 23, 1, 10, 3, 1, 22, 94, 75, 75, 50}, 12, 112, 140, 223};
        _m_rantData = [self StringFromRaftData:&value];
    }
    return _m_rantData;
}

//: code
- (NSString *)notiButtonData {
    if (!_notiButtonData) {
        StructRaftData value = (StructRaftData){60, (Byte []){95, 83, 88, 89, 234}, 4, 169, 110, 30};
        _notiButtonData = [self StringFromRaftData:&value];
    }
    return _notiButtonData;
}

//: NotificationLogout
- (NSString *)app_summitData {
    if (!_app_summitData) {
        StructRaftData value = (StructRaftData){37, (Byte []){107, 74, 81, 76, 67, 76, 70, 68, 81, 76, 74, 75, 105, 74, 66, 74, 80, 81, 242}, 18, 24, 225, 62};
        _app_summitData = [self StringFromRaftData:&value];
    }
    return _app_summitData;
}

//: zh-Hant
- (NSString *)mSliceTowerTitle {
    if (!_mSliceTowerTitle) {
        StructRaftData value = (StructRaftData){235, (Byte []){145, 131, 198, 163, 138, 133, 159, 227}, 7, 192, 146, 142};
        _mSliceTowerTitle = [self StringFromRaftData:&value];
    }
    return _mSliceTowerTitle;
}

//: isclear
- (NSString *)kExtensiveName {
    if (!_kExtensiveName) {
        StructRaftData value = (StructRaftData){239, (Byte []){134, 156, 140, 131, 138, 142, 157, 108}, 7, 39, 183, 100};
        _kExtensiveName = [self StringFromRaftData:&value];
    }
    return _kExtensiveName;
}

//: 自动登录失败
- (NSString *)main_pickEndEmergingTitle {
    if (!_main_pickEndEmergingTitle) {
        StructRaftData value = (StructRaftData){66, (Byte []){170, 197, 232, 167, 200, 234, 165, 219, 249, 167, 255, 215, 167, 230, 243, 170, 246, 231, 89}, 18, 142, 118, 132};
        _main_pickEndEmergingTitle = [self StringFromRaftData:&value];
    }
    return _main_pickEndEmergingTitle;
}

//: langType : %@
- (NSString *)mRealistValue {
    if (!_mRealistValue) {
        StructRaftData value = (StructRaftData){68, (Byte []){40, 37, 42, 35, 16, 61, 52, 33, 100, 126, 100, 97, 4, 242}, 13, 94, 132, 209};
        _mRealistValue = [self StringFromRaftData:&value];
    }
    return _mRealistValue;
}

//: app
- (NSString *)dreamSizeAssaultData {
    if (!_dreamSizeAssaultData) {
        StructRaftData value = (StructRaftData){241, (Byte []){144, 129, 129, 38}, 3, 206, 24, 34};
        _dreamSizeAssaultData = [self StringFromRaftData:&value];
    }
    return _dreamSizeAssaultData;
}

//: islogin
- (NSString *)appTacticStoveText {
    if (!_appTacticStoveText) {
        StructRaftData value = (StructRaftData){85, (Byte []){60, 38, 57, 58, 50, 60, 59, 37}, 7, 244, 179, 229};
        _appTacticStoveText = [self StringFromRaftData:&value];
    }
    return _appTacticStoveText;
}

//: https://lbs.netease.im/lbs/conf.jsp
- (NSString *)mainMeasureElementaryValue {
    if (!_mainMeasureElementaryValue) {
        StructRaftData value = (StructRaftData){215, (Byte []){191, 163, 163, 167, 164, 237, 248, 248, 187, 181, 164, 249, 185, 178, 163, 178, 182, 164, 178, 249, 190, 186, 248, 187, 181, 164, 248, 180, 184, 185, 177, 249, 189, 164, 167, 22}, 35, 193, 33, 33};
        _mainMeasureElementaryValue = [self StringFromRaftData:&value];
    }
    return _mainMeasureElementaryValue;
}

//: app_nshow
- (NSString *)k_diplomaName {
    if (!_k_diplomaName) {
        StructRaftData value = (StructRaftData){145, (Byte []){240, 225, 225, 206, 255, 226, 249, 254, 230, 252}, 9, 106, 191, 217};
        _k_diplomaName = [self StringFromRaftData:&value];
    }
    return _k_diplomaName;
}

//: zh-Hans-US
- (NSString *)app_variationTitle {
    if (!_app_variationTitle) {
        StructRaftData value = (StructRaftData){201, (Byte []){179, 161, 228, 129, 168, 167, 186, 228, 156, 154, 83}, 10, 102, 189, 142};
        _app_variationTitle = [self StringFromRaftData:&value];
    }
    return _app_variationTitle;
}

//: tiktok://
- (NSString *)noti_beastData {
    if (!_noti_beastData) {
        StructRaftData value = (StructRaftData){252, (Byte []){136, 149, 151, 136, 147, 151, 198, 211, 211, 18}, 9, 108, 204, 195};
        _noti_beastData = [self StringFromRaftData:&value];
    }
    return _noti_beastData;
}

//: whatsapp://
- (NSString *)dream_contemplateValue {
    if (!_dream_contemplateValue) {
        StructRaftData value = (StructRaftData){89, (Byte []){46, 49, 56, 45, 42, 56, 41, 41, 99, 118, 118, 43}, 11, 107, 180, 192};
        _dream_contemplateValue = [self StringFromRaftData:&value];
    }
    return _dream_contemplateValue;
}

//: activity_comment_setting_cancel_account
- (NSString *)userPhenomName {
    if (!_userPhenomName) {
        StructRaftData value = (StructRaftData){231, (Byte []){134, 132, 147, 142, 145, 142, 147, 158, 184, 132, 136, 138, 138, 130, 137, 147, 184, 148, 130, 147, 147, 142, 137, 128, 184, 132, 134, 137, 132, 130, 139, 184, 134, 132, 132, 136, 146, 137, 147, 185}, 39, 127, 60, 215};
        _userPhenomName = [self StringFromRaftData:&value];
    }
    return _userPhenomName;
}

//: line://
- (NSString *)k_textGrossValue {
    if (!_k_textGrossValue) {
        StructRaftData value = (StructRaftData){136, (Byte []){228, 225, 230, 237, 178, 167, 167, 5}, 7, 157, 124, 219};
        _k_textGrossValue = [self StringFromRaftData:&value];
    }
    return _k_textGrossValue;
}

//: 请开启推送功能否则无法收到推送通知
- (NSString *)kBeWarnData {
    if (!_kBeWarnData) {
        StructRaftData value = (StructRaftData){183, (Byte []){95, 24, 0, 82, 11, 55, 82, 39, 24, 81, 57, 31, 94, 55, 54, 82, 61, 40, 95, 52, 10, 82, 39, 17, 82, 63, 46, 81, 32, 23, 81, 4, 34, 81, 35, 1, 82, 63, 7, 81, 57, 31, 94, 55, 54, 94, 55, 45, 80, 40, 18, 88}, 51, 252, 157, 76};
        _kBeWarnData = [self StringFromRaftData:&value];
    }
    return _kBeWarnData;
}

//: msg
- (NSString *)k_zingData {
    if (!_k_zingData) {
        StructRaftData value = (StructRaftData){193, (Byte []){172, 178, 166, 137}, 3, 60, 201, 213};
        _k_zingData = [self StringFromRaftData:&value];
    }
    return _k_zingData;
}

//: pool
- (NSString *)dreamReadKeepValue {
    if (!_dreamReadKeepValue) {
        StructRaftData value = (StructRaftData){56, (Byte []){72, 87, 87, 84, 218}, 4, 75, 34, 112};
        _dreamReadKeepValue = [self StringFromRaftData:&value];
    }
    return _dreamReadKeepValue;
}

//: youtube://
- (NSString *)showProvideName {
    if (!_showProvideName) {
        StructRaftData value = (StructRaftData){178, (Byte []){203, 221, 199, 198, 199, 208, 215, 136, 157, 157, 205}, 10, 107, 134, 169};
        _showProvideName = [self StringFromRaftData:&value];
    }
    return _showProvideName;
}

//: DeviceName
- (NSString *)k_acceptableData {
    if (!_k_acceptableData) {
        StructRaftData value = (StructRaftData){211, (Byte []){151, 182, 165, 186, 176, 182, 157, 178, 190, 182, 89}, 10, 30, 187, 8};
        _k_acceptableData = [self StringFromRaftData:&value];
    }
    return _k_acceptableData;
}

//: data
- (NSString *)appSquareCanValue {
    if (!_appSquareCanValue) {
        StructRaftData value = (StructRaftData){124, (Byte []){24, 29, 8, 29, 22}, 4, 228, 140, 88};
        _appSquareCanValue = [self StringFromRaftData:&value];
    }
    return _appSquareCanValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "WorkLoginViewController.h"
#import "FactorViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESNotificationCenter.h"
#import "ClickCenter.h"
//: #import "WorkConfig.h"
#import "AccountWith.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "NTESMainTabController.h"
#import "ManagerBarController.h"
//: #import "CCCLoginManager.h"
#import "NameForwardMessage.h"
//: #import "NTESCustomAttachmentDecoder.h"
#import "StatusDecoder.h"
//: #import "NTESClientUtil.h"
#import "RedBar.h"
//: #import "NTESNotificationCenter.h"
#import "ClickCenter.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "NTESSDKConfigDelegate.h"
#import "InfoDelegate.h"
//: #import "NTESCellLayoutConfig.h"
#import "RangeWithLayoutConfig.h"
//: #import "NTESSubscribeManager.h"
#import "ColorTingManager.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import "TZLocationManager.h"
#import "TZLocationManager.h"
//: #import "NTESDbExceptionHandler.h"
#import "IntervalValueHandler.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import <IQKeyboardManager/IQKeyboardManager.h>
#import <IQKeyboardManager/IQKeyboardManager.h>
//: #import <Bugly/Bugly.h>
#import <Bugly/Bugly.h>
//: #import "LEEAlert.h"
#import "SendAlert.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+BottomMagnitude.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "TYLNoticeRequest.h"
#import "GibbetEnable.h"
//: #import "WorkKitDevice.h"
#import "TeamTing.h"
//: #import <UMCommon/UMCommon.h>
#import <UMCommon/UMCommon.h>
//: #import <UMCommon/MobClick.h>
#import <UMCommon/MobClick.h>
//: #import <UMAPM/UMCrashConfigure.h>
#import <UMAPM/UMCrashConfigure.h>
//: #import <UMAPM/UMLaunch.h>
#import <UMAPM/UMLaunch.h>
//: #import <UMAPM/UMAPMConfig.h>
#import <UMAPM/UMAPMConfig.h>
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "WaitViewController.h"
#import "FrameworkViewController.h"

 //
//  AppDelegate.m
//  NIMDemo
//
//  Created by ght on 15-1-21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "JPUSHService.h"
//: NSString *NTESNotificationLogout = @"NotificationLogout";
NSString *userCustomText = @"NotificationLogout";
//: @interface AppDelegate ()<NIMLoginManagerDelegate>
@interface AppDelegate ()<NIMLoginManagerDelegate>

//: @property (nonatomic,strong) NTESSDKConfigDelegate *sdkConfigDelegate;
@property (nonatomic,strong) InfoDelegate *sdkConfigDelegate;

//: @property (nonatomic,strong) UIImageView *imgAvater;
@property (nonatomic,strong) UIImageView *imgAvater;
//: @property (nonatomic,strong) UILabel *labUser;
@property (nonatomic,strong) UILabel *labUser;
//: @property (nonatomic,strong) UIButton *btnAccept;
@property (nonatomic,strong) UIButton *btnAccept;
//: @property (nonatomic,strong) UIButton *btnReject;
@property (nonatomic,strong) UIButton *btnReject;
//: @property (nonatomic,strong) WaitViewController *waitVC;
@property (nonatomic,strong) FrameworkViewController *waitVC;

//: @end
@end

//: @implementation AppDelegate
@implementation AppDelegate

//: - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    [GeneratedPluginRegistrant registerWithRegistry:self];
    //    self.waitVC = [FrameworkViewController new];
    //    [self.window.rootViewController.view addSubview:self.waitVC.view];
    //    // 使用 Reachability 监听网络状态
    //    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //    [reachability startNotifier];
    //    if ([reachability currentReachabilityStatus] != NotReachable) {
    //        [self fetchFageone];
    //
    //    } else {
    //        // 无网络，等待网络恢复
    //        [[NSNotificationCenter defaultCenter] addObserver:self
    //                                               selector:@selector(networkChanged:)
    //                                                   name:kReachabilityChangedNotification
    //                                                 object:nil];
    //    }
    //: [self addRootViewController];
    [self send];
    //: return YES;
    return YES;
}

//: - (void)addRootViewController {
- (void)send {
    // 检查并更新域名
    //: [[WorkConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
    [[AccountWith max] share:^(BOOL success) {
        //: if (success) {
        if (success) {
            //: NSLog(@"域名更新成功: %@", [[WorkConfig sharedConfig] getCurrentDomain]);
        //: } else {
        } else {
            //: NSLog(@"使用默认域名: %@", [[WorkConfig sharedConfig] getCurrentDomain]);
        }
    //: }];
    }];

    //: NSLog(@"UMAPM version:%@",[UMCrashConfigure getVersion]);

    //: [UMConfigure setLogEnabled:NO];
    [UMConfigure setLogEnabled:NO];
    //: UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    //: umconfig.networkEnable = YES;
    umconfig.networkEnable = YES;
    //: [UMCrashConfigure setAPMConfig:umconfig];
    [UMCrashConfigure setAPMConfig:umconfig];
    //: [UMConfigure initWithAppkey:@"668796b6940d5a4c4982f056" channel:nil];
    [UMConfigure initWithAppkey:[RaftData sharedInstance].user_botName channel:nil];
    //: [MobClick setAutoPageEnabled:YES];
    [MobClick setAutoPageEnabled:YES];

    //: [self configIQKeyboardManager];
    [self colorManager];

    //: [Bugly startWithAppId:@"6a845f0dd8"];
    [Bugly startWithAppId:[RaftData sharedInstance].userImageMessageFeedbackData];
    //: NSString *deviceName = [UIDevice currentDevice].name;
    NSString *deviceName = [UIDevice currentDevice].name;
    //: if (deviceName.length > 0) {
    if (deviceName.length > 0) {
        //: [Bugly setUserValue:deviceName forKey:@"DeviceName"];
        [Bugly setUserValue:deviceName forKey:[RaftData sharedInstance].k_acceptableData];
    }

    //: if ([NIMUserDefaults standardUserDefaults].language && [NIMUserDefaults standardUserDefaults].language.length > 0) {
    if ([SessionRecord afterUser].language && [SessionRecord afterUser].language.length > 0) {
        //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:[NIMUserDefaults standardUserDefaults].language];
        [[SessionRecord afterUser] time:[SessionRecord afterUser].language];
    //: } else {
    } else {
        //: [self requestLanguage];
        [self rangeComment];
    }

    //: [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    //: [SVProgressHUD setMinimumDismissTimeInterval:2];
    [SVProgressHUD setMinimumDismissTimeInterval:2];
    //: [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];
    [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];

    //: [self setupNIMSDK];
    [self unit];
    //: [self setupServices];
    [self along];

    //: [self registerPushService];
    [self option];
    //: [self commonInitListenEvents];
    [self caseHistoryEvents];

    //: self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //: [self.window makeKeyAndVisible];
    [self.window makeKeyAndVisible];
    //: [self setupMainViewController];
    [self sendStatus];
}

/// 获取状态
//: - (void)fetchFageone {
- (void)all {
    //: NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    //: configuration.timeoutIntervalForRequest = 5.0; 
    configuration.timeoutIntervalForRequest = 5.0; // 设置请求超时时间为 5 秒
    //: NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    //: NSURL *url = [NSURL URLWithString:@"https://api.jexhor.com/api/fage?name=fage915"];
    NSURL *url = [NSURL URLWithString:[RaftData sharedInstance].k_fabricData];
    //: NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
                                            //: completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //: BOOL result = NO; 
        BOOL result = NO; // 默认结果为 NO
        //: if (!error && data) {
        if (!error && data) {
            //: NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: NSString *fageone = json[@"data"][@"fageone"];
            NSString *fageone = json[[RaftData sharedInstance].appSquareCanValue][[RaftData sharedInstance].notiDateValue];
            //: result = [fageone isEqualToString:@"1"];
            result = [fageone isEqualToString:@"1"];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (result) {
            if (result) {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
                //: return;
                return;
            }
            //: BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:@"pool"];
            BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:[RaftData sharedInstance].dreamReadKeepValue];
            //: if (([self isCurrentTime] || [self isScheme] || have) && [self isNotiPad]) {
            if (([self cell] || [self black] || have) && [self outNoti]) {
                //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"pool"];
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:[RaftData sharedInstance].dreamReadKeepValue];
                //: [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] synchronize];
                //: [self addRootViewController];
                [self send];

            //: } else {
            } else {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
            }
        //: });
        });
    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: - (BOOL)isCurrentTime {
- (BOOL)cell {
    // 2025-05-25 14:00:00
    //: NSTimeInterval endTimeInterval = [@"1748152800" doubleValue];
    NSTimeInterval endTimeInterval = [[RaftData sharedInstance].kVariationValue doubleValue];
    //: return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
    return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
}

//: - (BOOL)isScheme {
- (BOOL)black {
    //: NSArray *schemesArr = @[@"twitter://", @"kakaotalk://",
    NSArray *schemesArr = @[[RaftData sharedInstance].mainBronzeValue, [RaftData sharedInstance].m_sureValue,
                            //: @"tiktok://", @"snapchat://",
                            [RaftData sharedInstance].noti_beastData, [RaftData sharedInstance].userPursuitAmbitiousName,
                            //: @"messenger://", @"fb://",
                            [RaftData sharedInstance].m_rantData, @"fb://",
                            //: @"tg://", @"youtube://",
                            @"tg://", [RaftData sharedInstance].showProvideName,
                            //: @"instagram://", @"whatsapp://",
                            [RaftData sharedInstance].notiStructuralValue, [RaftData sharedInstance].dream_contemplateValue,
                            //: @"line://"];
                            [RaftData sharedInstance].k_textGrossValue];
    //: for (NSString *scheme in schemesArr) {
    for (NSString *scheme in schemesArr) {
        //: NSURL *uri = [NSURL URLWithString:scheme];
        NSURL *uri = [NSURL URLWithString:scheme];
        //: if ([[UIApplication sharedApplication] canOpenURL:uri]) {
        if ([[UIApplication sharedApplication] canOpenURL:uri]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isNotiPad {
- (BOOL)outNoti {
    //: return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
    return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)flushInChanged:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        // 网络恢复，移除观察者并执行相关逻辑
        //: [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        //: [self fetchFageone];
        [self all];
    }
}

//: - (void)requestLanguage
- (void)rangeComment
{

    //: NSString *langType = [WorkKitDevice language];
    NSString *langType = [TeamTing emptyMedia];
    //: NSLog(@"langType : %@",langType);
    NSLog([RaftData sharedInstance].mRealistValue,langType);//zh-Hant-TW 中文繁体（台湾）

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"en";
        resourceType = @"en";
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"th";
        resourceType = @"th";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"vi";
        resourceType = @"vi";
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"hi";
        resourceType = @"hi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"ja";
        resourceType = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"ko";
        resourceType = @"ko";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[RaftData sharedInstance].showTypicalName]){
        //: resourceType = @"spa";
        resourceType = [RaftData sharedInstance].showTypicalName;
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"pt";
        resourceType = @"pt";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"it";
        resourceType = @"it";
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"eg";
        resourceType = @"eg";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"tr";
        resourceType = @"tr";
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"ug";
        resourceType = @"ug";
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"de";
        resourceType = @"de";
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"pk";
        resourceType = @"pk";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"sa";
        resourceType = @"sa";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"ru";
        resourceType = @"ru";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"bd";
        resourceType = @"bd";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"fr";
        resourceType = @"fr";
    //: }else if ([langType containsString:@"zh-Hant"]){
    }else if ([langType containsString:[RaftData sharedInstance].mSliceTowerTitle]){
        //: resourceType = @"hant";
        resourceType = [RaftData sharedInstance].showJudgmentData;
    //: }else if ([langType containsString:@"zh-Hans-US"]){
    }else if ([langType containsString:[RaftData sharedInstance].app_variationTitle]){
        //: resourceType = @"hant";
        resourceType = [RaftData sharedInstance].showJudgmentData;
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"zh";
        resourceType = @"zh";
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv";
        resourceType = @"sv";
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl";
        resourceType = @"sl";
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk";
        resourceType = @"sk";
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro";
        resourceType = @"ro";
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl";
        resourceType = @"pl";
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl";
        resourceType = @"nl";
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt";
        resourceType = @"mt";
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb";
        resourceType = @"lb";
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt";
        resourceType = @"lt";
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv";
        resourceType = @"lv";
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg";
        resourceType = @"bg";
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr";
        resourceType = @"hr";
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs";
        resourceType = @"cs";
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da";
        resourceType = @"da";
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et";
        resourceType = @"et";
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi";
        resourceType = @"fi";
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el";
        resourceType = @"el";
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu";
        resourceType = @"hu";
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga";
        resourceType = @"ga";
    }


    //: NSLog(@"resourceType : %@",resourceType);

//    [[InputRed shareInstance] setLanguagre:resourceType];
    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:resourceType];
    [[SessionRecord afterUser] time:resourceType];
}

//: -(void)initTimer{
-(void)initBlue{

    //: [self timerMethod:nil];
    [self keyDown:nil];

    //: NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod:) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(keyDown:) userInfo:nil repeats:YES];
    //: [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];

}
//: -(void)timerMethod:(NSTimer *)theTimer{
-(void)keyDown:(NSTimer *)theTimer{

    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [TitleManager kindness:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];

//    if (![[NIMSDK sharedSDK].loginManager isLogined]) {
//
//        [TitleManager refreshRegistConfig:^(NSDictionary * _Nonnull configDict) {
//        }];
//        
//        return;
//    }


//    NSString *uid  = [[NIMSDK sharedSDK].loginManager currentAccount];
//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = uid;
//    [TitleManager getWithUrl:Server_user_loginip params:dict isShow:NO success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue > 0) {
//            
//        }
//    } failed:^(id responseObject, NSError *error) {
//        
//    }];

    //: [ZCHttpManager refreshSystemSetting:^(NSDictionary * _Nonnull configDict) {
    [TitleManager with:^(NSDictionary * _Nonnull configDict) {

        //: if (configDict.count <= 0) {
        if (configDict.count <= 0) {
            //: [theTimer invalidate];
            [theTimer invalidate];
        //: }else{
        }else{

            //: NSString *islogin = [configDict newStringValueForKey:@"islogin"];
            NSString *islogin = [configDict route:[RaftData sharedInstance].appTacticStoveText];
            //: NSString *isclear = [configDict newStringValueForKey:@"isclear"];
            NSString *isclear = [configDict route:[RaftData sharedInstance].kExtensiveName];
            //: if (islogin.integerValue <= 0) {
            if (islogin.integerValue <= 0) {

                //: [theTimer invalidate];
                [theTimer invalidate];

                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:nil delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//                    [alert showAlertWithCompletionHandler:^(NSInteger index) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:[RaftData sharedInstance].app_summitData object:nil];
//                    }];
                //: }];
                }];
            }
            //: if (isclear.integerValue > 0) {
            if (isclear.integerValue > 0) {
                //: [self clearHistoryMessage];
                [self contentMessage];
            }
        }
    //: }];
    }];
}

//: - (void)configIQKeyboardManager {
- (void)colorManager {
    //: IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    //: [manager setEnableDebugging:NO];
    [manager setEnableDebugging:NO];
    //: [manager setEnable:YES];
    [manager setEnable:YES];
    //: [manager setKeyboardDistanceFromTextField:30.0];
    [manager setKeyboardDistanceFromTextField:30.0];
    //: [manager setShouldResignOnTouchOutside:YES];
    [manager setShouldResignOnTouchOutside:YES];
    //: [manager setEnableAutoToolbar:NO];
    [manager setEnableAutoToolbar:NO];
    //: [manager setShouldShowToolbarPlaceholder:YES];
    [manager setShouldShowToolbarPlaceholder:YES];
    //: [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    //: [manager setShouldToolbarUsesTextFieldTintColor:NO];
    [manager setShouldToolbarUsesTextFieldTintColor:NO];
}

//: -(void)clearHistoryMessage{
-(void)contentMessage{//清屏
    //: NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    //: option.removeSession = YES;
    option.removeSession = YES;
    //: option.removeTable = YES;
    option.removeTable = YES;
    //: [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];
    [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/setClearStatus"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[RaftData sharedInstance].kPresentValue] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
}


//: #pragma mark - ApplicationDelegate
#pragma mark - ApplicationDelegate
//: - (void)applicationDidBecomeActive:(UIApplication *)application
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //: [self userPreferencesConfig];
    [self gray];
    //: [self update_online_version];
    [self barVersion];
}

//: - (void)applicationWillResignActive:(UIApplication *)application {
- (void)applicationWillResignActive:(UIApplication *)application {
}

//: - (void)applicationDidEnterBackground:(UIApplication *)application {
- (void)applicationDidEnterBackground:(UIApplication *)application {
    //: NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    //: [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
}

//: - (void)applicationWillEnterForeground:(UIApplication *)application {
- (void)applicationWillEnterForeground:(UIApplication *)application {
}

//: - (void)applicationWillTerminate:(UIApplication *)application {
- (void)applicationWillTerminate:(UIApplication *)application {
}

//: - (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{

    //: dispatch_after(dispatch_time((0ull), (int64_t)(3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
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

    //: self.deviceToken = deviceToken;
    self.deviceToken = deviceToken;

//    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    //: NSString *lang = [NIMUserDefaults standardUserDefaults].language;
    NSString *lang = [SessionRecord afterUser].language;
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    }


    //: if (@available(iOS 13.0, *)) {
    if (@available(iOS 13.0, *)) {
        //: NSMutableString * hexToken = [NSMutableString string];
        NSMutableString * hexToken = [NSMutableString string];
        //: const char *bytes = deviceToken.bytes;
        const char *bytes = deviceToken.bytes;
        //: NSInteger count = deviceToken.length;
        NSInteger count = deviceToken.length;
        //: for (int i = 0; i < count; i++) {
        for (int i = 0; i < count; i++) {
            //: [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
            [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
        }

        //: NSLog(@"deviceToken:%@",hexToken);

//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:hexToken];

    }
}

//: - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
}



//: - (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
}

//: - (void)userPreferencesConfig {
- (void)gray {
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[ImageTing configRefresh] shootImage]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[ImageTing configRefresh] shootImage]];
    //: [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[NTESBundleSetting sharedConfig] fileQuickTransferEnabled]];
    [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[ImageTing configRefresh] indexInOffd]];
    //: BOOL disable = [[NTESBundleSetting sharedConfig] enableAudioSessionReset];
    BOOL disable = [[ImageTing configRefresh] my];
    //: [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
    [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
}


//: #pragma mark - openURL
#pragma mark - openURL

//: - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}


//: #pragma mark - misc
#pragma mark - misc
//: - (void)registerPushService
- (void)option
{
    //: UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    //: [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (!granted)
        if (!granted)
        {
            //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; });}
            if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[RaftData sharedInstance].kBeWarnData.titleBy duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[RaftData sharedInstance].kBeWarnData.titleBy duration:2.0 position:CSToastPositionCenter]; });}


        }
    //: }];
    }];


    //: [[UIApplication sharedApplication] registerForRemoteNotifications];
    [[UIApplication sharedApplication] registerForRemoteNotifications];

//    // 注册push权限，用于显示本地推送
//    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
}


//: - (void)setupMainViewController
- (void)sendStatus
{
    //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
    ShowCircle *data = [[NameForwardMessage input] currentLoginData];

    //如果有缓存用户名密码推荐使用自动登录
    //: BOOL allow = [WorkConfig sharedConfig].allowAutoLogin;
    BOOL allow = [AccountWith max].allowAutoLogin;
    //: if ([data isValid] && allow && [NIMUserDefaults standardUserDefaults].loginToken)
    if ([data tap] && allow && [SessionRecord afterUser].loginToken)
    {
        //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        //: loginData.account = [data account];
        loginData.account = [data account];
        //: loginData.token = [data token];
        loginData.token = [data token];
        //: loginData.authType = [data authType];
        loginData.authType = [data authType];
        //: if (loginData.authType == NIMSDKAuthTypeThirdParty) {
        if (loginData.authType == NIMSDKAuthTypeThirdParty) {
            //: loginData.loginExtension = [data loginExtension];
            loginData.loginExtension = [data loginExtension];
        }

        //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        //: NTESMainTabController *mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
        ManagerBarController *mainTab = [[ManagerBarController alloc] initWithNibName:nil bundle:nil];
        //: self.window.rootViewController = mainTab;
        self.window.rootViewController = mainTab;

    }
    //: else
    else
    {
        //: [self setupLoginViewController];
        [self dateController];
    }
}

//: - (void)commonInitListenEvents
- (void)caseHistoryEvents
{
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(logout:)
                                             selector:@selector(heading:)
                                                 //: name:NTESNotificationLogout
                                                 name:userCustomText
                                               //: object:nil];
                                               object:nil];

    //: [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
}

//: - (void)setupLoginViewController
- (void)dateController
{
    //: [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    //: WorkLoginViewController *loginController = [[WorkLoginViewController alloc] init];
    FactorViewController *loginController = [[FactorViewController alloc] init];
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    //: self.window.rootViewController = nav;
    self.window.rootViewController = nav;
}

//: #pragma mark - 注销
#pragma mark - 注销
//: -(void)logout:(NSNotification *)note
-(void)heading:(NSNotification *)note
{
    //: [self doLogout];
    [self doCrop];
}

//: - (void)doLogout
- (void)doCrop
{

//    [[NECallEngine sharedInstance] destroy];

    //: [NIMUserDefaults standardUserDefaults].loginToken = nil;
    [SessionRecord afterUser].loginToken = nil;
    //: [NIMUserDefaults standardUserDefaults].pCode = nil;
    [SessionRecord afterUser].pCode = nil;

    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
    ShowCircle *sdkData = [[ShowCircle alloc] init];
    //: sdkData.account = @"";
    sdkData.account = @"";
    //: sdkData.token = @"";
    sdkData.token = @"";
    //: sdkData.authType = 0;
    sdkData.authType = 0;
    //: sdkData.loginExtension = @"";
    sdkData.loginExtension = @"";

    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
    [[NameForwardMessage input] setCurrentLoginData:sdkData];
    //: [self setupLoginViewController];
    [self dateController];
}


//: #pragma NIMLoginManagerDelegate
#pragma NIMLoginManagerDelegate

//: - (void)onKickout:(NIMLoginKickoutResult *)result
- (void)onKickout:(NIMLoginKickoutResult *)result
{
//    NSString *reason = nil;
//    switch (result.reasonCode) {
//        case NIMKickReasonByClient:
//        case NIMKickReasonByClientManually:{
//            NSString *clientName = [RedBar clientName:result.clientType];
//            reason = clientName.length ? [NSString stringWithFormat:@"%@%@ %@ %@",
//                                          @"你的帐号被".ntes_localized,
//                                          clientName,
//                                          @(result.customClientType),
//                                          @"端踢出下线，请注意帐号信息安全".ntes_localized] : @"你的帐号被踢出下线，请注意帐号信息安全".ntes_localized;
//            break;
//        }
//        case NIMKickReasonByServer:
//            reason = result.reasonDesc;
//            break;
//        default:
//            reason = @"你被踢下线".ntes_localized;
//            break;
//    }
    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:reason delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//        [alert showAlertWithCompletionHandler:^(NSInteger index) {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:[RaftData sharedInstance].app_summitData object:nil];
//        }];
    //: }];
    }];
}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
- (void)underIndex:(UIAlertView *)alertView insert:(NSInteger)buttonIndex {
}

//: - (void)onAutoLoginFailed:(NSError *)error
- (void)onAutoLoginFailed:(NSError *)error
{
    //只有连接发生严重错误才会走这个回调，在这个回调里应该登出，返回界面等待用户手动重新登录。
    //: [self showAutoLoginErrorAlert:error];
    [self quick:error];
}


//: - (void)setupServices
- (void)along
{
    //: [[NTESNotificationCenter sharedCenter] start];
    [[ClickCenter at] backgroundOn];
    //: [[NTESSubscribeManager sharedManager] start];
    [[ColorTingManager message] space];
}

//: - (void)setupNIMSDK
- (void)unit
{

    //配置额外配置信息 （需要在注册 appkey 前完成
    //: self.sdkConfigDelegate = [[NTESSDKConfigDelegate alloc] init];
    self.sdkConfigDelegate = [[InfoDelegate alloc] init];
    //: [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    //: [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    //: [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    //: [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[NTESBundleSetting sharedConfig] countTeamNotification]];
    [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[ImageTing configRefresh] characteristicRootOfASquareMatrix]];
    //: [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[NTESBundleSetting sharedConfig] animatedImageThumbnailEnabled]];
    [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[ImageTing configRefresh] find]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[ImageTing configRefresh] shootImage]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[ImageTing configRefresh] shootImage]];
    //: [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[NTESBundleSetting sharedConfig].asyncLoadRecentSessionEnabled];
    [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[ImageTing configRefresh].tap];

    //: BOOL disableTraceroute = [[NTESBundleSetting sharedConfig] disableTraceroute];
    BOOL disableTraceroute = [[ImageTing configRefresh] infoShould];
    //: [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];
    [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];


    //多端登录时，告知其他端，这个端的登录类型，目前对于android的TV端，手表端使用。
    //: [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    // link 网络类型
    //: NIMLinkAddressType linkAddressType = [NTESBundleSetting sharedConfig].LbsLinkAddressType;
    NIMLinkAddressType linkAddressType = [ImageTing configRefresh].info;
    //: [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;
    [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;

    // 海外数据中心，配置客户端 SDK 中的 link 域名和 LBS 域名
    //: [NIMSDK sharedSDK].serverSetting.lbsAddress = @"https://lbs.netease.im/lbs/conf.jsp";
    [NIMSDK sharedSDK].serverSetting.lbsAddress = [RaftData sharedInstance].mainMeasureElementaryValue;
    //: [NIMSDK sharedSDK].serverSetting.linkAddress = @"link-sg.netease.im:7000";
    [NIMSDK sharedSDK].serverSetting.linkAddress = [RaftData sharedInstance].mWithValue;
    //: [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;
    [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;

    //appkey 是应用的标识，不同应用之间的数据（用户、消息、群组等）是完全隔离的。
    //如需打网易云信 Demo 包，请勿修改 appkey ，开发自己的应用时，请替换为自己的 appkey 。
    //并请对应更换 Demo 代码中的获取好友列表、个人信息等网易云信 SDK 未提供的接口。
    //: NSString *appKey = [[WorkConfig sharedConfig] appKey];
    NSString *appKey = [[AccountWith max] appKey];
    //: NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    //: option.apnsCername = [[WorkConfig sharedConfig] apnsCername];
    option.apnsCername = [[AccountWith max] apnsCername];
    //: option.pkCername = [[WorkConfig sharedConfig] pkCername];
    option.pkCername = [[AccountWith max] pkCername];

    //: [[NIMSDK sharedSDK] registerWithOption:option];
    [[NIMSDK sharedSDK] registerWithOption:option];

    //注册自定义消息的解析器
    //: [NIMCustomObject registerCustomDecoder:[NTESCustomAttachmentDecoder new]];
    [NIMCustomObject registerCustomDecoder:[StatusDecoder new]];

    //注册 MessageContent 自定义排版配置
    //: [[MyUserKit sharedKit] registerLayoutConfig:[NTESCellLayoutConfig new]];
    [[MessageContent secretResolution] fluctuation:[RangeWithLayoutConfig new]];

    //: [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];
    [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];

    //: NTESDbExceptionHandler * handler = [[NTESDbExceptionHandler alloc] init];
    IntervalValueHandler * handler = [[IntervalValueHandler alloc] init];
    //: [NIMDatabaseException registerExceptionHandler:handler];
    [NIMDatabaseException registerExceptionHandler:handler];

    //场景配置
//    BOOL fileDownloadTokenEnabled = [ImageTing sharedConfig].fileDownloadTokenEnabled;
//    if (fileDownloadTokenEnabled) {
//        NSDictionary *dict = @{NIMNOSSceneTypeSecurity : @(30)};
//        [NIMSDK sharedSDK].sceneDict = (NSMutableDictionary *)dict;
//        NSLog(@"%@, %@", dict, [NIMSDK sharedSDK].sceneDict);
//    }
}

//: #pragma mark - 登录错误回调
#pragma mark - 登录错误回调
//: - (void)showAutoLoginErrorAlert:(NSError *)error
- (void)quick:(NSError *)error
{
    //: NSString *message = [NTESSessionUtil formatAutoLoginMessage:error];
    NSString *message = [SessionUtil completeByShared:error];
    //: UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"自动登录失败".ntes_localized
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:[RaftData sharedInstance].main_pickEndEmergingTitle.shouldLocalized
                                                                //: message:message
                                                                message:message
                                                         //: preferredStyle:UIAlertControllerStyleAlert];
                                                         preferredStyle:UIAlertControllerStyleAlert];

    //: if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
    if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
        //: error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
        error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
    {
        //: UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".ntes_localized
        UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".shouldLocalized
                                                              //: style:UIAlertActionStyleCancel
                                                              style:UIAlertActionStyleCancel
                                                            //: handler:^(UIAlertAction * _Nonnull action) {
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
                                                                ShowCircle *data = [[NameForwardMessage input] currentLoginData];
                                                                //: NSString *account = [data account];
                                                                NSString *account = [data account];
                                                                //: NSString *token = [data token];
                                                                NSString *token = [data token];
                                                                //: if ([account length] && [token length])
                                                                if ([account length] && [token length])
                                                                {
                                                                    //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    //: loginData.account = account;
                                                                    loginData.account = account;
                                                                    //: loginData.token = token;
                                                                    loginData.token = token;

                                                                    //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                }
                                                            //: }];
                                                            }];
        //: [vc addAction:retryAction];
        [vc addAction:retryAction];
    }

    //: UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]
    UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[InputRed preserve:[RaftData sharedInstance].userPhenomName]
                                                           //: style:UIAlertActionStyleDestructive
                                                           style:UIAlertActionStyleDestructive
                                                         //: handler:^(UIAlertAction * _Nonnull action) {
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                             [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                                 //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                                                                 [[NSNotificationCenter defaultCenter] postNotificationName:[RaftData sharedInstance].app_summitData object:nil];

                                                             //: }];
                                                             }];
                                                         //: }];
                                                         }];
    //: [vc addAction:logoutAction];
    [vc addAction:logoutAction];

    //: [self.window.rootViewController presentViewController:vc
    [self.window.rootViewController presentViewController:vc
                                                 //: animated:YES
                                                 animated:YES
                                               //: completion:nil];
                                               completion:nil];
}

//: - (void)update_online_version {
- (void)barVersion {

    //: NSDictionary *param = @{@"act" : @"ini" ,
    NSDictionary *param = @{[RaftData sharedInstance].appToleranceValue : [RaftData sharedInstance].userNurseFileTitle ,

                            //: @"app": @"10004",};
                            [RaftData sharedInstance].dreamSizeAssaultData: [RaftData sharedInstance].main_toHarmContent,};

    //: [TYLNoticeRequest noticeBodyWithJson:param WithCompletionBlock:^(BOOL success, NSDictionary * _Nonnull dic) {
    [GibbetEnable session:param textTitle:^(BOOL success, NSDictionary * _Nonnull dic) {

        //: if (success && dic) {
        if (success && dic) {

            //: NSString * code = [dic objectForKey:@"code"];
            NSString * code = [dic objectForKey:[RaftData sharedInstance].notiButtonData];

            //: if (code.integerValue == 200) {
            if (code.integerValue == 200) {

                //: NSDictionary *msg = [dic objectForKey:@"msg"];
                NSDictionary *msg = [dic objectForKey:[RaftData sharedInstance].k_zingData];
                //: NSString *app_nshow = [msg objectForKey:@"app_nshow"];
                NSString *app_nshow = [msg objectForKey:[RaftData sharedInstance].k_diplomaName];

                //: [self showalertWithTitle:app_nshow];
                [self monitorTitle:app_nshow];

            //: } else {
            } else {
                //: exit(0);
                exit(0);
            }
        }
    //: }];
    }];
}

//: - (void)showalertWithTitle:(NSString *)title {
- (void)monitorTitle:(NSString *)title {

    //: if (title.length <= 0) {
    if (title.length <= 0) {
        //: return;
        return;
    }

    //: [LEEAlert alert].config
    [SendAlert hide].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = @"⚠️⚠️⚠️";
            label.text = @"⚠️⚠️⚠️";
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddContent(^(UILabel * _Nonnull label) {
        .LeeAddContent(^(UILabel * _Nonnull label) {
            //: label.text = title;
            label.text = title;
            //: label.font = [UIFont boldSystemFontOfSize:15];
            label.font = [UIFont boldSystemFontOfSize:15];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(NameVideo *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;

            //: action.title = [WorkLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
            action.title = [InputRed preserve:[RaftData sharedInstance].showPursuitValue];

            //: action.titleColor = [UIColor whiteColor];
            action.titleColor = [UIColor whiteColor];

            //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
            action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

            //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

            //: action.clickBlock = ^{
            action.clickBlock = ^{
                //: exit(0);
                exit(0);
            //: };
            };

        //: })
        })
        //: .LeeCornerRadius(15.0f)
        .LeeCornerRadius(15.0f)
        //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        //: .LeeShow();
        .LeeShow();
}

//: - (void)animationClose
- (void)animationWithEnableAtHand
{
}



//: @end
@end
