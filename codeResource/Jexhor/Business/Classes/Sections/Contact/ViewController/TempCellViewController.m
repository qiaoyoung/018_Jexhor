
#import <Foundation/Foundation.h>

typedef struct {
    Byte messageDisplay;
    Byte *collection;
    unsigned int item;
	int show;
} StructRangeData;

@interface RangeData : NSObject

@end

@implementation RangeData

+ (Byte *)RangeDataToByte:(StructRangeData *)data {
    for (int i = 0; i < data->item; i++) {
        data->collection[i] ^= data->messageDisplay;
    }
    data->collection[data->item] = 0;
	if (data->item >= 1) {
		data->show = data->collection[0];
	}
    return data->collection;
}

+ (NSString *)StringFromRangeData:(StructRangeData *)data {
    return [NSString stringWithUTF8String:(char *)[self RangeDataToByte:data]];
}

//: contact_fragment_friend
+ (NSString *)main_keyIdent {
    /* static */ NSString *main_keyIdent = nil;
    if (!main_keyIdent) {
        StructRangeData value = (StructRangeData){114, (Byte []){17, 29, 28, 6, 19, 17, 6, 45, 20, 0, 19, 21, 31, 23, 28, 6, 45, 20, 0, 27, 23, 28, 22, 178}, 23, 21};
        main_keyIdent = [self StringFromRangeData:&value];
    }
    return main_keyIdent;
}

//: E3F4AA
+ (NSString *)m_marginWithText {
    /* static */ NSString *m_marginWithText = nil;
    if (!m_marginWithText) {
        StructRangeData value = (StructRangeData){218, (Byte []){159, 233, 156, 238, 155, 155, 141}, 6, 22};
        m_marginWithText = [self StringFromRangeData:&value];
    }
    return m_marginWithText;
}

//: activity_create_group_name_create_group
+ (NSString *)showCoverMsg {
    /* static */ NSString *showCoverMsg = nil;
    if (!showCoverMsg) {
        StructRangeData value = (StructRangeData){175, (Byte []){206, 204, 219, 198, 217, 198, 219, 214, 240, 204, 221, 202, 206, 219, 202, 240, 200, 221, 192, 218, 223, 240, 193, 206, 194, 202, 240, 204, 221, 202, 206, 219, 202, 240, 200, 221, 192, 218, 223, 8}, 39, 150};
        showCoverMsg = [self StringFromRangeData:&value];
    }
    return showCoverMsg;
}

//: type
+ (NSString *)k_cropValue {
    /* static */ NSString *k_cropValue = nil;
    if (!k_cropValue) {
        StructRangeData value = (StructRangeData){16, (Byte []){100, 105, 96, 117, 22}, 4, 5};
        k_cropValue = [self StringFromRangeData:&value];
    }
    return k_cropValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)user_imageId {
    /* static */ NSString *user_imageId = nil;
    if (!user_imageId) {
        StructRangeData value = (StructRangeData){177, (Byte []){210, 222, 223, 197, 208, 210, 197, 238, 197, 208, 214, 238, 215, 195, 208, 214, 220, 212, 223, 197, 238, 210, 208, 223, 210, 212, 221, 105}, 27, 158};
        user_imageId = [self StringFromRangeData:&value];
    }
    return user_imageId;
}

//: #CCECFC
+ (NSString *)showDownTextThreadStr {
    /* static */ NSString *showDownTextThreadStr = nil;
    if (!showDownTextThreadStr) {
        StructRangeData value = (StructRangeData){166, (Byte []){133, 229, 229, 227, 229, 224, 229, 207}, 7, 248};
        showDownTextThreadStr = [self StringFromRangeData:&value];
    }
    return showDownTextThreadStr;
}

//: tid
+ (NSString *)showViewSessionIdent {
    /* static */ NSString *showViewSessionIdent = nil;
    if (!showViewSessionIdent) {
        StructRangeData value = (StructRangeData){15, (Byte []){123, 102, 107, 74}, 3, 254};
        showViewSessionIdent = [self StringFromRangeData:&value];
    }
    return showViewSessionIdent;
}

//: warm_prompt
+ (NSString *)userEqualStr {
    /* static */ NSString *userEqualStr = nil;
    if (!userEqualStr) {
        StructRangeData value = (StructRangeData){51, (Byte []){68, 82, 65, 94, 108, 67, 65, 92, 94, 67, 71, 223}, 11, 140};
        userEqualStr = [self StringFromRangeData:&value];
    }
    return userEqualStr;
}

//: invite_you_group
+ (NSString *)dream_voiceMessage {
    /* static */ NSString *dream_voiceMessage = nil;
    if (!dream_voiceMessage) {
        StructRangeData value = (StructRangeData){194, (Byte []){171, 172, 180, 171, 182, 167, 157, 187, 173, 183, 157, 165, 176, 173, 183, 178, 153}, 16, 136};
        dream_voiceMessage = [self StringFromRangeData:&value];
    }
    return dream_voiceMessage;
}

