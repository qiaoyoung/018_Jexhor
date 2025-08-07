
#import <Foundation/Foundation.h>

@interface EndAtData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EndAtData

+ (instancetype)sharedInstance {
    static EndAtData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EndAtDataToCache:(Byte *)data {
    int sendShow = data[0];
    Byte brandName = data[1];
    int oldSuccess = data[2];
    for (int i = oldSuccess; i < oldSuccess + sendShow; i++) {
        int value = data[i] - brandName;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[oldSuccess + sendShow] = 0;
    return data + oldSuccess;
}

- (NSString *)StringFromEndAtData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EndAtDataToCache:data]];
}

//: add_friend_activity_add_friend
- (NSString *)app_mustValue {
    /* static */ NSString *app_mustValue = nil;
    if (!app_mustValue) {
        Byte value[] = {30, 17, 8, 116, 95, 83, 244, 39, 114, 117, 117, 112, 119, 131, 122, 118, 127, 117, 112, 114, 116, 133, 122, 135, 122, 133, 138, 112, 114, 117, 117, 112, 119, 131, 122, 118, 127, 117, 217};
        app_mustValue = [self StringFromEndAtData:value];
    }
    return app_mustValue;
}

//: #2C3042
- (NSString *)mDisableButtonValue {
    /* static */ NSString *mDisableButtonValue = nil;
    if (!mDisableButtonValue) {
        Byte value[] = {7, 36, 5, 33, 15, 71, 86, 103, 87, 84, 88, 86, 160};
        mDisableButtonValue = [self StringFromEndAtData:value];
    }
    return mDisableButtonValue;
}

//: contact_tag_fragment_delete_success
- (NSString *)kLengthName {
    /* static */ NSString *kLengthName = nil;
    if (!kLengthName) {
        Byte value[] = {35, 39, 7, 142, 237, 197, 52, 138, 150, 149, 155, 136, 138, 155, 134, 155, 136, 142, 134, 141, 153, 136, 142, 148, 140, 149, 155, 134, 139, 140, 147, 140, 155, 140, 134, 154, 156, 138, 138, 140, 154, 154, 115};
        kLengthName = [self StringFromEndAtData:value];
    }
    return kLengthName;
}

//: avatar
- (NSString *)k_canName {
    /* static */ NSString *k_canName = nil;
    if (!k_canName) {
        Byte value[] = {6, 88, 9, 145, 21, 38, 25, 92, 135, 185, 206, 185, 204, 185, 202, 134};
        k_canName = [self StringFromEndAtData:value];
    }
    return k_canName;
}

//: #F6F7FA
- (NSString *)kByName {
    /* static */ NSString *kByName = nil;
    if (!kByName) {
        Byte value[] = {7, 27, 4, 153, 62, 97, 81, 97, 82, 97, 92, 17};
        kByName = [self StringFromEndAtData:value];
    }
    return kByName;
}

//: mobile
- (NSString *)main_removeTitle {
    /* static */ NSString *main_removeTitle = nil;
    if (!main_removeTitle) {
        Byte value[] = {6, 69, 12, 100, 91, 230, 224, 199, 28, 67, 10, 9, 178, 180, 167, 174, 177, 170, 149};
        main_removeTitle = [self StringFromEndAtData:value];
    }
    return main_removeTitle;
}

//: #05D481
- (NSString *)dream_changeSendData {
    /* static */ NSString *dream_changeSendData = nil;
    if (!dream_changeSendData) {
        Byte value[] = {7, 37, 3, 72, 85, 90, 105, 89, 93, 86, 230};
        dream_changeSendData = [self StringFromEndAtData:value];
    }
    return dream_changeSendData;
}

//: name
- (NSString *)show_colorSessionTitle {
    /* static */ NSString *show_colorSessionTitle = nil;
    if (!show_colorSessionTitle) {
        Byte value[] = {4, 46, 12, 101, 93, 76, 192, 93, 217, 80, 154, 113, 156, 143, 155, 147, 167};
        show_colorSessionTitle = [self StringFromEndAtData:value];
    }
    return show_colorSessionTitle;
}

//: icon_me_arrow
- (NSString *)m_buttonValue {
    /* static */ NSString *m_buttonValue = nil;
    if (!m_buttonValue) {
        Byte value[] = {13, 43, 5, 83, 169, 148, 142, 154, 153, 138, 152, 144, 138, 140, 157, 157, 154, 162, 224};
        m_buttonValue = [self StringFromEndAtData:value];
    }
    return m_buttonValue;
}

//: group_id
- (NSString *)main_mustData {
    /* static */ NSString *main_mustData = nil;
    if (!main_mustData) {
        Byte value[] = {8, 1, 8, 34, 56, 167, 21, 196, 104, 115, 112, 118, 113, 96, 106, 101, 20};
        main_mustData = [self StringFromEndAtData:value];
    }
    return main_mustData;
}

//: #FF483D
- (NSString *)show_oldValueData {
    /* static */ NSString *show_oldValueData = nil;
    if (!show_oldValueData) {
        Byte value[] = {7, 49, 6, 99, 73, 72, 84, 119, 119, 101, 105, 100, 117, 163};
        show_oldValueData = [self StringFromEndAtData:value];
    }
    return show_oldValueData;
}

//: ic_card_report
- (NSString *)dreamMaxValue {
    /* static */ NSString *dreamMaxValue = nil;
    if (!dreamMaxValue) {
        Byte value[] = {14, 54, 10, 84, 183, 91, 197, 61, 58, 204, 159, 153, 149, 153, 151, 168, 154, 149, 168, 155, 166, 165, 168, 170, 32};
        dreamMaxValue = [self StringFromEndAtData:value];
    }
    return dreamMaxValue;
}

//: contact_tag_fragment_cancel
- (NSString *)appAppearValue {
    /* static */ NSString *appAppearValue = nil;
    if (!appAppearValue) {
        Byte value[] = {27, 35, 4, 163, 134, 146, 145, 151, 132, 134, 151, 130, 151, 132, 138, 130, 137, 149, 132, 138, 144, 136, 145, 151, 130, 134, 132, 145, 134, 136, 143, 20};
        appAppearValue = [self StringFromEndAtData:value];
    }
    return appAppearValue;
}

//: register_avtivity_account
- (NSString *)m_hideTitle {
    /* static */ NSString *m_hideTitle = nil;
    if (!m_hideTitle) {
        Byte value[] = {25, 9, 9, 222, 149, 146, 217, 234, 161, 123, 110, 112, 114, 124, 125, 110, 123, 104, 106, 127, 125, 114, 127, 114, 125, 130, 104, 106, 108, 108, 120, 126, 119, 125, 237};
        m_hideTitle = [self StringFromEndAtData:value];
    }
    return m_hideTitle;
}

//: ic_sex_man
- (NSString *)user_disableData {
    /* static */ NSString *user_disableData = nil;
    if (!user_disableData) {
        Byte value[] = {10, 97, 7, 178, 40, 6, 60, 202, 196, 192, 212, 198, 217, 192, 206, 194, 207, 215};
        user_disableData = [self StringFromEndAtData:value];
    }
    return user_disableData;
}

//: item_data
- (NSString *)show_sendValue {
    /* static */ NSString *show_sendValue = nil;
    if (!show_sendValue) {
        Byte value[] = {9, 44, 12, 29, 159, 1, 202, 238, 108, 250, 48, 137, 149, 160, 145, 153, 139, 144, 141, 160, 141, 242};
        show_sendValue = [self StringFromEndAtData:value];
    }
    return show_sendValue;
}

//: account
- (NSString *)userThreadFileValue {
    /* static */ NSString *userThreadFileValue = nil;
    if (!userThreadFileValue) {
        Byte value[] = {7, 60, 11, 158, 26, 168, 122, 115, 117, 95, 193, 157, 159, 159, 171, 177, 170, 176, 50};
        userThreadFileValue = [self StringFromEndAtData:value];
    }
    return userThreadFileValue;
}

//: message_info_activity_message_info
- (NSString *)userShowTitle {
    /* static */ NSString *userShowTitle = nil;
    if (!userShowTitle) {
        Byte value[] = {34, 99, 13, 193, 68, 12, 27, 144, 218, 155, 38, 207, 141, 208, 200, 214, 214, 196, 202, 200, 194, 204, 209, 201, 210, 194, 196, 198, 215, 204, 217, 204, 215, 220, 194, 208, 200, 214, 214, 196, 202, 200, 194, 204, 209, 201, 210, 78};
        userShowTitle = [self StringFromEndAtData:value];
    }
    return userShowTitle;
}

//: add_friend_request_fail
- (NSString *)showViewContent {
    /* static */ NSString *showViewContent = nil;
    if (!showViewContent) {
        Byte value[] = {23, 62, 8, 131, 207, 11, 68, 247, 159, 162, 162, 157, 164, 176, 167, 163, 172, 162, 157, 176, 163, 175, 179, 163, 177, 178, 157, 164, 159, 167, 170, 201};
        showViewContent = [self StringFromEndAtData:value];
    }
    return showViewContent;
}

//: code
- (NSString *)userMagnitudeTitle {
    /* static */ NSString *userMagnitudeTitle = nil;
    if (!userMagnitudeTitle) {
        Byte value[] = {4, 64, 8, 100, 96, 176, 55, 169, 163, 175, 164, 165, 189};
        userMagnitudeTitle = [self StringFromEndAtData:value];
    }
    return userMagnitudeTitle;
}

