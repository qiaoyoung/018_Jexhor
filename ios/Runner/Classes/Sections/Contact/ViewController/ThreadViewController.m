
#import <Foundation/Foundation.h>

@interface TurnOutData : NSObject

+ (instancetype)sharedInstance;

//: owner
@property (nonatomic, copy) NSString *show_threadContent;

//: contact_fragment_friend
@property (nonatomic, copy) NSString *mViewTitle;

//: #EEEEEE
@property (nonatomic, copy) NSString *userAtTitle;

//: ids
@property (nonatomic, copy) NSString *app_addData;

//: tid
@property (nonatomic, copy) NSString *kEndTitle;

//: /group/
@property (nonatomic, copy) NSString *main_bubbleValue;

//: contact_tag_fragment_friend
@property (nonatomic, copy) NSString *m_bubbleValue;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *mTableTitle;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *mSessionTitle;

//: contact_add_friend
@property (nonatomic, copy) NSString *kCommentName;

//: #CCECFC
@property (nonatomic, copy) NSString *noti_countData;

//: type
@property (nonatomic, copy) NSString *user_pressName;

//: #F7D2F3
@property (nonatomic, copy) NSString *noti_atData;

//: contact_group
@property (nonatomic, copy) NSString *k_successTitle;

//: invite_you_group
@property (nonatomic, copy) NSString *main_addName;

//: #5D5F66
@property (nonatomic, copy) NSString *appBubbleData;

//: warm_prompt
@property (nonatomic, copy) NSString *userViewTitle;

//: contact_notice
@property (nonatomic, copy) NSString *noti_commentText;

//: activity_create_group_name_create_group
@property (nonatomic, copy) NSString *appLengthValue;

//: contact_fragment_group
@property (nonatomic, copy) NSString *m_targetButtonText;

//: #F6F6F6
@property (nonatomic, copy) NSString *userShowText;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *mainItemData;

//: E3F4AA
@property (nonatomic, copy) NSString *k_onSuccessValue;

//: ic_none_ContactList
@property (nonatomic, copy) NSString *k_videoContent;

//: code
@property (nonatomic, copy) NSString *dreamSuccessData;

//: #2C3042
@property (nonatomic, copy) NSString *kMediaColorName;

//: #999999
@property (nonatomic, copy) NSString *userLengthData;

//: data
@property (nonatomic, copy) NSString *mainButtonValue;

//: tname
@property (nonatomic, copy) NSString *kFileAtTitle;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *showLimitText;

//: #05D481
@property (nonatomic, copy) NSString *main_placeName;

//: /team/create
@property (nonatomic, copy) NSString *app_successData;

//: add_friend_activity_add_friend
@property (nonatomic, copy) NSString *k_buttonName;

//: group_info_activity_without
@property (nonatomic, copy) NSString *noti_makeText;

//: name
@property (nonatomic, copy) NSString *userOldName;

//: jpg
@property (nonatomic, copy) NSString *notiAtData;

//: tag_activity_set
@property (nonatomic, copy) NSString *mainCompleteData;

//: notification
@property (nonatomic, copy) NSString *dream_disableValue;

//: user_id
@property (nonatomic, copy) NSString *kInfoTargetContent;

@end

@implementation TurnOutData

+ (instancetype)sharedInstance {
    static TurnOutData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TurnOutDataToCache:(Byte *)data {
    int targetRead = data[0];
    int tag = data[1];
    for (int i = 0; i < targetRead / 2; i++) {
        int begin = tag + i;
        int end = tag + targetRead - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[tag + targetRead] = 0;
    return data + tag;
}

- (NSString *)StringFromTurnOutData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TurnOutDataToCache:data]];
}  

//: owner
- (NSString *)show_threadContent {
    if (!_show_threadContent) {
        Byte value[] = {5, 6, 67, 231, 121, 143, 114, 101, 110, 119, 111, 216};
        _show_threadContent = [self StringFromTurnOutData:value];
    }
    return _show_threadContent;
}

//: type
- (NSString *)user_pressName {
    if (!_user_pressName) {
        Byte value[] = {4, 2, 101, 112, 121, 116, 215};
        _user_pressName = [self StringFromTurnOutData:value];
    }
    return _user_pressName;
}