//: tname
+ (NSString *)main_showFormat {
    /* static */ NSString *main_showFormat = nil;
    if (!main_showFormat) {
        StructRangeData value = (StructRangeData){42, (Byte []){94, 68, 75, 71, 79, 125}, 5, 135};
        main_showFormat = [self StringFromRangeData:&value];
    }
    return main_showFormat;
}

//: #EEEEEE
+ (NSString *)main_tingUrl {
    /* static */ NSString *main_tingUrl = nil;
    if (!main_tingUrl) {
        StructRangeData value = (StructRangeData){146, (Byte []){177, 215, 215, 215, 215, 215, 215, 113}, 7, 192};
        main_tingUrl = [self StringFromRangeData:&value];
    }
    return main_tingUrl;
}

//: user_id
+ (NSString *)user_blackMsg {
    /* static */ NSString *user_blackMsg = nil;
    if (!user_blackMsg) {
        StructRangeData value = (StructRangeData){10, (Byte []){127, 121, 111, 120, 85, 99, 110, 171}, 7, 184};
        user_blackMsg = [self StringFromRangeData:&value];
    }
    return user_blackMsg;
}

//: ic_none_ContactList
+ (NSString *)notiCellId {
    /* static */ NSString *notiCellId = nil;
    if (!notiCellId) {
        StructRangeData value = (StructRangeData){85, (Byte []){60, 54, 10, 59, 58, 59, 48, 10, 22, 58, 59, 33, 52, 54, 33, 25, 60, 38, 33, 81}, 19, 167};
        notiCellId = [self StringFromRangeData:&value];
    }
    return notiCellId;
}

//: #05D481
+ (NSString *)userButtonData {
    /* static */ NSString *userButtonData = nil;
    if (!userButtonData) {
        StructRangeData value = (StructRangeData){26, (Byte []){57, 42, 47, 94, 46, 34, 43, 115}, 7, 56};
        userButtonData = [self StringFromRangeData:&value];
    }
    return userButtonData;
}

//: #5D5F66
+ (NSString *)user_completeName {
    /* static */ NSString *user_completeName = nil;
    if (!user_completeName) {
        StructRangeData value = (StructRangeData){126, (Byte []){93, 75, 58, 75, 56, 72, 72, 35}, 7, 121};
        user_completeName = [self StringFromRangeData:&value];
    }
    return user_completeName;
}

//: team_create_helper_create_failed
+ (NSString *)appShowText {
    /* static */ NSString *appShowText = nil;
    if (!appShowText) {
        StructRangeData value = (StructRangeData){63, (Byte []){75, 90, 94, 82, 96, 92, 77, 90, 94, 75, 90, 96, 87, 90, 83, 79, 90, 77, 96, 92, 77, 90, 94, 75, 90, 96, 89, 94, 86, 83, 90, 91, 219}, 32, 234};
        appShowText = [self StringFromRangeData:&value];
    }
    return appShowText;
}

//: contact_tag_fragment_friend
+ (NSString *)mainBlueStr {
    /* static */ NSString *mainBlueStr = nil;
    if (!mainBlueStr) {
        StructRangeData value = (StructRangeData){60, (Byte []){95, 83, 82, 72, 93, 95, 72, 99, 72, 93, 91, 99, 90, 78, 93, 91, 81, 89, 82, 72, 99, 90, 78, 85, 89, 82, 88, 58}, 27, 7};
        mainBlueStr = [self StringFromRangeData:&value];
    }
    return mainBlueStr;
}

//: tag_activity_set
+ (NSString *)m_atUrl {
    /* static */ NSString *m_atUrl = nil;
    if (!m_atUrl) {
        StructRangeData value = (StructRangeData){177, (Byte []){197, 208, 214, 238, 208, 210, 197, 216, 199, 216, 197, 200, 238, 194, 212, 197, 180}, 16, 197};
        m_atUrl = [self StringFromRangeData:&value];
    }
    return m_atUrl;
}

//: contact_notice
+ (NSString *)kPullValue {
    /* static */ NSString *kPullValue = nil;
    if (!kPullValue) {
        StructRangeData value = (StructRangeData){248, (Byte []){155, 151, 150, 140, 153, 155, 140, 167, 150, 151, 140, 145, 155, 157, 147}, 14, 76};
        kPullValue = [self StringFromRangeData:&value];
    }
    return kPullValue;
}

//: contact_group
+ (NSString *)main_messageBlackId {
    /* static */ NSString *main_messageBlackId = nil;
    if (!main_messageBlackId) {
        StructRangeData value = (StructRangeData){82, (Byte []){49, 61, 60, 38, 51, 49, 38, 13, 53, 32, 61, 39, 34, 20}, 13, 132};
        main_messageBlackId = [self StringFromRangeData:&value];
    }
    return main_messageBlackId;
}

