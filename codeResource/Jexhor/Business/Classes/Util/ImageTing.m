
#import <Foundation/Foundation.h>

@interface LendFindingData : NSObject

@end

@implementation LendFindingData

+ (Byte *)LendFindingDataToCache:(Byte *)data {
    int firstCousin = data[0];
    int hope = data[1];
    for (int i = 0; i < firstCousin / 2; i++) {
        int begin = hope + i;
        int end = hope + firstCousin - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[hope + firstCousin] = 0;
    return data + hope;
}

+ (NSString *)StringFromLendFindingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LendFindingDataToCache:data]];
}  

//: chatroom_enter_retry_count
+ (NSString *)mSchoolSizeMustContent {
    /* static */ NSString *mSchoolSizeMustContent = nil;
    if (!mSchoolSizeMustContent) {
        Byte value[] = {26, 5, 207, 78, 16, 116, 110, 117, 111, 99, 95, 121, 114, 116, 101, 114, 95, 114, 101, 116, 110, 101, 95, 109, 111, 111, 114, 116, 97, 104, 99, 222};
        mSchoolSizeMustContent = [self StringFromLendFindingData:value];
    }
    return mSchoolSizeMustContent;
}

//: add_friend_need_verify
+ (NSString *)kRealistShowerValue {
    /* static */ NSString *kRealistShowerValue = nil;
    if (!kRealistShowerValue) {
        Byte value[] = {22, 6, 140, 68, 255, 129, 121, 102, 105, 114, 101, 118, 95, 100, 101, 101, 110, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 106};
        kRealistShowerValue = [self StringFromLendFindingData:value];
    }
    return kRealistShowerValue;
}

//: nim_link_address_type
+ (NSString *)mainSeriesName {
    /* static */ NSString *mainSeriesName = nil;
    if (!mainSeriesName) {
        Byte value[] = {21, 9, 25, 143, 6, 124, 66, 110, 134, 101, 112, 121, 116, 95, 115, 115, 101, 114, 100, 100, 97, 95, 107, 110, 105, 108, 95, 109, 105, 110, 173};
        mainSeriesName = [self StringFromLendFindingData:value];
    }
    return mainSeriesName;
}

//: auto_remove_snap_message
+ (NSString *)mChipData {
    /* static */ NSString *mChipData = nil;
    if (!mChipData) {
        Byte value[] = {24, 3, 107, 101, 103, 97, 115, 115, 101, 109, 95, 112, 97, 110, 115, 95, 101, 118, 111, 109, 101, 114, 95, 111, 116, 117, 97, 20};
        mChipData = [self StringFromLendFindingData:value];
    }
    return mChipData;
}

//: enable_rotate
+ (NSString *)kShowSliceSessionText {
    /* static */ NSString *kShowSliceSessionText = nil;
    if (!kShowSliceSessionText) {
        Byte value[] = {13, 5, 11, 32, 149, 101, 116, 97, 116, 111, 114, 95, 101, 108, 98, 97, 110, 101, 37};
        kShowSliceSessionText = [self StringFromLendFindingData:value];
    }
    return kShowSliceSessionText;
}

//: sync_when_remote_fetch_messages
+ (NSString *)k_appearSessionName {
    /* static */ NSString *k_appearSessionName = nil;
    if (!k_appearSessionName) {
        Byte value[] = {31, 6, 168, 35, 134, 218, 115, 101, 103, 97, 115, 115, 101, 109, 95, 104, 99, 116, 101, 102, 95, 101, 116, 111, 109, 101, 114, 95, 110, 101, 104, 119, 95, 99, 110, 121, 115, 241};
        k_appearSessionName = [self StringFromLendFindingData:value];
    }
    return k_appearSessionName;
}

//: local_search_time_order_desc
+ (NSString *)user_removeKeepItemValue {
    /* static */ NSString *user_removeKeepItemValue = nil;
    if (!user_removeKeepItemValue) {
        Byte value[] = {28, 7, 247, 200, 205, 109, 2, 99, 115, 101, 100, 95, 114, 101, 100, 114, 111, 95, 101, 109, 105, 116, 95, 104, 99, 114, 97, 101, 115, 95, 108, 97, 99, 111, 108, 145};
        user_removeKeepItemValue = [self StringFromLendFindingData:value];
    }
    return user_removeKeepItemValue;
}

//: ignore_team_types
+ (NSString *)main_maxData {
    /* static */ NSString *main_maxData = nil;
    if (!main_maxData) {
        Byte value[] = {17, 2, 115, 101, 112, 121, 116, 95, 109, 97, 101, 116, 95, 101, 114, 111, 110, 103, 105, 210};
        main_maxData = [self StringFromLendFindingData:value];
    }
    return main_maxData;
}

//: server_record_host
+ (NSString *)mainNeedText {
    /* static */ NSString *mainNeedText = nil;
    if (!mainNeedText) {
        Byte value[] = {18, 11, 103, 156, 145, 177, 240, 115, 198, 29, 166, 116, 115, 111, 104, 95, 100, 114, 111, 99, 101, 114, 95, 114, 101, 118, 114, 101, 115, 158};
        mainNeedText = [self StringFromLendFindingData:value];
    }
    return mainNeedText;
}

//: server_record_mode
+ (NSString *)noti_premiumTitle {
    /* static */ NSString *noti_premiumTitle = nil;
    if (!noti_premiumTitle) {
        Byte value[] = {18, 7, 165, 83, 246, 108, 58, 101, 100, 111, 109, 95, 100, 114, 111, 99, 101, 114, 95, 114, 101, 118, 114, 101, 115, 94};
        noti_premiumTitle = [self StringFromLendFindingData:value];
    }
    return noti_premiumTitle;
}

//: animated_image_thumbnail_enabled
+ (NSString *)main_successData {
    /* static */ NSString *main_successData = nil;
    if (!main_successData) {
        Byte value[] = {32, 4, 119, 126, 100, 101, 108, 98, 97, 110, 101, 95, 108, 105, 97, 110, 98, 109, 117, 104, 116, 95, 101, 103, 97, 109, 105, 95, 100, 101, 116, 97, 109, 105, 110, 97, 190};
        main_successData = [self StringFromLendFindingData:value];
    }
    return main_successData;
}

//: enable_sdk_video_render
+ (NSString *)app_unitContent {
    /* static */ NSString *app_unitContent = nil;
    if (!app_unitContent) {
        Byte value[] = {23, 12, 97, 52, 248, 12, 242, 57, 17, 9, 177, 221, 114, 101, 100, 110, 101, 114, 95, 111, 101, 100, 105, 118, 95, 107, 100, 115, 95, 101, 108, 98, 97, 110, 101, 14};
        app_unitContent = [self StringFromLendFindingData:value];
    }
    return app_unitContent;
}

//: enable_apns_prefix
+ (NSString *)noti_accountingData {
    /* static */ NSString *noti_accountingData = nil;
    if (!noti_accountingData) {
        Byte value[] = {18, 12, 94, 189, 133, 124, 236, 79, 47, 43, 219, 146, 120, 105, 102, 101, 114, 112, 95, 115, 110, 112, 97, 95, 101, 108, 98, 97, 110, 101, 75};
        noti_accountingData = [self StringFromLendFindingData:value];
    }
    return noti_accountingData;
}