//: #EEEEEE
- (NSString *)userAtTitle {
    if (!_userAtTitle) {
        Byte value[] = {7, 4, 158, 60, 69, 69, 69, 69, 69, 69, 35, 131};
        _userAtTitle = [self StringFromTurnOutData:value];
    }
    return _userAtTitle;
}

//: contact_group
- (NSString *)k_successTitle {
    if (!_k_successTitle) {
        Byte value[] = {13, 3, 154, 112, 117, 111, 114, 103, 95, 116, 99, 97, 116, 110, 111, 99, 47};
        _k_successTitle = [self StringFromTurnOutData:value];
    }
    return _k_successTitle;
}

//: contact_fragment_friend
- (NSString *)mViewTitle {
    if (!_mViewTitle) {
        Byte value[] = {23, 4, 38, 25, 100, 110, 101, 105, 114, 102, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 153};
        _mViewTitle = [self StringFromTurnOutData:value];
    }
    return _mViewTitle;
}

//: name
- (NSString *)userOldName {
    if (!_userOldName) {
        Byte value[] = {4, 12, 2, 244, 155, 195, 159, 140, 208, 116, 230, 143, 101, 109, 97, 110, 217};
        _userOldName = [self StringFromTurnOutData:value];
    }
    return _userOldName;
}

//: tag_activity_set
- (NSString *)mainCompleteData {
    if (!_mainCompleteData) {
        Byte value[] = {16, 9, 137, 51, 143, 31, 7, 222, 232, 116, 101, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 138};
        _mainCompleteData = [self StringFromTurnOutData:value];
    }
    return _mainCompleteData;
}

//: group_info_activity_without
- (NSString *)noti_makeText {
    if (!_noti_makeText) {
        Byte value[] = {27, 7, 39, 109, 132, 247, 212, 116, 117, 111, 104, 116, 105, 119, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 227};
        _noti_makeText = [self StringFromTurnOutData:value];
    }
    return _noti_makeText;
}

//: team_create_helper_create_failed
- (NSString *)mainItemData {
    if (!_mainItemData) {
        Byte value[] = {32, 3, 3, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 101, 114, 99, 95, 114, 101, 112, 108, 101, 104, 95, 101, 116, 97, 101, 114, 99, 95, 109, 97, 101, 116, 146};
        _mainItemData = [self StringFromTurnOutData:value];
    }
    return _mainItemData;
}

//: contact_fragment_group
- (NSString *)m_targetButtonText {
    if (!_m_targetButtonText) {
        Byte value[] = {22, 8, 188, 146, 120, 27, 100, 57, 112, 117, 111, 114, 103, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 58};
        _m_targetButtonText = [self StringFromTurnOutData:value];
    }
    return _m_targetButtonText;
}

//: contact_notice
- (NSString *)noti_commentText {
    if (!_noti_commentText) {
        Byte value[] = {14, 10, 162, 241, 17, 193, 79, 180, 245, 95, 101, 99, 105, 116, 111, 110, 95, 116, 99, 97, 116, 110, 111, 99, 115};
        _noti_commentText = [self StringFromTurnOutData:value];
    }
    return _noti_commentText;
}

//: activity_create_group_name_create_group
- (NSString *)appLengthValue {
    if (!_appLengthValue) {
        Byte value[] = {39, 4, 159, 178, 112, 117, 111, 114, 103, 95, 101, 116, 97, 101, 114, 99, 95, 101, 109, 97, 110, 95, 112, 117, 111, 114, 103, 95, 101, 116, 97, 101, 114, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 79};
        _appLengthValue = [self StringFromTurnOutData:value];
    }
    return _appLengthValue;
}

//: #5D5F66
- (NSString *)appBubbleData {
    if (!_appBubbleData) {
        Byte value[] = {7, 3, 47, 54, 54, 70, 53, 68, 53, 35, 40};
        _appBubbleData = [self StringFromTurnOutData:value];
    }
    return _appBubbleData;
}

//: #999999
- (NSString *)userLengthData {
    if (!_userLengthData) {
        Byte value[] = {7, 5, 30, 102, 254, 57, 57, 57, 57, 57, 57, 35, 152};
        _userLengthData = [self StringFromTurnOutData:value];
    }
    return _userLengthData;
}