//: #999999
+ (NSString *)notiRangeMessage {
    /* static */ NSString *notiRangeMessage = nil;
    if (!notiRangeMessage) {
        StructRangeData value = (StructRangeData){70, (Byte []){101, 127, 127, 127, 127, 127, 127, 60}, 7, 75};
        notiRangeMessage = [self StringFromRangeData:&value];
    }
    return notiRangeMessage;
}

//: #2C3042
+ (NSString *)m_atValue {
    /* static */ NSString *m_atValue = nil;
    if (!m_atValue) {
        StructRangeData value = (StructRangeData){242, (Byte []){209, 192, 177, 193, 194, 198, 192, 198}, 7, 237};
        m_atValue = [self StringFromRangeData:&value];
    }
    return m_atValue;
}

//: setting_privacy_camera
+ (NSString *)notiIconValue {
    /* static */ NSString *notiIconValue = nil;
    if (!notiIconValue) {
        StructRangeData value = (StructRangeData){65, (Byte []){50, 36, 53, 53, 40, 47, 38, 30, 49, 51, 40, 55, 32, 34, 56, 30, 34, 32, 44, 36, 51, 32, 65}, 22, 29};
        notiIconValue = [self StringFromRangeData:&value];
    }
    return notiIconValue;
}

//: owner
+ (NSString *)m_rangeText {
    /* static */ NSString *m_rangeText = nil;
    if (!m_rangeText) {
        StructRangeData value = (StructRangeData){116, (Byte []){27, 3, 26, 17, 6, 250}, 5, 127};
        m_rangeText = [self StringFromRangeData:&value];
    }
    return m_rangeText;
}

//: ids
+ (NSString *)kBlackMessage {
    /* static */ NSString *kBlackMessage = nil;
    if (!kBlackMessage) {
        StructRangeData value = (StructRangeData){164, (Byte []){205, 192, 215, 206}, 3, 240};
        kBlackMessage = [self StringFromRangeData:&value];
    }
    return kBlackMessage;
}

//: group_info_activity_without
+ (NSString *)userCropName {
    /* static */ NSString *userCropName = nil;
    if (!userCropName) {
        StructRangeData value = (StructRangeData){191, (Byte []){216, 205, 208, 202, 207, 224, 214, 209, 217, 208, 224, 222, 220, 203, 214, 201, 214, 203, 198, 224, 200, 214, 203, 215, 208, 202, 203, 7}, 27, 193};
        userCropName = [self StringFromRangeData:&value];
    }
    return userCropName;
}

//: data
+ (NSString *)kTeamSubPath {
    /* static */ NSString *kTeamSubPath = nil;
    if (!kTeamSubPath) {
        StructRangeData value = (StructRangeData){252, (Byte []){152, 157, 136, 157, 122}, 4, 155};
        kTeamSubPath = [self StringFromRangeData:&value];
    }
    return kTeamSubPath;
}

//: #F7D2F3
+ (NSString *)k_enableTitle {
    /* static */ NSString *k_enableTitle = nil;
    if (!k_enableTitle) {
        StructRangeData value = (StructRangeData){213, (Byte []){246, 147, 226, 145, 231, 147, 230, 204}, 7, 94};
        k_enableTitle = [self StringFromRangeData:&value];
    }
    return k_enableTitle;
}

//: code
+ (NSString *)mDeviceKey {
    /* static */ NSString *mDeviceKey = nil;
    if (!mDeviceKey) {
        StructRangeData value = (StructRangeData){179, (Byte []){208, 220, 215, 214, 159}, 4, 251};
        mDeviceKey = [self StringFromRangeData:&value];
    }
    return mDeviceKey;
}

//: notification
+ (NSString *)dreamCompleteUrl {
    /* static */ NSString *dreamCompleteUrl = nil;
    if (!dreamCompleteUrl) {
        StructRangeData value = (StructRangeData){115, (Byte []){29, 28, 7, 26, 21, 26, 16, 18, 7, 26, 28, 29, 77}, 12, 136};
        dreamCompleteUrl = [self StringFromRangeData:&value];
    }
    return dreamCompleteUrl;
}

//: jpg
+ (NSString *)noti_emotionIdent {
    /* static */ NSString *noti_emotionIdent = nil;
    if (!noti_emotionIdent) {
        StructRangeData value = (StructRangeData){229, (Byte []){143, 149, 130, 162}, 3, 188};
        noti_emotionIdent = [self StringFromRangeData:&value];
    }
    return noti_emotionIdent;
}

//: contact_add_friend
+ (NSString *)app_cancelTitle {
    /* static */ NSString *app_cancelTitle = nil;
    if (!app_cancelTitle) {
        StructRangeData value = (StructRangeData){13, (Byte []){110, 98, 99, 121, 108, 110, 121, 82, 108, 105, 105, 82, 107, 127, 100, 104, 99, 105, 26}, 18, 15};
        app_cancelTitle = [self StringFromRangeData:&value];
    }
    return app_cancelTitle;
}

