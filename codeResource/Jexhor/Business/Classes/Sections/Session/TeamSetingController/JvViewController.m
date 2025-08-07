
#import <Foundation/Foundation.h>

@interface BarrelSuspectData : NSObject

+ (instancetype)sharedInstance;

//: Transfer_group_exit
@property (nonatomic, copy) NSString *main_uniteItsText;

//: group_mute_member_list_activity_title
@property (nonatomic, copy) NSString *noti_handleValue;

//: please_choose
@property (nonatomic, copy) NSString *m_appearData;

//: activity_group_info_group_nick
@property (nonatomic, copy) NSString *k_needTitle;

//: queren
@property (nonatomic, copy) NSString *mCanContent;

//: group_edit
@property (nonatomic, copy) NSString *app_drinkingValue;

//: /team/modifyowner
@property (nonatomic, copy) NSString *notiMilkEarlMessageText;

//: activity_group_info_group_mute
@property (nonatomic, copy) NSString *dreamTextImageTitle;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *notiDeployValue;

//: icon_photo
@property (nonatomic, copy) NSString *dreamLengthValue;

//: head_default_group
@property (nonatomic, copy) NSString *m_assaultTitleData;

//: Transfer_group_ownership
@property (nonatomic, copy) NSString *kTargetValue;

//: ic_group_all
@property (nonatomic, copy) NSString *main_emergencyValue;

//: ic_group_introduction
@property (nonatomic, copy) NSString *main_journalistValue;

//: ic_group_members
@property (nonatomic, copy) NSString *k_textName;

//: activity_group_info_invite_permission
@property (nonatomic, copy) NSString *appBalanceData;

//: jpg
@property (nonatomic, copy) NSString *mainAccountingTitle;

//: ic_card_share
@property (nonatomic, copy) NSString *dreamOldValue;

//: group_info_activity_give_group
@property (nonatomic, copy) NSString *show_threadLengthPollutionData;

//: authentication
@property (nonatomic, copy) NSString *showMessageTitle;

//: 图片保存失败，请重试
@property (nonatomic, copy) NSString *mainTableCountData;

//: ic_group_transfer
@property (nonatomic, copy) NSString *kAccountEmergencyTitle;

//: Confirm_dismiss_group_chat
@property (nonatomic, copy) NSString *m_sendAtData;

//: 2C3042
@property (nonatomic, copy) NSString *main_suspectData;

//: Chat_settop
@property (nonatomic, copy) NSString *user_highlightValue;

//: ic_invite
@property (nonatomic, copy) NSString *mainNeedName;

//: modify_activity_modify_success
@property (nonatomic, copy) NSString *user_mediaValue;

//: ic_group_edit
@property (nonatomic, copy) NSString *userNameContent;

//: ic_group_top
@property (nonatomic, copy) NSString *mainJournalistVideoValue;

//: team_info_set_activity_group_tip
@property (nonatomic, copy) NSString *appUniteHandleName;

//: new_owner_id
@property (nonatomic, copy) NSString *showTargetData;

//: ic_invitee_verification
@property (nonatomic, copy) NSString *dreamThanThreadTitle;

//: queren_quit_group
@property (nonatomic, copy) NSString *app_highlightName;

//: team_info_set_activity_default_group_tip
@property (nonatomic, copy) NSString *userQuickName;

//: message_info_activity_msg_notice
@property (nonatomic, copy) NSString *mNovelData;

//: activity_group_info_group_modify_permission
@property (nonatomic, copy) NSString *appHandleHideUndertakeTitle;

//: group_info_activity_team_member
@property (nonatomic, copy) NSString *mainQuickAppearContent;

//: ic_announcement
@property (nonatomic, copy) NSString *showMilkValue;

//: activity_user_profile_clear_chat
@property (nonatomic, copy) NSString *notiThreadData;

//: activity_group_info_invite_verify
@property (nonatomic, copy) NSString *mNeedName;

//: ic_group_nick
@property (nonatomic, copy) NSString *appMustSizeText;

//: /team/modifyname
@property (nonatomic, copy) NSString *userViseData;

//: ic_identity_authentication
@property (nonatomic, copy) NSString *app_buttonData;

//: Group_name
@property (nonatomic, copy) NSString *noti_infoTitle;

//: FF483D
@property (nonatomic, copy) NSString *mainWithEndText;

//: ic_card_black
@property (nonatomic, copy) NSString *notiRowTitle;

//: activity_group_info_group_toast
@property (nonatomic, copy) NSString *main_severData;

//: /team/destory
@property (nonatomic, copy) NSString *show_afternoonText;

//: group_info_activity_exit
@property (nonatomic, copy) NSString *mJournalistData;

//: group_info_activity_jiesan
@property (nonatomic, copy) NSString *noti_uniteContent;

//: ic_modify
@property (nonatomic, copy) NSString *appTableData;

//: ic_group_notice
@property (nonatomic, copy) NSString *mainAppearValue;

//: send_group_card
@property (nonatomic, copy) NSString *k_viewTagName;

//: name
@property (nonatomic, copy) NSString *show_mediaDrugYouthName;

//: clear_history
@property (nonatomic, copy) NSString *mainFortunateTitle;

@end

@implementation BarrelSuspectData

+ (instancetype)sharedInstance {
    static BarrelSuspectData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BarrelSuspectDataToCache:(Byte *)data {
    int mustOn = data[0];
    int lengthSlice = data[1];
    for (int i = 0; i < mustOn / 2; i++) {
        int begin = lengthSlice + i;
        int end = lengthSlice + mustOn - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[lengthSlice + mustOn] = 0;
    return data + lengthSlice;
}

- (NSString *)StringFromBarrelSuspectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BarrelSuspectDataToCache:data]];
}  

//: message_info_activity_msg_notice
- (NSString *)mNovelData {
    if (!_mNovelData) {
        Byte value[] = {32, 9, 151, 22, 132, 202, 182, 209, 16, 101, 99, 105, 116, 111, 110, 95, 103, 115, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 101, 103, 97, 115, 115, 101, 109, 145};
        _mNovelData = [self StringFromBarrelSuspectData:value];
    }
    return _mNovelData;
}

//: ic_identity_authentication
- (NSString *)app_buttonData {
    if (!_app_buttonData) {
        Byte value[] = {26, 5, 240, 163, 59, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 95, 121, 116, 105, 116, 110, 101, 100, 105, 95, 99, 105, 56};
        _app_buttonData = [self StringFromBarrelSuspectData:value];
    }
    return _app_buttonData;
}

//: please_choose
- (NSString *)m_appearData {
    if (!_m_appearData) {
        Byte value[] = {13, 5, 137, 253, 81, 101, 115, 111, 111, 104, 99, 95, 101, 115, 97, 101, 108, 112, 17};
        _m_appearData = [self StringFromBarrelSuspectData:value];
    }
    return _m_appearData;
}

//: /team/modifyowner
- (NSString *)notiMilkEarlMessageText {
    if (!_notiMilkEarlMessageText) {
        Byte value[] = {17, 3, 216, 114, 101, 110, 119, 111, 121, 102, 105, 100, 111, 109, 47, 109, 97, 101, 116, 47, 99};
        _notiMilkEarlMessageText = [self StringFromBarrelSuspectData:value];
    }
    return _notiMilkEarlMessageText;
}

//: ic_group_top
- (NSString *)mainJournalistVideoValue {
    if (!_mainJournalistVideoValue) {
        Byte value[] = {12, 12, 44, 70, 210, 94, 190, 33, 252, 113, 151, 75, 112, 111, 116, 95, 112, 117, 111, 114, 103, 95, 99, 105, 13};
        _mainJournalistVideoValue = [self StringFromBarrelSuspectData:value];
    }
    return _mainJournalistVideoValue;
}

//: Transfer_group_ownership
- (NSString *)kTargetValue {
    if (!_kTargetValue) {
        Byte value[] = {24, 8, 41, 229, 210, 55, 89, 135, 112, 105, 104, 115, 114, 101, 110, 119, 111, 95, 112, 117, 111, 114, 103, 95, 114, 101, 102, 115, 110, 97, 114, 84, 196};
        _kTargetValue = [self StringFromBarrelSuspectData:value];
    }
    return _kTargetValue;
}

//: modify_activity_modify_success
- (NSString *)user_mediaValue {
    if (!_user_mediaValue) {
        Byte value[] = {30, 6, 57, 14, 167, 134, 115, 115, 101, 99, 99, 117, 115, 95, 121, 102, 105, 100, 111, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 121, 102, 105, 100, 111, 109, 183};
        _user_mediaValue = [self StringFromBarrelSuspectData:value];
    }
    return _user_mediaValue;
}

//: team_info_set_activity_default_group_tip
- (NSString *)userQuickName {
    if (!_userQuickName) {
        Byte value[] = {40, 6, 173, 238, 62, 197, 112, 105, 116, 95, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 101, 115, 95, 111, 102, 110, 105, 95, 109, 97, 101, 116, 120};
        _userQuickName = [self StringFromBarrelSuspectData:value];
    }
    return _userQuickName;
}