//: #F7D2F3
- (NSString *)noti_atData {
    if (!_noti_atData) {
        Byte value[] = {7, 6, 251, 173, 86, 78, 51, 70, 50, 68, 55, 70, 35, 253};
        _noti_atData = [self StringFromTurnOutData:value];
    }
    return _noti_atData;
}

//: data
- (NSString *)mainButtonValue {
    if (!_mainButtonValue) {
        Byte value[] = {4, 3, 137, 97, 116, 97, 100, 225};
        _mainButtonValue = [self StringFromTurnOutData:value];
    }
    return _mainButtonValue;
}

//: contact_tag_fragment_friend
- (NSString *)m_bubbleValue {
    if (!_m_bubbleValue) {
        Byte value[] = {27, 8, 30, 55, 241, 180, 127, 21, 100, 110, 101, 105, 114, 102, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 92};
        _m_bubbleValue = [self StringFromTurnOutData:value];
    }
    return _m_bubbleValue;
}

//: #F6F6F6
- (NSString *)userShowText {
    if (!_userShowText) {
        Byte value[] = {7, 2, 54, 70, 54, 70, 54, 70, 35, 47};
        _userShowText = [self StringFromTurnOutData:value];
    }
    return _userShowText;
}

//: E3F4AA
- (NSString *)k_onSuccessValue {
    if (!_k_onSuccessValue) {
        Byte value[] = {6, 12, 48, 125, 51, 220, 223, 50, 141, 102, 226, 174, 65, 65, 52, 70, 51, 69, 203};
        _k_onSuccessValue = [self StringFromTurnOutData:value];
    }
    return _k_onSuccessValue;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)mSessionTitle {
    if (!_mSessionTitle) {
        Byte value[] = {39, 11, 21, 105, 124, 167, 69, 127, 54, 251, 116, 100, 101, 108, 105, 97, 102, 95, 114, 97, 116, 97, 118, 97, 95, 100, 97, 111, 108, 112, 117, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 29};
        _mSessionTitle = [self StringFromTurnOutData:value];
    }
    return _mSessionTitle;
}

//: ids
- (NSString *)app_addData {
    if (!_app_addData) {
        Byte value[] = {3, 8, 170, 208, 156, 176, 176, 32, 115, 100, 105, 46};
        _app_addData = [self StringFromTurnOutData:value];
    }
    return _app_addData;
}

//: tid
- (NSString *)kEndTitle {
    if (!_kEndTitle) {
        Byte value[] = {3, 8, 25, 25, 250, 47, 117, 140, 100, 105, 116, 53};
        _kEndTitle = [self StringFromTurnOutData:value];
    }
    return _kEndTitle;
}

//: user_id
- (NSString *)kInfoTargetContent {
    if (!_kInfoTargetContent) {
        Byte value[] = {7, 6, 23, 54, 63, 66, 100, 105, 95, 114, 101, 115, 117, 130};
        _kInfoTargetContent = [self StringFromTurnOutData:value];
    }
    return _kInfoTargetContent;
}

//: notification
- (NSString *)dream_disableValue {
    if (!_dream_disableValue) {
        Byte value[] = {12, 4, 15, 248, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 244};
        _dream_disableValue = [self StringFromTurnOutData:value];
    }
    return _dream_disableValue;
}

//: #2C3042
- (NSString *)kMediaColorName {
    if (!_kMediaColorName) {
        Byte value[] = {7, 4, 37, 30, 50, 52, 48, 51, 67, 50, 35, 14};
        _kMediaColorName = [self StringFromTurnOutData:value];
    }
    return _kMediaColorName;
}

//: #05D481
- (NSString *)main_placeName {
    if (!_main_placeName) {
        Byte value[] = {7, 5, 168, 63, 24, 49, 56, 52, 68, 53, 48, 35, 208};
        _main_placeName = [self StringFromTurnOutData:value];
    }
    return _main_placeName;
}

//: tname
- (NSString *)kFileAtTitle {
    if (!_kFileAtTitle) {
        Byte value[] = {5, 10, 200, 17, 251, 48, 29, 211, 38, 6, 101, 109, 97, 110, 116, 5};
        _kFileAtTitle = [self StringFromTurnOutData:value];
    }
    return _kFileAtTitle;
}