//: server_record_video
+ (NSString *)user_deployName {
    /* static */ NSString *user_deployName = nil;
    if (!user_deployName) {
        Byte value[] = {19, 9, 61, 42, 25, 11, 73, 221, 249, 111, 101, 100, 105, 118, 95, 100, 114, 111, 99, 101, 114, 95, 114, 101, 118, 114, 101, 115, 169};
        user_deployName = [self StringFromLendFindingData:value];
    }
    return user_deployName;
}

//: enable_revoke_count
+ (NSString *)mTypicalValue {
    /* static */ NSString *mTypicalValue = nil;
    if (!mTypicalValue) {
        Byte value[] = {19, 6, 187, 110, 255, 153, 116, 110, 117, 111, 99, 95, 101, 107, 111, 118, 101, 114, 95, 101, 108, 98, 97, 110, 101, 126};
        mTypicalValue = [self StringFromLendFindingData:value];
    }
    return mTypicalValue;
}

//: custom_client_type
+ (NSString *)appBubbleValue {
    /* static */ NSString *appBubbleValue = nil;
    if (!appBubbleValue) {
        Byte value[] = {18, 9, 127, 161, 26, 138, 217, 246, 178, 101, 112, 121, 116, 95, 116, 110, 101, 105, 108, 99, 95, 109, 111, 116, 115, 117, 99, 218};
        appBubbleValue = [self StringFromLendFindingData:value];
    }
    return appBubbleValue;
}

//: ipv6_default_link
+ (NSString *)main_nameText {
    /* static */ NSString *main_nameText = nil;
    if (!main_nameText) {
        Byte value[] = {17, 5, 250, 180, 90, 107, 110, 105, 108, 95, 116, 108, 117, 97, 102, 101, 100, 95, 54, 118, 112, 105, 208};
        main_nameText = [self StringFromLendFindingData:value];
    }
    return main_nameText;
}

//: socks5_password
+ (NSString *)k_textShowTitle {
    /* static */ NSString *k_textShowTitle = nil;
    if (!k_textShowTitle) {
        Byte value[] = {15, 11, 73, 227, 41, 88, 171, 62, 121, 122, 54, 100, 114, 111, 119, 115, 115, 97, 112, 95, 53, 115, 107, 99, 111, 115, 186};
        k_textShowTitle = [self StringFromLendFindingData:value];
    }
    return k_textShowTitle;
}

//: tester_recent_session_most_enable
+ (NSString *)appPremiumName {
    /* static */ NSString *appPremiumName = nil;
    if (!appPremiumName) {
        Byte value[] = {33, 6, 101, 38, 16, 141, 101, 108, 98, 97, 110, 101, 95, 116, 115, 111, 109, 95, 110, 111, 105, 115, 115, 101, 115, 95, 116, 110, 101, 99, 101, 114, 95, 114, 101, 116, 115, 101, 116, 20};
        appPremiumName = [self StringFromLendFindingData:value];
    }
    return appPremiumName;
}

//: rts_socks5_addr
+ (NSString *)kTypicalTitle {
    /* static */ NSString *kTypicalTitle = nil;
    if (!kTypicalTitle) {
        Byte value[] = {15, 3, 26, 114, 100, 100, 97, 95, 53, 115, 107, 99, 111, 115, 95, 115, 116, 114, 22};
        kTypicalTitle = [self StringFromLendFindingData:value];
    }
    return kTypicalTitle;
}

//: nim_sym_crypto_type
+ (NSString *)kBotAppearValue {
    /* static */ NSString *kBotAppearValue = nil;
    if (!kBotAppearValue) {
        Byte value[] = {19, 3, 56, 101, 112, 121, 116, 95, 111, 116, 112, 121, 114, 99, 95, 109, 121, 115, 95, 109, 105, 110, 40};
        kBotAppearValue = [self StringFromLendFindingData:value];
    }
    return kBotAppearValue;
}

//: count_team_notification
+ (NSString *)app_petButtonTitle {
    /* static */ NSString *app_petButtonTitle = nil;
    if (!app_petButtonTitle) {
        Byte value[] = {23, 9, 11, 74, 3, 71, 218, 182, 145, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 95, 109, 97, 101, 116, 95, 116, 110, 117, 111, 99, 241};
        app_petButtonTitle = [self StringFromLendFindingData:value];
    }
    return app_petButtonTitle;
}

//: rts_socks5_type
+ (NSString *)appSeriesData {
    /* static */ NSString *appSeriesData = nil;
    if (!appSeriesData) {
        Byte value[] = {15, 2, 101, 112, 121, 116, 95, 53, 115, 107, 99, 111, 115, 95, 115, 116, 114, 169};
        appSeriesData = [self StringFromLendFindingData:value];
    }
    return appSeriesData;
}

//: videochat_start_with_back_camera
+ (NSString *)user_inningName {
    /* static */ NSString *user_inningName = nil;
    if (!user_inningName) {
        Byte value[] = {32, 12, 79, 181, 120, 148, 197, 183, 23, 15, 218, 59, 97, 114, 101, 109, 97, 99, 95, 107, 99, 97, 98, 95, 104, 116, 105, 119, 95, 116, 114, 97, 116, 115, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 126};
        user_inningName = [self StringFromLendFindingData:value];
    }
    return user_inningName;
}

//: videochat_local_record_video_kbps
+ (NSString *)dreamColorTitle {
    /* static */ NSString *dreamColorTitle = nil;
    if (!dreamColorTitle) {
        Byte value[] = {33, 8, 88, 234, 201, 181, 213, 160, 115, 112, 98, 107, 95, 111, 101, 100, 105, 118, 95, 100, 114, 111, 99, 101, 114, 95, 108, 97, 99, 111, 108, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 83};
        dreamColorTitle = [self StringFromLendFindingData:value];
    }
    return dreamColorTitle;
}

//: enable_file_quick_transfer
+ (NSString *)dream_apartmentPeerName {
    /* static */ NSString *dream_apartmentPeerName = nil;
    if (!dream_apartmentPeerName) {
        Byte value[] = {26, 3, 104, 114, 101, 102, 115, 110, 97, 114, 116, 95, 107, 99, 105, 117, 113, 95, 101, 108, 105, 102, 95, 101, 108, 98, 97, 110, 101, 109};
        dream_apartmentPeerName = [self StringFromLendFindingData:value];
    }
    return dream_apartmentPeerName;
}

//: socks5_addr
+ (NSString *)user_inspireName {
    /* static */ NSString *user_inspireName = nil;
    if (!user_inspireName) {
        Byte value[] = {11, 5, 97, 140, 61, 114, 100, 100, 97, 95, 53, 115, 107, 99, 111, 115, 150};
        user_inspireName = [self StringFromLendFindingData:value];
    }
    return user_inspireName;
}

//: PreferenceSpecifiers
+ (NSString *)user_towerName {
    /* static */ NSString *user_towerName = nil;
    if (!user_towerName) {
        Byte value[] = {20, 9, 83, 227, 170, 214, 40, 57, 63, 115, 114, 101, 105, 102, 105, 99, 101, 112, 83, 101, 99, 110, 101, 114, 101, 102, 101, 114, 80, 57};
        user_towerName = [self StringFromLendFindingData:value];
    }
    return user_towerName;
}