//: team_info_set_activity_group_tip
- (NSString *)appUniteHandleName {
    if (!_appUniteHandleName) {
        Byte value[] = {32, 8, 35, 121, 235, 47, 171, 228, 112, 105, 116, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 101, 115, 95, 111, 102, 110, 105, 95, 109, 97, 101, 116, 19};
        _appUniteHandleName = [self StringFromBarrelSuspectData:value];
    }
    return _appUniteHandleName;
}

//: group_info_activity_jiesan
- (NSString *)noti_uniteContent {
    if (!_noti_uniteContent) {
        Byte value[] = {26, 7, 10, 28, 197, 112, 188, 110, 97, 115, 101, 105, 106, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 56};
        _noti_uniteContent = [self StringFromBarrelSuspectData:value];
    }
    return _noti_uniteContent;
}

//: Transfer_group_exit
- (NSString *)main_uniteItsText {
    if (!_main_uniteItsText) {
        Byte value[] = {19, 2, 116, 105, 120, 101, 95, 112, 117, 111, 114, 103, 95, 114, 101, 102, 115, 110, 97, 114, 84, 244};
        _main_uniteItsText = [self StringFromBarrelSuspectData:value];
    }
    return _main_uniteItsText;
}

//: ic_card_black
- (NSString *)notiRowTitle {
    if (!_notiRowTitle) {
        Byte value[] = {13, 12, 186, 3, 54, 101, 204, 163, 223, 124, 136, 34, 107, 99, 97, 108, 98, 95, 100, 114, 97, 99, 95, 99, 105, 8};
        _notiRowTitle = [self StringFromBarrelSuspectData:value];
    }
    return _notiRowTitle;
}

//: /team/modifyname
- (NSString *)userViseData {
    if (!_userViseData) {
        Byte value[] = {16, 4, 28, 27, 101, 109, 97, 110, 121, 102, 105, 100, 111, 109, 47, 109, 97, 101, 116, 47, 153};
        _userViseData = [self StringFromBarrelSuspectData:value];
    }
    return _userViseData;
}

//: new_owner_id
- (NSString *)showTargetData {
    if (!_showTargetData) {
        Byte value[] = {12, 11, 254, 198, 205, 211, 47, 113, 135, 87, 192, 100, 105, 95, 114, 101, 110, 119, 111, 95, 119, 101, 110, 73};
        _showTargetData = [self StringFromBarrelSuspectData:value];
    }
    return _showTargetData;
}

//: ic_card_share
- (NSString *)dreamOldValue {
    if (!_dreamOldValue) {
        Byte value[] = {13, 6, 153, 162, 91, 23, 101, 114, 97, 104, 115, 95, 100, 114, 97, 99, 95, 99, 105, 112};
        _dreamOldValue = [self StringFromBarrelSuspectData:value];
    }
    return _dreamOldValue;
}

//: ic_group_members
- (NSString *)k_textName {
    if (!_k_textName) {
        Byte value[] = {16, 10, 210, 184, 147, 205, 131, 56, 19, 96, 115, 114, 101, 98, 109, 101, 109, 95, 112, 117, 111, 114, 103, 95, 99, 105, 190};
        _k_textName = [self StringFromBarrelSuspectData:value];
    }
    return _k_textName;
}

//: send_group_card
- (NSString *)k_viewTagName {
    if (!_k_viewTagName) {
        Byte value[] = {15, 7, 124, 1, 216, 219, 183, 100, 114, 97, 99, 95, 112, 117, 111, 114, 103, 95, 100, 110, 101, 115, 113};
        _k_viewTagName = [self StringFromBarrelSuspectData:value];
    }
    return _k_viewTagName;
}

//: group_mute_member_list_activity_title
- (NSString *)noti_handleValue {
    if (!_noti_handleValue) {
        Byte value[] = {37, 3, 105, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 114, 101, 98, 109, 101, 109, 95, 101, 116, 117, 109, 95, 112, 117, 111, 114, 103, 154};
        _noti_handleValue = [self StringFromBarrelSuspectData:value];
    }
    return _noti_handleValue;
}

//: icon_photo
- (NSString *)dreamLengthValue {
    if (!_dreamLengthValue) {
        Byte value[] = {10, 12, 122, 196, 149, 251, 205, 175, 248, 221, 234, 167, 111, 116, 111, 104, 112, 95, 110, 111, 99, 105, 97};
        _dreamLengthValue = [self StringFromBarrelSuspectData:value];
    }
    return _dreamLengthValue;
}

//: group_info_activity_team_member
- (NSString *)mainQuickAppearContent {
    if (!_mainQuickAppearContent) {
        Byte value[] = {31, 9, 140, 173, 84, 86, 253, 42, 37, 114, 101, 98, 109, 101, 109, 95, 109, 97, 101, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 116};
        _mainQuickAppearContent = [self StringFromBarrelSuspectData:value];
    }
    return _mainQuickAppearContent;
}

//: ic_invite
- (NSString *)mainNeedName {
    if (!_mainNeedName) {
        Byte value[] = {9, 12, 6, 226, 154, 156, 55, 218, 109, 80, 217, 29, 101, 116, 105, 118, 110, 105, 95, 99, 105, 195};
        _mainNeedName = [self StringFromBarrelSuspectData:value];
    }
    return _mainNeedName;
}

//: FF483D
- (NSString *)mainWithEndText {
    if (!_mainWithEndText) {
        Byte value[] = {6, 2, 68, 51, 56, 52, 70, 70, 125};
        _mainWithEndText = [self StringFromBarrelSuspectData:value];
    }
    return _mainWithEndText;
}

//: activity_group_info_group_modify_permission
- (NSString *)appHandleHideUndertakeTitle {
    if (!_appHandleHideUndertakeTitle) {
        Byte value[] = {43, 3, 149, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 121, 102, 105, 100, 111, 109, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 178};
        _appHandleHideUndertakeTitle = [self StringFromBarrelSuspectData:value];
    }
    return _appHandleHideUndertakeTitle;
}

//: jpg
- (NSString *)mainAccountingTitle {
    if (!_mainAccountingTitle) {
        Byte value[] = {3, 8, 46, 48, 197, 141, 115, 60, 103, 112, 106, 148};
        _mainAccountingTitle = [self StringFromBarrelSuspectData:value];
    }
    return _mainAccountingTitle;
}

//: activity_user_profile_clear_chat
- (NSString *)notiThreadData {
    if (!_notiThreadData) {
        Byte value[] = {32, 12, 225, 114, 109, 234, 206, 192, 111, 35, 33, 25, 116, 97, 104, 99, 95, 114, 97, 101, 108, 99, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 7};
        _notiThreadData = [self StringFromBarrelSuspectData:value];
    }
    return _notiThreadData;
}

//: group_info_activity_give_group
- (NSString *)show_threadLengthPollutionData {
    if (!_show_threadLengthPollutionData) {
        Byte value[] = {30, 6, 2, 87, 65, 241, 112, 117, 111, 114, 103, 95, 101, 118, 105, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 209};
        _show_threadLengthPollutionData = [self StringFromBarrelSuspectData:value];
    }
    return _show_threadLengthPollutionData;
}

//: activity_group_info_invite_verify
- (NSString *)mNeedName {
    if (!_mNeedName) {
        Byte value[] = {33, 7, 141, 65, 103, 35, 89, 121, 102, 105, 114, 101, 118, 95, 101, 116, 105, 118, 110, 105, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 90};
        _mNeedName = [self StringFromBarrelSuspectData:value];
    }
    return _mNeedName;
}

//: activity_group_info_group_mute
- (NSString *)dreamTextImageTitle {
    if (!_dreamTextImageTitle) {
        Byte value[] = {30, 10, 35, 5, 191, 186, 163, 158, 139, 136, 101, 116, 117, 109, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 182};
        _dreamTextImageTitle = [self StringFromBarrelSuspectData:value];
    }
    return _dreamTextImageTitle;
}

//: authentication
- (NSString *)showMessageTitle {
    if (!_showMessageTitle) {
        Byte value[] = {14, 7, 31, 210, 158, 16, 185, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 141};
        _showMessageTitle = [self StringFromBarrelSuspectData:value];
    }
    return _showMessageTitle;
}

//: clear_history
- (NSString *)mainFortunateTitle {
    if (!_mainFortunateTitle) {
        Byte value[] = {13, 5, 229, 121, 6, 121, 114, 111, 116, 115, 105, 104, 95, 114, 97, 101, 108, 99, 28};
        _mainFortunateTitle = [self StringFromBarrelSuspectData:value];
    }
    return _mainFortunateTitle;
}

//: ic_announcement
- (NSString *)showMilkValue {
    if (!_showMilkValue) {
        Byte value[] = {15, 5, 51, 112, 171, 116, 110, 101, 109, 101, 99, 110, 117, 111, 110, 110, 97, 95, 99, 105, 56};
        _showMilkValue = [self StringFromBarrelSuspectData:value];
    }
    return _showMilkValue;
}