//: jpg
- (NSString *)notiAtData {
    if (!_notiAtData) {
        Byte value[] = {3, 11, 235, 182, 158, 66, 40, 79, 59, 63, 30, 103, 112, 106, 222};
        _notiAtData = [self StringFromTurnOutData:value];
    }
    return _notiAtData;
}

//: warm_prompt
- (NSString *)userViewTitle {
    if (!_userViewTitle) {
        Byte value[] = {11, 7, 192, 82, 253, 10, 170, 116, 112, 109, 111, 114, 112, 95, 109, 114, 97, 119, 64};
        _userViewTitle = [self StringFromTurnOutData:value];
    }
    return _userViewTitle;
}

//: #CCECFC
- (NSString *)noti_countData {
    if (!_noti_countData) {
        Byte value[] = {7, 7, 128, 148, 187, 163, 17, 67, 70, 67, 69, 67, 67, 35, 71};
        _noti_countData = [self StringFromTurnOutData:value];
    }
    return _noti_countData;
}

//: contact_tag_fragment_cancel
- (NSString *)mTableTitle {
    if (!_mTableTitle) {
        Byte value[] = {27, 6, 134, 239, 209, 215, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 129};
        _mTableTitle = [self StringFromTurnOutData:value];
    }
    return _mTableTitle;
}

//: code
- (NSString *)dreamSuccessData {
    if (!_dreamSuccessData) {
        Byte value[] = {4, 8, 39, 91, 160, 75, 161, 88, 101, 100, 111, 99, 170};
        _dreamSuccessData = [self StringFromTurnOutData:value];
    }
    return _dreamSuccessData;
}

//: /group/
- (NSString *)main_bubbleValue {
    if (!_main_bubbleValue) {
        Byte value[] = {7, 3, 211, 47, 112, 117, 111, 114, 103, 47, 5};
        _main_bubbleValue = [self StringFromTurnOutData:value];
    }
    return _main_bubbleValue;
}

//: ic_none_ContactList
- (NSString *)k_videoContent {
    if (!_k_videoContent) {
        Byte value[] = {19, 2, 116, 115, 105, 76, 116, 99, 97, 116, 110, 111, 67, 95, 101, 110, 111, 110, 95, 99, 105, 48};
        _k_videoContent = [self StringFromTurnOutData:value];
    }
    return _k_videoContent;
}

//: /team/create
- (NSString *)app_successData {
    if (!_app_successData) {
        Byte value[] = {12, 10, 193, 179, 49, 32, 48, 165, 79, 102, 101, 116, 97, 101, 114, 99, 47, 109, 97, 101, 116, 47, 140};
        _app_successData = [self StringFromTurnOutData:value];
    }
    return _app_successData;
}

//: add_friend_activity_add_friend
- (NSString *)k_buttonName {
    if (!_k_buttonName) {
        Byte value[] = {30, 5, 85, 57, 186, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 224};
        _k_buttonName = [self StringFromTurnOutData:value];
    }
    return _k_buttonName;
}

//: contact_add_friend
- (NSString *)kCommentName {
    if (!_kCommentName) {
        Byte value[] = {18, 5, 122, 119, 177, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 116, 99, 97, 116, 110, 111, 99, 122};
        _kCommentName = [self StringFromTurnOutData:value];
    }
    return _kCommentName;
}

//: invite_you_group
- (NSString *)main_addName {
    if (!_main_addName) {
        Byte value[] = {16, 7, 43, 170, 151, 54, 137, 112, 117, 111, 114, 103, 95, 117, 111, 121, 95, 101, 116, 105, 118, 110, 105, 199};
        _main_addName = [self StringFromTurnOutData:value];
    }
    return _main_addName;
}