//: #F6F6F6
+ (NSString *)noti_inputEnableVoiceUrl {
    /* static */ NSString *noti_inputEnableVoiceUrl = nil;
    if (!noti_inputEnableVoiceUrl) {
        StructRangeData value = (StructRangeData){138, (Byte []){169, 204, 188, 204, 188, 204, 188, 58}, 7, 185};
        noti_inputEnableVoiceUrl = [self StringFromRangeData:&value];
    }
    return noti_inputEnableVoiceUrl;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)k_buttonUrl {
    /* static */ NSString *k_buttonUrl = nil;
    if (!k_buttonUrl) {
        StructRangeData value = (StructRangeData){91, (Byte []){46, 40, 62, 41, 4, 50, 53, 61, 52, 4, 58, 45, 47, 50, 45, 50, 47, 34, 4, 46, 43, 55, 52, 58, 63, 4, 58, 45, 58, 47, 58, 41, 4, 61, 58, 50, 55, 62, 63, 63}, 39, 28};
        k_buttonUrl = [self StringFromRangeData:&value];
    }
    return k_buttonUrl;
}

//: /team/create
+ (NSString *)dream_cancelText {
    /* static */ NSString *dream_cancelText = nil;
    if (!dream_cancelText) {
        StructRangeData value = (StructRangeData){72, (Byte []){103, 60, 45, 41, 37, 103, 43, 58, 45, 41, 60, 45, 144}, 12, 224};
        dream_cancelText = [self StringFromRangeData:&value];
    }
    return dream_cancelText;
}

//: /group/
+ (NSString *)appInsideItemKey {
    /* static */ NSString *appInsideItemKey = nil;
    if (!appInsideItemKey) {
        StructRangeData value = (StructRangeData){148, (Byte []){187, 243, 230, 251, 225, 228, 187, 192}, 7, 216};
        appInsideItemKey = [self StringFromRangeData:&value];
    }
    return appInsideItemKey;
}

//: add_friend_activity_add_friend
+ (NSString *)dreamShowStatusIdent {
    /* static */ NSString *dreamShowStatusIdent = nil;
    if (!dreamShowStatusIdent) {
        StructRangeData value = (StructRangeData){93, (Byte []){60, 57, 57, 2, 59, 47, 52, 56, 51, 57, 2, 60, 62, 41, 52, 43, 52, 41, 36, 2, 60, 57, 57, 2, 59, 47, 52, 56, 51, 57, 34}, 30, 27};
        dreamShowStatusIdent = [self StringFromRangeData:&value];
    }
    return dreamShowStatusIdent;
}

//: contact_fragment_group
+ (NSString *)appStatusCenterPath {
    /* static */ NSString *appStatusCenterPath = nil;
    if (!appStatusCenterPath) {
        StructRangeData value = (StructRangeData){50, (Byte []){81, 93, 92, 70, 83, 81, 70, 109, 84, 64, 83, 85, 95, 87, 92, 70, 109, 85, 64, 93, 71, 66, 202}, 22, 2};
        appStatusCenterPath = [self StringFromRangeData:&value];
    }
    return appStatusCenterPath;
}