//: ic_group_edit
- (NSString *)userNameContent {
    if (!_userNameContent) {
        Byte value[] = {13, 12, 58, 26, 182, 195, 28, 230, 156, 185, 212, 18, 116, 105, 100, 101, 95, 112, 117, 111, 114, 103, 95, 99, 105, 143};
        _userNameContent = [self StringFromBarrelSuspectData:value];
    }
    return _userNameContent;
}

//: 2C3042
- (NSString *)main_suspectData {
    if (!_main_suspectData) {
        Byte value[] = {6, 9, 121, 56, 113, 26, 122, 48, 79, 50, 52, 48, 51, 67, 50, 76};
        _main_suspectData = [self StringFromBarrelSuspectData:value];
    }
    return _main_suspectData;
}

//: activity_group_info_invite_permission
- (NSString *)appBalanceData {
    if (!_appBalanceData) {
        Byte value[] = {37, 2, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 101, 116, 105, 118, 110, 105, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 84};
        _appBalanceData = [self StringFromBarrelSuspectData:value];
    }
    return _appBalanceData;
}

//: /team/destory
- (NSString *)show_afternoonText {
    if (!_show_afternoonText) {
        Byte value[] = {13, 9, 23, 166, 16, 150, 255, 194, 12, 121, 114, 111, 116, 115, 101, 100, 47, 109, 97, 101, 116, 47, 119};
        _show_afternoonText = [self StringFromBarrelSuspectData:value];
    }
    return _show_afternoonText;
}

//: activity_group_info_group_toast
- (NSString *)main_severData {
    if (!_main_severData) {
        Byte value[] = {31, 12, 107, 116, 173, 190, 202, 67, 213, 208, 246, 37, 116, 115, 97, 111, 116, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 150};
        _main_severData = [self StringFromBarrelSuspectData:value];
    }
    return _main_severData;
}

//: ic_group_transfer
- (NSString *)kAccountEmergencyTitle {
    if (!_kAccountEmergencyTitle) {
        Byte value[] = {17, 7, 132, 202, 63, 212, 11, 114, 101, 102, 115, 110, 97, 114, 116, 95, 112, 117, 111, 114, 103, 95, 99, 105, 178};
        _kAccountEmergencyTitle = [self StringFromBarrelSuspectData:value];
    }
    return _kAccountEmergencyTitle;
}

//: Group_name
- (NSString *)noti_infoTitle {
    if (!_noti_infoTitle) {
        Byte value[] = {10, 8, 253, 248, 82, 189, 88, 42, 101, 109, 97, 110, 95, 112, 117, 111, 114, 71, 162};
        _noti_infoTitle = [self StringFromBarrelSuspectData:value];
    }
    return _noti_infoTitle;
}

//: ic_group_nick
- (NSString *)appMustSizeText {
    if (!_appMustSizeText) {
        Byte value[] = {13, 11, 155, 63, 91, 76, 225, 109, 142, 255, 4, 107, 99, 105, 110, 95, 112, 117, 111, 114, 103, 95, 99, 105, 82};
        _appMustSizeText = [self StringFromBarrelSuspectData:value];
    }
    return _appMustSizeText;
}

//: ic_modify
- (NSString *)appTableData {
    if (!_appTableData) {
        Byte value[] = {9, 10, 6, 115, 24, 121, 110, 127, 162, 68, 121, 102, 105, 100, 111, 109, 95, 99, 105, 148};
        _appTableData = [self StringFromBarrelSuspectData:value];
    }
    return _appTableData;
}

//: Chat_settop
- (NSString *)user_highlightValue {
    if (!_user_highlightValue) {
        Byte value[] = {11, 12, 114, 173, 121, 51, 209, 170, 246, 251, 6, 199, 112, 111, 116, 116, 101, 115, 95, 116, 97, 104, 67, 158};
        _user_highlightValue = [self StringFromBarrelSuspectData:value];
    }
    return _user_highlightValue;
}

//: ic_group_introduction
- (NSString *)main_journalistValue {
    if (!_main_journalistValue) {
        Byte value[] = {21, 4, 120, 185, 110, 111, 105, 116, 99, 117, 100, 111, 114, 116, 110, 105, 95, 112, 117, 111, 114, 103, 95, 99, 105, 251};
        _main_journalistValue = [self StringFromBarrelSuspectData:value];
    }
    return _main_journalistValue;
}

//: ic_invitee_verification
- (NSString *)dreamThanThreadTitle {
    if (!_dreamThanThreadTitle) {
        Byte value[] = {23, 3, 65, 110, 111, 105, 116, 97, 99, 105, 102, 105, 114, 101, 118, 95, 101, 101, 116, 105, 118, 110, 105, 95, 99, 105, 115};
        _dreamThanThreadTitle = [self StringFromBarrelSuspectData:value];
    }
    return _dreamThanThreadTitle;
}

//: group_info_activity_op_failed
- (NSString *)notiDeployValue {
    if (!_notiDeployValue) {
        Byte value[] = {29, 4, 65, 230, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 193};
        _notiDeployValue = [self StringFromBarrelSuspectData:value];
    }
    return _notiDeployValue;
}

//: queren
- (NSString *)mCanContent {
    if (!_mCanContent) {
        Byte value[] = {6, 11, 180, 35, 172, 117, 125, 198, 57, 55, 48, 110, 101, 114, 101, 117, 113, 184};
        _mCanContent = [self StringFromBarrelSuspectData:value];
    }
    return _mCanContent;
}

//: group_info_activity_exit
- (NSString *)mJournalistData {
    if (!_mJournalistData) {
        Byte value[] = {24, 8, 216, 187, 199, 130, 189, 134, 116, 105, 120, 101, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 147};
        _mJournalistData = [self StringFromBarrelSuspectData:value];
    }
    return _mJournalistData;
}

//: ic_group_all
- (NSString *)main_emergencyValue {
    if (!_main_emergencyValue) {
        Byte value[] = {12, 2, 108, 108, 97, 95, 112, 117, 111, 114, 103, 95, 99, 105, 3};
        _main_emergencyValue = [self StringFromBarrelSuspectData:value];
    }
    return _main_emergencyValue;
}

//: 图片保存失败，请重试
- (NSString *)mainTableCountData {
    if (!_mainTableCountData) {
        Byte value[] = {30, 12, 68, 93, 195, 108, 87, 217, 115, 98, 204, 117, 149, 175, 232, 141, 135, 233, 183, 175, 232, 140, 188, 239, 165, 180, 232, 177, 164, 229, 152, 173, 229, 157, 191, 228, 135, 137, 231, 190, 155, 229, 41};
        _mainTableCountData = [self StringFromBarrelSuspectData:value];
    }
    return _mainTableCountData;
}

//: Confirm_dismiss_group_chat
- (NSString *)m_sendAtData {
    if (!_m_sendAtData) {
        Byte value[] = {26, 11, 217, 229, 174, 115, 5, 100, 229, 82, 64, 116, 97, 104, 99, 95, 112, 117, 111, 114, 103, 95, 115, 115, 105, 109, 115, 105, 100, 95, 109, 114, 105, 102, 110, 111, 67, 19};
        _m_sendAtData = [self StringFromBarrelSuspectData:value];
    }
    return _m_sendAtData;
}

//: group_edit
- (NSString *)app_drinkingValue {
    if (!_app_drinkingValue) {
        Byte value[] = {10, 2, 116, 105, 100, 101, 95, 112, 117, 111, 114, 103, 232};
        _app_drinkingValue = [self StringFromBarrelSuspectData:value];
    }
    return _app_drinkingValue;
}

//: name
- (NSString *)show_mediaDrugYouthName {
    if (!_show_mediaDrugYouthName) {
        Byte value[] = {4, 5, 43, 12, 230, 101, 109, 97, 110, 71};
        _show_mediaDrugYouthName = [self StringFromBarrelSuspectData:value];
    }
    return _show_mediaDrugYouthName;
}

//: activity_group_info_group_nick
- (NSString *)k_needTitle {
    if (!_k_needTitle) {
        Byte value[] = {30, 6, 97, 72, 11, 184, 107, 99, 105, 110, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 4};
        _k_needTitle = [self StringFromBarrelSuspectData:value];
    }
    return _k_needTitle;
}

//: queren_quit_group
- (NSString *)app_highlightName {
    if (!_app_highlightName) {
        Byte value[] = {17, 12, 104, 249, 208, 190, 233, 56, 69, 69, 247, 55, 112, 117, 111, 114, 103, 95, 116, 105, 117, 113, 95, 110, 101, 114, 101, 117, 113, 86};
        _app_highlightName = [self StringFromBarrelSuspectData:value];
    }
    return _app_highlightName;
}

//: head_default_group
- (NSString *)m_assaultTitleData {
    if (!_m_assaultTitleData) {
        Byte value[] = {18, 7, 8, 66, 210, 224, 66, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 20};
        _m_assaultTitleData = [self StringFromBarrelSuspectData:value];
    }
    return _m_assaultTitleData;
}