//: nim_test_disable_traceroute
+ (NSString *)dreamTotalellectualBrokerData {
    /* static */ NSString *dreamTotalellectualBrokerData = nil;
    if (!dreamTotalellectualBrokerData) {
        Byte value[] = {27, 11, 113, 43, 24, 148, 37, 133, 219, 3, 43, 101, 116, 117, 111, 114, 101, 99, 97, 114, 116, 95, 101, 108, 98, 97, 115, 105, 100, 95, 116, 115, 101, 116, 95, 109, 105, 110, 150};
        dreamTotalellectualBrokerData = [self StringFromLendFindingData:value];
    }
    return dreamTotalellectualBrokerData;
}

//: videochat_video_encode_max_kbps
+ (NSString *)showUndertakeContent {
    /* static */ NSString *showUndertakeContent = nil;
    if (!showUndertakeContent) {
        Byte value[] = {31, 3, 77, 115, 112, 98, 107, 95, 120, 97, 109, 95, 101, 100, 111, 99, 110, 101, 95, 111, 101, 100, 105, 118, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 93};
        showUndertakeContent = [self StringFromLendFindingData:value];
    }
    return showUndertakeContent;
}

//: maximum_log_days
+ (NSString *)showUniteData {
    /* static */ NSString *showUniteData = nil;
    if (!showUniteData) {
        Byte value[] = {16, 5, 203, 95, 194, 115, 121, 97, 100, 95, 103, 111, 108, 95, 109, 117, 109, 105, 120, 97, 109, 80};
        showUniteData = [self StringFromLendFindingData:value];
    }
    return showUniteData;
}

//: ipv4_default_link
+ (NSString *)user_mailName {
    /* static */ NSString *user_mailName = nil;
    if (!user_mailName) {
        Byte value[] = {17, 2, 107, 110, 105, 108, 95, 116, 108, 117, 97, 102, 101, 100, 95, 52, 118, 112, 105, 23};
        user_mailName = [self StringFromLendFindingData:value];
    }
    return user_mailName;
}

//: show_fps_for_app
+ (NSString *)show_accelerateData {
    /* static */ NSString *show_accelerateData = nil;
    if (!show_accelerateData) {
        Byte value[] = {16, 5, 156, 49, 92, 112, 112, 97, 95, 114, 111, 102, 95, 115, 112, 102, 95, 119, 111, 104, 115, 29};
        show_accelerateData = [self StringFromLendFindingData:value];
    }
    return show_accelerateData;
}

//: enable_thread_cloud_pull
+ (NSString *)dreamFindingData {
    /* static */ NSString *dreamFindingData = nil;
    if (!dreamFindingData) {
        Byte value[] = {24, 11, 109, 114, 46, 45, 24, 201, 42, 105, 232, 108, 108, 117, 112, 95, 100, 117, 111, 108, 99, 95, 100, 97, 101, 114, 104, 116, 95, 101, 108, 98, 97, 110, 101, 123};
        dreamFindingData = [self StringFromLendFindingData:value];
    }
    return dreamFindingData;
}

//: exception_upload_log_enabled
+ (NSString *)appLendValue {
    /* static */ NSString *appLendValue = nil;
    if (!appLendValue) {
        Byte value[] = {28, 2, 100, 101, 108, 98, 97, 110, 101, 95, 103, 111, 108, 95, 100, 97, 111, 108, 112, 117, 95, 110, 111, 105, 116, 112, 101, 99, 120, 101, 141};
        appLendValue = [self StringFromLendFindingData:value];
    }
    return appLendValue;
}

//: socks5_username
+ (NSString *)main_nameValue {
    /* static */ NSString *main_nameValue = nil;
    if (!main_nameValue) {
        Byte value[] = {15, 4, 165, 227, 101, 109, 97, 110, 114, 101, 115, 117, 95, 53, 115, 107, 99, 111, 115, 76};
        main_nameValue = [self StringFromLendFindingData:value];
    }
    return main_nameValue;
}

//: bundle
+ (NSString *)dream_sessionZineText {
    /* static */ NSString *dream_sessionZineText = nil;
    if (!dream_sessionZineText) {
        Byte value[] = {6, 11, 255, 231, 18, 50, 30, 155, 252, 211, 161, 101, 108, 100, 110, 117, 98, 216};
        dream_sessionZineText = [self StringFromLendFindingData:value];
    }
    return dream_sessionZineText;
}

//: custom_apns_content_type
+ (NSString *)dream_sessionData {
    /* static */ NSString *dream_sessionData = nil;
    if (!dream_sessionData) {
        Byte value[] = {24, 11, 187, 180, 122, 149, 226, 240, 72, 144, 250, 101, 112, 121, 116, 95, 116, 110, 101, 116, 110, 111, 99, 95, 115, 110, 112, 97, 95, 109, 111, 116, 115, 117, 99, 166};
        dream_sessionData = [self StringFromLendFindingData:value];
    }
    return dream_sessionData;
}

//: auto_remove_alias
+ (NSString *)k_warnName {
    /* static */ NSString *k_warnName = nil;
    if (!k_warnName) {
        Byte value[] = {17, 8, 210, 238, 14, 213, 64, 108, 115, 97, 105, 108, 97, 95, 101, 118, 111, 109, 101, 114, 95, 111, 116, 117, 97, 194};
        k_warnName = [self StringFromLendFindingData:value];
    }
    return k_warnName;
}

//: enable_team_apns_force
+ (NSString *)notiViewName {
    /* static */ NSString *notiViewName = nil;
    if (!notiViewName) {
        Byte value[] = {22, 7, 143, 242, 18, 93, 58, 101, 99, 114, 111, 102, 95, 115, 110, 112, 97, 95, 109, 97, 101, 116, 95, 101, 108, 98, 97, 110, 101, 62};
        notiViewName = [self StringFromLendFindingData:value];
    }
    return notiViewName;
}

//: videochat_remote_video_content_mode
+ (NSString *)main_acheData {
    /* static */ NSString *main_acheData = nil;
    if (!main_acheData) {
        Byte value[] = {35, 8, 140, 81, 96, 49, 66, 62, 101, 100, 111, 109, 95, 116, 110, 101, 116, 110, 111, 99, 95, 111, 101, 100, 105, 118, 95, 101, 116, 111, 109, 101, 114, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 187};
        main_acheData = [self StringFromLendFindingData:value];
    }
    return main_acheData;
}

//: nim_asym_crypto_type
+ (NSString *)app_uniteMessageBirthdayValue {
    /* static */ NSString *app_uniteMessageBirthdayValue = nil;
    if (!app_uniteMessageBirthdayValue) {
        Byte value[] = {20, 12, 131, 126, 151, 79, 45, 13, 218, 44, 10, 10, 101, 112, 121, 116, 95, 111, 116, 112, 121, 114, 99, 95, 109, 121, 115, 97, 95, 109, 105, 110, 147};
        app_uniteMessageBirthdayValue = [self StringFromLendFindingData:value];
    }
    return app_uniteMessageBirthdayValue;
}