//: head_default
- (NSString *)show_sizeData {
    /* static */ NSString *show_sizeData = nil;
    if (!show_sizeData) {
        Byte value[] = {12, 66, 8, 89, 251, 148, 246, 213, 170, 167, 163, 166, 161, 166, 167, 168, 163, 183, 174, 182, 73};
        show_sizeData = [self StringFromEndAtData:value];
    }
    return show_sizeData;
}

//: 未设置
- (NSString *)user_messageTitle {
    /* static */ NSString *user_messageTitle = nil;
    if (!user_messageTitle) {
        Byte value[] = {9, 91, 13, 127, 236, 237, 133, 222, 44, 45, 218, 87, 176, 65, 247, 5, 67, 9, 25, 66, 24, 9, 189};
        user_messageTitle = [self StringFromEndAtData:value];
    }
    return user_messageTitle;
}

//: team_create_helper_create_failed
- (NSString *)dreamVideoName {
    /* static */ NSString *dreamVideoName = nil;
    if (!dreamVideoName) {
        Byte value[] = {32, 19, 4, 190, 135, 120, 116, 128, 114, 118, 133, 120, 116, 135, 120, 114, 123, 120, 127, 131, 120, 133, 114, 118, 133, 120, 116, 135, 120, 114, 121, 116, 124, 127, 120, 119, 163};
        dreamVideoName = [self StringFromEndAtData:value];
    }
    return dreamVideoName;
}

//: message_info_activity_msg_notice
- (NSString *)kTargetContent {
    /* static */ NSString *kTargetContent = nil;
    if (!kTargetContent) {
        Byte value[] = {32, 53, 12, 205, 96, 48, 18, 46, 236, 100, 213, 88, 162, 154, 168, 168, 150, 156, 154, 148, 158, 163, 155, 164, 148, 150, 152, 169, 158, 171, 158, 169, 174, 148, 162, 168, 156, 148, 163, 164, 169, 158, 152, 154, 48};
        kTargetContent = [self StringFromEndAtData:value];
    }
    return kTargetContent;
}

//: friend_ids
- (NSString *)m_buttonName {
    /* static */ NSString *m_buttonName = nil;
    if (!m_buttonName) {
        Byte value[] = {10, 11, 7, 10, 119, 87, 128, 113, 125, 116, 112, 121, 111, 106, 116, 111, 126, 63};
        m_buttonName = [self StringFromEndAtData:value];
    }
    return m_buttonName;
}

//: func_viewholder_black
- (NSString *)userShouldData {
    /* static */ NSString *userShouldData = nil;
    if (!userShouldData) {
        Byte value[] = {21, 26, 8, 136, 98, 243, 52, 54, 128, 143, 136, 125, 121, 144, 131, 127, 145, 130, 137, 134, 126, 127, 140, 121, 124, 134, 123, 125, 133, 240};
        userShouldData = [self StringFromEndAtData:value];
    }
    return userShouldData;
}

//: #EEEEEE
- (NSString *)dreamShowName {
    /* static */ NSString *dreamShowName = nil;
    if (!dreamShowName) {
        Byte value[] = {7, 64, 8, 32, 228, 175, 84, 255, 99, 133, 133, 133, 133, 133, 133, 148};
        dreamShowName = [self StringFromEndAtData:value];
    }
    return dreamShowName;
}

//: /other/feedback
- (NSString *)app_hideValue {
    /* static */ NSString *app_hideValue = nil;
    if (!app_hideValue) {
        Byte value[] = {15, 18, 7, 135, 242, 67, 190, 65, 129, 134, 122, 119, 132, 65, 120, 119, 119, 118, 116, 115, 117, 125, 223};
        app_hideValue = [self StringFromEndAtData:value];
    }
    return app_hideValue;
}

//: /group/getgroups
- (NSString *)appSizeVideoName {
    /* static */ NSString *appSizeVideoName = nil;
    if (!appSizeVideoName) {
        Byte value[] = {16, 73, 12, 21, 1, 213, 162, 101, 143, 182, 6, 155, 120, 176, 187, 184, 190, 185, 120, 176, 174, 189, 176, 187, 184, 190, 185, 188, 224};
        appSizeVideoName = [self StringFromEndAtData:value];
    }
    return appSizeVideoName;
}

//: his_qr
- (NSString *)showMaxValue {
    /* static */ NSString *showMaxValue = nil;
    if (!showMaxValue) {
        Byte value[] = {6, 26, 3, 130, 131, 141, 121, 139, 140, 69};
        showMaxValue = [self StringFromEndAtData:value];
    }
    return showMaxValue;
}

//: ic_card_edit
- (NSString *)show_limitValue {
    /* static */ NSString *show_limitValue = nil;
    if (!show_limitValue) {
        Byte value[] = {12, 10, 8, 70, 151, 16, 86, 84, 115, 109, 105, 109, 107, 124, 110, 105, 111, 110, 115, 126, 21};
        show_limitValue = [self StringFromEndAtData:value];
    }
    return show_limitValue;
}

//: black_list_activity_add_black_failed
- (NSString *)m_addData {
    /* static */ NSString *m_addData = nil;
    if (!m_addData) {
        Byte value[] = {36, 87, 4, 123, 185, 195, 184, 186, 194, 182, 195, 192, 202, 203, 182, 184, 186, 203, 192, 205, 192, 203, 208, 182, 184, 187, 187, 182, 185, 195, 184, 186, 194, 182, 189, 184, 192, 195, 188, 187, 100};
        m_addData = [self StringFromEndAtData:value];
    }
    return m_addData;
}

//: jpg
- (NSString *)app_hideName {
    /* static */ NSString *app_hideName = nil;
    if (!app_hideName) {
        Byte value[] = {3, 67, 9, 24, 16, 98, 112, 206, 208, 173, 179, 170, 161};
        app_hideName = [self StringFromEndAtData:value];
    }
    return app_hideName;
}

//: please_contact_your_administrator
- (NSString *)app_messageText {
    /* static */ NSString *app_messageText = nil;
    if (!app_messageText) {
        Byte value[] = {33, 4, 8, 176, 21, 20, 92, 75, 116, 112, 105, 101, 119, 105, 99, 103, 115, 114, 120, 101, 103, 120, 99, 125, 115, 121, 118, 99, 101, 104, 113, 109, 114, 109, 119, 120, 118, 101, 120, 115, 118, 181};
        app_messageText = [self StringFromEndAtData:value];
    }
    return app_messageText;
}

//: user_profile_avtivity_remove_friend
- (NSString *)user_placeWithValue {
    /* static */ NSString *user_placeWithValue = nil;
    if (!user_placeWithValue) {
        Byte value[] = {35, 7, 4, 174, 124, 122, 108, 121, 102, 119, 121, 118, 109, 112, 115, 108, 102, 104, 125, 123, 112, 125, 112, 123, 128, 102, 121, 108, 116, 118, 125, 108, 102, 109, 121, 112, 108, 117, 107, 50};
        user_placeWithValue = [self StringFromEndAtData:value];
    }
    return user_placeWithValue;
}

//: /group/addgroupuser
- (NSString *)kDoingValue {
    /* static */ NSString *kDoingValue = nil;
    if (!kDoingValue) {
        Byte value[] = {19, 49, 4, 47, 96, 152, 163, 160, 166, 161, 96, 146, 149, 149, 152, 163, 160, 166, 161, 166, 164, 150, 163, 194};
        kDoingValue = [self StringFromEndAtData:value];
    }
    return kDoingValue;
}

//: user_profile_avtivity_remove_friend_tip
- (NSString *)appShowTitle {
    /* static */ NSString *appShowTitle = nil;
    if (!appShowTitle) {
        Byte value[] = {39, 71, 7, 87, 5, 18, 149, 188, 186, 172, 185, 166, 183, 185, 182, 173, 176, 179, 172, 166, 168, 189, 187, 176, 189, 176, 187, 192, 166, 185, 172, 180, 182, 189, 172, 166, 173, 185, 176, 172, 181, 171, 166, 187, 176, 183, 58};
        appShowTitle = [self StringFromEndAtData:value];
    }
    return appShowTitle;
}

//: add_friend_add_fail
- (NSString *)dream_rowValue {
    /* static */ NSString *dream_rowValue = nil;
    if (!dream_rowValue) {
        Byte value[] = {19, 92, 12, 206, 210, 146, 207, 216, 248, 221, 165, 218, 189, 192, 192, 187, 194, 206, 197, 193, 202, 192, 187, 189, 192, 192, 187, 194, 189, 197, 200, 48};
        dream_rowValue = [self StringFromEndAtData:value];
    }
    return dream_rowValue;
}