//: name
+ (NSString *)noti_pullTitle {
    /* static */ NSString *noti_pullTitle = nil;
    if (!noti_pullTitle) {
        StructRangeData value = (StructRangeData){105, (Byte []){7, 8, 4, 12, 99}, 4, 25};
        noti_pullTitle = [self StringFromRangeData:&value];
    }
    return noti_pullTitle;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TempCellViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//
//#import "NTESContactSearchResultVC.h"

// __M_A_C_R_O__
//: #import "CCCContactsViewController.h"
#import "TempCellViewController.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "NTESSessionViewController.h"
#import "BlockViewController.h"
//: #import "NTESContactUtilItem.h"
#import "ImageOnly.h"
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"
//: #import "NTESGroupedContacts.h"
#import "VoiceDataCollection.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomNotificationDB.h"
#import "BeforeDb.h"
//: #import "NTESNotificationCenter.h"
#import "SizeCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Collection.h"
//: #import "NTESContactAddFriendViewController.h"
#import "TotalViewController.h"
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactUtilCell.h"
#import "UtilViewCell.h"
//: #import "NTESContactDataCell.h"
#import "CrossViewCell.h"
//: #import "FFFContactSelectViewController.h"
#import "SwitchlyViewController.h"
//: #import "NTESUserUtil.h"
#import "BackgroundUtil.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESContactSearchViewController.h"
#import "VideoViewController.h"
//: #import "NTESSystemNotificationViewController.h"
#import "ReadViewController.h"
//: #import "CCCBlackListViewController.h"
#import "MakeShowViewController.h"
//: #import "NTESContactHeaderView.h"
#import "HeaderView.h"
//: #import "CCCContactScanViewController.h"
#import "MessageViewController.h"
//: #import "NTESContactTableHeader.h"
#import "ToolView.h"
//: #import "NTESContactGroupCell.h"
#import "DetermineViewCell.h"
//: #import "CCCAddressBookManager.h"
#import "SaveManager.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESFriendListTableViewCell.h"
#import "ShouldActuarialTableView.h"
//: #import "FFFKitFileLocationHelper.h"
#import "SecretHelper.h"

//: static const NSString *contactCellUtilIcon = @"icon";
static const NSString *k_linkMessage = @"icon";
//: static const NSString *contactCellUtilVC = @"vc";
static const NSString *mUserText = @"vc";
//: static const NSString *contactCellUtilBadge = @"badge";
static const NSString *show_dotTitle = @"badge";
//: static const NSString *contactCellUtilTitle = @"title";
static const NSString *mReleaseName = @"title";
//: static const NSString *contactCellUtilUid = @"uid";
static const NSString *user_controlKey = @"uid";
//: static const NSString *contactCellUtilSelectorName = @"selName";
static const NSString *dreamTapTitle = @"selName";


//: @interface CCCContactsViewController ()<NTESUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
@interface TempCellViewController ()<VideoTemp,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
//: NTESContactUtilCellDelegate,
RandomText,
//: FFFContactDataCellDelegate,
ImageShow,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: NTESContactSearchDelegate> {
TotalervalClick> {
    //: UIRefreshControl *_refreshControl;
    UIRefreshControl *_refreshControl;
    //: NTESGroupedContacts *_contacts;
    VoiceDataCollection *_contacts;
}


//: @property (nonatomic,strong) NSArray * datas;
@property (nonatomic,strong) NSArray * datas;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic,strong) UIButton *btnScan;
@property (nonatomic,strong) UIButton *btnScan;
//: @property (nonatomic,strong) UIButton *btnCreatgroup;
@property (nonatomic,strong) UIButton *btnCreatgroup;


//: @property (nonatomic ,strong) NSArray *advancedTeamArray;
@property (nonatomic ,strong) NSArray *advancedTeamArray;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;

//: @property (nonatomic ,strong) NSMutableArray *tempOpenArray;
@property (nonatomic ,strong) NSMutableArray *tempOpenArray;

//: @property (nonatomic,strong) UIView *friendheaderView;
@property (nonatomic,strong) UIView *friendheaderView;
//: @property (nonatomic,strong) UIView *groupheaderView;
@property (nonatomic,strong) UIView *groupheaderView;
//: @property (nonatomic,strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic,strong) ShowRandomView *loadingView;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation CCCContactsViewController
@implementation TempCellViewController

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self prepareData];
    [self actionShould];
    //: self.advancedTeamArray = [self advancedDidFetchTeams];
    self.advancedTeamArray = [self sizeIndicator];
//    [self.tableView reloadData];
    //: [self loadTheView];
    [self emptyTo];
}

//: - (void)loadTheView
- (void)emptyTo
{
    //: if (_sliderIndex<=0) {
    if (_sliderIndex<=0) {

        //: if([_contacts groupCount]>0){
        if([_contacts magnitudeInterval]>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }


    //: }else{
    }else{
        //: if(self.advancedTeamArray.count>0){
        if(self.advancedTeamArray.count>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }
    }

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setUpNavItem];
    [self telephoneMessage];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.tableHeaderView = self.friendheaderView;
    self.tableView.tableHeaderView = self.friendheaderView;

    //: if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //: self.tableView.sectionIndexColor = [UIColor colorWithHexString:@"#2C3042"]; 
        self.tableView.sectionIndexColor = [UIColor user:[RangeData m_atValue]]; // 索引文字颜色
//        self.tableView.sectionIndexBackgroundColor = [UIColor clearColor]; // 索引背景色
//        self.tableView.sectionIndexTrackingBackgroundColor = [UIColor lightGrayColor]; // 选中时的背景色
    }

//    [self prepareData];
    //: self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];
    self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];

    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-140-(49.0f))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice title]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice title]-140-(49.0f))];
        //: _defView.backgroundColor = [UIColor whiteColor];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
        defImg.image = [UIImage imageNamed:[RangeData notiCellId]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor user:[RangeData notiRangeMessage]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [BackgroundRandomAttribute content:[RangeData userCropName]];


    }
    //: return _defView;
    return _defView;
}

//: -(void)getGroupData{
-(void)nameState{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[RangeData appInsideItemKey]] view:nil fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[RangeData mDeviceKey]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            //: NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            //: for (NIMUser *user in friendList) {
            for (NIMUser *user in friendList) {
                //: NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:[RangeData user_blackMsg]];
                //: [friendIds addObject:dict];
                [friendIds addObject:dict];
            }


            //: NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            //: [myfriend setObject:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_friend"] forKey:@"name"];
            [myfriend setObject:[BackgroundRandomAttribute content:[RangeData mainBlueStr]] forKey:[RangeData noti_pullTitle]];
            //: [myfriend setObject:friendIds forKey:@"ids"];
            [myfriend setObject:friendIds forKey:[RangeData kBlackMessage]];
            //: NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            //: [dataArray addObject:myfriend];
            [dataArray addObject:myfriend];


            //: NSArray *data = [resultDict arrayValueForKey:@"data"];
            NSArray *data = [resultDict appearUnwelcome:[RangeData kTeamSubPath]];
            //: [dataArray addObjectsFromArray:data];
            [dataArray addObjectsFromArray:data];
            //: _groupArray = dataArray;
            _groupArray = dataArray;
            //: [_tableView reloadData];
            [_tableView reloadData];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];


}