//: menu_delete_msg_from_server
+ (NSString *)appMortalText {
    /* static */ NSString *appMortalText = nil;
    if (!appMortalText) {
        Byte value[] = {27, 7, 213, 223, 242, 1, 90, 114, 101, 118, 114, 101, 115, 95, 109, 111, 114, 102, 95, 103, 115, 109, 95, 101, 116, 101, 108, 101, 100, 95, 117, 110, 101, 109, 111};
        appMortalText = [self StringFromLendFindingData:value];
    }
    return appMortalText;
}

//: use_socks5
+ (NSString *)notiTitleName {
    /* static */ NSString *notiTitleName = nil;
    if (!notiTitleName) {
        Byte value[] = {10, 8, 194, 235, 187, 120, 251, 215, 53, 115, 107, 99, 111, 115, 95, 101, 115, 117, 140};
        notiTitleName = [self StringFromLendFindingData:value];
    }
    return notiTitleName;
}

//: socks5
+ (NSString *)showWithText {
    /* static */ NSString *showWithText = nil;
    if (!showWithText) {
        Byte value[] = {6, 6, 164, 197, 177, 78, 53, 115, 107, 99, 111, 115, 128};
        showWithText = [self StringFromLendFindingData:value];
    }
    return showWithText;
}

//: Key
+ (NSString *)notiModeBarrelTagValue {
    /* static */ NSString *notiModeBarrelTagValue = nil;
    if (!notiModeBarrelTagValue) {
        Byte value[] = {3, 3, 114, 121, 101, 75, 158};
        notiModeBarrelTagValue = [self StringFromLendFindingData:value];
    }
    return notiModeBarrelTagValue;
}

//: DefaultValue
+ (NSString *)appCrowdedSuccessDayData {
    /* static */ NSString *appCrowdedSuccessDayData = nil;
    if (!appCrowdedSuccessDayData) {
        Byte value[] = {12, 9, 194, 201, 51, 181, 128, 147, 251, 101, 117, 108, 97, 86, 116, 108, 117, 97, 102, 101, 68, 68};
        appCrowdedSuccessDayData = [self StringFromLendFindingData:value];
    }
    return appCrowdedSuccessDayData;
}

//: server_record_whiteboard_data
+ (NSString *)main_bubbleTitle {
    /* static */ NSString *main_bubbleTitle = nil;
    if (!main_bubbleTitle) {
        Byte value[] = {29, 4, 184, 121, 97, 116, 97, 100, 95, 100, 114, 97, 111, 98, 101, 116, 105, 104, 119, 95, 100, 114, 111, 99, 101, 114, 95, 114, 101, 118, 114, 101, 115, 157};
        main_bubbleTitle = [self StringFromLendFindingData:value];
    }
    return main_bubbleTitle;
}

//: ignore_message_type
+ (NSString *)appSuccessName {
    /* static */ NSString *appSuccessName = nil;
    if (!appSuccessName) {
        Byte value[] = {19, 5, 73, 143, 1, 101, 112, 121, 116, 95, 101, 103, 97, 115, 115, 101, 109, 95, 101, 114, 111, 110, 103, 105, 171};
        appSuccessName = [self StringFromLendFindingData:value];
    }
    return appSuccessName;
}

//: Root.plist
+ (NSString *)show_controlValue {
    /* static */ NSString *show_controlValue = nil;
    if (!show_controlValue) {
        Byte value[] = {10, 10, 95, 168, 40, 62, 241, 228, 71, 97, 116, 115, 105, 108, 112, 46, 116, 111, 111, 82, 175};
        show_controlValue = [self StringFromLendFindingData:value];
    }
    return show_controlValue;
}

//: server_record_audio
+ (NSString *)dreamMakeTitle {
    /* static */ NSString *dreamMakeTitle = nil;
    if (!dreamMakeTitle) {
        Byte value[] = {19, 10, 65, 79, 167, 208, 54, 131, 157, 58, 111, 105, 100, 117, 97, 95, 100, 114, 111, 99, 101, 114, 95, 114, 101, 118, 114, 101, 115, 203};
        dreamMakeTitle = [self StringFromLendFindingData:value];
    }
    return dreamMakeTitle;
}

//: videochat_voice_detect
+ (NSString *)m_assaultData {
    /* static */ NSString *m_assaultData = nil;
    if (!m_assaultData) {
        Byte value[] = {22, 5, 142, 242, 114, 116, 99, 101, 116, 101, 100, 95, 101, 99, 105, 111, 118, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 159};
        m_assaultData = [self StringFromLendFindingData:value];
    }
    return m_assaultData;
}

//: auto_remove_remote_session
+ (NSString *)kScaleMakeData {
    /* static */ NSString *kScaleMakeData = nil;
    if (!kScaleMakeData) {
        Byte value[] = {26, 2, 110, 111, 105, 115, 115, 101, 115, 95, 101, 116, 111, 109, 101, 114, 95, 101, 118, 111, 109, 101, 114, 95, 111, 116, 117, 97, 208};
        kScaleMakeData = [self StringFromLendFindingData:value];
    }
    return kScaleMakeData;
}

//: nim_rsa_padding_mode
+ (NSString *)dreamNameValue {
    /* static */ NSString *dreamNameValue = nil;
    if (!dreamNameValue) {
        Byte value[] = {20, 11, 100, 109, 92, 78, 170, 246, 39, 249, 39, 101, 100, 111, 109, 95, 103, 110, 105, 100, 100, 97, 112, 95, 97, 115, 114, 95, 109, 105, 110, 126};
        dreamNameValue = [self StringFromLendFindingData:value];
    }
    return dreamNameValue;
}

//: nim_test_msg_env
+ (NSString *)show_againstName {
    /* static */ NSString *show_againstName = nil;
    if (!show_againstName) {
        Byte value[] = {16, 7, 107, 60, 203, 142, 107, 118, 110, 101, 95, 103, 115, 109, 95, 116, 115, 101, 116, 95, 109, 105, 110, 183};
        show_againstName = [self StringFromLendFindingData:value];
    }
    return show_againstName;
}

//: videochat_auto_rotate_remote_video
+ (NSString *)dream_colorDayText {
    /* static */ NSString *dream_colorDayText = nil;
    if (!dream_colorDayText) {
        Byte value[] = {34, 2, 111, 101, 100, 105, 118, 95, 101, 116, 111, 109, 101, 114, 95, 101, 116, 97, 116, 111, 114, 95, 111, 116, 117, 97, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 115};
        dream_colorDayText = [self StringFromLendFindingData:value];
    }
    return dream_colorDayText;
}

//: socks5_type
+ (NSString *)user_petValue {
    /* static */ NSString *user_petValue = nil;
    if (!user_petValue) {
        Byte value[] = {11, 9, 41, 214, 185, 175, 201, 181, 240, 101, 112, 121, 116, 95, 53, 115, 107, 99, 111, 115, 157};
        user_petValue = [self StringFromLendFindingData:value];
    }
    return user_petValue;
}

//: custom
+ (NSString *)app_atImageData {
    /* static */ NSString *app_atImageData = nil;
    if (!app_atImageData) {
        Byte value[] = {6, 7, 192, 81, 1, 148, 248, 109, 111, 116, 115, 117, 99, 172};
        app_atImageData = [self StringFromLendFindingData:value];
    }
    return app_atImageData;
}