//: ic_sex_woman
- (NSString *)app_withData {
    /* static */ NSString *app_withData = nil;
    if (!app_withData) {
        Byte value[] = {12, 48, 6, 169, 47, 77, 153, 147, 143, 163, 149, 168, 143, 167, 159, 157, 145, 158, 51};
        app_withData = [self StringFromEndAtData:value];
    }
    return app_withData;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)show_commentName {
    /* static */ NSString *show_commentName = nil;
    if (!show_commentName) {
        Byte value[] = {44, 74, 12, 109, 188, 40, 82, 39, 216, 11, 46, 56, 177, 188, 185, 191, 186, 169, 173, 178, 171, 190, 169, 171, 192, 171, 190, 171, 188, 169, 171, 173, 190, 179, 192, 179, 190, 195, 169, 171, 174, 174, 169, 172, 182, 171, 173, 181, 169, 189, 191, 173, 173, 175, 189, 189, 30};
        show_commentName = [self StringFromEndAtData:value];
    }
    return show_commentName;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)userTableTitle {
    /* static */ NSString *userTableTitle = nil;
    if (!userTableTitle) {
        Byte value[] = {39, 99, 7, 115, 84, 47, 194, 216, 214, 200, 213, 194, 204, 209, 201, 210, 194, 196, 217, 215, 204, 217, 204, 215, 220, 194, 216, 211, 207, 210, 196, 199, 194, 196, 217, 196, 215, 196, 213, 194, 201, 196, 204, 207, 200, 199, 44};
        userTableTitle = [self StringFromEndAtData:value];
    }
    return userTableTitle;
}

//: #ffffff
- (NSString *)app_needContent {
    /* static */ NSString *app_needContent = nil;
    if (!app_needContent) {
        Byte value[] = {7, 56, 3, 91, 158, 158, 158, 158, 158, 158, 109};
        app_needContent = [self StringFromEndAtData:value];
    }
    return app_needContent;
}

//: Group_chat
- (NSString *)main_placeValue {
    /* static */ NSString *main_placeValue = nil;
    if (!main_placeValue) {
        Byte value[] = {10, 66, 7, 192, 223, 97, 189, 137, 180, 177, 183, 178, 161, 165, 170, 163, 182, 193};
        main_placeValue = [self StringFromEndAtData:value];
    }
    return main_placeValue;
}

//: report_activity_title
- (NSString *)k_atValue {
    /* static */ NSString *k_atValue = nil;
    if (!k_atValue) {
        Byte value[] = {21, 46, 12, 159, 122, 82, 246, 195, 244, 136, 122, 121, 160, 147, 158, 157, 160, 162, 141, 143, 145, 162, 151, 164, 151, 162, 167, 141, 162, 151, 162, 154, 147, 101};
        k_atValue = [self StringFromEndAtData:value];
    }
    return k_atValue;
}

//: canAddFriend
- (NSString *)appButtonValue {
    /* static */ NSString *appButtonValue = nil;
    if (!appButtonValue) {
        Byte value[] = {12, 48, 9, 22, 31, 95, 188, 174, 10, 147, 145, 158, 113, 148, 148, 118, 162, 153, 149, 158, 148, 20};
        appButtonValue = [self StringFromEndAtData:value];
    }
    return appButtonValue;
}

//: black_list_activity_remove_black
- (NSString *)main_appearValue {
    /* static */ NSString *main_appearValue = nil;
    if (!main_appearValue) {
        Byte value[] = {32, 96, 10, 101, 42, 135, 99, 60, 89, 98, 194, 204, 193, 195, 203, 191, 204, 201, 211, 212, 191, 193, 195, 212, 201, 214, 201, 212, 217, 191, 210, 197, 205, 207, 214, 197, 191, 194, 204, 193, 195, 203, 175};
        main_appearValue = [self StringFromEndAtData:value];
    }
    return main_appearValue;
}

//: gotoBlacklist
- (NSString *)notiHandleContent {
    /* static */ NSString *notiHandleContent = nil;
    if (!notiHandleContent) {
        Byte value[] = {13, 26, 9, 146, 99, 181, 253, 236, 60, 129, 137, 142, 137, 92, 134, 123, 125, 133, 134, 131, 141, 142, 196};
        notiHandleContent = [self StringFromEndAtData:value];
    }
    return notiHandleContent;
}

//: message_remark_name
- (NSString *)main_sizeImageTitle {
    /* static */ NSString *main_sizeImageTitle = nil;
    if (!main_sizeImageTitle) {
        Byte value[] = {19, 47, 8, 230, 102, 144, 154, 166, 156, 148, 162, 162, 144, 150, 148, 142, 161, 148, 156, 144, 161, 154, 142, 157, 144, 156, 148, 51};
        main_sizeImageTitle = [self StringFromEndAtData:value];
    }
    return main_sizeImageTitle;
}

//: group_info_activity_op_failed
- (NSString *)m_atData {
    /* static */ NSString *m_atData = nil;
    if (!m_atData) {
        Byte value[] = {29, 92, 5, 142, 121, 195, 206, 203, 209, 204, 187, 197, 202, 194, 203, 187, 189, 191, 208, 197, 210, 197, 208, 213, 187, 203, 204, 187, 194, 189, 197, 200, 193, 192, 173};
        m_atData = [self StringFromEndAtData:value];
    }
    return m_atData;
}

//: /user/detail
- (NSString *)app_endTitle {
    /* static */ NSString *app_endTitle = nil;
    if (!app_endTitle) {
        Byte value[] = {12, 23, 5, 164, 89, 70, 140, 138, 124, 137, 70, 123, 124, 139, 120, 128, 131, 209};
        app_endTitle = [self StringFromEndAtData:value];
    }
    return app_endTitle;
}

//: ic_card_notice
- (NSString *)m_sessionValue {
    /* static */ NSString *m_sessionValue = nil;
    if (!m_sessionValue) {
        Byte value[] = {14, 20, 13, 121, 205, 157, 6, 113, 33, 108, 236, 70, 199, 125, 119, 115, 119, 117, 134, 120, 115, 130, 131, 136, 125, 119, 121, 203};
        m_sessionValue = [self StringFromEndAtData:value];
    }
    return m_sessionValue;
}

//: #ECECEC
- (NSString *)dreamShowThanValue {
    /* static */ NSString *dreamShowThanValue = nil;
    if (!dreamShowThanValue) {
        Byte value[] = {7, 59, 9, 162, 200, 134, 122, 231, 42, 94, 128, 126, 128, 126, 128, 126, 49};
        dreamShowThanValue = [self StringFromEndAtData:value];
    }
    return dreamShowThanValue;
}

//: #8A8E98
- (NSString *)userSessionName {
    /* static */ NSString *userSessionName = nil;
    if (!userSessionName) {
        Byte value[] = {7, 50, 13, 121, 8, 47, 41, 84, 17, 37, 186, 216, 246, 85, 106, 115, 106, 119, 107, 106, 191};
        userSessionName = [self StringFromEndAtData:value];
    }
    return userSessionName;
}

//: contact_tag_fragment_sure
- (NSString *)user_fileName {
    /* static */ NSString *user_fileName = nil;
    if (!user_fileName) {
        Byte value[] = {25, 72, 6, 105, 36, 163, 171, 183, 182, 188, 169, 171, 188, 167, 188, 169, 175, 167, 174, 186, 169, 175, 181, 173, 182, 188, 167, 187, 189, 186, 173, 159};
        user_fileName = [self StringFromEndAtData:value];
    }
    return user_fileName;
}

//: personcart_profile_bg
- (NSString *)app_handleParentValue {
    /* static */ NSString *app_handleParentValue = nil;
    if (!app_handleParentValue) {
        Byte value[] = {21, 97, 11, 153, 116, 80, 223, 8, 106, 51, 58, 209, 198, 211, 212, 208, 207, 196, 194, 211, 213, 192, 209, 211, 208, 199, 202, 205, 198, 192, 195, 200, 122};
        app_handleParentValue = [self StringFromEndAtData:value];
    }
    return app_handleParentValue;
}

//: back_arrow_bl
- (NSString *)dream_countTitle {
    /* static */ NSString *dream_countTitle = nil;
    if (!dream_countTitle) {
        Byte value[] = {13, 77, 11, 60, 69, 58, 140, 129, 17, 219, 59, 175, 174, 176, 184, 172, 174, 191, 191, 188, 196, 172, 175, 185, 37};
        dream_countTitle = [self StringFromEndAtData:value];
    }
    return dream_countTitle;
}

//: ic_card_black
- (NSString *)show_sessionViewLimitTitle {
    /* static */ NSString *show_sessionViewLimitTitle = nil;
    if (!show_sessionViewLimitTitle) {
        Byte value[] = {13, 95, 4, 208, 200, 194, 190, 194, 192, 209, 195, 190, 193, 203, 192, 194, 202, 9};
        show_sessionViewLimitTitle = [self StringFromEndAtData:value];
    }
    return show_sessionViewLimitTitle;
}

//: type
- (NSString *)mainTitleName {
    /* static */ NSString *mainTitleName = nil;
    if (!mainTitleName) {
        Byte value[] = {4, 84, 12, 251, 152, 46, 60, 48, 176, 243, 212, 95, 200, 205, 196, 185, 218};
        mainTitleName = [self StringFromEndAtData:value];
    }
    return mainTitleName;
}

//: user_id
- (NSString *)showPlaceTitle {
    /* static */ NSString *showPlaceTitle = nil;
    if (!showPlaceTitle) {
        Byte value[] = {7, 15, 12, 136, 13, 26, 52, 92, 6, 149, 22, 139, 132, 130, 116, 129, 110, 120, 115, 171};
        showPlaceTitle = [self StringFromEndAtData:value];
    }
    return showPlaceTitle;
}