//: setting_privacy_camera
- (NSString *)showLimitText {
    if (!_showLimitText) {
        Byte value[] = {22, 7, 223, 2, 7, 148, 35, 97, 114, 101, 109, 97, 99, 95, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 72};
        _showLimitText = [self StringFromTurnOutData:value];
    }
    return _showLimitText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThreadViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//
//#import "NTESContactSearchResultVC.h"

// __M_A_C_R_O__
//: #import "CCCContactsViewController.h"
#import "ThreadViewController.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"
//: #import "NTESContactUtilItem.h"
#import "TingChange.h"
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"
//: #import "NTESGroupedContacts.h"
#import "NameGroupedDataCollection.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomNotificationDB.h"
#import "VideoMessageDb.h"
//: #import "NTESNotificationCenter.h"
#import "ClickCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+BottomMagnitude.h"
//: #import "NTESContactAddFriendViewController.h"
#import "ShowViewController.h"
//: #import "NTESPersonalCardViewController.h"
#import "SystemViewController.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+BottomMagnitude.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactUtilCell.h"
#import "HeadViewCell.h"
//: #import "NTESContactDataCell.h"
#import "BeView.h"
//: #import "WorkContactSelectViewController.h"
#import "CompartmentViewController.h"
//: #import "NTESUserUtil.h"
#import "CellVideo.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESContactSearchViewController.h"
#import "ImageTableViewController.h"
//: #import "NTESSystemNotificationViewController.h"
#import "WashedViewController.h"
//: #import "CCCBlackListViewController.h"
#import "ColorViewController.h"
//: #import "NTESContactHeaderView.h"
#import "ManagerView.h"
//: #import "CCCContactScanViewController.h"
#import "LabViewController.h"
//: #import "NTESContactTableHeader.h"
#import "ClinicView.h"
//: #import "NTESContactGroupCell.h"
#import "GroupCompartmentContactView.h"
//: #import "CCCAddressBookManager.h"
#import "ReferenceTitleManager.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESFriendListTableViewCell.h"
#import "LightViewCell.h"
//: #import "WorkKitFileLocationHelper.h"
#import "ImageHelper.h"

//: static const NSString *contactCellUtilIcon = @"icon";
static const NSString *appFileData = @"icon";
//: static const NSString *contactCellUtilVC = @"vc";
static const NSString *noti_picTitle = @"vc";
//: static const NSString *contactCellUtilBadge = @"badge";
static const NSString *appSectionValue = @"badge";
//: static const NSString *contactCellUtilTitle = @"title";
static const NSString *mStyleName = @"title";
//: static const NSString *contactCellUtilUid = @"uid";
static const NSString *mPathData = @"uid";
//: static const NSString *contactCellUtilSelectorName = @"selName";
static const NSString *app_tapTipName = @"selName";


//: @interface CCCContactsViewController ()<NTESUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
@interface ThreadViewController ()<TextFactor,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
//: NTESContactUtilCellDelegate,
WithCount,
//: WorkContactDataCellDelegate,
CompartmentDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: NTESContactSearchDelegate> {
ContactInsertSearchDelegate> {
    //: UIRefreshControl *_refreshControl;
    UIRefreshControl *_refreshControl;
    //: NTESGroupedContacts *_contacts;
    NameGroupedDataCollection *_contacts;
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
@property (nonatomic,strong) LabView *loadingView;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation CCCContactsViewController
@implementation ThreadViewController

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
    [self onSizeData];
    //: self.advancedTeamArray = [self advancedDidFetchTeams];
    self.advancedTeamArray = [self system];
//    [self.tableView reloadData];
    //: [self loadTheView];
    [self rowRecording];
}

//: - (void)loadTheView
- (void)rowRecording
{
    //: if (_sliderIndex<=0) {
    if (_sliderIndex<=0) {

        //: if([_contacts groupCount]>0){
        if([_contacts someSuccess]>0){
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
    [self put];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.tableHeaderView = self.friendheaderView;
    self.tableView.tableHeaderView = self.friendheaderView;

    //: if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //: self.tableView.sectionIndexColor = [UIColor colorWithHexString:@"#2C3042"]; 
        self.tableView.sectionIndexColor = [UIColor ground:[TurnOutData sharedInstance].kMediaColorName]; // 索引文字颜色
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
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice heightShowStop]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice heightShowStop]-140-(49.0f))];
        //: _defView.backgroundColor = [UIColor whiteColor];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
        defImg.image = [UIImage imageNamed:[TurnOutData sharedInstance].k_videoContent];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor ground:[TurnOutData sharedInstance].userLengthData];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [WorkLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [InputRed preserve:[TurnOutData sharedInstance].noti_makeText];


    }
    //: return _defView;
    return _defView;
}