//: videochat_prefer_hd_audio
+ (NSString *)mScaleText {
    /* static */ NSString *mScaleText = nil;
    if (!mScaleText) {
        Byte value[] = {25, 5, 223, 82, 198, 111, 105, 100, 117, 97, 95, 100, 104, 95, 114, 101, 102, 101, 114, 112, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 48};
        mScaleText = [self StringFromLendFindingData:value];
    }
    return mScaleText;
}

//: enable_revoke_msg_ps
+ (NSString *)dream_rowSliceValue {
    /* static */ NSString *dream_rowSliceValue = nil;
    if (!dream_rowSliceValue) {
        Byte value[] = {20, 9, 105, 244, 55, 233, 213, 178, 240, 115, 112, 95, 103, 115, 109, 95, 101, 107, 111, 118, 101, 114, 95, 101, 108, 98, 97, 110, 101, 164};
        dream_rowSliceValue = [self StringFromLendFindingData:value];
    }
    return dream_rowSliceValue;
}

//: enabled_remove_recent_session
+ (NSString *)mainMortalValue {
    /* static */ NSString *mainMortalValue = nil;
    if (!mainMortalValue) {
        Byte value[] = {29, 8, 109, 106, 70, 203, 65, 168, 110, 111, 105, 115, 115, 101, 115, 95, 116, 110, 101, 99, 101, 114, 95, 101, 118, 111, 109, 101, 114, 95, 100, 101, 108, 98, 97, 110, 101, 71};
        mainMortalValue = [self StringFromLendFindingData:value];
    }
    return mainMortalValue;
}

//: rts_socks5_password
+ (NSString *)show_colorName {
    /* static */ NSString *show_colorName = nil;
    if (!show_colorName) {
        Byte value[] = {19, 11, 201, 243, 220, 175, 253, 223, 63, 244, 20, 100, 114, 111, 119, 115, 115, 97, 112, 95, 53, 115, 107, 99, 111, 115, 95, 115, 116, 114, 102};
        show_colorName = [self StringFromLendFindingData:value];
    }
    return show_colorName;
}

//: Settings
+ (NSString *)dreamPetValue {
    /* static */ NSString *dreamPetValue = nil;
    if (!dreamPetValue) {
        Byte value[] = {8, 12, 85, 94, 245, 81, 69, 161, 249, 84, 128, 235, 115, 103, 110, 105, 116, 116, 101, 83, 2};
        dreamPetValue = [self StringFromLendFindingData:value];
    }
    return dreamPetValue;
}

//: enabled_drop_msg_table
+ (NSString *)show_disableValue {
    /* static */ NSString *show_disableValue = nil;
    if (!show_disableValue) {
        Byte value[] = {22, 6, 200, 49, 114, 212, 101, 108, 98, 97, 116, 95, 103, 115, 109, 95, 112, 111, 114, 100, 95, 100, 101, 108, 98, 97, 110, 101, 253};
        show_disableValue = [self StringFromLendFindingData:value];
    }
    return show_disableValue;
}

//: disable_proxmity_monitor
+ (NSString *)m_botName {
    /* static */ NSString *m_botName = nil;
    if (!m_botName) {
        Byte value[] = {24, 11, 149, 15, 192, 28, 12, 15, 40, 70, 151, 114, 111, 116, 105, 110, 111, 109, 95, 121, 116, 105, 109, 120, 111, 114, 112, 95, 101, 108, 98, 97, 115, 105, 100, 240};
        m_botName = [self StringFromLendFindingData:value];
    }
    return m_botName;
}

//: file_download_token_enabled
+ (NSString *)mainLimitTotalText {
    /* static */ NSString *mainLimitTotalText = nil;
    if (!mainLimitTotalText) {
        Byte value[] = {27, 8, 198, 190, 185, 12, 144, 143, 100, 101, 108, 98, 97, 110, 101, 95, 110, 101, 107, 111, 116, 95, 100, 97, 111, 108, 110, 119, 111, 100, 95, 101, 108, 105, 102, 110};
        mainLimitTotalText = [self StringFromLendFindingData:value];
    }
    return mainLimitTotalText;
}

//: enable_sync_stick_top_session
+ (NSString *)noti_threeData {
    /* static */ NSString *noti_threeData = nil;
    if (!noti_threeData) {
        Byte value[] = {29, 9, 19, 117, 177, 75, 172, 97, 101, 110, 111, 105, 115, 115, 101, 115, 95, 112, 111, 116, 95, 107, 99, 105, 116, 115, 95, 99, 110, 121, 115, 95, 101, 108, 98, 97, 110, 101, 136};
        noti_threeData = [self StringFromLendFindingData:value];
    }
    return noti_threeData;
}

//: using_amr
+ (NSString *)dream_videoText {
    /* static */ NSString *dream_videoText = nil;
    if (!dream_videoText) {
        Byte value[] = {9, 5, 111, 50, 1, 114, 109, 97, 95, 103, 110, 105, 115, 117, 168};
        dream_videoText = [self StringFromLendFindingData:value];
    }
    return dream_videoText;
}

//: menu_delete_msg_from_db
+ (NSString *)mToeThreeName {
    /* static */ NSString *mToeThreeName = nil;
    if (!mToeThreeName) {
        Byte value[] = {23, 6, 236, 205, 73, 180, 98, 100, 95, 109, 111, 114, 102, 95, 103, 115, 109, 95, 101, 116, 101, 108, 101, 100, 95, 117, 110, 101, 109, 8};
        mToeThreeName = [self StringFromLendFindingData:value];
    }
    return mToeThreeName;
}

//: auto_fetch_attachment
+ (NSString *)mainDepartmentValue {
    /* static */ NSString *mainDepartmentValue = nil;
    if (!mainDepartmentValue) {
        Byte value[] = {21, 7, 80, 231, 243, 10, 175, 116, 110, 101, 109, 104, 99, 97, 116, 116, 97, 95, 104, 99, 116, 101, 102, 95, 111, 116, 117, 97, 201};
        mainDepartmentValue = [self StringFromLendFindingData:value];
    }
    return mainDepartmentValue;
}

//: use_rts_socks5
+ (NSString *)dream_towerTitle {
    /* static */ NSString *dream_towerTitle = nil;
    if (!dream_towerTitle) {
        Byte value[] = {14, 4, 106, 115, 53, 115, 107, 99, 111, 115, 95, 115, 116, 114, 95, 101, 115, 117, 208};
        dream_towerTitle = [self StringFromLendFindingData:value];
    }
    return dream_towerTitle;
}

//: disable_audio_session_reset
+ (NSString *)kAcheValue {
    /* static */ NSString *kAcheValue = nil;
    if (!kAcheValue) {
        Byte value[] = {27, 10, 105, 93, 161, 225, 114, 181, 61, 158, 116, 101, 115, 101, 114, 95, 110, 111, 105, 115, 115, 101, 115, 95, 111, 105, 100, 117, 97, 95, 101, 108, 98, 97, 115, 105, 100, 3};
        kAcheValue = [self StringFromLendFindingData:value];
    }
    return kAcheValue;
}