//: invite_you_group
- (NSString *)dreamMakeInfoAutoName {
    /* static */ NSString *dreamMakeInfoAutoName = nil;
    if (!dreamMakeInfoAutoName) {
        Byte value[] = {16, 4, 13, 156, 8, 252, 73, 89, 58, 153, 126, 122, 132, 109, 114, 122, 109, 120, 105, 99, 125, 115, 121, 99, 107, 118, 115, 121, 116, 64};
        dreamMakeInfoAutoName = [self StringFromEndAtData:value];
    }
    return dreamMakeInfoAutoName;
}

//: black_list_activity_remove_black_failed
- (NSString *)m_sessionName {
    /* static */ NSString *m_sessionName = nil;
    if (!m_sessionName) {
        Byte value[] = {39, 55, 5, 124, 148, 153, 163, 152, 154, 162, 150, 163, 160, 170, 171, 150, 152, 154, 171, 160, 173, 160, 171, 176, 150, 169, 156, 164, 166, 173, 156, 150, 153, 163, 152, 154, 162, 150, 157, 152, 160, 163, 156, 155, 67};
        m_sessionName = [self StringFromEndAtData:value];
    }
    return m_sessionName;
}

//: contact_tag_fragment_add_success
- (NSString *)userCanValue {
    /* static */ NSString *userCanValue = nil;
    if (!userCanValue) {
        Byte value[] = {32, 23, 7, 52, 65, 195, 60, 122, 134, 133, 139, 120, 122, 139, 118, 139, 120, 126, 118, 125, 137, 120, 126, 132, 124, 133, 139, 118, 120, 123, 123, 118, 138, 140, 122, 122, 124, 138, 138, 42};
        userCanValue = [self StringFromEndAtData:value];
    }
    return userCanValue;
}

//: personCard_bg
- (NSString *)mLabelPressData {
    /* static */ NSString *mLabelPressData = nil;
    if (!mLabelPressData) {
        Byte value[] = {13, 51, 13, 163, 38, 254, 218, 187, 221, 55, 61, 165, 12, 163, 152, 165, 166, 162, 161, 118, 148, 165, 151, 146, 149, 154, 153};
        mLabelPressData = [self StringFromEndAtData:value];
    }
    return mLabelPressData;
}

//: data
- (NSString *)show_sizeColorValue {
    /* static */ NSString *show_sizeColorValue = nil;
    if (!show_sizeColorValue) {
        Byte value[] = {4, 11, 8, 235, 95, 181, 158, 126, 111, 108, 127, 108, 226};
        show_sizeColorValue = [self StringFromEndAtData:value];
    }
    return show_sizeColorValue;
}

//: friend_circle_adapter_delete
- (NSString *)k_videoData {
    /* static */ NSString *k_videoData = nil;
    if (!k_videoData) {
        Byte value[] = {28, 11, 10, 22, 67, 78, 185, 193, 180, 59, 113, 125, 116, 112, 121, 111, 106, 110, 116, 125, 110, 119, 112, 106, 108, 111, 108, 123, 127, 112, 125, 106, 111, 112, 119, 112, 127, 112, 235};
        k_videoData = [self StringFromEndAtData:value];
    }
    return k_videoData;
}

//: contact
- (NSString *)dreamLengthName {
    /* static */ NSString *dreamLengthName = nil;
    if (!dreamLengthName) {
        Byte value[] = {7, 76, 13, 75, 181, 241, 136, 208, 42, 234, 201, 9, 36, 175, 187, 186, 192, 173, 175, 192, 179};
        dreamLengthName = [self StringFromEndAtData:value];
    }
    return dreamLengthName;
}

//: request_successful
- (NSString *)dreamImageText {
    /* static */ NSString *dreamImageText = nil;
    if (!dreamImageText) {
        Byte value[] = {18, 84, 11, 155, 14, 148, 245, 162, 22, 194, 218, 198, 185, 197, 201, 185, 199, 200, 179, 199, 201, 183, 183, 185, 199, 199, 186, 201, 192, 16};
        dreamImageText = [self StringFromEndAtData:value];
    }
    return dreamImageText;
}

//: friend_delete_fail
- (NSString *)app_shouldValue {
    /* static */ NSString *app_shouldValue = nil;
    if (!app_shouldValue) {
        Byte value[] = {18, 68, 12, 195, 57, 188, 87, 242, 99, 200, 27, 180, 170, 182, 173, 169, 178, 168, 163, 168, 169, 176, 169, 184, 169, 163, 170, 165, 173, 176, 192};
        app_shouldValue = [self StringFromEndAtData:value];
    }
    return app_shouldValue;
}

//: #FDF4C9
- (NSString *)userAddName {
    /* static */ NSString *userAddName = nil;
    if (!userAddName) {
        Byte value[] = {7, 15, 12, 11, 136, 212, 126, 107, 116, 66, 158, 15, 50, 85, 83, 85, 67, 82, 72, 197};
        userAddName = [self StringFromEndAtData:value];
    }
    return userAddName;
}

//: isfrend
- (NSString *)m_scaleTitle {
    /* static */ NSString *m_scaleTitle = nil;
    if (!m_scaleTitle) {
        Byte value[] = {7, 89, 13, 241, 218, 162, 25, 255, 177, 104, 206, 14, 181, 194, 204, 191, 203, 190, 199, 189, 60};
        m_scaleTitle = [self StringFromEndAtData:value];
    }
    return m_scaleTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESPersonCardViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESPersonalCardViewController.h"
#import "SystemViewController.h"
//: #import "FFFCommonTableDelegate.h"
#import "TableDelegate.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "RecentViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+BottomMagnitude.h"
//: #import "NTESUserUtil.h"
#import "CellVideo.h"
//: #import "HMDataPicker.h"
#import "RawDataView.h"
//: #import "FFFRemarksView.h"
#import "BirdSEyeView.h"
//: #import "NTESOpinionBackViewController.h"
#import "ShankViewController.h"
//: #import "ZMONReportUserView.h"
#import "RecentView.h"
//: #import "ZMONReportNextView.h"
#import "DoingenceView.h"
//: #import "ZMONReportBlackView.h"
#import "MisnomerView.h"
//: #import "ZMONReportDeleteView.h"
#import "StatuteTitleView.h"
//: #import "NTESUserQRCodeViewController.h"
#import "SameViewController.h"
//: #import "CCCBlackListViewController.h"
#import "ColorViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "ViewLine.h"
//: #import "NTESShareCardAttachment.h"
#import "InputAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "ManagerViewController.h"
//: #import "CCCContactsViewController.h"
#import "ThreadViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "CompartmentViewController.h"
//: #import "FFFKitFileLocationHelper.h"
#import "ImageHelper.h"

//: @interface NTESPersonalCardViewController ()<NIMUserManagerDelegate,HMDataPickerDelegate,NTESReportDelegate,NTESReportNextDelegate>
@interface SystemViewController ()<NIMUserManagerDelegate,RecordFactorOff,RangeFrame,InformTing>

//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) TableDelegate *delegator;

//: @property (nonatomic,copy ) NSArray *data;
@property (nonatomic,copy ) NSArray *data;

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UIView *accountView;
@property (nonatomic, strong) UIView *accountView;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;
//: @property (nonatomic, strong) UIImageView *sexImg;
@property (nonatomic, strong) UIImageView *sexImg;
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic, strong) UIButton *messageBtn;
@property (nonatomic, strong) UIButton *messageBtn;
//: @property (nonatomic, strong) UIButton *groupBtn;
@property (nonatomic, strong) UIButton *groupBtn;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (strong, nonatomic) UIButton *btnDelete;
@property (strong, nonatomic) UIButton *btnDelete;
//: @property (strong, nonatomic) UIButton *btnChat;
@property (strong, nonatomic) UIButton *btnChat;
//: @property (strong, nonatomic) UISwitch *switchNotice;
@property (strong, nonatomic) UISwitch *switchNotice;
//: @property (strong, nonatomic) UISwitch *switchBlack;
@property (strong, nonatomic) UISwitch *switchBlack;
//: @property (strong, nonatomic) UIButton *btnRes;
@property (strong, nonatomic) UIButton *btnRes;
//: @property (strong, nonatomic) UIButton *btnReport;
@property (strong, nonatomic) UIButton *btnReport;
//: @property (strong, nonatomic) UILabel *labRemark;
@property (strong, nonatomic) UILabel *labRemark;
//: @property (strong, nonatomic) UILabel *labTitleRemark;
@property (strong, nonatomic) UILabel *labTitleRemark;
//: @property (strong, nonatomic) UILabel *labTitlenotice;
@property (strong, nonatomic) UILabel *labTitlenotice;
//: @property (strong, nonatomic) UILabel *labTitleBlack;
@property (strong, nonatomic) UILabel *labTitleBlack;
//: @property (strong, nonatomic) UILabel *labTitleResport;
@property (strong, nonatomic) UILabel *labTitleResport;
//: @property (strong, nonatomic) UIButton *btnAdd;
@property (strong, nonatomic) UIButton *btnAdd;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *labTitSign;
@property (strong, nonatomic) UILabel *labTitSign;

//: @property (nonatomic, strong) ZMONReportUserView *reprotView;
@property (nonatomic, strong) RecentView *reprotView;
//: @property (nonatomic, strong) FFFRemarksView *changeRemarksView;
@property (nonatomic, strong) BirdSEyeView *changeRemarksView;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) LabView *loadingView;
//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) DoingenceView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) MisnomerView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) StatuteTitleView *reprotDeleteView;