//: ic_group_notice
- (NSString *)mainAppearValue {
    if (!_mainAppearValue) {
        Byte value[] = {15, 10, 80, 32, 195, 206, 44, 254, 48, 26, 101, 99, 105, 116, 111, 110, 95, 112, 117, 111, 114, 103, 95, 99, 105, 110};
        _mainAppearValue = [self StringFromBarrelSuspectData:value];
    }
    return _mainAppearValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  JvViewController.m
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAdvancedTeamCardViewController.h"
#import "JvViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "CompartmentViewController.h"
//: #import "CCCTeamMemberListViewController.h"
#import "OnenseViewController.h"
//: #import "FFFTeamMuteMemberListViewController.h"
#import "ActivityViewController.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "OnViewController.h"
//: #import "FFFTeamCardRowItem.h"
#import "CardItem.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTeamCardMemberItem.h"
#import "MessageItem.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"
//: #import "FFFTeamCardHeaderView.h"
#import "FrontwardView.h"
//: #import "FFFTeamListDataManager.h"
#import "ShowManager.h"
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "FFFTeamHelper.h"
#import "NameSendStyle.h"
//: #import "FFFTeamIntroduceViewController.h"
#import "RedViewController.h"
//: #import "ZMONSetGroupNameView.h"
#import "ImageTingView.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "ActivityView.h"
//: #import "ZMONAlartView.h"
#import "UncoloredView.h"
//: #import "FFFGroupAvatarViewController.h"
#import "TextViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "SameViewController.h"
//: #import "TeamMemberNormalViewController.h"
#import "VisualImageViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "ViewLine.h"
//: #import "NTESShareCardAttachment.h"
#import "InputAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "ManagerViewController.h"
//: #import "NSSetAvater.h"
#import "InfoView.h"

//: @interface FFFAdvancedTeamCardViewController ()<FFFTeamMemberListCellActionDelegate,
@interface JvViewController ()<FrameThread,
//: NIMContactSelectDelegate,
NeedInfoName,
//: NIMTeamSwitchProtocol,
TingThread,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: FFFTeamCardHeaderViewDelegate,
OrbitDelegate,
//: NIMTeamAnnouncementListVCDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
VideoSessionInterval,ViewMessageName,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,strong) FFFTeamCardHeaderView *headerView;
@property (nonatomic,strong) FrontwardView *headerView;

//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @property (nonatomic, strong) UILabel *introduce;
@property (nonatomic, strong) UILabel *introduce;

//: @property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *footView;
//: @property (nonatomic, strong) ZMONSetGroupNameView *groupnameView;
@property (nonatomic, strong) ImageTingView *groupnameView;
//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) ActivityView *groupNickNameView;
//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) UncoloredView *groupAlartView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) InfoView *aleartView;

//: @end
@end

//: @implementation FFFAdvancedTeamCardViewController
@implementation JvViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)reloadData {
- (void)number {
    //: [super reloadData];
    [super number];
}

//: - (void)didBuildTeamSwitchCell:(FFFTeamSwitchTableViewCell *)cell {
- (void)withChange:(KeyStyleView *)cell {
    //: cell.switchDelegate = self;
    cell.switchDelegate = self;
}

//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell {
- (void)cell:(FixingViewCell *)cell {
    //: cell.delegate = self;
    cell.delegate = self;
    //: cell.disableInvite = ![FFFKitUtil canInviteMemberToTeam:self.teamListManager.myTeamInfo];
    cell.disableInvite = ![WantUtil translate:self.teamListManager.myTeamInfo];
    //: NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    //: for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.members.count) ? (cell.maxShowMemberCount) : (self.teamListManager.members.count)); i++) {
    for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.pressComplete.count) ? (cell.maxShowMemberCount) : (self.teamListManager.pressComplete.count)); i++) {
        //: FFFTeamCardMemberItem *obj = self.teamListManager.members[i];
        MessageItem *obj = self.teamListManager.pressComplete[i];
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = self.teamListManager.session;
        option.session = self.teamListManager.nameScale;
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:obj.userId option:option];
        ConfirmationInfo *info = [[MessageContent secretResolution] recent:obj.userId blue:option];

        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[kTeamMember] = obj;
        dic[dreamObjectFormatName] = obj;
        //: dic[kTeamMemberInfo] = info;
        dic[kCommentData] = info;
        //: [memberInfos addObject:dic];
        [memberInfos addObject:dic];

    }
    //: cell.infos = memberInfos;
    cell.infos = memberInfos;
}

//: #pragma mark - Data
#pragma mark - Data
//: - (NSArray<NSArray<FFFTeamCardRowItem *> *> *)buildBodyData{
- (NSArray<NSArray<CardItem *> *> *)allow{
    //: NSArray *ret = nil;
    NSArray *ret = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: BOOL canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    BOOL canEdit = [WantUtil random:self.teamListManager.myTeamInfo];
    //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    //: BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
    BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;

    //: FFFTeamCardRowItem *teamShareCart = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamShareCart = [[CardItem alloc] init];
    //: teamShareCart.title = [FFFLanguageManager getTextWithKey:@"send_group_card"];
    teamShareCart.title = [InputRed preserve:[BarrelSuspectData sharedInstance].k_viewTagName];
    //: teamShareCart.subTitle = self.teamListManager.team.teamName;
    teamShareCart.subTitle = self.teamListManager.team.teamName;
    //: teamShareCart.action = @selector(sendGroupCart);
    teamShareCart.action = @selector(pinValueCart);
    //: teamShareCart.rowHeight = 50.f;
    teamShareCart.rowHeight = 50.f;
    //: teamShareCart.type = TeamCardRowItemTypeCommon;
    teamShareCart.type = TeamCardRowItemTypeCommon;
//    teamShareCart.actionDisabled = !canEdit;
    //: teamShareCart.img = [UIImage imageNamed:@"ic_card_share"];
    teamShareCart.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].dreamOldValue];

    //: FFFTeamCardRowItem *teamMembers = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamMembers = [[CardItem alloc] init];
    //: teamMembers.title = [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    teamMembers.title = [InputRed preserve:[BarrelSuspectData sharedInstance].mainQuickAppearContent];
    //: teamMembers.subTitle = self.teamListManager.team.teamName;
    teamMembers.subTitle = self.teamListManager.team.teamName;
    //: teamMembers.action = @selector(enterMemberCard);
    teamMembers.action = @selector(skimOver);
    //: teamMembers.rowHeight = 50.f;
    teamMembers.rowHeight = 50.f;
    //: teamMembers.type = TeamCardRowItemTypeCommon;
    teamMembers.type = TeamCardRowItemTypeCommon;
    //: teamMembers.actionDisabled = !self.canMemberInfo;
    teamMembers.actionDisabled = !self.canMemberInfo;
    //: teamMembers.img = [UIImage imageNamed:@"ic_group_members"];
    teamMembers.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].k_textName];

    //: FFFTeamCardRowItem *teamAnnoucement = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamAnnoucement = [[CardItem alloc] init];
    //: teamAnnoucement.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    teamAnnoucement.title = [InputRed preserve:[BarrelSuspectData sharedInstance].main_severData];
    //: teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    //: teamAnnoucement.action = @selector(updateTeamAnnouncement);
    teamAnnoucement.action = @selector(threadOption);
    //: teamAnnoucement.rowHeight = 50.f;
    teamAnnoucement.rowHeight = 50.f;
    //: teamAnnoucement.type = TeamCardRowItemTypeCommon;
    teamAnnoucement.type = TeamCardRowItemTypeCommon;