//: videochat_auto_disable_audiosession
+ (NSString *)mMilkLendContent {
    /* static */ NSString *mMilkLendContent = nil;
    if (!mMilkLendContent) {
        Byte value[] = {35, 2, 110, 111, 105, 115, 115, 101, 115, 111, 105, 100, 117, 97, 95, 101, 108, 98, 97, 115, 105, 100, 95, 111, 116, 117, 97, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 3};
        mMilkLendContent = [self StringFromLendFindingData:value];
    }
    return mMilkLendContent;
}

//: videochat_audio_denoise
+ (NSString *)noti_crowdedMustValue {
    /* static */ NSString *noti_crowdedMustValue = nil;
    if (!noti_crowdedMustValue) {
        Byte value[] = {23, 9, 196, 243, 62, 111, 164, 163, 238, 101, 115, 105, 111, 110, 101, 100, 95, 111, 105, 100, 117, 97, 95, 116, 97, 104, 99, 111, 101, 100, 105, 118, 14};
        noti_crowdedMustValue = [self StringFromLendFindingData:value];
    }
    return noti_crowdedMustValue;
}

//: rts_socks5_username
+ (NSString *)dreamThreeData {
    /* static */ NSString *dreamThreeData = nil;
    if (!dreamThreeData) {
        Byte value[] = {19, 3, 149, 101, 109, 97, 110, 114, 101, 115, 117, 95, 53, 115, 107, 99, 111, 115, 95, 115, 116, 114, 83};
        dreamThreeData = [self StringFromLendFindingData:value];
    }
    return dreamThreeData;
}

//: create_recent_when_sync_remote_messages
+ (NSString *)userCousinData {
    /* static */ NSString *userCousinData = nil;
    if (!userCousinData) {
        Byte value[] = {39, 8, 48, 143, 88, 54, 105, 129, 115, 101, 103, 97, 115, 115, 101, 109, 95, 101, 116, 111, 109, 101, 114, 95, 99, 110, 121, 115, 95, 110, 101, 104, 119, 95, 116, 110, 101, 99, 101, 114, 95, 101, 116, 97, 101, 114, 99, 29};
        userCousinData = [self StringFromLendFindingData:value];
    }
    return userCousinData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageTing.m
//  NIM
//
//  Created by chris on 15/7/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"

//: @implementation NTESBundleSetting
@implementation ImageTing

//: + (instancetype)sharedConfig
+ (instancetype)configRefresh
{
    //: static NTESBundleSetting *instance = nil;
    static ImageTing *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESBundleSetting alloc] init];
        instance = [[ImageTing alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: if(self = [super init]) {
    if(self = [super init]) {
        //: [self checkSocks5DefaultSetting];
        [self needResolutionSetting];
        //: NSDictionary *dict = @{
        NSDictionary *dict = @{
                               //: @"exception_upload_log_enabled" : @(NO),
                               [LendFindingData appLendValue] : @(NO),
                               //: @"custom_apns_content_type" : @"custom"
                               [LendFindingData dream_sessionData] : [LendFindingData app_atImageData]
                               //: };
                               };
        //: [[NSUserDefaults standardUserDefaults] registerDefaults:dict];
        [[NSUserDefaults standardUserDefaults] registerDefaults:dict];
    }
    //: return self;
    return self;
}

//: - (void)checkSocks5DefaultSetting {
- (void)needResolutionSetting {
    //: NSString *settingBundlePath = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"];
    NSString *settingBundlePath = [[NSBundle mainBundle] pathForResource:[LendFindingData dreamPetValue] ofType:[LendFindingData dream_sessionZineText]];
    //: NSString *plistPath = [settingBundlePath stringByAppendingPathComponent:@"Root.plist"];
    NSString *plistPath = [settingBundlePath stringByAppendingPathComponent:[LendFindingData show_controlValue]];
    //: NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    //: NSArray *preferences = [plistDict valueForKey:@"PreferenceSpecifiers"];
    NSArray *preferences = [plistDict valueForKey:[LendFindingData user_towerName]];
    //: NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    //: for(NSDictionary *setting in preferences) {
    for(NSDictionary *setting in preferences) {
        // 如果NSUserDefaults里有，则优先使用UserDefaults里的
        //: NSString *key = [setting valueForKey:@"Key"];
        NSString *key = [setting valueForKey:[LendFindingData notiModeBarrelTagValue]];

        //: if (key && key.length>0 && [key containsString:@"socks5"]) {
        if (key && key.length>0 && [key containsString:[LendFindingData showWithText]]) {
            // 从Plist中获取值填充
            //: id value = [setting valueForKey:@"DefaultValue"];
            id value = [setting valueForKey:[LendFindingData appCrowdedSuccessDayData]];
            //: if(value) {
            if(value) {
                //: [userDefaults setObject:value forKey:key];
                [userDefaults setObject:value forKey:key];
            }
        }
    }
}

//: - (BOOL)removeSessionWhenDeleteMessages{
- (BOOL)pastLength{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled_remove_recent_session"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mainMortalValue]] boolValue];
}

//: - (BOOL)dropTableWhenDeleteMessages
- (BOOL)tab
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled_drop_msg_table"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData show_disableValue]] boolValue];

}

//: - (BOOL)localSearchOrderByTimeDesc{
- (BOOL)example{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"local_search_time_order_desc"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData user_removeKeepItemValue]] boolValue];
}


//: - (BOOL)autoRemoveRemoteSession
- (BOOL)button
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_remote_session"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData kScaleMakeData]] boolValue];
}

//: - (BOOL)autoRemoveAlias
- (BOOL)size
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_alias"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData k_warnName]] boolValue];
}

//: - (BOOL)autoRemoveSnapMessage
- (BOOL)tapMessage
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_snap_message"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mChipData]] boolValue];
}

//: - (BOOL)needVerifyForFriend
- (BOOL)source
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"add_friend_need_verify"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData kRealistShowerValue]] boolValue];
}

//: - (BOOL)showFps{
- (BOOL)scaleValueFps{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"show_fps_for_app"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData show_accelerateData]] boolValue];
}

//: - (BOOL)disableProximityMonitor
- (BOOL)proximityName
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"disable_proxmity_monitor"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData m_botName]] boolValue];
}

//: - (BOOL)animatedImageThumbnailEnabled
- (BOOL)find
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"animated_image_thumbnail_enabled"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData main_successData]] boolValue];
}

//: - (BOOL)enableRotate
- (BOOL)pinLocation
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enable_rotate"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData kShowSliceSessionText]] boolValue];
}

//: - (BOOL)usingAmr
- (BOOL)input
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"using_amr"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dream_videoText]] boolValue];
}

//: - (BOOL)fileQuickTransferEnabled
- (BOOL)indexInOffd
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_file_quick_transfer"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dream_apartmentPeerName]];
    //: if(value) {
    if(value) {
        //: return [value boolValue];
        return [value boolValue];
    //: }else {
    }else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)enableAPNsPrefix
- (BOOL)with
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_apns_prefix"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData noti_accountingData]];
    //: if(value) {
    if(value) {
        //: return [value boolValue];
        return [value boolValue];
    //: }else {
    }else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)enableTeamAPNsForce