//: @end
@end

//: @implementation NTESPersonalCardViewController
@implementation SystemViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithAdd:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    [self setUpNav];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] kByName]];

    //: UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //: scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //: scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:scrollView];
    [self.view addSubview:scrollView];
    //: scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    //: scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;

    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    //: if(isMyFriend){
    if(isMyFriend){
        //: [scrollView addSubview:self.userView];
        [scrollView addSubview:self.userView];
        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
    //: }else{
    }else{
        //: [scrollView addSubview:self.userView];
        [scrollView addSubview:self.userView];
        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
    }

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);
    self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;



    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[[EndAtData sharedInstance] showPlaceTitle]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[EndAtData sharedInstance] app_endTitle]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[[EndAtData sharedInstance] userMagnitudeTitle]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[[EndAtData sharedInstance] show_sizeColorValue]];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data route:[[EndAtData sharedInstance] userThreadFileValue]];
            //: NSString *avatar = [data newStringValueForKey:@"avatar"];
            NSString *avatar = [data route:[[EndAtData sharedInstance] k_canName]];

            //: NSString *str = [NSString stringWithFormat:@"%@:%@",[FFFLanguageManager getTextWithKey:@"register_avtivity_account"],self.userAcount];
            NSString *str = [NSString stringWithFormat:@"%@:%@",[InputRed preserve:[[EndAtData sharedInstance] m_hideTitle]],self.userAcount];
            //: self.accountId.text = str;
            self.accountId.text = str;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];

            //: self.accountView.hidden = NO;
            self.accountView.hidden = NO;
            //: CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            //: self.accountView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            self.accountView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            //: self.accountId.frame = CGRectMake(10, 0, size.width, 24);
            self.accountId.frame = CGRectMake(10, 0, size.width, 24);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [self refresh];
    [self upFlush];
}

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

//: - (void)refresh{
- (void)upFlush{

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
            //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                //: if (users.count) {
                if (users.count) {
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;
                    //: self.user = users.firstObject;
                    self.user = users.firstObject;

                    //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[EndAtData sharedInstance] show_sizeData]]];
                    //: self.accountNickname.text = self.user.userInfo.nickName;
                    self.accountNickname.text = self.user.userInfo.nickName;
                    //: self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
                    self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
                    //: [self.accountNickname sizeToFit];
                    [self.accountNickname sizeToFit];
                    //: self.accountNickname.centerX = self.view.centerX-12;
                    self.accountNickname.centerX = self.view.centerX-12;

                    //: self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    //: if (self.user.userInfo.gender == NIMUserGenderMale) {
                    if (self.user.userInfo.gender == NIMUserGenderMale) {
                        //: _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
                        _sexImg.image = [UIImage imageNamed:[[EndAtData sharedInstance] user_disableData]];
                    //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                    }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                        //: _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
                        _sexImg.image = [UIImage imageNamed:[[EndAtData sharedInstance] app_withData]];
                    }

                    //: BOOL isMe = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    BOOL isMe = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    //: BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];
                    BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];

                    //: if(isMyFriend){
                    if(isMyFriend){
                        //: self.btnAdd.hidden = YES;
                        self.btnAdd.hidden = YES;
                        //: self.btnDelete.hidden = NO;
                        self.btnDelete.hidden = NO;
                    //: }else{
                    }else{
                        //: self.btnAdd.hidden = NO;
                        self.btnAdd.hidden = NO;
                        //: self.btnDelete.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }

                    //: if (isMe) {
                    if (isMe) {
                        //: self.btnAdd.hidden = YES;
                        self.btnAdd.hidden = YES;
                        //: self.btnDelete.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }

                    //: self.switchBlack.on = isInBlackList;
                    self.switchBlack.on = isInBlackList;
                    //: self.switchNotice.on = needNotify;
                    self.switchNotice.on = needNotify;

                    //: self.labRemark.text = self.user.alias.length ? self.user.alias : [FFFLanguageManager getTextWithKey:@"未设置"];
                    self.labRemark.text = self.user.alias.length ? self.user.alias : [InputRed preserve:[[EndAtData sharedInstance] user_messageTitle]];
                    //: self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : [FFFLanguageManager getTextWithKey:@"未设置"];
                    self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : [InputRed preserve:[[EndAtData sharedInstance] user_messageTitle]];

                    //: if(isMyFriend){
                    if(isMyFriend){
                        //: self.messageBtn.hidden = NO;
                        self.messageBtn.hidden = NO;
                        //: self.groupBtn.hidden = NO;
                        self.groupBtn.hidden = NO;
                        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
                        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
                    //: }else{
                    }else{
                        //: self.messageBtn.hidden = YES;
                        self.messageBtn.hidden = YES;
                        //: self.groupBtn.hidden = YES;
                        self.groupBtn.hidden = YES;
                        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
                        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
                    }
                    //: self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);
                    self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);

                }
            //: }];
            }];



}

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - Action
#pragma mark - Action


//: -(void)onActionGroup:(id)sender{
-(void)reply:(id)sender{

//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView value];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/getgroups"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[EndAtData sharedInstance] appSizeVideoName]] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: [self.loadingView animationClose];
        [self.loadingView animationWithEnableAtHand];
//        [SVProgressHUD dismissWithCompletion:^{
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict route:[[EndAtData sharedInstance] userMagnitudeTitle]];
            //: if (code.integerValue == 0) {
            if (code.integerValue == 0) {
                //: NSArray *dataArray = [resultDict arrayValueForKey:@"data"];
                NSArray *dataArray = [resultDict dateArray:[[EndAtData sharedInstance] show_sizeColorValue]];
                //: NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:@"item_data"];
                NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:[[EndAtData sharedInstance] show_sendValue]];
                //: HMDataPicker *dataPick = [[HMDataPicker alloc] initWithDelegate:self dataDict:dataDict selectedDict:nil jsonNode:@"name"];
                RawDataView *dataPick = [[RawDataView alloc] initWithSize:self secret:dataDict reply:nil team:[[EndAtData sharedInstance] show_colorSessionTitle]];
                //: dataPick.tag = 500;
                dataPick.tag = 500;
                //: [dataPick show];
                [dataPick selected];
            }
//        }];
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView animationWithEnableAtHand];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"add_friend_request_fail"]
        [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] showViewContent]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    //: }];
    }];
}



//: #pragma mark - HMDataPickerDelegate
#pragma mark - RecordFactorOff
//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict{
- (void)message:(RawDataView *)dataPicker fastener:(NSDictionary *)selectedDict{
    //: _groupDict = selectedDict;
    _groupDict = selectedDict;
    //: [self refresh];
    [self upFlush];
    //: [self setingGroup];
    [self item];//设置分组

}

//: - (void)onActionEditAlias:(id)sender{
- (void)read:(id)sender{
//    NTESAliasSettingViewController *vc = [[NTESAliasSettingViewController alloc] initWithUserId:self.userId];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onActionEditMyInfo:(id)sender{
- (void)evidence:(id)sender{
//    NTESUserInfoSettingViewController *vc = [[NTESUserInfoSettingViewController alloc] initWithNibName:nil bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onActionBlackListValueChange:(id)sender{
- (void)infoChange:(id)sender{

    //: [self onActionBlackListValueChange_1:sender];
    [self value1:sender];//SDK拉黑
//    [self requestBlackChanged:sender];
}
////拉黑信息同步
//: -(void)requestBlackChanged:(id)sender{
-(void)app:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if (switcher.on) {
    if (switcher.on) {
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"mobile"] = self.userId;
        dict[[[EndAtData sharedInstance] main_removeTitle]] = self.userId;
        //: dict[@"type"] = @"1";
        dict[[[EndAtData sharedInstance] mainTitleName]] = @"1";//拉入黑名单
        //: [wself refresh];
        [wself upFlush];

    //: }else{
    }else{
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"mobile"] = self.userId;
        dict[[[EndAtData sharedInstance] main_removeTitle]] = self.userId;
        //: dict[@"type"] = @"0";
        dict[[[EndAtData sharedInstance] mainTitleName]] = @"0";//解除黑名单
        //: [wself refresh];
        [wself upFlush];

    }
}

//: - (void)onActionBlackListValueChange_1:(id)sender{
- (void)value1:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView value];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (switcher.on) {
    if (switcher.on) {
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView animationWithEnableAtHand];
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] show_commentName]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] m_addData]] duration:2.0f position:CSToastPositionCenter];
                //: [wself refresh];
                [wself upFlush];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView animationWithEnableAtHand];
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_remove_black"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] main_appearValue]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_remove_black_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] m_sessionName]] duration:2.0f position:CSToastPositionCenter];
                //: [wself refresh];
                [wself upFlush];
            }
        //: }];
        }];
    }
}

//: - (void)onActionNeedNotifyValueChange:(id)sender{
- (void)iconing:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView value];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView animationWithEnableAtHand];
        //: if (error) {
        if (error) {
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] m_atData]] duration:2.0f position:CSToastPositionCenter];
            //: [wself refresh];
            [wself upFlush];
        }
    //: }];
    }];
}