//    teamAnnoucement.actionDisabled = !canEdit;
    //: teamAnnoucement.img = [UIImage imageNamed:@"ic_announcement"];
    teamAnnoucement.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].showMilkValue];

    //: FFFTeamCardRowItem *teamName = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamName = [[CardItem alloc] init];
    //: teamName.title = [FFFLanguageManager getTextWithKey:@"Group_name"];
    teamName.title = [InputRed preserve:[BarrelSuspectData sharedInstance].noti_infoTitle];
    //: teamName.subTitle = self.teamListManager.team.teamName;
    teamName.subTitle = self.teamListManager.team.teamName;
    //: teamName.action = @selector(updateTeamName);
    teamName.action = @selector(nameExtra);
    //: teamName.rowHeight = 50.f;
    teamName.rowHeight = 50.f;
    //: teamName.type = TeamCardRowItemTypeCommon;
    teamName.type = TeamCardRowItemTypeCommon;
    //: teamName.actionDisabled = !canEdit;
    teamName.actionDisabled = !canEdit;
    //: teamName.img = [UIImage imageNamed:@"ic_group_edit"];
    teamName.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].userNameContent];


    //: FFFTeamCardRowItem *teamNick = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamNick = [[CardItem alloc] init];
    //: teamNick.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_nick"];
    teamNick.title = [InputRed preserve:[BarrelSuspectData sharedInstance].k_needTitle];
    //: teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    //: teamNick.action = @selector(updateTeamNick);
    teamNick.action = @selector(extraIndex);
    //: teamNick.rowHeight = 50.f;
    teamNick.rowHeight = 50.f;
    //: teamNick.type = TeamCardRowItemTypeCommon;
    teamNick.type = TeamCardRowItemTypeCommon;
    //: teamNick.img = [UIImage imageNamed:@"ic_group_nick"];
    teamNick.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].appMustSizeText];

    //: FFFTeamCardRowItem *teamIntro = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamIntro = [[CardItem alloc] init];
    //: teamIntro.title = [FFFLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
    teamIntro.title = [InputRed preserve:[BarrelSuspectData sharedInstance].appUniteHandleName];
    //: teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [FFFLanguageManager getTextWithKey:@"team_info_set_activity_default_group_tip"] : @"");
    teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [InputRed preserve:[BarrelSuspectData sharedInstance].userQuickName] : @"");
    //: teamIntro.action = @selector(updateTeamIntro);
    teamIntro.action = @selector(eigenvalueSession);
    //: teamIntro.rowHeight = 50.f;
    teamIntro.rowHeight = 50.f;
    //: teamIntro.type = TeamCardRowItemTypeCommon;
    teamIntro.type = TeamCardRowItemTypeCommon;
    //: teamIntro.actionDisabled = !canEdit;
    teamIntro.actionDisabled = !canEdit;
    //: teamIntro.img = [UIImage imageNamed:@"ic_group_introduction"];
    teamIntro.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].main_journalistValue];

//    CardItem *teamAnnouncement = [[CardItem alloc] init];
//    teamAnnouncement.title = @"群公告".nim_localized;
//    teamAnnouncement.subTitle = @"点击查看群公告".nim_localized;
//    teamAnnouncement.action = @selector(updateTeamAnnouncement);
//    teamAnnouncement.rowHeight = 50.f;
//    teamAnnouncement.type   = TeamCardRowItemTypeCommon;
//    teamAnnouncement.img = [UIImage imageNamed:@"ic_announcement"];

    //: BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    //: FFFTeamCardRowItem *teamMute = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamMute = [[CardItem alloc] init];
    //: teamMute.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_mute"];
    teamMute.title = [InputRed preserve:[BarrelSuspectData sharedInstance].dreamTextImageTitle];
    //: teamMute.switchOn = inAllMuteMode;
    teamMute.switchOn = inAllMuteMode;
//    teamMute.subTitle = [NameSendStyle teamMuteText:inAllMuteMode];
    //: teamMute.rowHeight = 50.f;
    teamMute.rowHeight = 50.f;
    //: teamMute.type = TeamCardRowItemTypeSwitch;
    teamMute.type = TeamCardRowItemTypeSwitch;
    //: teamMute.optionItems = [FFFTeamHelper teamMuteItemsWithSeleced:inAllMuteMode];
    teamMute.optionItems = [NameSendStyle cellSeleced:inAllMuteMode];
    //: teamMute.actionDisabled = !canEdit;
    teamMute.actionDisabled = !canEdit;
    //: teamMute.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    teamMute.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamMute:[item.value integerValue]];
        [weakSelf image:[item.value integerValue]];
    //: };
    };
    //: teamMute.identify = NIMTeamCardSwithCellTypeMute;
    teamMute.identify = NIMTeamCardSwithCellTypeMute;
    //: teamMute.img = [UIImage imageNamed:@"ic_group_all"];
    teamMute.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].main_emergencyValue];

    //: FFFTeamCardRowItem *teamMuteList = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamMuteList = [[CardItem alloc] init];
    //: teamMuteList.title = [FFFLanguageManager getTextWithKey:@"group_mute_member_list_activity_title"];
    teamMuteList.title = [InputRed preserve:[BarrelSuspectData sharedInstance].noti_handleValue];
    //: teamMuteList.rowHeight = 50.f;
    teamMuteList.rowHeight = 50.f;
    //: teamMuteList.type = TeamCardRowItemTypeCommon;
    teamMuteList.type = TeamCardRowItemTypeCommon;
    //: teamMuteList.action = @selector(enterMuteList);
    teamMuteList.action = @selector(marginList);
    //: teamMuteList.img = [UIImage imageNamed:@"ic_card_black"];
    teamMuteList.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].notiRowTitle];

    //: FFFTeamCardRowItem *teamNotify = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamNotify = [[CardItem alloc] init];
    //: teamNotify.title = [FFFLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
    teamNotify.title = [InputRed preserve:[BarrelSuspectData sharedInstance].mNovelData];//@"消息提醒".nim_localized;
    //: teamNotify.subTitle = [FFFTeamHelper notifyStateText:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.subTitle = [NameSendStyle quickWith:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.rowHeight = 50.f;
    teamNotify.rowHeight = 50.f;
    //: teamNotify.type = TeamCardRowItemTypeSelected;
    teamNotify.type = TeamCardRowItemTypeSelected;
    //: teamNotify.optionItems = [FFFTeamHelper notifyStateItemsWithSeleced:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.optionItems = [NameSendStyle with:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    teamNotify.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateNotifiyState:[item.value integerValue]];
        [weakSelf textIn:[item.value integerValue]];
    //: };
    };
    //: teamNotify.img = [UIImage imageNamed:@"ic_group_notice"];
    teamNotify.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].mainAppearValue];


    //: FFFTeamCardRowItem *itemAuth = [[FFFTeamCardRowItem alloc] init];
    CardItem *itemAuth = [[CardItem alloc] init];
    //: itemAuth.title = [FFFLanguageManager getTextWithKey:@"authentication"];
    itemAuth.title = [InputRed preserve:[BarrelSuspectData sharedInstance].showMessageTitle];
    //: itemAuth.subTitle = [FFFTeamHelper jonModeText:self.teamListManager.team.joinMode];
    itemAuth.subTitle = [NameSendStyle tutorial:self.teamListManager.team.joinMode];
    //: itemAuth.actionDisabled = !canEdit;
    itemAuth.actionDisabled = !canEdit;
    //: itemAuth.rowHeight = 50.f;
    itemAuth.rowHeight = 50.f;
    //: itemAuth.type = TeamCardRowItemTypeSelected;
    itemAuth.type = TeamCardRowItemTypeSelected;
    //: itemAuth.optionItems = [FFFTeamHelper joinModeItemsWithSeleced:self.teamListManager.team.joinMode];
    itemAuth.optionItems = [NameSendStyle shouldSeleced:self.teamListManager.team.joinMode];
    //: itemAuth.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemAuth.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didupdateTeamJoinMode:[item.value integerValue]];
        [weakSelf addUp:[item.value integerValue]];
    //: };
    };
    //: itemAuth.img = [UIImage imageNamed:@"ic_identity_authentication"];
    itemAuth.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].app_buttonData];

    //: FFFTeamCardRowItem *itemInvite = [[FFFTeamCardRowItem alloc] init];
    CardItem *itemInvite = [[CardItem alloc] init];
    //: itemInvite.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_invite_permission"];
    itemInvite.title = [InputRed preserve:[BarrelSuspectData sharedInstance].appBalanceData];
    //: itemInvite.subTitle = [FFFTeamHelper InviteModeText:self.teamListManager.team.inviteMode];
    itemInvite.subTitle = [NameSendStyle color:self.teamListManager.team.inviteMode];
    //: itemInvite.actionDisabled = !canEdit;
    itemInvite.actionDisabled = !canEdit;
    //: itemInvite.rowHeight = 50.f;
    itemInvite.rowHeight = 50.f;
    //: itemInvite.type = TeamCardRowItemTypeSelected;
    itemInvite.type = TeamCardRowItemTypeSelected;
    //: itemInvite.optionItems = [FFFTeamHelper InviteModeItemsWithSeleced:self.teamListManager.team.inviteMode];
    itemInvite.optionItems = [NameSendStyle priceTag:self.teamListManager.team.inviteMode];
    //: itemInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInviteMode:[item.value integerValue]];
        [weakSelf dateBarMode:[item.value integerValue]];
    //: };
    };
    //: itemInvite.img = [UIImage imageNamed:@"ic_invite"];
    itemInvite.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].mainNeedName];

    //: FFFTeamCardRowItem *itemUpdateInfo = [[FFFTeamCardRowItem alloc] init];
    CardItem *itemUpdateInfo = [[CardItem alloc] init];
    //: itemUpdateInfo.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_modify_permission"];
    itemUpdateInfo.title = [InputRed preserve:[BarrelSuspectData sharedInstance].appHandleHideUndertakeTitle];
    //: itemUpdateInfo.subTitle = [FFFTeamHelper updateInfoModeText:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.subTitle = [NameSendStyle image:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.actionDisabled = !canEdit;
    itemUpdateInfo.actionDisabled = !canEdit;
    //: itemUpdateInfo.rowHeight = 50.f;
    itemUpdateInfo.rowHeight = 50.f;
    //: itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    //: itemUpdateInfo.optionItems = [FFFTeamHelper updateInfoModeItemsWithSeleced:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.optionItems = [NameSendStyle table:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemUpdateInfo.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInfoMode:[item.value integerValue]];
        [weakSelf cellBlue:[item.value integerValue]];
    //: };
    };
    //: itemUpdateInfo.img = [UIImage imageNamed:@"ic_modify"];
    itemUpdateInfo.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].appTableData];

    //: FFFTeamCardRowItem *itemBeInvite = [[FFFTeamCardRowItem alloc] init];
    CardItem *itemBeInvite = [[CardItem alloc] init];
    //: itemBeInvite.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_invite_verify"];
    itemBeInvite.title = [InputRed preserve:[BarrelSuspectData sharedInstance].mNeedName];
    //: itemBeInvite.subTitle = [FFFTeamHelper beInviteModeText:self.teamListManager.team.beInviteMode];
    itemBeInvite.subTitle = [NameSendStyle content:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.actionDisabled = !canEdit;
    itemBeInvite.actionDisabled = !canEdit;
    //: itemBeInvite.rowHeight = 50.f;
    itemBeInvite.rowHeight = 50.f;
    //: itemBeInvite.type = TeamCardRowItemTypeSelected;
    itemBeInvite.type = TeamCardRowItemTypeSelected;
    //: itemBeInvite.optionItems = [FFFTeamHelper beInviteModeItemsWithSeleced:self.teamListManager.team.beInviteMode];
    itemBeInvite.optionItems = [NameSendStyle read:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemBeInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamBeInviteMode:[item.value integerValue]];
        [weakSelf invite:[item.value integerValue]];
    //: };
    };
    //: itemBeInvite.img = [UIImage imageNamed:@"ic_invitee_verification"];
    itemBeInvite.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].dreamThanThreadTitle];

    //: FFFTeamCardRowItem *itemTop = [[FFFTeamCardRowItem alloc] init];
    CardItem *itemTop = [[CardItem alloc] init];
    //: itemTop.title = [FFFLanguageManager getTextWithKey:@"Chat_settop"];
    itemTop.title = [InputRed preserve:[BarrelSuspectData sharedInstance].user_highlightValue];
    //: itemTop.switchOn = self.option.isTop;
    itemTop.switchOn = self.option.isTop;
    //: itemTop.rowHeight = 50.f;
    itemTop.rowHeight = 50.f;
    //: itemTop.type = TeamCardRowItemTypeSwitch;
    itemTop.type = TeamCardRowItemTypeSwitch;
    //: itemTop.identify = NIMTeamCardSwithCellTypeTop;
    itemTop.identify = NIMTeamCardSwithCellTypeTop;
    //: itemTop.img = [UIImage imageNamed:@"ic_group_top"];
    itemTop.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].mainJournalistVideoValue];