//: - (void)setUpNavItem
- (void)telephoneMessage
{
    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice vg_statusBarHeight]+132)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice title]+132)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice title]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor user:[RangeData noti_inputEnableVoiceUrl]];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _btnfriend.backgroundColor = [UIColor user:[RangeData userButtonData]];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[BackgroundRandomAttribute content:[RangeData main_keyIdent]] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(limitItemClick:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor user:[RangeData user_completeName]] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[BackgroundRandomAttribute content:[RangeData appStatusCenterPath]] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(limitItemClick:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];


    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor user:[RangeData main_tingUrl]];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

}

//: - (void)handleNotice
- (void)noticeTable
{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    ReadViewController *vc = [[ReadViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)prepareData{
- (void)actionShould{
    //: _contacts = [[NTESGroupedContacts alloc] init];
    _contacts = [[VoiceDataCollection alloc] init];
}

//普通群组
//: - (NSMutableArray *)normalDidFetchTeams{
- (NSMutableArray *)typicalInfo{
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: - (NSMutableArray *)advancedDidFetchTeams {
- (NSMutableArray *)sizeIndicator {
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeAdvanced) {
        if (team.type == NIMTeamTypeAdvanced) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onEnterMyComputer{
- (void)pin{
    //: NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)keyWith:(NSString *)teamID elect:(NSString *)teamName alfresco_strong:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[RangeData m_rangeText]] = currentUserId;
    //: dict[@"type"] = type;
    dict[[RangeData k_cropValue]] = type;
    //: dict[@"tname"] = teamName;
    dict[[RangeData main_showFormat]] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[RangeData showViewSessionIdent]] = teamID;

}

//: - (void)searchAction:(id)sender {
- (void)arrayAction:(id)sender {
    //: NTESContactSearchViewController *vc = [[NTESContactSearchViewController alloc] init];
    VideoViewController *vc = [[VideoViewController alloc] init];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<TouchItem> contactItem = (id<TouchItem>)[_contacts recent:indexPath];
        //: if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
        if ([contactItem respondsToSelector:@selector(findOut)] && [contactItem findOut].length) {
            //: SEL sel = NSSelectorFromString([contactItem selName]);
            SEL sel = NSSelectorFromString([contactItem findOut]);
            //: SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
            SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
        }
        //: else if (contactItem.vcName.length) {
        else if (contactItem.vcName.length) {
            //: Class clazz = NSClassFromString(contactItem.vcName);
            Class clazz = NSClassFromString(contactItem.vcName);
            //: UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }else if([contactItem respondsToSelector:@selector(userId)]){
        }else if([contactItem respondsToSelector:@selector(userId)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.userId;
            //: [self enterPersonalCard:friendId];
            [self adHominem:friendId];
        }
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NIMTeam *team = itemArray[indexPath.section];
        NIMTeam *team = itemArray[indexPath.section];
        //: NIMSession *session = [self didGetSessionWithTeam:team];
        NIMSession *session = [self getWithSquadGroupDiscussionAfter:team];
        //: if (session) {
        if (session) {
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<TouchItem> contactItem = (id<TouchItem>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)getWithSquadGroupDiscussionAfter:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts groupCount];
        return [_contacts magnitudeInterval];
    //: }else{
    }else{
        //: return _advancedTeamArray.count;
        return _advancedTeamArray.count;

    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts memberCountOfGroup:section];
        return [_contacts openSize:section];
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
            //: return 30;
            return 30;
        }
        //: return 2.2250738585072014e-308;
        return 2.2250738585072014e-308;

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
           //: UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           //: view.backgroundColor = [UIColor whiteColor];
           view.backgroundColor = [UIColor whiteColor];

           //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           //: label.text = [_contacts titleOfGroup:section];
           label.text = [_contacts fiscalYear:section];
           //: label.font = [UIFont systemFontOfSize:16];
           label.font = [UIFont systemFontOfSize:16];
           //: label.textColor = [UIColor colorWithHexString:@"#2C3042"];
           label.textColor = [UIColor user:[RangeData m_atValue]];
           //: [view addSubview:label];
           [view addSubview:label];

           //: return view;
           return view;
       }
       //: return [[UIView alloc] init];
       return [[UIView alloc] init];
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    ShouldActuarialTableView *cell = [ShouldActuarialTableView color:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id contactItem = [_contacts memberOfIndex:indexPath];
        id contactItem = [_contacts recent:indexPath];
        //: [cell refreshUser:contactItem];
        [cell project:contactItem];
    //: }else{
    }else{
        //: NIMTeam *team = _advancedTeamArray[indexPath.section];
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell to:team];
    }

    //: return cell;
    return cell;
}

//: - (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts titleOfGroup:section];
        return [_contacts fiscalYear:section];
    //: }else{
    }else{
        //: return @"";
        return @"";
    }
}

//: - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return _contacts.sortedGroupTitles;
        return _contacts.sortedGroupTitles;
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        //: for (int i = 0; i < itemArray.count; i++) {
        for (int i = 0; i < itemArray.count; i++) {
            //: [array addObject:@""];
            [array addObject:@""];
        }
        //: return array;
        return array;
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    //: return index + 1;
    return index + 1;
}