//: - (void)btnchat
- (void)examineedBottom
{
    //: UINavigationController *nav = self.navigationController;
    UINavigationController *nav = self.navigationController;
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
    //: [nav pushViewController:vc animated:YES];
    [nav pushViewController:vc animated:YES];
    //: UIViewController *root = nav.viewControllers[0];
    UIViewController *root = nav.viewControllers[0];
    //: nav.viewControllers = @[root,vc];
    nav.viewControllers = @[root,vc];
}

//: - (void)btnGroupchat
- (void)loadChild
{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self jiffy:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView value];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self name:avater handle:^(NSString *urlString) {

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
            option.postscript = [InputRed preserve:[[EndAtData sharedInstance] dreamMakeInfoAutoName]];
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
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] dreamVideoName]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)jiffy:(ContactSelectFinishBlock) block{
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
    //: config.alreadySelectedMemberId = @[self.userId];
    config.alreadySelectedMemberId = @[self.userId];
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc high];
}
//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)name:(UIImage *)image handle:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image byName:CGSizeMake(375, 375)];
    //: NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [ImageHelper key:[[EndAtData sharedInstance] app_hideName]];
    //: NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
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
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] userTableTitle]]
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
        [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] userTableTitle]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}


//加好友
//: -(void)addFriend{
-(void)inputFriend{

    //: if (_teamSetingConfig != nil) {
    if (_teamSetingConfig != nil) {
        //: NSString *canAddFriend = [_teamSetingConfig newStringValueForKey:@"canAddFriend"];
        NSString *canAddFriend = [_teamSetingConfig route:[[EndAtData sharedInstance] appButtonValue]];
        //: if (canAddFriend.integerValue <= 0) {
        if (canAddFriend.integerValue <= 0) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD text:[InputRed preserve:[[EndAtData sharedInstance] app_messageText]]];
            //: return;
            return;
        }
    }

    //: [self sendAddFriendRequest];
    [self standardPath];//添加好友

}

//: -(void)sendAddFriendRequest{
-(void)standardPath{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [SessionRecord afterUser].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [InputRed preserve:[[EndAtData sharedInstance] userCanValue]];//@"添加成功"
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [InputRed preserve:[[EndAtData sharedInstance] dreamImageText]];//@"请求成功"
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [InputRed preserve:[[EndAtData sharedInstance] dream_rowValue]];//@"添加失败"
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [InputRed preserve:[[EndAtData sharedInstance] showViewContent]];//@"请求失败"
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView value];

    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView animationWithEnableAtHand];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            //: [wself refresh];
            [wself upFlush];
        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//分组网络请求
//: -(void)setingGroup{
-(void)item{

    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"group_id"] = [_groupDict newStringValueForKey:@"id"];
    dict[[[EndAtData sharedInstance] main_mustData]] = [_groupDict route:@"id"];
    //: dict[@"friend_ids"] = self.user.userId;
    dict[[[EndAtData sharedInstance] m_buttonName]] = self.user.userId;
    //: dict[@"isfrend"] = isMyFriend?@"1":@"0";
    dict[[[EndAtData sharedInstance] m_scaleTitle]] = isMyFriend?@"1":@"0";

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/addgroupuser"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[EndAtData sharedInstance] kDoingValue]] queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"-----%@",resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: - (void)deleteFriend{
- (void)tapCell{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;//@"删除好友后，将同时解除双方的好友关系"
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"] message:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend_tip"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"], nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[InputRed preserve:[[EndAtData sharedInstance] user_placeWithValue]] message:[InputRed preserve:[[EndAtData sharedInstance] appShowTitle]] delegate:nil cancelButtonTitle:[InputRed preserve:[[EndAtData sharedInstance] appAppearValue]] otherButtonTitles:[InputRed preserve:[[EndAtData sharedInstance] user_fileName]], nil];
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert menuMedia:^(NSInteger index) {
        //: if (index == 1) {
        if (index == 1) {
//            [SVProgressHUD show];
            //: [self.loadingView animationShow];
            [self.loadingView value];



            //: [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
            [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
                                             //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                             removeAlias:[[ImageTing configRefresh] size]
                                              //: completion:^(NSError *error) {
                                              completion:^(NSError *error) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView animationWithEnableAtHand];
                //: if (!error) {
                if (!error) {
                    //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                    [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] kLengthName]] duration:2.0f position:CSToastPositionCenter];
                    //: [wself refresh];
                    [wself upFlush];
                    //: [self removeNIMRecentSession];
                    [self argument];
                //: }else{
                }else{
                    //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                    [wself.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] app_shouldValue]] duration:2.0f position:CSToastPositionCenter];
                }
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)removeNIMRecentSession
- (void)argument
{
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    //: [manager deleteRecentSession:recent];
    [manager deleteRecentSession:recent];
}

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: if ([user.userId isEqualToString:self.userId]) {
    if ([user.userId isEqualToString:self.userId]) {
        //: [self refresh];
        [self upFlush];
    }
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: if ([user.userId isEqualToString:self.userId]) {
    if ([user.userId isEqualToString:self.userId]) {
        //: [self refresh];
        [self upFlush];
    }
}

//: - (void)onBlackListChanged{
- (void)onBlackListChanged{
    //: [self refresh];
    [self upFlush];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self upFlush];
}

//: - (void)onActionEditAlias{
- (void)cellAlias{

    //: [self.view addSubview:self.changeRemarksView];
    [self.view addSubview:self.changeRemarksView];
    //: [ self.changeRemarksView reloadWithNickname: self.user];
    [ self.changeRemarksView between: self.user];
    //: [self.changeRemarksView animationShow];
    [self.changeRemarksView position];
}

//: - (void)reportsAction {
- (void)messageTo {
    //: [self.view addSubview:self.reprotView];
    [self.view addSubview:self.reprotView];
    //: [self.reprotView animationShow];
    [self.reprotView cell];
//    ShankViewController *vc = [[ShankViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)handleQrbtn
- (void)customAdd
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    SameViewController *vc = [[SameViewController alloc] init];
    //: vc.userID = _userId;
    vc.userID = _userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)btngotoBlackList
- (void)circleList
{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    ColorViewController *vc = [[ColorViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)shareCardAction
- (void)tingRandomAction
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    InputAttachment *attachment = [[InputAttachment alloc] init];
    //: attachment.title = self.user.userInfo.nickName;
    attachment.title = self.user.userInfo.nickName;
    //: attachment.type = @"0";
    attachment.type = @"0";
    //: attachment.personCardId = self.userId;
    attachment.personCardId = self.userId;
    //: attachment.content = self.userAcount;
    attachment.content = self.userAcount;
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


//: #pragma mark - Private
#pragma mark - Private
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
//        _userView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"personCard_bg"]];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[[EndAtData sharedInstance] mLabelPressData]];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+44+20, [[UIScreen mainScreen] bounds].size.width-30, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, [UIDevice heightShowStop]+44+20, [[UIScreen mainScreen] bounds].size.width-30, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[[EndAtData sharedInstance] app_handleParentValue]];
        //: userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: userBg.layer.shadowOffset = CGSizeMake(0,4);
        userBg.layer.shadowOffset = CGSizeMake(0,4);
        //: userBg.layer.shadowOpacity = 1;
        userBg.layer.shadowOpacity = 1;
        //: userBg.layer.shadowRadius = 16;
        userBg.layer.shadowRadius = 16;
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        //: QrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-36, [UIDevice vg_statusBarHeight]+44+35, 36, 36);
        QrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-36, [UIDevice heightShowStop]+44+35, 36, 36);
//        QrBtn.backgroundColor = [UIColor whiteColor];
        //: [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
        [QrBtn setImage:[UIImage imageNamed:[[EndAtData sharedInstance] showMaxValue]] forState:UIControlStateNormal];
        //: [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
        [QrBtn addTarget:self action:@selector(customAdd) forControlEvents:UIControlEventTouchUpInside];
        //: QrBtn.layer.cornerRadius = 8;
        QrBtn.layer.cornerRadius = 8;
        //: [_userView addSubview:QrBtn];
        [_userView addSubview:QrBtn];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice heightShowStop]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[EndAtData sharedInstance] show_sizeData]]];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_userView addSubview:self.accountheadImg];
        [_userView addSubview:self.accountheadImg];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        //: self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.textColor = [UIColor blackColor];
        //: self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.text = self.user.userInfo.nickName;
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountNickname];
        [_userView addSubview:self.accountNickname];
        //: [self.accountNickname sizeToFit];
        [self.accountNickname sizeToFit];
        //: self.accountNickname.centerX = self.view.centerX-12;
        self.accountNickname.centerX = self.view.centerX-12;

        //: _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            _sexImg.image = [UIImage imageNamed:[[EndAtData sharedInstance] user_disableData]];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            _sexImg.image = [UIImage imageNamed:[[EndAtData sharedInstance] app_withData]];
        }
        //: [_userView addSubview:_sexImg];
        [_userView addSubview:_sexImg];

        //: _accountView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-156)/2, self.accountNickname.bottom+10, 156, 24)];
        _accountView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-156)/2, self.accountNickname.bottom+10, 156, 24)];
        //: _accountView.backgroundColor = [UIColor colorWithHexString:@"#FDF4C9"];
        _accountView.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] userAddName]];
        //: _accountView.layer.cornerRadius = 12;
        _accountView.layer.cornerRadius = 12;
        //: [_userView addSubview:_accountView];
        [_userView addSubview:_accountView];
        //: _accountView.hidden = YES;
        _accountView.hidden = YES;

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor ground:[[EndAtData sharedInstance] mDisableButtonValue]];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_accountView addSubview:self.accountId];
        [_accountView addSubview:self.accountId];

        //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        //: if(isMyFriend){
        if(isMyFriend){
            //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-15*3)/2;
            CGFloat width = ([[UIScreen mainScreen] bounds].size.width-15*3)/2;
            //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            //: _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            //: _messageBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
            _messageBtn.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] dream_changeSendData]];
            //: [_messageBtn addTarget:self action:@selector(btnchat) forControlEvents:UIControlEventTouchUpInside];
            [_messageBtn addTarget:self action:@selector(examineedBottom) forControlEvents:UIControlEventTouchUpInside];
            //: _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            //: [_messageBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
            [_messageBtn setTitleColor:[UIColor ground:[[EndAtData sharedInstance] app_needContent]] forState:UIControlStateNormal];
            //: [_messageBtn setTitle:[FFFLanguageManager getTextWithKey:@"message_info_activity_message_info"] forState:UIControlStateNormal];
            [_messageBtn setTitle:[InputRed preserve:[[EndAtData sharedInstance] userShowTitle]] forState:UIControlStateNormal];
            //: _messageBtn.layer.cornerRadius = 22;
            _messageBtn.layer.cornerRadius = 22;
            //: [_userView addSubview:_messageBtn];
            [_userView addSubview:_messageBtn];

            //: _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            //: _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            //: _groupBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
            _groupBtn.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] dream_changeSendData]];
            //: [_groupBtn addTarget:self action:@selector(btnGroupchat) forControlEvents:UIControlEventTouchUpInside];
            [_groupBtn addTarget:self action:@selector(loadChild) forControlEvents:UIControlEventTouchUpInside];
            //: _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            //: [_groupBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
            [_groupBtn setTitleColor:[UIColor ground:[[EndAtData sharedInstance] app_needContent]] forState:UIControlStateNormal];
            //: [_groupBtn setTitle:[FFFLanguageManager getTextWithKey:@"Group_chat"] forState:UIControlStateNormal];
            [_groupBtn setTitle:[InputRed preserve:[[EndAtData sharedInstance] main_placeValue]] forState:UIControlStateNormal];
            //: _groupBtn.layer.cornerRadius = 22;
            _groupBtn.layer.cornerRadius = 22;
            //: [_userView addSubview:_groupBtn];
            [_userView addSubview:_groupBtn];
        }
        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[[EndAtData sharedInstance] dream_countTitle]] forState:(UIControlStateNormal)];
        //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self.closeBtn addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
        //: [_userView addSubview:self.closeBtn];
        [_userView addSubview:self.closeBtn];
        //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
        self.closeBtn.frame = CGRectMake(15, 4+[UIDevice heightShowStop], 36, 36);

    }
    //: return _userView;
    return _userView;
}