//        CardItem *itemQuit = [[CardItem alloc] init];
//        itemQuit.title = @"退出高级群".nim_localized;
//        itemQuit.action = @selector(quitTeam);
//        itemQuit.rowHeight = 50.f;
//        itemQuit.type   = TeamCardRowItemTypeRedButton;
//    itemQuit.img = [UIImage imageNamed:@"ic_announcement"];

        //: FFFTeamCardRowItem *itemDismiss = [[FFFTeamCardRowItem alloc] init];
        CardItem *itemDismiss = [[CardItem alloc] init];
        //: itemDismiss.title = [FFFLanguageManager getTextWithKey:@"group_info_activity_jiesan"];
        itemDismiss.title = [InputRed preserve:[BarrelSuspectData sharedInstance].noti_uniteContent];
        //: itemDismiss.action = @selector(dismissTeam);
        itemDismiss.action = @selector(pushAsideThroughUnitTeam);
        //: itemDismiss.rowHeight = 50.f;
        itemDismiss.rowHeight = 50.f;
        //: itemDismiss.type = TeamCardRowItemTypeRedButton;
        itemDismiss.type = TeamCardRowItemTypeRedButton;
    //: itemDismiss.img = [UIImage imageNamed:@"ic_announcement"];
    itemDismiss.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].showMilkValue];

    //: FFFTeamCardRowItem *teamChange = [[FFFTeamCardRowItem alloc] init];
    CardItem *teamChange = [[CardItem alloc] init];
    //: teamChange.title = [FFFLanguageManager getTextWithKey:@"Transfer_group_ownership"];
    teamChange.title = [InputRed preserve:[BarrelSuspectData sharedInstance].kTargetValue];
    //: teamChange.rowHeight = 50.f;
    teamChange.rowHeight = 50.f;
    //: teamChange.type = TeamCardRowItemTypeCommon;
    teamChange.type = TeamCardRowItemTypeCommon;
    //: teamChange.action = @selector(onMore);
    teamChange.action = @selector(nameFor);
    //: teamChange.img = [UIImage imageNamed:@"ic_group_transfer"];
    teamChange.img = [UIImage imageNamed:[BarrelSuspectData sharedInstance].kAccountEmergencyTitle];


    //: if (isOwner) {
    if (isOwner) {
        //: ret = @[
        ret = @[
                  //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  //: @[teamMuteList,teamMute,itemTop],
                  @[teamMuteList,teamMute,itemTop],
                 //: ];
                 ];
    //: } else if (isManager){
    } else if (isManager){
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            //: @[teamMuteList,teamMute,itemTop],
            @[teamMuteList,teamMute,itemTop],
              //: ];
              ];
    //: } else {
    } else {
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify],
            @[teamNotify],
            //: @[itemTop],
            @[itemTop],
               //: ];
               ];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Refresh
#pragma mark - Refresh
//: - (void)reloadTableViewData {
- (void)empty {
    //: self.datas = [self buildBodyData];
    self.datas = [self allow];
    //: self.tableView.tableHeaderView = self.userView;
    self.tableView.tableHeaderView = self.userView;
    //: self.tableView.tableFooterView = self.footView;
    self.tableView.tableFooterView = self.footView;
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)sendGroupCart
- (void)pinValueCart
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    InputAttachment *attachment = [[InputAttachment alloc] init];
    //: attachment.title = self.teamListManager.team.teamName;
    attachment.title = self.teamListManager.team.teamName;
    //: attachment.type = @"1";
    attachment.type = @"1";
    //: attachment.personCardId = self.teamListManager.team.teamId;
    attachment.personCardId = self.teamListManager.team.teamId;
    //: attachment.content = @"";
    attachment.content = @"";
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [ViewLine locationBottom:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    ManagerViewController *vc = [[ManagerViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onMore{
- (void)nameFor{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *action0 = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_give_group"]//@"转让群".nim_localized
    UIAlertAction *action0 = [UIAlertAction actionWithTitle:[InputRed preserve:[BarrelSuspectData sharedInstance].show_threadLengthPollutionData]//@"转让群".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:NO];
        [weakSelf withLeave:NO];
    //: }];
    }];

    //: UIAlertAction *action1 = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"Transfer_group_exit"] //@"转让群并退出".nim_localized
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:[InputRed preserve:[BarrelSuspectData sharedInstance].main_uniteItsText] //@"转让群并退出".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:YES];
        [weakSelf withLeave:YES];
    //: }];
    }];

    //: UIAlertController *alert = [self makeAlertSheetWithTitle:[FFFLanguageManager getTextWithKey:@"please_choose"]//@"请操作".nim_localized
    UIAlertController *alert = [self astatine:[InputRed preserve:[BarrelSuspectData sharedInstance].m_appearData]//@"请操作".nim_localized
                                                     //: actions:@[action0, action1]];
                                                     area:@[action0, action1]];
    //: [self showAlert:alert];
    [self bringHome:alert];
}

//- (void)onTouchAvatar {
//    if(![WantUtil canEditTeamInfo:self.teamListManager.myTeamInfo])
//        return ;
//    __weak typeof(self) weakSelf = self;
//    UIAlertAction *action0 = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypeCamera];
//    }];
//    
//    UIAlertAction *action1 = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypePhotoLibrary];
//    }];
//    
//    UIAlertController *alert = [self makeAlertSheetWithTitle:LangKey(@"set_group_avater")
//                                                     actions:@[action0, action1]];
//    [self showAlert:alert];
//}

//: - (void)updateTeamName{
- (void)nameExtra{

    //: [self.view addSubview:self.groupnameView];
    [self.view addSubview:self.groupnameView];
    //: [self.groupnameView reloadWithNickname:self.teamListManager.team.teamName];
    [self.groupnameView sub:self.teamListManager.team.teamName];
    //: [self.groupnameView animationShow];
    [self.groupnameView cleanShow];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupnameView.speiceBackBlock = ^(NSString *groupName){
        self.groupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamName:groupName];
            [self bubble:groupName];

            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: dict[@"id"] = self.teamListManager.team.teamId;
            dict[@"id"] = self.teamListManager.team.teamId;
            //: dict[@"name"] = emptyString(groupName);
            dict[[BarrelSuspectData sharedInstance].show_mediaDrugYouthName] = emptyString(groupName);
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyname"] params:dict isShow:NO success:^(id responseObject) {
            [TitleManager exhibitBackground:[NSString stringWithFormat:[BarrelSuspectData sharedInstance].userViseData] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
                //: [self reloadData];
                [self number];
                //: self.accountNickname.text = groupName;
                self.accountNickname.text = groupName;
            //: } failed:^(id responseObject, NSError *error) {
            } jump:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupnameView animationClose];
            [self.groupnameView animationWithEnableAtHand];
        //: };
        };

}