- (BOOL)actionView
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_team_apns_force"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData notiViewName]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)enableAudioSessionReset
- (BOOL)my
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"disable_audio_session_reset"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData kAcheValue]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)exceptionLogUploadEnabled
- (BOOL)valueDate
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"exception_upload_log_enabled"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData appLendValue]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)enableLocalAnti
- (BOOL)sound
{
    //: return YES;
    return YES;
}

//: - (BOOL)enableSdkRemoteRender
- (BOOL)name
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_sdk_video_render"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData app_unitContent]];
    //: if (value)
    if (value)
    {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)enableSyncWhenFetchRemoteMessages
- (BOOL)message
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"sync_when_remote_fetch_messages"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData k_appearSessionName]] boolValue];
}

//: - (BOOL)enableCreateRecentSessionsWhenSyncRemoteMessages
- (BOOL)recording
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"create_recent_when_sync_remote_messages"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData userCousinData]] boolValue];
}

//: - (BOOL)countTeamNotification
- (BOOL)characteristicRootOfASquareMatrix
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"count_team_notification"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData app_petButtonTitle]] boolValue];
}


//: - (NSArray *)ignoreTeamNotificationTypes
- (NSArray *)thread
{
    //: static NSArray *types = nil;
    static NSArray *types = nil;
    //: if (types == nil)
    if (types == nil)
    {
        //: NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:@"ignore_team_types"];
        NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData main_maxData]];
        //: if ([value isKindOfClass:[NSString class]])
        if ([value isKindOfClass:[NSString class]])
        {
            //: NSString *typeDescription = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *typeDescription = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            //: if ([typeDescription length])
            if ([typeDescription length])
            {
                //: types = [typeDescription componentsSeparatedByString:@","];
                types = [typeDescription componentsSeparatedByString:@","];
            }
        }
    }
    //: if (types == nil)
    if (types == nil)
    {
        //: types = [NSArray array];
        types = [NSArray array];
    }
    //: return types;
    return types;
}


//: - (BOOL)serverRecordAudio
- (BOOL)tingRestaurantAttendantAudio
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_audio"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dreamMakeTitle]] boolValue];
}

//: - (BOOL)serverRecordVideo
- (BOOL)than
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_video"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData user_deployName]] boolValue];
}

//: - (BOOL)serverRecordHost
- (BOOL)controlHost
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_host"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mainNeedText]] boolValue];
}

//: - (int)serverRecordMode
- (int)ting
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_mode"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData noti_premiumTitle]] intValue];
}

//: - (BOOL)useSocks
- (BOOL)misapply
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"use_socks5"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData notiTitleName]] boolValue];
}

//: - (NSString *)customAPNsType
- (NSString *)cranch
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"custom_apns_content_type"];
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dream_sessionData]];
}

//: - (NSString *)socks5Addr
- (NSString *)viewMy
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_addr"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData user_inspireName]]? : @"";
}

//: - (NSUInteger)socks5Type
- (NSUInteger)empty
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_type"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData user_petValue]] intValue];
}

//: - (NSString *)socksUsername
- (NSString *)occurrent
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_username"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData main_nameValue]]? : @"";
}

//: - (NSString *)socksPassword
- (NSString *)up
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_password"] ?: @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData k_textShowTitle]] ?: @"";
}

//: - (BOOL)useRTSSocks
- (BOOL)viewMember
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"use_rts_socks5"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dream_towerTitle]] boolValue];
}

//: - (NSString *)socks5RTSAddr
- (NSString *)by
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_addr"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData kTypicalTitle]]? : @"";
}

//: - (NSUInteger )socks5RTSType
- (NSUInteger )origin
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_type"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData appSeriesData]] intValue];
}

//: - (NSString *)socksRTSUsername
- (NSString *)doingBackground
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_username"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dreamThreeData]]? : @"";
}

//: - (NSString *)socksRTSPassword
- (NSString *)password
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_password"] ?: @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData show_colorName]] ?: @"";
}



//: - (BOOL)serverRecordWhiteboardData
- (BOOL)bar
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_whiteboard_data"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData main_bubbleTitle]] boolValue];
}


//: - (NSInteger)maximumLogDays
- (NSInteger)value
{
    //: id object = [[NSUserDefaults standardUserDefaults] objectForKey:@"maximum_log_days"];
    id object = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData showUniteData]];
    //: NSInteger days = object? [object integerValue]: 7;
    NSInteger days = object? [object integerValue]: 7;
    //: return days;
    return days;
}

//: - (BOOL)videochatAutoRotateRemoteVideo
- (BOOL)state
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_auto_rotate_remote_video"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dream_colorDayText]] boolValue];
}

//: - (UIViewContentMode)videochatRemoteVideoContentMode
- (UIViewContentMode)show
{
    //: NSInteger setting = [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_remote_video_content_mode"] integerValue];
    NSInteger setting = [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData main_acheData]] integerValue];
    //: return (setting == 0) ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit;
    return (setting == 0) ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit;
}

//: - (BOOL)startWithBackCamera
- (BOOL)key
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_start_with_back_camera"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData user_inningName]] boolValue];
}

//: - (NSUInteger)videoMaxEncodeKbps
- (NSUInteger)modifySize
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_video_encode_max_kbps"] integerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData showUndertakeContent]] integerValue];
}

//: - (NSUInteger)localRecordVideoKbps
- (NSUInteger)cover
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_local_record_video_kbps"] integerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dreamColorTitle]] integerValue];
}

//: - (NSUInteger)localRecordVideoQuality
- (NSUInteger)disableTv
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@""] unsignedIntegerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@""] unsignedIntegerValue];
}

//: - (BOOL)autoDeactivateAudioSession
- (BOOL)designate
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_auto_disable_audiosession"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mMilkLendContent]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)audioDenoise
- (BOOL)needView
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_audio_denoise"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData noti_crowdedMustValue]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }

}

//: - (BOOL)voiceDetect
- (BOOL)scale
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_voice_detect"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData m_assaultData]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }

}

//: - (BOOL)preferHDAudio
- (BOOL)orientation
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_prefer_hd_audio"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mScaleText]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return NO;
        return NO;
    }
}

//: - (NSInteger)chatroomRetryCount
- (NSInteger)objectMessage
{
    //: id count = [[NSUserDefaults standardUserDefaults] objectForKey:@"chatroom_enter_retry_count"];
    id count = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mSchoolSizeMustContent]];
    //: return count == nil ? 3 : [count integerValue];
    return count == nil ? 3 : [count integerValue];
}

//: - (BOOL)fileDownloadTokenEnabled {
- (BOOL)trademarkWillColorLength {
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"file_download_token_enabled"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mainLimitTotalText]];
    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    //: } else {
    } else {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)autoFetchAttachment
- (BOOL)shootImage
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"auto_fetch_attachment"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mainDepartmentValue]];
    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    //: } else {
    } else {
        //: return NO;
        return NO;
    }
}

//: - (NIMAsymEncryptionType)AsymEncryptionType {
- (NIMAsymEncryptionType)userBy {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_asym_crypto_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData app_uniteMessageBirthdayValue]];
    //: return (ret == nil ? 1 : [ret integerValue]);
    return (ret == nil ? 1 : [ret integerValue]);
}