//: - (UIView *)personView
- (UIView *)personView
{
    //: if(!_personView){
    if(!_personView){
        //: _personView = [[UIView alloc]init];
        _personView = [[UIView alloc]init];
        //: _personView.backgroundColor = [UIColor clearColor];
        _personView.backgroundColor = [UIColor clearColor];
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 353);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 353);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 112)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 112)];
        //: [_personView addSubview:contView];
        [_personView addSubview:contView];
        //: contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: contView.layer.cornerRadius = 12;
        contView.layer.cornerRadius = 12;
        //: contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOffset = CGSizeMake(0,4);
        //: contView.layer.shadowOpacity = 1;
        contView.layer.shadowOpacity = 1;
        //: contView.layer.shadowRadius = 16;
        contView.layer.shadowRadius = 16;

        //: UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:noticeView];
        [contView addSubview:noticeView];
        //: UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic3.image = [UIImage imageNamed:@"ic_card_notice"];
        pic3.image = [UIImage imageNamed:[[EndAtData sharedInstance] m_sessionValue]];
        //: [noticeView addSubview:pic3];
        [noticeView addSubview:pic3];
        //: self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        //: self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitlenotice.textColor = [UIColor blackColor];
        self.labTitlenotice.textColor = [UIColor blackColor];
        //: self.labTitlenotice.text = [FFFLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
        self.labTitlenotice.text = [InputRed preserve:[[EndAtData sharedInstance] kTargetContent]];
        //: [noticeView addSubview:self.labTitlenotice];
        [noticeView addSubview:self.labTitlenotice];
        //: self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 8, 33, 20)];
        self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 8, 33, 20)];
        //: [self.switchNotice addTarget:self action:@selector(onActionNeedNotifyValueChange:) forControlEvents:UIControlEventValueChanged];
        [self.switchNotice addTarget:self action:@selector(iconing:) forControlEvents:UIControlEventValueChanged];
        //: self.switchNotice.onTintColor = [UIColor colorWithHexString:@"#05D481"];
        self.switchNotice.onTintColor = [UIColor ground:[[EndAtData sharedInstance] dream_changeSendData]];
        //: [noticeView addSubview:self.switchNotice];
        [noticeView addSubview:self.switchNotice];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] dreamShowThanValue]];
        //: [noticeView addSubview:line3];
        [noticeView addSubview:line3];

        //: UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 62)];
        UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 62)];
        //: [contView addSubview:blackView];
        [contView addSubview:blackView];
        //: UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic4.image = [UIImage imageNamed:@"ic_card_black"];
        pic4.image = [UIImage imageNamed:[[EndAtData sharedInstance] show_sessionViewLimitTitle]];
        //: [blackView addSubview:pic4];
        [blackView addSubview:pic4];
        //: self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        //: self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleBlack.textColor = [UIColor blackColor];
        self.labTitleBlack.textColor = [UIColor blackColor];
        //: self.labTitleBlack.text = [FFFLanguageManager getTextWithKey:@"func_viewholder_black"];
        self.labTitleBlack.text = [InputRed preserve:[[EndAtData sharedInstance] userShouldData]];
        //: [blackView addSubview:self.labTitleBlack];
        [blackView addSubview:self.labTitleBlack];

        //: UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        //: blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        //: [blackBtn addTarget:self action:@selector(btngotoBlackList) forControlEvents:UIControlEventTouchUpInside];
        [blackBtn addTarget:self action:@selector(circleList) forControlEvents:UIControlEventTouchUpInside];
        //: blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        //: [blackBtn setTitleColor:[UIColor colorWithHexString:@"#05D481"] forState:UIControlStateNormal];
        [blackBtn setTitleColor:[UIColor ground:[[EndAtData sharedInstance] dream_changeSendData]] forState:UIControlStateNormal];
        //: [blackBtn setTitle:[FFFLanguageManager getTextWithKey:@"gotoBlacklist"] forState:UIControlStateNormal];
        [blackBtn setTitle:[InputRed preserve:[[EndAtData sharedInstance] notiHandleContent]] forState:UIControlStateNormal];
        //: [blackView addSubview:blackBtn];
        [blackView addSubview:blackBtn];
        //: blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;

        //: self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 14, 33, 20)];
        self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 14, 33, 20)];
        //: [self.switchBlack addTarget:self action:@selector(onActionBlackListValueChange:) forControlEvents:UIControlEventValueChanged];
        [self.switchBlack addTarget:self action:@selector(infoChange:) forControlEvents:UIControlEventValueChanged];
        //: self.switchBlack.onTintColor = [UIColor colorWithHexString:@"#05D481"];
        self.switchBlack.onTintColor = [UIColor ground:[[EndAtData sharedInstance] dream_changeSendData]];
        //: [blackView addSubview:self.switchBlack];
        [blackView addSubview:self.switchBlack];

//        UIView *line4 = [[UIView alloc]initWithFrame:CGRectMake(36, 61, SCREEN_WIDTH-60-36, 1)];
//        line4.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [blackView addSubview:line4];
//        
//        UIView *shareCartView = [[UIView alloc]initWithFrame:CGRectMake(15, blackView.bottom, SCREEN_WIDTH-60, 50)];
//        [contView addSubview:shareCartView];
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareCardAction)];
//        [shareCartView addGestureRecognizer:tapGesture];
//        UIImageView *pic5 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
//        pic5.image = [UIImage imageNamed:@"ic_card_share"];
//        [shareCartView addSubview:pic5];
//        UILabel *labTitleShare = [[UILabel alloc]initWithFrame:CGRectMake(pic5.right+12, 10, 250, 28)];
//        labTitleShare.font = [UIFont systemFontOfSize:16.f];
//        labTitleShare.textColor = [UIColor blackColor];
//        labTitleShare.text = LangKey(@"send_card");
//        [shareCartView addSubview:labTitleShare];
//        UIImageView *arrow5 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 18, 12, 12)];
//        arrow5.image = [UIImage imageNamed:@"icon_me_arrow"];
//        [shareCartView addSubview:arrow5];


        //: UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 100)];
        UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 100)];
        //: [_personView addSubview:cont2View];
        [_personView addSubview:cont2View];
        //: cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: cont2View.layer.cornerRadius = 12;
        cont2View.layer.cornerRadius = 12;
        //: cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cont2View.layer.shadowOffset = CGSizeMake(0,4);
        cont2View.layer.shadowOffset = CGSizeMake(0,4);
        //: cont2View.layer.shadowOpacity = 1;
        cont2View.layer.shadowOpacity = 1;
        //: cont2View.layer.shadowRadius = 16;
        cont2View.layer.shadowRadius = 16;


        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [cont2View addSubview:nameView];
        [cont2View addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onActionEditAlias)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cellAlias)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[[EndAtData sharedInstance] show_limitValue]];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleRemark.textColor = [UIColor blackColor];
        self.labTitleRemark.textColor = [UIColor blackColor];
        //: self.labTitleRemark.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [InputRed preserve:[[EndAtData sharedInstance] main_sizeImageTitle]];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor ground:[[EndAtData sharedInstance] userSessionName]];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[[EndAtData sharedInstance] m_buttonValue]];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] dreamShowThanValue]];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