//: -(void)getGroupData{
-(void)getBackground{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[TurnOutData sharedInstance].main_bubbleValue] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[TurnOutData sharedInstance].dreamSuccessData];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            //: NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            //: for (NIMUser *user in friendList) {
            for (NIMUser *user in friendList) {
                //: NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:[TurnOutData sharedInstance].kInfoTargetContent];
                //: [friendIds addObject:dict];
                [friendIds addObject:dict];
            }


            //: NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            //: [myfriend setObject:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_friend"] forKey:@"name"];
            [myfriend setObject:[InputRed preserve:[TurnOutData sharedInstance].m_bubbleValue] forKey:[TurnOutData sharedInstance].userOldName];
            //: [myfriend setObject:friendIds forKey:@"ids"];
            [myfriend setObject:friendIds forKey:[TurnOutData sharedInstance].app_addData];
            //: NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            //: [dataArray addObject:myfriend];
            [dataArray addObject:myfriend];


            //: NSArray *data = [resultDict arrayValueForKey:@"data"];
            NSArray *data = [resultDict dateArray:[TurnOutData sharedInstance].mainButtonValue];
            //: [dataArray addObjectsFromArray:data];
            [dataArray addObjectsFromArray:data];
            //: _groupArray = dataArray;
            _groupArray = dataArray;
            //: [_tableView reloadData];
            [_tableView reloadData];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];


}

//: - (void)setUpNavItem
- (void)put
{
    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice vg_statusBarHeight]+132)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice heightShowStop]+132)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice heightShowStop]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].userShowText];
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
    _btnfriend.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].main_placeName];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[WorkLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[InputRed preserve:[TurnOutData sharedInstance].mViewTitle] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(viewFor:) forControlEvents:UIControlEventTouchUpInside];
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
    [_btngroup setTitleColor:[UIColor ground:[TurnOutData sharedInstance].appBubbleData] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[WorkLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[InputRed preserve:[TurnOutData sharedInstance].m_targetButtonText] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(viewFor:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];


    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].userAtTitle];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

}

//: - (void)handleNotice
- (void)highInputTitle
{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    WashedViewController *vc = [[WashedViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)prepareData{
- (void)onSizeData{
    //: _contacts = [[NTESGroupedContacts alloc] init];
    _contacts = [[NameGroupedDataCollection alloc] init];
}

//普通群组
//: - (NSMutableArray *)normalDidFetchTeams{
- (NSMutableArray *)image{
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
- (NSMutableArray *)system {
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
- (void)monitor{
    //: NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)digitizerType:(NSString *)teamID drogue_strong:(NSString *)teamName team:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[TurnOutData sharedInstance].show_threadContent] = currentUserId;
    //: dict[@"type"] = type;
    dict[[TurnOutData sharedInstance].user_pressName] = type;
    //: dict[@"tname"] = teamName;
    dict[[TurnOutData sharedInstance].kFileAtTitle] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[TurnOutData sharedInstance].kEndTitle] = teamID;

}

//: - (void)searchAction:(id)sender {
- (void)publication:(id)sender {
    //: NTESContactSearchViewController *vc = [[NTESContactSearchViewController alloc] init];
    ImageTableViewController *vc = [[ImageTableViewController alloc] init];
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
        id<ItemTing> contactItem = (id<ItemTing>)[_contacts fullMargin:indexPath];
        //: if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
        if ([contactItem respondsToSelector:@selector(addIndependent)] && [contactItem addIndependent].length) {
            //: SEL sel = NSSelectorFromString([contactItem selName]);
            SEL sel = NSSelectorFromString([contactItem addIndependent]);
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
            [self adHominemIn:friendId];
        }
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NIMTeam *team = itemArray[indexPath.section];
        NIMTeam *team = itemArray[indexPath.section];
        //: NIMSession *session = [self didGetSessionWithTeam:team];
        NIMSession *session = [self info:team];
        //: if (session) {
        if (session) {
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<ItemTing> contactItem = (id<ItemTing>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)info:(id)team {
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
        return [_contacts someSuccess];
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
        return [_contacts show:section];
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
           label.text = [_contacts parent:section];
           //: label.font = [UIFont systemFontOfSize:16];
           label.font = [UIFont systemFontOfSize:16];
           //: label.textColor = [UIColor colorWithHexString:@"#2C3042"];
           label.textColor = [UIColor ground:[TurnOutData sharedInstance].kMediaColorName];
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
    LightViewCell *cell = [LightViewCell messageIcon:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id contactItem = [_contacts memberOfIndex:indexPath];
        id contactItem = [_contacts fullMargin:indexPath];
        //: [cell refreshUser:contactItem];
        [cell bottom:contactItem];
    //: }else{
    }else{
        //: NIMTeam *team = _advancedTeamArray[indexPath.section];
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell refresh:team];
    }

    //: return cell;
    return cell;
}

//: - (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts titleOfGroup:section];
        return [_contacts parent:section];
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
#pragma mark - TextFactor
//: - (void)didTouchMessageButton:(NSString *)memberId
- (void)sizeButton:(NSString *)memberId
{
    //: NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NTESContactSearchDelegate
#pragma mark - ContactInsertSearchDelegate
//: - (BOOL)disableSearchTeam {
- (BOOL)disableSearchTeam {
    //: return _disableSearchTeam;
    return _disableSearchTeam;
}

//: - (BOOL)ignoreCase {
- (BOOL)contentTing {
    //: return _searchIgoreCase;
    return _searchIgoreCase;
}

//: #pragma mark - WorkContactDataCellDelegate
#pragma mark - CompartmentDelegate
//: - (void)onPressAvatar:(NSString *)memberId{
- (void)alongsed:(NSString *)memberId{
    //: [self enterPersonalCard:memberId];
    [self adHominemIn:memberId];
}

//: #pragma mark - NTESContactUtilCellDelegate
#pragma mark - WithCount
//: - (void)onPressUtilImage:(NSString *)content{
- (void)incentiveOption:(NSString *)content{

}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - NeedInfoName
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)anointExamine:(NSArray *)selectedContacts{

}

//: #pragma mark - NIMSDK Delegate
#pragma mark - NIMSDK Delegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: [self prepareData];
    [self onSizeData];
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
            [self onSizeData];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }
    }
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self refresh];
    [self inputEnable];
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: [self refresh];
    [self inputEnable];
}

//: - (void)onBlackListChanged
- (void)onBlackListChanged
{
    //: [self refresh];
    [self inputEnable];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self inputEnable];
}