//: - (void)updateTeamNick
- (void)extraIndex
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView bringHome];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamNick:Name];
            [self belowMenu:Name];
            //: [self.groupNickNameView animationClose];
            [self.groupNickNameView animationWithEnableAtHand];
        //: };
        };
}

//: - (void)updateTeamIntro
- (void)eigenvalueSession
{
    //: FFFTeamIntroduceViewController *vc = [[FFFTeamIntroduceViewController alloc] init];
    RedViewController *vc = [[RedViewController alloc] init];
    //: vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    //: vc.canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    vc.canEdit = [WantUtil random:self.teamListManager.myTeamInfo];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: vc.speiceBackBlock = ^(NSString *Introduce){
    vc.speiceBackBlock = ^(NSString *Introduce){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self didUpdateTeamIntro:Introduce];
        [self team:Introduce];

        //: _introduce.text = Introduce;
        _introduce.text = Introduce;
    //: };
    };
}

//: - (void)updateTeamAnnouncement{
- (void)threadOption{
    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
    TeamStatus *option = [[TeamStatus alloc] init];
    //: option.canCreateAnnouncement = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    option.canCreateAnnouncement = [WantUtil random:self.teamListManager.myTeamInfo];
    //: option.announcement = self.teamListManager.team.announcement;
    option.announcement = self.teamListManager.team.announcement;
    //: option.nick = self.teamListManager.myTeamInfo.nickname;
    option.nick = self.teamListManager.myTeamInfo.nickname;
    //: option.team = self.teamListManager.team;
    option.team = self.teamListManager.team;

    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
    OnViewController *vc = [[OnViewController alloc] initWithManagerPressedDate:option];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)quitTeam {
- (void)toolGenerate {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"queren_quit_group"] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[InputRed preserve:[BarrelSuspectData sharedInstance].app_highlightName] preferredStyle:UIAlertControllerStyleAlert];
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"queren"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[InputRed preserve:[BarrelSuspectData sharedInstance].mCanContent] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didQuitTeam];
        [weakSelf shouldColor];
    //: }];
    }];
    //: [alert addAction:sure];
    [alert addAction:sure];
    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self key]];
    //: [self showAlert:alert];
    [self bringHome:alert];
}

//: - (void)dismissTeam {
- (void)pushAsideThroughUnitTeam {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"Confirm_dismiss_group_chat"]];
    [self.groupAlartView pathTextname:[InputRed preserve:[BarrelSuspectData sharedInstance].m_sendAtData]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView name];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didDismissTeam];
            [self dismissInLittleLeagueTeam];
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/destory"] params:@{@"id":self.teamListManager.team.teamId} isShow:NO success:^(id responseObject) {
            [TitleManager exhibitBackground:[NSString stringWithFormat:[BarrelSuspectData sharedInstance].show_afternoonText] queryedBlockOf:@{@"id":self.teamListManager.team.teamId} managerToObject:NO presentResponseSuccess:^(id responseObject) {

            //: } failed:^(id responseObject, NSError *error) {
            } jump:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView animationWithEnableAtHand];
        //: };
        };
}

//: - (void)enterMemberCard{
- (void)skimOver{

    //: if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: CCCTeamMemberListViewController *vc = [[CCCTeamMemberListViewController alloc] initWithDataSource:self.teamListManager];
        OnenseViewController *vc = [[OnenseViewController alloc] initWithName:self.teamListManager];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }else{
    }else{
        //: TeamMemberNormalViewController *vc = [[TeamMemberNormalViewController alloc]init];
        VisualImageViewController *vc = [[VisualImageViewController alloc]init];
        //: vc.teamListManager = self.teamListManager;
        vc.teamListManager = self.teamListManager;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)enterMuteList
- (void)marginList
{
    //: FFFTeamMuteMemberListViewController *vc = [[FFFTeamMuteMemberListViewController alloc] init];
    ActivityViewController *vc = [[ActivityViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - NIMTeamSwitchProtocol
#pragma mark - TingThread
//: - (void)cell:(FFFTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on{
- (void)successBy:(KeyStyleView *)cell line:(BOOL)on{
    //: if (cell.identify == NIMTeamCardSwithCellTypeTop) {
    if (cell.identify == NIMTeamCardSwithCellTypeTop) {
        //: if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetTop:)]) {
        if ([self.delegate respondsToSelector:@selector(showwed:)]) {
            //: [self.delegate NIMTeamCardVCDidSetTop:on];
            [self.delegate showwed:on];
        }
    }
    //: if (cell.identify == NIMTeamCardSwithCellTypeMute) {
    if (cell.identify == NIMTeamCardSwithCellTypeMute) {
//        if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetMute:)]) {
//            [self.delegate NIMTeamCardVCDidSetMute:on];
//        }
//        [self didUpdateTeamMute:on];
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:on
        [[NIMSDK sharedSDK].teamManager updateMuteState:on
                                                 //: inTeam:self.teamListManager.team.teamId
                                                 inTeam:self.teamListManager.team.teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [InputRed preserve:[BarrelSuspectData sharedInstance].user_mediaValue];
            //: }else{
            }else{
                //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [InputRed preserve:[BarrelSuspectData sharedInstance].notiDeployValue];
            }
            //: [self showToastMsg:msg];
            [self textTag:msg];
        //: }];
        }];
    }
}

//: #pragma mark - NIMTeamAnnouncementListVCDelegate
#pragma mark - VideoSessionInterval
//: - (void)didUpdateAnnouncement:(NSString *)content
- (void)mark:(NSString *)content
                   //: completion:(void (^)(NSError *error))completion {
                   announcement:(void (^)(NSError *error))completion {
    //: [self.teamListManager updateTeamAnnouncement:content
    [self.teamListManager manager:content
                             //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                             speckless:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: if (completion) {
        if (completion) {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: #pragma mark - FFFTeamMemberListCellActionDelegate
#pragma mark - FrameThread
//: - (void)didSelectAddOpeartor{
- (void)indicatorFloat{
    //: NSMutableArray *users = [self.teamListManager memberIds];
    NSMutableArray *users = [self.teamListManager memberIds];
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: [users addObject:currentUserID];
    [users addObject:currentUserID];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    RecentMessage *config = [[RecentMessage alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc high];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)anointExamine:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self high:selectedContacts pressed:nil];
}

//: #pragma mark - Function
#pragma mark - Function
//: - (void)didOntransferWithLeave:(BOOL)isLeave {
- (void)withLeave:(BOOL)isLeave {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
    __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
        //: NSString *newOwnerId = memeber.firstObject;
        NSString *newOwnerId = memeber.firstObject;
        //: [wself didOntransferToUser:newOwnerId leave:isLeave];
        [wself disable:newOwnerId show:isLeave];
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"id"] = self.teamListManager.team.teamId;
        dict[@"id"] = self.teamListManager.team.teamId;
        //: dict[@"new_owner_id"] = newOwnerId;
        dict[[BarrelSuspectData sharedInstance].showTargetData] = newOwnerId;
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyowner"] params:dict isShow:NO success:^(id responseObject) {
        [TitleManager exhibitBackground:[NSString stringWithFormat:[BarrelSuspectData sharedInstance].notiMilkEarlMessageText] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
            //: [wself reloadData];
            [wself number];
        //: } failed:^(id responseObject, NSError *error) {
        } jump:^(id responseObject, NSError *error) {

        //: }];
        }];
    //: };
    };
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
    StyleConfig *config = [[StyleConfig alloc] init];
    //: config.session = self.teamListManager.session;
    config.session = self.teamListManager.nameScale;
    //: config.teamType = NIMKitTeamTypeNomal;
    config.teamType = NIMKitTeamTypeNomal;
    //: config.teamId = self.teamListManager.team.teamId;
    config.teamId = self.teamListManager.team.teamId;
    //: config.filterIds = @[currentUserID];
    config.filterIds = @[currentUserID];
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //: vc.finshBlock = finishBlock;
    vc.finshBlock = finishBlock;
    //: [vc show];
    [vc high];
}

//: -(void)handlerClear
-(void)tapSpace
{
    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"clear_history"]];
    [self.groupAlartView pathTextname:[InputRed preserve:[BarrelSuspectData sharedInstance].mainFortunateTitle]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView name];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.nameScale options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self.navigationController popToRootViewControllerAnimated:YES];
                [self.navigationController popToRootViewControllerAnimated:YES];

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView animationWithEnableAtHand];
        //: };
        };


}
//: - (void)handleQrbtn
- (void)customAdd
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    SameViewController *vc = [[SameViewController alloc] init];
    //: vc.isTeam = YES;
    vc.isTeam = YES;
    //: vc.team = self.teamListManager.team;
    vc.team = self.teamListManager.team;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTouchAvatar
- (void)keyAdd
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView button];
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)completing:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self imageVideoBottom:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self imageVideoBottom:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)imageVideoBottom:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf cellBy:image];
    //: weakSelf.accountheadImg.image = image;
    weakSelf.accountheadImg.image = image;
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)uploadImage:(UIImage *)image
- (void)cellBy:(UIImage *)image
{
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image byName:CGSizeMake(150, 150)];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[BarrelSuspectData sharedInstance].mainAccountingTitle];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager modifyInValue:filePath filling:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: [wself showToastMsg:msg];
            [wself textTag:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:@"图片保存失败，请重试".nim_localized];
        [wself textTag:[BarrelSuspectData sharedInstance].mainTableCountData.titleBy];
    }
}
//: #pragma mark - Getter
#pragma mark - Getter
//: - (NSSetAvater *)aleartView{
- (InfoView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[InfoView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice vg_statusBarHeight])];
        _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice heightShowStop])];
        //: [_userView setBackgroundColor:[UIColor clearColor]];
        [_userView setBackgroundColor:[UIColor clearColor]];

        //: UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        //: infoView.backgroundColor = [UIColor whiteColor];
        infoView.backgroundColor = [UIColor whiteColor];
        //: infoView.layer.cornerRadius = 12;
        infoView.layer.cornerRadius = 12;
        //: infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: infoView.layer.shadowOffset = CGSizeMake(0,4);
        infoView.layer.shadowOffset = CGSizeMake(0,4);
        //: infoView.layer.shadowOpacity = 1;
        infoView.layer.shadowOpacity = 1;
        //: infoView.layer.shadowRadius = 16;
        infoView.layer.shadowRadius = 16;
        //: [_userView addSubview:infoView];
        [_userView addSubview:infoView];

        //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        //: [infoView addSubview:imgView];
        [infoView addSubview:imgView];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [imgView addSubview:self.accountheadImg];
        [imgView addSubview:self.accountheadImg];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:[BarrelSuspectData sharedInstance].m_assaultTitleData]];
        //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
        [cameraicon setImage:[UIImage imageNamed:[BarrelSuspectData sharedInstance].dreamLengthValue] forState:(UIControlStateNormal)];
        //: cameraicon.layer.cornerRadius = 14;
        cameraicon.layer.cornerRadius = 14;
        //: cameraicon.layer.masksToBounds = YES;
        cameraicon.layer.masksToBounds = YES;
        //: [imgView addSubview:cameraicon];
        [imgView addSubview:cameraicon];
        //: cameraicon.hidden = YES;
        cameraicon.hidden = YES;
        //: [cameraicon addTarget:self action:@selector(onTouchAvatar) forControlEvents:(UIControlEventTouchUpInside)];
        [cameraicon addTarget:self action:@selector(keyAdd) forControlEvents:(UIControlEventTouchUpInside)];
        //: if([FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([WantUtil random:self.teamListManager.myTeamInfo]){
            //: cameraicon.hidden = NO;
            cameraicon.hidden = NO;
        }

        //: UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        //: [editBtn setImage:[UIImage imageNamed:@"group_edit"] forState:(UIControlStateNormal)];
        [editBtn setImage:[UIImage imageNamed:[BarrelSuspectData sharedInstance].app_drinkingValue] forState:(UIControlStateNormal)];
        //: [editBtn addTarget:self action:@selector(updateTeamIntro) forControlEvents:(UIControlEventTouchUpInside)];
        [editBtn addTarget:self action:@selector(eigenvalueSession) forControlEvents:(UIControlEventTouchUpInside)];
        //: [infoView addSubview:editBtn];
        [infoView addSubview:editBtn];
        //: editBtn.hidden = YES;
        editBtn.hidden = YES;
        //: if([FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([WantUtil random:self.teamListManager.myTeamInfo]){
            //: editBtn.hidden = NO;
            editBtn.hidden = NO;
        }

//        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
//        QrBtn.frame = CGRectMake(SCREEN_WIDTH-30-15-36, 15, 36, 36);
////        QrBtn.backgroundColor = [UIColor whiteColor];
//        [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
//        [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
//        QrBtn.layer.cornerRadius = 8;
//        [infoView addSubview:QrBtn];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        //: self.accountNickname.font = [UIFont systemFontOfSize:20];
        self.accountNickname.font = [UIFont systemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: self.accountNickname.text = self.teamListManager.team.teamName;
        self.accountNickname.text = self.teamListManager.team.teamName;
        //: [infoView addSubview:self.accountNickname];
        [infoView addSubview:self.accountNickname];

        //: _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        //: _introduce.font = [UIFont systemFontOfSize:14];
        _introduce.font = [UIFont systemFontOfSize:14];
        //: _introduce.textColor = [UIColor colorWithHexString:@"2C3042"];
        _introduce.textColor = [UIColor ground:[BarrelSuspectData sharedInstance].main_suspectData];
        //: _introduce.textAlignment = NSTextAlignmentCenter;
        _introduce.textAlignment = NSTextAlignmentCenter;
        //: _introduce.text = self.teamListManager.team.intro?:[FFFLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
        _introduce.text = self.teamListManager.team.intro?:[InputRed preserve:[BarrelSuspectData sharedInstance].appUniteHandleName];
        //: _introduce.numberOfLines = 0;
        _introduce.numberOfLines = 0;
        //: [infoView addSubview:_introduce];
        [infoView addSubview:_introduce];


    }
    //: return _userView;
    return _userView;
}
//: - (UIView *)footView{
- (UIView *)footView{
    //: if(!_footView){
    if(!_footView){
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        //: _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];
        _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];

        //: UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnClear.frame = CGRectMake(0, 0, width, 44);
        btnClear.frame = CGRectMake(0, 0, width, 44);
        //: btnClear.backgroundColor = [UIColor whiteColor];
        btnClear.backgroundColor = [UIColor whiteColor];
        //: btnClear.layer.cornerRadius = 24;
        btnClear.layer.cornerRadius = 24;
        //: btnClear.layer.borderWidth = 1;
        btnClear.layer.borderWidth = 1;
        //: btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnClear setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnClear setTitleColor:[UIColor ground:[BarrelSuspectData sharedInstance].mainWithEndText] forState:UIControlStateNormal];
        //: [btnClear setTitle:[FFFLanguageManager getTextWithKey:@"activity_user_profile_clear_chat"] forState:UIControlStateNormal];
        [btnClear setTitle:[InputRed preserve:[BarrelSuspectData sharedInstance].notiThreadData] forState:UIControlStateNormal];
//        [btnClear setImage:[UIImage imageNamed:@"ic_clear"] forState:UIControlStateNormal];
        //: [btnClear addTarget:self action:@selector(handlerClear) forControlEvents:UIControlEventTouchUpInside];
        [btnClear addTarget:self action:@selector(tapSpace) forControlEvents:UIControlEventTouchUpInside];
        //: [_footView addSubview:btnClear];
        [_footView addSubview:btnClear];


        //: UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        //: btnDet.backgroundColor = [UIColor whiteColor];
        btnDet.backgroundColor = [UIColor whiteColor];
        //: btnDet.layer.cornerRadius = 24;
        btnDet.layer.cornerRadius = 24;
        //: btnDet.layer.borderWidth = 1;
        btnDet.layer.borderWidth = 1;
        //: btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnDet setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnDet setTitleColor:[UIColor ground:[BarrelSuspectData sharedInstance].mainWithEndText] forState:UIControlStateNormal];
        //: [_footView addSubview:btnDet];
        [_footView addSubview:btnDet];

        //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        //: if(isOwner){
        if(isOwner){
//            [btnDet setImage:[UIImage imageNamed:@"ic_release"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_jiesan"] forState:UIControlStateNormal];
            [btnDet setTitle:[InputRed preserve:[BarrelSuspectData sharedInstance].noti_uniteContent] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(dismissTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(pushAsideThroughUnitTeam) forControlEvents:UIControlEventTouchUpInside];
        //: }else{
        }else{
//            [btnDet setImage:[UIImage imageNamed:@"ic_exit"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_exit"] forState:UIControlStateNormal];
            [btnDet setTitle:[InputRed preserve:[BarrelSuspectData sharedInstance].mJournalistData] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(quitTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(toolGenerate) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    //: return _footView;
    return _footView;
}

//: - (ZMONSetGroupNameView *)groupnameView
- (ImageTingView *)groupnameView
{
    //: if(!_groupnameView){
    if(!_groupnameView){
        //: _groupnameView = [[ZMONSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupnameView = [[ImageTingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupnameView;
    return _groupnameView;
}

//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (ActivityView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[ActivityView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}

//: - (ZMONAlartView *)groupAlartView{
- (UncoloredView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[UncoloredView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}

//: @end
@end