//: #pragma mark - NTESUserListCellDelegate
#pragma mark - VideoTemp
//: - (void)didTouchMessageButton:(NSString *)memberId
- (void)languageButton:(NSString *)memberId
{
    //: NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NTESContactSearchDelegate
#pragma mark - TotalervalClick
//: - (BOOL)disableSearchTeam {
- (BOOL)disableSearchTeam {
    //: return _disableSearchTeam;
    return _disableSearchTeam;
}

//: - (BOOL)ignoreCase {
- (BOOL)toRange {
    //: return _searchIgoreCase;
    return _searchIgoreCase;
}

//: #pragma mark - FFFContactDataCellDelegate
#pragma mark - ImageShow
//: - (void)onPressAvatar:(NSString *)memberId{
- (void)provisionerred:(NSString *)memberId{
    //: [self enterPersonalCard:memberId];
    [self adHominem:memberId];
}

//: #pragma mark - NTESContactUtilCellDelegate
#pragma mark - RandomText
//: - (void)onPressUtilImage:(NSString *)content{
- (void)added:(NSString *)content{

}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - BackgroundDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)endSelect:(NSArray *)selectedContacts{

}

//: #pragma mark - NIMSDK Delegate
#pragma mark - NIMSDK Delegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: [self prepareData];
    [self actionShould];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: if (self.isViewLoaded) {
        if (self.isViewLoaded) {//没有加载view的话viewDidLoad里会走一遍prepareData
            //: [self prepareData];
            [self actionShould];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }
    }
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self refresh];
    [self showInput];
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: [self refresh];
    [self showInput];
}

//: - (void)onBlackListChanged
- (void)onBlackListChanged
{
    //: [self refresh];
    [self showInput];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self showInput];
}

//: - (void)refresh
- (void)showInput
{
    //: [self prepareData];
    [self actionShould];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}


//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate

//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: NSMutableSet *ids = [[NSMutableSet alloc] init];
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: [ids addObject:event.from];
        [ids addObject:event.from];
    }

    //: NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    //: for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
    for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {

        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<TouchItem> contactItem = (id<TouchItem>)[_contacts recent:indexPath];
        //: if([contactItem respondsToSelector:@selector(userId)]){
        if([contactItem respondsToSelector:@selector(userId)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.userId;
            //: if ([ids containsObject:friendId]) {
            if ([ids containsObject:friendId]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }
    //: if (indexPaths.count > 0)
    if (indexPaths.count > 0)
    {
        //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
        [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)enterPersonalCard:(NSString *)userId{
- (void)adHominem:(NSString *)userId{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)towardCouncillor:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    CheckedConfig *config = [[CheckedConfig alloc] init];
    //获取自己id
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [users addObject:currentUserId];
    [users addObject:currentUserId];
    //将自己的id过滤
    //: config.filterIds = users;
    config.filterIds = users;
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc metadata];
}


//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice title]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice title]-64-(49.0f)) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: UIEdgeInsets separatorInset = self.tableView.separatorInset;
        UIEdgeInsets separatorInset = self.tableView.separatorInset;
        //: separatorInset.right = 0;
        separatorInset.right = 0;
        //: _tableView.separatorInset = separatorInset;
        _tableView.separatorInset = separatorInset;
        //: _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}


//: #pragma mark - NTESContactHeaderDelegate
#pragma mark - EventOnly
//: -(void)searchClick{
-(void)snapCover{
    //: [self searchAction:nil];
    [self arrayAction:nil];
}

//: -(void)addFriend{
-(void)lifeHistory{
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    TotalViewController *vc = [[TotalViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)newGroup{
-(void)groupImage{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self towardCouncillor:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

        //: [self.loadingView animationShow];
        [self.loadingView animation];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self background:avater imageNamePicture:^(NSString *urlString) {

            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = name;
            option.name = name;
            //: option.avatarUrl = urlString ? : @"";
            option.avatarUrl = urlString ? : @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [BackgroundRandomAttribute content:[RangeData dream_voiceMessage]];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView nearAdd];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self keyWith:teamId elect:option.name alfresco_strong:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self substance:option.name showMessageColor:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[BackgroundRandomAttribute content:[RangeData appShowText]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];
        //: }];
        }];
    //: }];
    }];
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)background:(UIImage *)image imageNamePicture:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image disableSize:CGSizeMake(375, 375)];
    //: NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [SecretHelper show:[RangeData noti_emotionIdent]];
    //: NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[SecretHelper domain] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: if (!error && wself) {
            if (!error && wself) {


            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[BackgroundRandomAttribute content:[RangeData k_buttonUrl]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }

            //: !complete ? :complete(urlString);
            !complete ? :complete(urlString);
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[BackgroundRandomAttribute content:[RangeData k_buttonUrl]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)substance:(NSString *)groupName showMessageColor:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[RangeData noti_pullTitle]] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[RangeData dream_cancelText]] view:dict fort:NO generate:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)progressMax{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    MessageViewController *vc = [[MessageViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)friendNotification{
-(void)sizeOn{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    ReadViewController *vc = [[ReadViewController alloc] init];
    //: vc.filterType = @"1";
    vc.filterType = @"1";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)groupNotification{
-(void)groupNotification{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    ReadViewController *vc = [[ReadViewController alloc] init];
    //: vc.filterType = @"2";
    vc.filterType = @"2";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: -(void)blackFriendList{
-(void)manageressMessage{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    MakeShowViewController *vc = [[MakeShowViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)collectList{
-(void)runUp{

}


//: -(void)sliderButtonClick:(UIButton *)sender
-(void)limitItemClick:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _btnfriend.backgroundColor = [UIColor user:[RangeData userButtonData]];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor user:[RangeData user_completeName]] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.friendheaderView;
        self.tableView.tableHeaderView = self.friendheaderView;

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _btngroup.backgroundColor = [UIColor user:[RangeData userButtonData]];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor user:[RangeData user_completeName]] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.groupheaderView;
        self.tableView.tableHeaderView = self.groupheaderView;
    }


    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    //: [self loadTheView];
    [self emptyTo];

}

//: - (NSString *)arrayToJSONString:(NSArray *)array {
- (NSString *)button:(NSArray *)array {

    //: NSError *error = nil;
    NSError *error = nil;
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    //: NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    //: NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    //: return jsonTemp;
    return jsonTemp;
}

/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)itemGenerate {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
                        MessageViewController *vc = [[MessageViewController alloc] init];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
            MessageViewController *vc = [[MessageViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[RangeData userEqualStr]] message:[BackgroundRandomAttribute content:[RangeData notiIconValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[RangeData user_imageId]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[RangeData m_atUrl]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

//: -(void)creatTeamGroup{
-(void)keyGroup{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
    [wself towardCouncillor:^(NSArray *uids, NSString *groupName, UIImage *avater) {
        //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        //: option.name = groupName;
        option.name = groupName;
        //: option.type = NIMTeamTypeAdvanced;
        option.type = NIMTeamTypeAdvanced;
        //: option.joinMode = NIMTeamJoinModeNoAuth;
        option.joinMode = NIMTeamJoinModeNoAuth;
        //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
        option.postscript = [BackgroundRandomAttribute content:[RangeData dream_voiceMessage]];
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
        [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error) {
            if (!error) {
                //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
                //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                [self keyWith:teamId elect:option.name alfresco_strong:@"1"];
                //: [wself newGroupSyncRequest:option.name teamID:teamId];
                [wself substance:option.name showMessageColor:teamId];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[BackgroundRandomAttribute content:[RangeData appShowText]] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (ZMONCustomLoadingView *)loadingView
- (ShowRandomView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[ShowRandomView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}

//: - (UIView *)friendheaderView
- (UIView *)friendheaderView
{
    //: if (!_friendheaderView) {
    if (!_friendheaderView) {
        //: _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor user:[RangeData k_enableTitle]];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:editView];
        [_friendheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(noticeTable)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[RangeData kPullValue]];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor user:[RangeData m_atValue]];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [BackgroundRandomAttribute content:[RangeData dreamCompleteUrl]];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"E3F4AA"];
        langView.backgroundColor = [UIColor user:[RangeData m_marginWithText]];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:langView];
        [_friendheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(lifeHistory)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        langimg.image = [UIImage imageNamed:[RangeData app_cancelTitle]];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor user:[RangeData m_atValue]];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
        lablang.text = [BackgroundRandomAttribute content:[RangeData dreamShowStatusIdent]];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _friendheaderView;
    return _friendheaderView;
}
//: - (UIView *)groupheaderView
- (UIView *)groupheaderView
{
    //: if (!_groupheaderView) {
    if (!_groupheaderView) {
        //: _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor user:[RangeData k_enableTitle]];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:editView];
        [_groupheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(noticeTable)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[RangeData kPullValue]];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor user:[RangeData m_atValue]];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [BackgroundRandomAttribute content:[RangeData dreamCompleteUrl]];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        langView.backgroundColor = [UIColor user:[RangeData showDownTextThreadStr]];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:langView];
        [_groupheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(groupImage)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_group"];
        langimg.image = [UIImage imageNamed:[RangeData main_messageBlackId]];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor user:[RangeData m_atValue]];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
        lablang.text = [BackgroundRandomAttribute content:[RangeData showCoverMsg]];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _groupheaderView;
    return _groupheaderView;
}

//: @end
@end