//: - (void)refresh
- (void)inputEnable
{
    //: [self prepareData];
    [self onSizeData];
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
        id<ItemTing> contactItem = (id<ItemTing>)[_contacts fullMargin:indexPath];
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
- (void)adHominemIn:(NSString *)userId{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    SystemViewController *vc = [[SystemViewController alloc] initWithAdd:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)option:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    RecentMessage *config = [[RecentMessage alloc] init];
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
    //: WorkContactSelectViewController *vc = [[WorkContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc high];
}


//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice heightShowStop]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice heightShowStop]-64-(49.0f)) style:UITableViewStyleGrouped];
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
#pragma mark - SoundName
//: -(void)searchClick{
-(void)examineRead{
    //: [self searchAction:nil];
    [self publication:nil];
}

//: -(void)addFriend{
-(void)inputFriend{
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    ShowViewController *vc = [[ShowViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)newGroup{
-(void)recentColor{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self option:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

        //: [self.loadingView animationShow];
        [self.loadingView value];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self table:avater state:^(NSString *urlString) {

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
            //: option.postscript = [WorkLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [InputRed preserve:[TurnOutData sharedInstance].main_addName];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView animationWithEnableAtHand];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self digitizerType:teamId drogue_strong:option.name team:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self timeId:option.name info:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[InputRed preserve:[TurnOutData sharedInstance].mainItemData] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];
        //: }];
        }];
    //: }];
    }];
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)table:(UIImage *)image state:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image byName:CGSizeMake(375, 375)];
    //: NSString *fileName = [WorkKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [ImageHelper key:[TurnOutData sharedInstance].notiAtData];
    //: NSString *filePath = [[WorkKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[ImageHelper alongPath] stringByAppendingPathComponent:fileName];
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
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[InputRed preserve:[TurnOutData sharedInstance].mSessionTitle]
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
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[InputRed preserve:[TurnOutData sharedInstance].mSessionTitle]
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
-(void)timeId:(NSString *)groupName info:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[TurnOutData sharedInstance].userOldName] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[TurnOutData sharedInstance].app_successData] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)linkFit{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    LabViewController *vc = [[LabViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)friendNotification{
-(void)instanceWith{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    WashedViewController *vc = [[WashedViewController alloc] init];
    //: vc.filterType = @"1";
    vc.filterType = @"1";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)groupNotification{
-(void)groupNotification{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    WashedViewController *vc = [[WashedViewController alloc] init];
    //: vc.filterType = @"2";
    vc.filterType = @"2";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: -(void)blackFriendList{
-(void)infoColorTime{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    ColorViewController *vc = [[ColorViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)collectList{
-(void)amass{

}


//: -(void)sliderButtonClick:(UIButton *)sender
-(void)viewFor:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _btnfriend.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].main_placeName];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor ground:[TurnOutData sharedInstance].appBubbleData] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.friendheaderView;
        self.tableView.tableHeaderView = self.friendheaderView;

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _btngroup.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].main_placeName];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor ground:[TurnOutData sharedInstance].appBubbleData] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.groupheaderView;
        self.tableView.tableHeaderView = self.groupheaderView;
    }


    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    //: [self loadTheView];
    [self rowRecording];

}

//: - (NSString *)arrayToJSONString:(NSArray *)array {
- (NSString *)ofCell:(NSArray *)array {

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
- (void)withStandard {

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
                        LabViewController *vc = [[LabViewController alloc] init];
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
            LabViewController *vc = [[LabViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WorkLanguageManager getTextWithKey:@"warm_prompt"] message:[WorkLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[TurnOutData sharedInstance].userViewTitle] message:[InputRed preserve:[TurnOutData sharedInstance].showLimitText] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[TurnOutData sharedInstance].mTableTitle] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[TurnOutData sharedInstance].mainCompleteData] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
-(void)name{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
    [wself option:^(NSArray *uids, NSString *groupName, UIImage *avater) {
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
        //: option.postscript = [WorkLanguageManager getTextWithKey:@"invite_you_group"];
        option.postscript = [InputRed preserve:[TurnOutData sharedInstance].main_addName];
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
                DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
                //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                [self digitizerType:teamId drogue_strong:option.name team:@"1"];
                //: [wself newGroupSyncRequest:option.name teamID:teamId];
                [wself timeId:option.name info:teamId];
            //: }else{
            }else{
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[InputRed preserve:[TurnOutData sharedInstance].mainItemData] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (ZMONCustomLoadingView *)loadingView
- (LabView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[LabView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
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
        editView.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].noti_atData];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:editView];
        [_friendheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(highInputTitle)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[TurnOutData sharedInstance].noti_commentText];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor ground:[TurnOutData sharedInstance].kMediaColorName];
        //: labedit.text = [WorkLanguageManager getTextWithKey:@"notification"];
        labedit.text = [InputRed preserve:[TurnOutData sharedInstance].dream_disableValue];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"E3F4AA"];
        langView.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].k_onSuccessValue];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:langView];
        [_friendheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(inputFriend)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        langimg.image = [UIImage imageNamed:[TurnOutData sharedInstance].kCommentName];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor ground:[TurnOutData sharedInstance].kMediaColorName];
        //: lablang.text = [WorkLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
        lablang.text = [InputRed preserve:[TurnOutData sharedInstance].k_buttonName];
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
        editView.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].noti_atData];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:editView];
        [_groupheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(highInputTitle)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[TurnOutData sharedInstance].noti_commentText];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor ground:[TurnOutData sharedInstance].kMediaColorName];
        //: labedit.text = [WorkLanguageManager getTextWithKey:@"notification"];
        labedit.text = [InputRed preserve:[TurnOutData sharedInstance].dream_disableValue];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        langView.backgroundColor = [UIColor ground:[TurnOutData sharedInstance].noti_countData];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:langView];
        [_groupheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(recentColor)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_group"];
        langimg.image = [UIImage imageNamed:[TurnOutData sharedInstance].k_successTitle];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor ground:[TurnOutData sharedInstance].kMediaColorName];
        //: lablang.text = [WorkLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
        lablang.text = [InputRed preserve:[TurnOutData sharedInstance].appLengthValue];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _groupheaderView;
    return _groupheaderView;
}

//: @end
@end