//        UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, SCREEN_WIDTH-60, 80)];
//        [contView addSubview:signView];
//        UIImageView *pic2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, 24, 24)];
//        pic2.image = [UIImage imageNamed:@"ic_card_sign"];
//        [signView addSubview:pic2];
//        self.labTitSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, 10, 250, 24)];
//        self.labTitSign.font = [UIFont systemFontOfSize:16.f];
//        self.labTitSign.textColor = [UIColor blackColor];
//        self.labTitSign.text = LangKey(@"user_profile_avtivity_signature");
//        [signView addSubview:self.labTitSign];
//        self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, self.labTitleRemark.bottom, 250, 50)];
//        self.labSign.font = [UIFont systemFontOfSize:14.f];
//        self.labSign.numberOfLines = 2;
//        self.labSign.textColor = TextColor_3;
//        [signView addSubview:self.labSign];
//        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 79, SCREEN_WIDTH-60-36, 1)];
//        line2.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [signView addSubview:line2];


        //: UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [cont2View addSubview:reportView];
        [cont2View addSubview:reportView];
        //: UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reportsAction)];
        UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(messageTo)];
        //: [reportView addGestureRecognizer:reporttapGesture];
        [reportView addGestureRecognizer:reporttapGesture];
        //: UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: picreport.image = [UIImage imageNamed:@"ic_card_report"];
        picreport.image = [UIImage imageNamed:[[EndAtData sharedInstance] dreamMaxValue]];
        //: [reportView addSubview:picreport];
        [reportView addSubview:picreport];
        //: self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        //: self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleResport.textColor = [UIColor blackColor];
        self.labTitleResport.textColor = [UIColor blackColor];
        //: self.labTitleResport.text = [FFFLanguageManager getTextWithKey:@"report_activity_title"];
        self.labTitleResport.text = [InputRed preserve:[[EndAtData sharedInstance] k_atValue]];
        //: [reportView addSubview:self.labTitleResport];
        [reportView addSubview:self.labTitleResport];
        //: UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrowreport.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrowreport.image = [UIImage imageNamed:[[EndAtData sharedInstance] m_buttonValue]];
        //: [reportView addSubview:arrowreport];
        [reportView addSubview:arrowreport];


        //: self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [self.btnAdd setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [self.btnAdd setTitleColor:[UIColor ground:[[EndAtData sharedInstance] show_oldValueData]] forState:UIControlStateNormal];
        //: [self.btnAdd setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
        [self.btnAdd setTitle:[InputRed preserve:[[EndAtData sharedInstance] app_mustValue]] forState:UIControlStateNormal];
        //: [self.btnAdd addTarget:self action:@selector(addFriend) forControlEvents:UIControlEventTouchUpInside];
        [self.btnAdd addTarget:self action:@selector(inputFriend) forControlEvents:UIControlEventTouchUpInside];
        //: self.btnAdd.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.btnAdd.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] app_needContent]];
        //: self.btnAdd.layer.borderWidth = 1;
        self.btnAdd.layer.borderWidth = 1;
        //: self.btnAdd.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        self.btnAdd.layer.borderColor = [UIColor ground:[[EndAtData sharedInstance] dreamShowName]].CGColor;
        //: self.btnAdd.layer.cornerRadius = 24;
        self.btnAdd.layer.cornerRadius = 24;
        //: [_personView addSubview:self.btnAdd];
        [_personView addSubview:self.btnAdd];

        //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [self.btnDelete setTitleColor:[UIColor ground:[[EndAtData sharedInstance] show_oldValueData]] forState:UIControlStateNormal];
        //: [self.btnDelete setTitle:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_delete"] forState:UIControlStateNormal];
        [self.btnDelete setTitle:[InputRed preserve:[[EndAtData sharedInstance] k_videoData]] forState:UIControlStateNormal];
        //: [self.btnDelete addTarget:self action:@selector(deleteFriend) forControlEvents:UIControlEventTouchUpInside];
        [self.btnDelete addTarget:self action:@selector(tapCell) forControlEvents:UIControlEventTouchUpInside];
        //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.btnDelete.backgroundColor = [UIColor ground:[[EndAtData sharedInstance] app_needContent]];
        //: self.btnDelete.layer.borderWidth = 1;
        self.btnDelete.layer.borderWidth = 1;
        //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        self.btnDelete.layer.borderColor = [UIColor ground:[[EndAtData sharedInstance] dreamShowName]].CGColor;
        //: self.btnDelete.layer.cornerRadius = 24;
        self.btnDelete.layer.cornerRadius = 24;
        //: [_personView addSubview:self.btnDelete];
        [_personView addSubview:self.btnDelete];
    }
    //: return _personView;
    return _personView;
}

//: - (FFFRemarksView *)changeRemarksView
- (BirdSEyeView *)changeRemarksView
{
    //: if(!_changeRemarksView){
    if(!_changeRemarksView){
        //: _changeRemarksView = [[FFFRemarksView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeRemarksView = [[BirdSEyeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeRemarksView.hidden = YES;

    }
    //: return _changeRemarksView;
    return _changeRemarksView;
}

//: - (ZMONCustomLoadingView *)loadingView
- (LabView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[LabView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _loadingView;
    return _loadingView;
}
//: - (ZMONReportUserView *)reprotView
- (RecentView *)reprotView
{
    //: if(!_reprotView){
    if(!_reprotView){
        //: _reprotView = [[ZMONReportUserView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotView = [[RecentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotView.delegate = self;
        _reprotView.delegate = self;
    }
    //: return _reprotView;
    return _reprotView;
}

//: -(void)didTouchSubmitButton:(NSString *)reason
-(void)holdfasted:(NSString *)reason
{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"contact"] = reason?:@"";
    dict[[[EndAtData sharedInstance] dreamLengthName]] = reason?:@"";
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager bringHome:[NSString stringWithFormat:[[EndAtData sharedInstance] app_hideValue]] militaryQuarters:dict comment:NO shareFailed:^(id responseObject) {
    //: } failed:^(id responseObject, NSError *error) {
    } time:^(id responseObject, NSError *error) {
    //: }];
    }];

    //: [self.view addSubview:self.reprotNextView];
    [self.view addSubview:self.reprotNextView];
    //: [self.reprotNextView animationShow];
    [self.reprotNextView withShow];

}

//: - (ZMONReportNextView *)reprotNextView
- (DoingenceView *)reprotNextView
{
    //: if(!_reprotNextView){
    if(!_reprotNextView){
        //: _reprotNextView = [[ZMONReportNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotNextView = [[DoingenceView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotNextView.delegate = self;
        _reprotNextView.delegate = self;
    }
    //: return _reprotNextView;
    return _reprotNextView;

}
//: - (void)didTouchBlackButton
- (void)byBackground
{
    //: [self.view addSubview:self.reprotBlackView];
    [self.view addSubview:self.reprotBlackView];
//    self.reprotBlackView.userID = self.userId;
    //: [self.reprotBlackView animationShow];
    [self.reprotBlackView back];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
    self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {

                   //: if (!error) {
                   if (!error) {
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] show_commentName]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] m_addData]] duration:2.0f position:CSToastPositionCenter];

                   }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];

    //: };
    };


}
//: - (void)didTouchDeleteButton
- (void)missiveView
{
    //: [self.view addSubview:self.reprotDeleteView];
    [self.view addSubview:self.reprotDeleteView];
//    self.reprotDeleteView.userID = self.userId
    //: [self.reprotDeleteView animationShow];
    [self.reprotDeleteView blue];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
    self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
        [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
                                         //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                         removeAlias:[[ImageTing configRefresh] size]
                                          //: completion:^(NSError *error) {
                                          completion:^(NSError *error) {

            //: if (!error) {
            if (!error) {
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] kLengthName]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[InputRed preserve:[[EndAtData sharedInstance] app_shouldValue]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];

    //: };
    };
}

//: - (ZMONReportBlackView *)reprotBlackView
- (MisnomerView *)reprotBlackView
{
    //: if(!_reprotBlackView){
    if(!_reprotBlackView){
        //: _reprotBlackView = [[ZMONReportBlackView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotBlackView = [[MisnomerView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotBlackView;
    return _reprotBlackView;

}

//: - (ZMONReportDeleteView *)reprotDeleteView
- (StatuteTitleView *)reprotDeleteView
{
    //: if(!_reprotDeleteView){
    if(!_reprotDeleteView){
        //: _reprotDeleteView = [[ZMONReportDeleteView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotDeleteView = [[StatuteTitleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotDeleteView;
    return _reprotDeleteView;
}

//: @end
@end