//: - (NIMRSAPaddingMode)rsaPaddingMode
- (NIMRSAPaddingMode)content
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_rsa_padding_mode"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dreamNameValue]];
    //: return [ret integerValue];
    return [ret integerValue];
}

//: - (NIMSymEncryptionType)SymEncryptionType {
- (NIMSymEncryptionType)kind {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_sym_crypto_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData kBotAppearValue]];
    //: return (ret == nil ? 1 : [ret integerValue]);
    return (ret == nil ? 1 : [ret integerValue]);
}

//: - (NIMLinkAddressType)LbsLinkAddressType {
- (NIMLinkAddressType)info {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_link_address_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mainSeriesName]];
    //: return [ret integerValue];
    return [ret integerValue];
}

//: - (NSString *)ipv4DefaultLink {
- (NSString *)disable {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ipv4_default_link"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData user_mailName]];
    //: return ret;
    return ret;
}

//: - (NSString *)ipv6DefaultLink {
- (NSString *)can {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ipv6_default_link"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData main_nameText]];
    //: return ret;
    return ret;
}

//: - (BOOL)asyncLoadRecentSessionEnabled {
- (BOOL)tap {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"tester_recent_session_most_enable"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData appPremiumName]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSInteger)ignoreMessageType {
- (NSInteger)ignore {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ignore_message_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData appSuccessName]];
    //: if (ret) {
    if (ret) {
        //: return [ret integerValue];
        return [ret integerValue];

    //: } else {
    } else {
        //: return -1;
        return -1;
    }
}

//: - (BOOL)isDeleteMsgFromServer
- (BOOL)background
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"menu_delete_msg_from_server"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData appMortalText]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)isDeleteMsgFromDB
- (BOOL)chromosomalMutation
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"menu_delete_msg_from_db"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mToeThreeName]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)isIgnoreRevokeMessageCount
- (BOOL)custom
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_revoke_count"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData mTypicalValue]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)enablePullSubMessagesFromServer
- (BOOL)to
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_thread_cloud_pull"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dreamFindingData]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)enableSyncStickTopSessionInfos
- (BOOL)off
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_sync_stick_top_session"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData noti_threeData]];
    //: return ret ? [ret boolValue] : YES;
    return ret ? [ret boolValue] : YES;
}

//: - (NSInteger)customClientType {
- (NSInteger)sinceColor {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"custom_client_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData appBubbleValue]];
    //: return ret ? [ret integerValue] : 0;
    return ret ? [ret integerValue] : 0;
}

//: - (BOOL)enableRevokeMsgPostscript {
- (BOOL)addRecordPostscript {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_revoke_msg_ps"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dream_rowSliceValue]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSString *)messageEnv {
- (NSString *)send {
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    return [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData show_againstName]];
}

//: - (BOOL)disableTraceroute
- (BOOL)infoShould
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_disable_traceroute"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[LendFindingData dreamTotalellectualBrokerData]];
    //: return ret ? [ret boolValue] : NO;
    return ret ? [ret boolValue] : NO;
}

//: - (NSString *)description
- (NSString *)description
{
    //: return [NSString stringWithFormat:
    return [NSString stringWithFormat:
                //: @"\n\n\n" "enabled_remove_recent_session %d\n" "local_search_time_order_desc %d\n" "auto_remove_remote_session %d\n" "auto_remove_alias %d\n" "auto_remove_snap_message %d\n" "add_friend_need_verify %d\n" "show app %d\n" "maximum log days %zd\n" "using amr %d\n" "ignore_team_types %@ \n" "server_record_audio %d\n" "server_record_video %d\n" "server_record_whiteboard_data %d\n" "videochat_auto_rotate_remote_video %d \n" "videochat_start_with_back_camera %zd\n" "videochat_video_encode_max_kbps %zd\n" "videochat_local_record_video_kbps %zd\n" "videochat_local_record_video_quality %zd\n" "videochat_auto_disable_audiosession %zd\n" "videochat_audio_denoise %zd\n" "videochat_voice_detect %zd\n" "videochat_prefer_hd_audio %zd\n" "chatroom_retry_count %zd\n" "sync_when_remote_fetch_messages %zd\n" "enable_revoke_count %zd\n" "\n\n\n",
                @"\n\n\n" "enabled_remove_recent_session %d\n" "local_search_time_order_desc %d\n" "auto_remove_remote_session %d\n" "auto_remove_alias %d\n" "auto_remove_snap_message %d\n" "add_friend_need_verify %d\n" "show app %d\n" "maximum log days %zd\n" "using amr %d\n" "ignore_team_types %@ \n" "server_record_audio %d\n" "server_record_video %d\n" "server_record_whiteboard_data %d\n" "videochat_auto_rotate_remote_video %d \n" "videochat_start_with_back_camera %zd\n" "videochat_video_encode_max_kbps %zd\n" "videochat_local_record_video_kbps %zd\n" "videochat_local_record_video_quality %zd\n" "videochat_auto_disable_audiosession %zd\n" "videochat_audio_denoise %zd\n" "videochat_voice_detect %zd\n" "videochat_prefer_hd_audio %zd\n" "chatroom_retry_count %zd\n" "sync_when_remote_fetch_messages %zd\n" "enable_revoke_count %zd\n" "\n\n\n",
                //: [self removeSessionWhenDeleteMessages],
                [self pastLength],
                //: [self localSearchOrderByTimeDesc],
                [self example],
                //: [self autoRemoveRemoteSession],
                [self button],
                //: [self autoRemoveAlias],
                [self size],
                //: [self autoRemoveSnapMessage],
                [self tapMessage],
                //: [self needVerifyForFriend],
                [self source],
                //: [self showFps],
                [self scaleValueFps],
                //: [self maximumLogDays],
                [self value],
                //: [self usingAmr],
                [self input],
                //: [self ignoreTeamNotificationTypes],
                [self thread],
                //: [self serverRecordAudio],
                [self tingRestaurantAttendantAudio],
                //: [self serverRecordVideo],
                [self than],
                //: [self serverRecordWhiteboardData],
                [self bar],
                //: [self videochatAutoRotateRemoteVideo],
                [self state],
                //: (NSInteger)[self startWithBackCamera],
                (NSInteger)[self key],
                //: [self videoMaxEncodeKbps],
                [self modifySize],
                //: [self localRecordVideoKbps],
                [self cover],
                //: [self localRecordVideoQuality],
                [self disableTv],
                //: (NSInteger)[self autoDeactivateAudioSession],
                (NSInteger)[self designate],
                //: (NSInteger)[self audioDenoise],
                (NSInteger)[self needView],
                //: (NSInteger)[self voiceDetect],
                (NSInteger)[self scale],
                //: (NSInteger)[self preferHDAudio],
                (NSInteger)[self orientation],
                //: [self chatroomRetryCount],
                [self objectMessage],
                //: (NSInteger)[self enableSyncWhenFetchRemoteMessages],
                (NSInteger)[self message],
                //: (NSInteger)[self isIgnoreRevokeMessageCount]
                (NSInteger)[self custom]
            //: ];
            ];
}

//: @end
@end