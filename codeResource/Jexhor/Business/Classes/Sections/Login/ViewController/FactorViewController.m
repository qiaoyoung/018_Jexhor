
#import <Foundation/Foundation.h>

@interface PointOfReferenceData : NSObject

@end

@implementation PointOfReferenceData

+ (Byte *)PointOfReferenceDataToCache:(Byte *)data {
    int viewButton = data[0];
    Byte crowded = data[1];
    int suspectSend = data[2];
    for (int i = suspectSend; i < suspectSend + viewButton; i++) {
        int value = data[i] + crowded;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[suspectSend + viewButton] = 0;
    return data + suspectSend;
}

+ (NSString *)StringFromPointOfReferenceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PointOfReferenceDataToCache:data]];
}

//: activity_register_agree
+ (NSString *)user_atData {
    /* static */ NSString *user_atData = nil;
    if (!user_atData) {
        Byte value[] = {23, 83, 12, 204, 164, 34, 50, 12, 212, 64, 39, 118, 14, 16, 33, 22, 35, 22, 33, 38, 12, 31, 18, 20, 22, 32, 33, 18, 31, 12, 14, 20, 31, 18, 18, 127};
        user_atData = [self StringFromPointOfReferenceData:value];
    }
    return user_atData;
}

//: issup
+ (NSString *)m_assaultContentData {
    /* static */ NSString *m_assaultContentData = nil;
    if (!m_assaultContentData) {
        Byte value[] = {5, 10, 13, 204, 18, 43, 158, 169, 253, 195, 202, 227, 100, 95, 105, 105, 107, 102, 159};
        m_assaultContentData = [self StringFromPointOfReferenceData:value];
    }
    return m_assaultContentData;
}

//: register_account_activity_psw
+ (NSString *)m_ambitionName {
    /* static */ NSString *m_ambitionName = nil;
    if (!m_ambitionName) {
        Byte value[] = {29, 29, 11, 8, 76, 28, 144, 156, 220, 67, 194, 85, 72, 74, 76, 86, 87, 72, 85, 66, 68, 70, 70, 82, 88, 81, 87, 66, 68, 70, 87, 76, 89, 76, 87, 92, 66, 83, 86, 90, 68};
        m_ambitionName = [self StringFromPointOfReferenceData:value];
    }
    return m_ambitionName;
}

//: ppp
+ (NSString *)user_showValue {
    /* static */ NSString *user_showValue = nil;
    if (!user_showValue) {
        Byte value[] = {3, 62, 8, 90, 65, 160, 98, 88, 50, 50, 50, 103};
        user_showValue = [self StringFromPointOfReferenceData:value];
    }
    return user_showValue;
}

//: #8282A7
+ (NSString *)dreamFortunateValue {
    /* static */ NSString *dreamFortunateValue = nil;
    if (!dreamFortunateValue) {
        Byte value[] = {7, 35, 11, 239, 144, 190, 147, 54, 98, 241, 195, 0, 21, 15, 21, 15, 30, 20, 125};
        dreamFortunateValue = [self StringFromPointOfReferenceData:value];
    }
    return dreamFortunateValue;
}

//: register_account_activity_account
+ (NSString *)dream_showText {
    /* static */ NSString *dream_showText = nil;
    if (!dream_showText) {
        Byte value[] = {33, 3, 7, 249, 47, 78, 39, 111, 98, 100, 102, 112, 113, 98, 111, 92, 94, 96, 96, 108, 114, 107, 113, 92, 94, 96, 113, 102, 115, 102, 113, 118, 92, 94, 96, 96, 108, 114, 107, 113, 121};
        dream_showText = [self StringFromPointOfReferenceData:value];
    }
    return dream_showText;
}

//: login_agreement_normal
+ (NSString *)appCongressionalData {
    /* static */ NSString *appCongressionalData = nil;
    if (!appCongressionalData) {
        Byte value[] = {22, 13, 4, 20, 95, 98, 90, 92, 97, 82, 84, 90, 101, 88, 88, 96, 88, 97, 103, 82, 97, 98, 101, 96, 84, 95, 153};
        appCongressionalData = [self StringFromPointOfReferenceData:value];
    }
    return appCongressionalData;
}

//: activity_comment_setting_ys
+ (NSString *)noti_quickFileTitle {
    /* static */ NSString *noti_quickFileTitle = nil;
    if (!noti_quickFileTitle) {
        Byte value[] = {27, 33, 13, 110, 211, 225, 207, 52, 109, 33, 201, 225, 91, 64, 66, 83, 72, 85, 72, 83, 88, 62, 66, 78, 76, 76, 68, 77, 83, 62, 82, 68, 83, 83, 72, 77, 70, 62, 88, 82, 110};
        noti_quickFileTitle = [self StringFromPointOfReferenceData:value];
    }
    return noti_quickFileTitle;
}

//: ios
+ (NSString *)main_deployData {
    /* static */ NSString *main_deployData = nil;
    if (!main_deployData) {
        Byte value[] = {3, 53, 7, 174, 22, 80, 38, 52, 58, 62, 4};
        main_deployData = [self StringFromPointOfReferenceData:value];
    }
    return main_deployData;
}

//: client
+ (NSString *)notiInfoText {
    /* static */ NSString *notiInfoText = nil;
    if (!notiInfoText) {
        Byte value[] = {6, 85, 8, 21, 28, 103, 143, 238, 14, 23, 20, 16, 25, 31, 24};
        notiInfoText = [self StringFromPointOfReferenceData:value];
    }
    return notiInfoText;
}

//: systems
+ (NSString *)k_olaContent {
    /* static */ NSString *k_olaContent = nil;
    if (!k_olaContent) {
        Byte value[] = {7, 27, 6, 167, 245, 2, 88, 94, 88, 89, 74, 82, 88, 84};
        k_olaContent = [self StringFromPointOfReferenceData:value];
    }
    return k_olaContent;
}

//: login_success
+ (NSString *)showMakeTitle {
    /* static */ NSString *showMakeTitle = nil;
    if (!showMakeTitle) {
        Byte value[] = {13, 78, 7, 230, 143, 61, 145, 30, 33, 25, 27, 32, 17, 37, 39, 21, 21, 23, 37, 37, 5};
        showMakeTitle = [self StringFromPointOfReferenceData:value];
    }
    return showMakeTitle;
}

//: nimtoken
+ (NSString *)noti_severName {
    /* static */ NSString *noti_severName = nil;
    if (!noti_severName) {
        Byte value[] = {8, 53, 6, 161, 191, 238, 57, 52, 56, 63, 58, 54, 48, 57, 184};
        noti_severName = [self StringFromPointOfReferenceData:value];
    }
    return noti_severName;
}

//: msg
+ (NSString *)showAfternoonName {
    /* static */ NSString *showAfternoonName = nil;
    if (!showAfternoonName) {
        Byte value[] = {3, 25, 8, 154, 154, 177, 18, 159, 84, 90, 78, 126};
        showAfternoonName = [self StringFromPointOfReferenceData:value];
    }
    return showAfternoonName;
}

//: friend_verify_avtivity_net_error
+ (NSString *)show_yaParentName {
    /* static */ NSString *show_yaParentName = nil;
    if (!show_yaParentName) {
        Byte value[] = {32, 40, 6, 85, 229, 17, 62, 74, 65, 61, 70, 60, 55, 78, 61, 74, 65, 62, 81, 55, 57, 78, 76, 65, 78, 65, 76, 81, 55, 70, 61, 76, 55, 61, 74, 74, 71, 74, 48};
        show_yaParentName = [self StringFromPointOfReferenceData:value];
    }
    return show_yaParentName;
}

//: login_icon_pwd
+ (NSString *)app_sessionData {
    /* static */ NSString *app_sessionData = nil;
    if (!app_sessionData) {
        Byte value[] = {14, 19, 8, 46, 130, 63, 137, 229, 89, 92, 84, 86, 91, 76, 86, 80, 92, 91, 76, 93, 100, 81, 210};
        app_sessionData = [self StringFromPointOfReferenceData:value];
    }
    return app_sessionData;
}

//: login_agreement_press
+ (NSString *)mainVideoAcceptableText {
    /* static */ NSString *mainVideoAcceptableText = nil;
    if (!mainVideoAcceptableText) {
        Byte value[] = {21, 82, 10, 142, 242, 35, 202, 143, 175, 235, 26, 29, 21, 23, 28, 13, 15, 21, 32, 19, 19, 27, 19, 28, 34, 13, 30, 32, 19, 33, 33, 71};
        mainVideoAcceptableText = [self StringFromPointOfReferenceData:value];
    }
    return mainVideoAcceptableText;
}

//: SELF MATCHES %@
+ (NSString *)appUndertakeText {
    /* static */ NSString *appUndertakeText = nil;
    if (!appUndertakeText) {
        Byte value[] = {15, 21, 11, 62, 133, 81, 129, 235, 211, 150, 89, 62, 48, 55, 49, 11, 56, 44, 63, 46, 51, 48, 62, 11, 16, 43, 209};
        appUndertakeText = [self StringFromPointOfReferenceData:value];
    }
    return appUndertakeText;
}

//: password
+ (NSString *)mReadBarrelData {
    /* static */ NSString *mReadBarrelData = nil;
    if (!mReadBarrelData) {
        Byte value[] = {8, 97, 12, 33, 104, 172, 19, 4, 15, 69, 56, 215, 15, 0, 18, 18, 22, 14, 17, 3, 208};
        mReadBarrelData = [self StringFromPointOfReferenceData:value];
    }
    return mReadBarrelData;
}

//: account
+ (NSString *)kAddValue {
    /* static */ NSString *kAddValue = nil;
    if (!kAddValue) {
        Byte value[] = {7, 80, 3, 17, 19, 19, 31, 37, 30, 36, 202};
        kAddValue = [self StringFromPointOfReferenceData:value];
    }
    return kAddValue;
}

//: login_logo
+ (NSString *)k_byModeData {
    /* static */ NSString *k_byModeData = nil;
    if (!k_byModeData) {
        Byte value[] = {10, 23, 8, 41, 19, 142, 27, 227, 85, 88, 80, 82, 87, 72, 85, 88, 80, 88, 215};
        k_byModeData = [self StringFromPointOfReferenceData:value];
    }
    return k_byModeData;
}

//: iOS%@
+ (NSString *)noti_brokerTitle {
    /* static */ NSString *noti_brokerTitle = nil;
    if (!noti_brokerTitle) {
        Byte value[] = {5, 93, 8, 124, 67, 115, 25, 192, 12, 242, 246, 200, 227, 205};
        noti_brokerTitle = [self StringFromPointOfReferenceData:value];
    }
    return noti_brokerTitle;
}

//: token
+ (NSString *)user_withTableData {
    /* static */ NSString *user_withTableData = nil;
    if (!user_withTableData) {
        Byte value[] = {5, 70, 5, 147, 16, 46, 41, 37, 31, 40, 191};
        user_withTableData = [self StringFromPointOfReferenceData:value];
    }
    return user_withTableData;
}

//: lang
+ (NSString *)appAcheData {
    /* static */ NSString *appAcheData = nil;
    if (!appAcheData) {
        Byte value[] = {4, 28, 5, 242, 97, 80, 69, 82, 75, 46};
        appAcheData = [self StringFromPointOfReferenceData:value];
    }
    return appAcheData;
}

//: deviceid
+ (NSString *)mPremiumName {
    /* static */ NSString *mPremiumName = nil;
    if (!mPremiumName) {
        Byte value[] = {8, 67, 11, 134, 111, 86, 213, 32, 132, 22, 253, 33, 34, 51, 38, 32, 34, 38, 33, 229};
        mPremiumName = [self StringFromPointOfReferenceData:value];
    }
    return mPremiumName;
}

//: #5D5F66
+ (NSString *)notiHideContent {
    /* static */ NSString *notiHideContent = nil;
    if (!notiHideContent) {
        Byte value[] = {7, 89, 7, 27, 248, 233, 203, 202, 220, 235, 220, 237, 221, 221, 65};
        notiHideContent = [self StringFromPointOfReferenceData:value];
    }
    return notiHideContent;
}

//: login_error
+ (NSString *)user_quickText {
    /* static */ NSString *user_quickText = nil;
    if (!user_quickText) {
        Byte value[] = {11, 63, 7, 39, 168, 180, 245, 45, 48, 40, 42, 47, 32, 38, 51, 51, 48, 51, 249};
        user_quickText = [self StringFromPointOfReferenceData:value];
    }
    return user_quickText;
}

//: activity_login_welcome
+ (NSString *)main_makeValue {
    /* static */ NSString *main_makeValue = nil;
    if (!main_makeValue) {
        Byte value[] = {22, 59, 11, 137, 147, 86, 10, 152, 172, 109, 240, 38, 40, 57, 46, 59, 46, 57, 62, 36, 49, 52, 44, 46, 51, 36, 60, 42, 49, 40, 52, 50, 42, 66};
        main_makeValue = [self StringFromPointOfReferenceData:value];
    }
    return main_makeValue;
}

//: __SCOPED__
+ (NSString *)kShowDisableLengthValue {
    /* static */ NSString *kShowDisableLengthValue = nil;
    if (!kShowDisableLengthValue) {
        Byte value[] = {10, 6, 5, 87, 167, 89, 89, 77, 61, 73, 74, 63, 62, 89, 89, 59};
        kShowDisableLengthValue = [self StringFromPointOfReferenceData:value];
    }
    return kShowDisableLengthValue;
}

//: ^[A-Za-z0-9_]{6,18}$
+ (NSString *)mDeleteName {
    /* static */ NSString *mDeleteName = nil;
    if (!mDeleteName) {
        Byte value[] = {20, 65, 9, 45, 239, 73, 213, 88, 12, 29, 26, 0, 236, 25, 32, 236, 57, 239, 236, 248, 30, 28, 58, 245, 235, 240, 247, 60, 227, 140};
        mDeleteName = [self StringFromPointOfReferenceData:value];
    }
    return mDeleteName;
}

//: ^[A-Za-z0-9_]{6,12}$
+ (NSString *)main_acceptableName {
    /* static */ NSString *main_acceptableName = nil;
    if (!main_acceptableName) {
        Byte value[] = {20, 52, 8, 97, 89, 26, 106, 120, 42, 39, 13, 249, 38, 45, 249, 70, 252, 249, 5, 43, 41, 71, 2, 248, 253, 254, 73, 240, 104};
        main_acceptableName = [self StringFromPointOfReferenceData:value];
    }
    return main_acceptableName;
}

//: RegistFinshNotification
+ (NSString *)k_itsValue {
    /* static */ NSString *k_itsValue = nil;
    if (!k_itsValue) {
        Byte value[] = {23, 25, 11, 120, 215, 42, 120, 3, 118, 144, 118, 57, 76, 78, 80, 90, 91, 45, 80, 85, 90, 79, 53, 86, 91, 80, 77, 80, 74, 72, 91, 80, 86, 85, 54};
        k_itsValue = [self StringFromPointOfReferenceData:value];
    }
    return k_itsValue;
}

//: ic_visible
+ (NSString *)mAssaultValue {
    /* static */ NSString *mAssaultValue = nil;
    if (!mAssaultValue) {
        Byte value[] = {10, 3, 8, 245, 161, 121, 12, 247, 102, 96, 92, 115, 102, 112, 102, 95, 105, 98, 100};
        mAssaultValue = [self StringFromPointOfReferenceData:value];
    }
    return mAssaultValue;
}

//: ic_invisible
+ (NSString *)user_tagTitle {
    /* static */ NSString *user_tagTitle = nil;
    if (!user_tagTitle) {
        Byte value[] = {12, 15, 6, 60, 201, 197, 90, 84, 80, 90, 95, 103, 90, 100, 90, 83, 93, 86, 96};
        user_tagTitle = [self StringFromPointOfReferenceData:value];
    }
    return user_tagTitle;
}

//: tap
+ (NSString *)kNovelTitle {
    /* static */ NSString *kNovelTitle = nil;
    if (!kNovelTitle) {
        Byte value[] = {3, 46, 5, 185, 240, 70, 51, 66, 6};
        kNovelTitle = [self StringFromPointOfReferenceData:value];
    }
    return kNovelTitle;
}

//: type
+ (NSString *)noti_sendTargetChangeContent {
    /* static */ NSString *noti_sendTargetChangeContent = nil;
    if (!noti_sendTargetChangeContent) {
        Byte value[] = {4, 47, 13, 140, 180, 154, 58, 63, 246, 196, 120, 18, 199, 69, 74, 65, 54, 98};
        noti_sendTargetChangeContent = [self StringFromPointOfReferenceData:value];
    }
    return noti_sendTargetChangeContent;
}

//: /user/login
+ (NSString *)user_readSessionKeepName {
    /* static */ NSString *user_readSessionKeepName = nil;
    if (!user_readSessionKeepName) {
        Byte value[] = {11, 48, 10, 9, 80, 174, 41, 8, 55, 23, 255, 69, 67, 53, 66, 255, 60, 63, 55, 57, 62, 11};
        user_readSessionKeepName = [self StringFromPointOfReferenceData:value];
    }
    return user_readSessionKeepName;
}

//: data
+ (NSString *)noti_removeValue {
    /* static */ NSString *noti_removeValue = nil;
    if (!noti_removeValue) {
        Byte value[] = {4, 84, 5, 133, 156, 16, 13, 32, 13, 4};
        noti_removeValue = [self StringFromPointOfReferenceData:value];
    }
    return noti_removeValue;
}

//: code
+ (NSString *)k_tableTitle {
    /* static */ NSString *k_tableTitle = nil;
    if (!k_tableTitle) {
        Byte value[] = {4, 79, 5, 107, 173, 20, 32, 21, 22, 246};
        k_tableTitle = [self StringFromPointOfReferenceData:value];
    }
    return k_tableTitle;
}

//: login_activity_login_success
+ (NSString *)showDeployData {
    /* static */ NSString *showDeployData = nil;
    if (!showDeployData) {
        Byte value[] = {28, 34, 9, 255, 154, 103, 225, 150, 59, 74, 77, 69, 71, 76, 61, 63, 65, 82, 71, 84, 71, 82, 87, 61, 74, 77, 69, 71, 76, 61, 81, 83, 65, 65, 67, 81, 81, 175};
        showDeployData = [self StringFromPointOfReferenceData:value];
    }
    return showDeployData;
}

//: #999999
+ (NSString *)dreamColorBrokerRemoveText {
    /* static */ NSString *dreamColorBrokerRemoveText = nil;
    if (!dreamColorBrokerRemoveText) {
        Byte value[] = {7, 96, 8, 189, 178, 200, 54, 177, 195, 217, 217, 217, 217, 217, 217, 116};
        dreamColorBrokerRemoveText = [self StringFromPointOfReferenceData:value];
    }
    return dreamColorBrokerRemoveText;
}

//: login_icon_user
+ (NSString *)dreamUniteContent {
    /* static */ NSString *dreamUniteContent = nil;
    if (!dreamUniteContent) {
        Byte value[] = {15, 20, 5, 34, 71, 88, 91, 83, 85, 90, 75, 85, 79, 91, 90, 75, 97, 95, 81, 94, 207};
        dreamUniteContent = [self StringFromPointOfReferenceData:value];
    }
    return dreamUniteContent;
}

//: activity_register_title
+ (NSString *)showFileData {
    /* static */ NSString *showFileData = nil;
    if (!showFileData) {
        Byte value[] = {23, 63, 10, 33, 31, 47, 156, 63, 198, 34, 34, 36, 53, 42, 55, 42, 53, 58, 32, 51, 38, 40, 42, 52, 53, 38, 51, 32, 53, 42, 53, 45, 38, 170};
        showFileData = [self StringFromPointOfReferenceData:value];
    }
    return showFileData;
}

//: #ffffff
+ (NSString *)dreamDrugShowContent {
    /* static */ NSString *dreamDrugShowContent = nil;
    if (!dreamDrugShowContent) {
        Byte value[] = {7, 17, 8, 197, 165, 189, 131, 175, 18, 85, 85, 85, 85, 85, 85, 79};
        dreamDrugShowContent = [self StringFromPointOfReferenceData:value];
    }
    return dreamDrugShowContent;
}

//: vpn
+ (NSString *)app_drugName {
    /* static */ NSString *app_drugName = nil;
    if (!app_drugName) {
        Byte value[] = {3, 26, 13, 159, 113, 13, 172, 118, 242, 7, 247, 49, 242, 92, 86, 84, 94};
        app_drugName = [self StringFromPointOfReferenceData:value];
    }
    return app_drugName;
}

//: tun
+ (NSString *)showMaxContent {
    /* static */ NSString *showMaxContent = nil;
    if (!showMaxContent) {
        Byte value[] = {3, 87, 10, 200, 79, 11, 129, 21, 160, 9, 29, 30, 23, 229};
        showMaxContent = [self StringFromPointOfReferenceData:value];
    }
    return showMaxContent;
}

//: activity_login_login
+ (NSString *)userMaxData {
    /* static */ NSString *userMaxData = nil;
    if (!userMaxData) {
        Byte value[] = {20, 51, 11, 89, 209, 193, 49, 99, 68, 143, 116, 46, 48, 65, 54, 67, 54, 65, 70, 44, 57, 60, 52, 54, 59, 44, 57, 60, 52, 54, 59, 50};
        userMaxData = [self StringFromPointOfReferenceData:value];
    }
    return userMaxData;
}

//: telname
+ (NSString *)appButtonContent {
    /* static */ NSString *appButtonContent = nil;
    if (!appButtonContent) {
        Byte value[] = {7, 98, 12, 77, 220, 238, 113, 44, 101, 67, 70, 127, 18, 3, 10, 12, 255, 11, 3, 37};
        appButtonContent = [self StringFromPointOfReferenceData:value];
    }
    return appButtonContent;
}

//: UserPassWord
+ (NSString *)dream_makeGivingContent {
    /* static */ NSString *dream_makeGivingContent = nil;
    if (!dream_makeGivingContent) {
        Byte value[] = {12, 50, 13, 138, 69, 109, 226, 72, 63, 196, 121, 8, 196, 35, 65, 51, 64, 30, 47, 65, 65, 37, 61, 64, 50, 60};
        dream_makeGivingContent = [self StringFromPointOfReferenceData:value];
    }
    return dream_makeGivingContent;
}

//: login_activity_login_failed
+ (NSString *)main_planetTitle {
    /* static */ NSString *main_planetTitle = nil;
    if (!main_planetTitle) {
        Byte value[] = {27, 11, 8, 68, 55, 110, 12, 223, 97, 100, 92, 94, 99, 84, 86, 88, 105, 94, 107, 94, 105, 110, 84, 97, 100, 92, 94, 99, 84, 91, 86, 94, 97, 90, 89, 28};
        main_planetTitle = [self StringFromPointOfReferenceData:value];
    }
    return main_planetTitle;
}

//: #333333
+ (NSString *)user_disableContent {
    /* static */ NSString *user_disableContent = nil;
    if (!user_disableContent) {
        Byte value[] = {7, 28, 10, 12, 82, 15, 8, 124, 12, 153, 7, 23, 23, 23, 23, 23, 23, 186};
        user_disableContent = [self StringFromPointOfReferenceData:value];
    }
    return user_disableContent;
}

//: #05D481
+ (NSString *)kPlanetData {
    /* static */ NSString *kPlanetData = nil;
    if (!kPlanetData) {
        Byte value[] = {7, 76, 4, 60, 215, 228, 233, 248, 232, 236, 229, 190};
        kPlanetData = [self StringFromPointOfReferenceData:value];
    }
    return kPlanetData;
}

//: NotificationLogout
+ (NSString *)show_colorSliceData {
    /* static */ NSString *show_colorSliceData = nil;
    if (!show_colorSliceData) {
        Byte value[] = {18, 22, 12, 206, 42, 46, 53, 114, 145, 206, 251, 80, 56, 89, 94, 83, 80, 83, 77, 75, 94, 83, 89, 88, 54, 89, 81, 89, 95, 94, 159};
        show_colorSliceData = [self StringFromPointOfReferenceData:value];
    }
    return show_colorSliceData;
}

//: UserAccount
+ (NSString *)noti_targetValue {
    /* static */ NSString *noti_targetValue = nil;
    if (!noti_targetValue) {
        Byte value[] = {11, 46, 5, 219, 144, 39, 69, 55, 68, 19, 53, 53, 65, 71, 64, 70, 44};
        noti_targetValue = [self StringFromPointOfReferenceData:value];
    }
    return noti_targetValue;
}

//: activity_login_has_no_account
+ (NSString *)appHandleValue {
    /* static */ NSString *appHandleValue = nil;
    if (!appHandleValue) {
        Byte value[] = {29, 7, 13, 41, 126, 215, 215, 45, 251, 117, 113, 191, 210, 90, 92, 109, 98, 111, 98, 109, 114, 88, 101, 104, 96, 98, 103, 88, 97, 90, 108, 88, 103, 104, 88, 90, 92, 92, 104, 110, 103, 109, 140};
        appHandleValue = [self StringFromPointOfReferenceData:value];
    }
    return appHandleValue;
}

//: login_bg
+ (NSString *)dreamJournalistData {
    /* static */ NSString *dreamJournalistData = nil;
    if (!dreamJournalistData) {
        Byte value[] = {8, 37, 3, 71, 74, 66, 68, 73, 58, 61, 66, 134};
        dreamJournalistData = [self StringFromPointOfReferenceData:value];
    }
    return dreamJournalistData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  FactorViewController.m
//  NIMDemo
//
//  Created by ght on 15-1-26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoginViewController.h"
#import "FactorViewController.h"
//: #import "NTESMainTabController.h"
#import "ManagerBarController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NSString+NTES.h"
#import "NSString+Recent.h"
//: #import "CCCLoginManager.h"
#import "NameForwardMessage.h"
//: #import "NTESNotificationCenter.h"
#import "ClickCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+BottomMagnitude.h"
//: #import "FFFRegisterViewController.h"
#import "ResearchLabViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "Manager.h"
//: #import <CoreTelephony/CTCellularData.h>
#import <CoreTelephony/CTCellularData.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "RedSame.h"
//: #import "SNDevice.h"
#import "ModeWith.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "SumViewController.h"
//: #import "GetBackPasswordViewController.h"
#import "FuturismViewController.h"

//: @interface FFFLoginViewController ()<UITextFieldDelegate> {
@interface FactorViewController ()<UITextFieldDelegate> {
    //: UIActivityIndicatorView *_ActivityIndicator;
    UIActivityIndicatorView *_ActivityIndicator;
    //: BOOL _isloading;
    BOOL _isloading;
}
//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;

//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;
//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;

//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;

//: @property (nonatomic,strong) YYLabel *protocolLabel;
@property (nonatomic,strong) YYLabel *protocolLabel;
//: @property (nonatomic,strong) YYLabel *registLabel;
@property (nonatomic,strong) YYLabel *registLabel;

//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) LabView *loadingView;

//: @end
@end

//: @implementation FFFLoginViewController
@implementation FactorViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[PointOfReferenceData dreamJournalistData]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [NTESRegistConfigManager shareConfigManager].loginVC = self;
    [Manager managingDirector].loginVC = self;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    SessionRecord *userDefaults = [SessionRecord afterUser];
    //: if (userDefaults.language.length > 0) {
    if (userDefaults.language.length > 0) {
        //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
        [RedSame manager].isRequestAutoLoginFinish = YES;
        //: [self autoLogin];
        [self autoDown];
    //: } else {
    } else {

        //等待登陆菊花初始化：
        //: _ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        _ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        //设置菊花的中心点，貌似不能设置菊花的大小，系统自带的有三种样式
        //: _ActivityIndicator.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _ActivityIndicator.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _ActivityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        _ActivityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        //添加菊花
        //: [self.view addSubview:_ActivityIndicator];
        [self.view addSubview:_ActivityIndicator];

        //: [self needsInitUI];
        [self trap];
    }

    //1.获取网络权限 根绝权限进行人机交互
     //: if (100000) {
     if (100000) {
         //: [self networkStatus];
         [self container];
     //: }else {
     }else {
         //2.2已经开启网络权限 监听网络状态
         //: [self addReachabilityManager];
         [self object];
     }

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registSuccessWithAccount:) name:@"RegistFinshNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registLabel:) name:[PointOfReferenceData k_itsValue] object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];



//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:KEKENotificationLanguageChanged object:nil];

//    [self.view addSubview:self.loadingView];
//    self.loadingView.hidden = YES;
}

//- (void)languageChanged:(NSNotification *)noti {
////    [self refreshNavBarStyle];
//    [_loginButton setTitle:LangKey(@"activity_login_login") forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"activity_register_title") forState:UIControlStateNormal];
//}

//: - (void)needsInitUI {
- (void)trap {

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    SessionRecord *userDefaults = [SessionRecord afterUser];
    //: if (userDefaults.language && userDefaults.language.length <= 0) {
    if (userDefaults.language && userDefaults.language.length <= 0) {

        //在某个地方设置其 ，开始旋转动画
        //: [_ActivityIndicator startAnimating];
        [_ActivityIndicator startAnimating];

        //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
        [TitleManager kindness:^(NSDictionary * _Nonnull configDict) {//处理第一次启动语言问题
            //: if (configDict.allKeys.count > 0) {
            if (configDict.allKeys.count > 0) {
                //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
                SessionRecord *userDefaults = [SessionRecord afterUser];
                //: NSString *lang = [configDict newStringValueForKey:@"lang"];
                NSString *lang = [configDict route:[PointOfReferenceData appAcheData]];
                //: if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                    //: lang = @"en";
                    lang = @"en";
                }
                //: userDefaults.language = lang;
                userDefaults.language = lang;
                //: [[FFFLanguageManager shareInstance] setLanguagre:lang];
                [[InputRed mortificationDisable] setApposeCellLanguagre:lang];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:[PointOfReferenceData show_colorSliceData] object:nil];
                //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
                AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
                //: if (delegate.deviceToken) {
                if (delegate.deviceToken) {
                    //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                    [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                                       //: customContentKey:lang];
                                       customContentKey:lang];

                    //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
                    dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
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

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //菊花停止旋转
                    //: [_ActivityIndicator stopAnimating];
                    [_ActivityIndicator stopAnimating];
                    //菊花隐藏
                    //: [_ActivityIndicator setHidesWhenStopped:YES];
                    [_ActivityIndicator setHidesWhenStopped:YES];

                    //需要执行的方法
                    //: [self autoLogin];
                    [self autoDown];
                //: });
                });
            //: } else {
            } else {
                //: [self autoLogin];
                [self autoDown];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: [self autoLogin];
        [self autoDown];
    }
}

//: - (void)autoLogin {
- (void)autoDown {

    //: if (![CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish){
    if (![RedSame manager].isRequestAutoLoginFinish){
        //: return;
        return;
    }

    //: if (![NIMUserDefaults standardUserDefaults].autoLogin.boolValue){
    if (![SessionRecord afterUser].autoLogin.boolValue){
        //: [self initUI];
        [self initColorOf];
        //: return;
        return;
    }

    //: if ([NIMUserDefaults standardUserDefaults].accid.length > 0){
    if ([SessionRecord afterUser].accid.length > 0){
        //: [self initUI];
        [self initColorOf];
        //: return;
        return;
    }

    //: if ([CCCAutoLoginManager sharedManager].isloading){
    if ([RedSame manager].isloading){
        //: return;
        return;
    }
    //: [CCCAutoLoginManager sharedManager].isloading = YES;
    [RedSame manager].isloading = YES;

    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [ZCHttpManager refreshGenerateUser:^(NSDictionary * _Nonnull data) {
    [TitleManager picture:^(NSDictionary * _Nonnull data) {

        //: if (data.allKeys.count > 0) {
        if (data.allKeys.count > 0) {

            //: NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            NSString *nimtoken = [data route:[PointOfReferenceData noti_severName]];
            //: NSString *accid = [data newStringValueForKey:@"id"];
            NSString *accid = [data route:@"id"];
            //: NSString *accountName = [data newStringValueForKey:@"account"];
            NSString *accountName = [data route:[PointOfReferenceData kAddValue]];
            //: NSString *loginToken = [data newStringValueForKey:@"token"];
            NSString *loginToken = [data route:[PointOfReferenceData user_withTableData]];
            //: NSString *issup = [data newStringValueForKey:@"issup"];
            NSString *issup = [data route:[PointOfReferenceData m_assaultContentData]];


            //: [NIMUserDefaults standardUserDefaults].loginToken = loginToken;
            [SessionRecord afterUser].loginToken = loginToken;
            //: [NIMUserDefaults standardUserDefaults].accid = accid;
            [SessionRecord afterUser].accid = accid;
            //: [NIMUserDefaults standardUserDefaults].nimToken = nimtoken;
            [SessionRecord afterUser].nimToken = nimtoken;
            //: [NIMUserDefaults standardUserDefaults].accountName = accountName;
            [SessionRecord afterUser].accountName = accountName;
            //: [NIMUserDefaults standardUserDefaults].issup = issup;
            [SessionRecord afterUser].issup = issup;


            //: [SVProgressHUD dismissWithDelay:0.1 completion:^{
            [SVProgressHUD dismissWithDelay:0.1 completion:^{

                //: [CCCAutoLoginManager sharedManager].isloading = NO;
                [RedSame manager].isloading = NO;


                //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                //: loginData.account = accid;
                loginData.account = accid;
                //: loginData.token = nimtoken;
                loginData.token = nimtoken;
                //: loginData.authType = 0;
                loginData.authType = 0;
                //: loginData.loginExtension = @"";
                loginData.loginExtension = @"";

                //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
                ShowCircle *sdkData = [[ShowCircle alloc] init];
                //: sdkData.account = accid;
                sdkData.account = accid;
                //: sdkData.token = nimtoken;
                sdkData.token = nimtoken;
                //: sdkData.authType = 0;
                sdkData.authType = 0;
                //: sdkData.loginExtension = @"";
                sdkData.loginExtension = @"";

                //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                [[NameForwardMessage input] setCurrentLoginData:sdkData];

                //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];

                //: NTESMainTabController * mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
                ManagerBarController * mainTab = [[ManagerBarController alloc] initWithNibName:nil bundle:nil];
                //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;

//                AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//                [delegate setupRTCCallKit];
            //: }];
            }];

        }
        //: else {
        else {

            //: [CCCAutoLoginManager sharedManager].isloading = NO;
            [RedSame manager].isloading = NO;
            //: [self initUI];
            [self initColorOf];

            //: [SVProgressHUD dismissWithDelay:0.25 completion:^{
            [SVProgressHUD dismissWithDelay:0.25 completion:^{

            //: }];
            }];
        }
    //: }];
    }];
}

/*
 CTCellularData在iOS9之前是私有类，权限设置是iOS10开始的，所以App Store审核没有问题
 获取网络权限状态
 */
//: - (void)networkStatus {
- (void)container {
    //2.根据权限执行相应的交互
    //: CTCellularData *cellularData = [[CTCellularData alloc] init];
    CTCellularData *cellularData = [[CTCellularData alloc] init];

    /*
     此函数会在网络权限改变时再次调用
     */
    //: cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state) {
    cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state) {
        //: switch (state) {
        switch (state) {
            //: case kCTCellularDataRestricted:
            case kCTCellularDataRestricted:

                //: NSLog(@"Restricted");
                //2.1权限关闭的情况下 再次请求网络数据会弹出设置网络提示
                //: break;
                break;
            //: case kCTCellularDataNotRestricted:
            case kCTCellularDataNotRestricted:
            {
                //: NSLog(@"NotRestricted");
                //2.2已经开启网络权限 监听网络状态
                //: [self addReachabilityManager];
                [self object];
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self trap];
                //: });
                });
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: };
    };
}

/**
 实时检查当前网络状态
 */
//: - (void)addReachabilityManager {
- (void)object {
    //: AFNetworkReachabilityManager *afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];
    AFNetworkReachabilityManager *afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];

    //: [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusNotReachable:{
            case AFNetworkReachabilityStatusNotReachable:{
                //: NSLog(@"网络不通：%@",@(status) );
                //: break;
                break;
            }
            //: case AFNetworkReachabilityStatusReachableViaWiFi:{
            case AFNetworkReachabilityStatusReachableViaWiFi:{
                //: NSLog(@"网络通过WIFI连接：%@",@(status));
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self trap];
                //: });
                });
                //: break;
                break;
            }
            //: case AFNetworkReachabilityStatusReachableViaWWAN:{
            case AFNetworkReachabilityStatusReachableViaWWAN:{
                //: NSLog(@"网络通过无线连接：%@",@(status) );
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self trap];
                //: });
                });
                //: break;
                break;
            }
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];

    //: [afNetworkReachabilityManager startMonitoring]; 
    [afNetworkReachabilityManager startMonitoring]; //开启网络监视器；
}

//: -(void)registSuccessWithAccount:(NSNotification *)notification{
-(void)registLabel:(NSNotification *)notification{
    //: NSDictionary *dict = notification.object;
    NSDictionary *dict = notification.object;
    //: _usernameTextField.text = [dict newStringValueForKey:@"UserAccount"];
    _usernameTextField.text = [dict route:[PointOfReferenceData noti_targetValue]];
    //: _passwordTextField.text = [dict newStringValueForKey:@"UserPassWord"];
    _passwordTextField.text = [dict route:[PointOfReferenceData dream_makeGivingContent]];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [self doLogin];
        [self redTitle];
    //: });
    });
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self preferredStatusBarStyle];
    [self preferredStatusBarStyle];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI{
- (void)initColorOf{


    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+10, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice heightShowStop])+10, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[PointOfReferenceData k_byModeData]];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_login_welcome"];
    labtitle.text = [InputRed preserve:[PointOfReferenceData main_makeValue]];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    usernameView.backgroundColor = [UIColor ground:[PointOfReferenceData dreamDrugShowContent]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[PointOfReferenceData dreamUniteContent]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor ground:[PointOfReferenceData user_disableContent]];
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"register_account_activity_account"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[InputRed preserve:[PointOfReferenceData dream_showText]] attributes:@{NSForegroundColorAttributeName:[UIColor ground:[PointOfReferenceData dreamColorBrokerRemoveText]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];
    //: if ([NIMUserDefaults standardUserDefaults].accountName && [NIMUserDefaults standardUserDefaults].accountName.length > 0){
    if ([SessionRecord afterUser].accountName && [SessionRecord afterUser].accountName.length > 0){
        //: _usernameTextField.text = [NIMUserDefaults standardUserDefaults].accountName;
        _usernameTextField.text = [SessionRecord afterUser].accountName;
    }

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    psdView.backgroundColor = [UIColor ground:[PointOfReferenceData dreamDrugShowContent]];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[PointOfReferenceData app_sessionData]];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor ground:[PointOfReferenceData user_disableContent]];
    //: _passwordTextField.secureTextEntry = YES;
    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"register_account_activity_psw"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[InputRed preserve:[PointOfReferenceData m_ambitionName]] attributes:@{NSForegroundColorAttributeName:[UIColor ground:[PointOfReferenceData dreamColorBrokerRemoveText]]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(hiddening:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[PointOfReferenceData mAssaultValue]] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[PointOfReferenceData user_tagTitle]] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    //: [psdView addSubview:self.secureButton];
    [psdView addSubview:self.secureButton];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_login_login"] forState:UIControlStateNormal];
    [_loginButton setTitle:[InputRed preserve:[PointOfReferenceData userMaxData]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(redTitle) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _loginButton.backgroundColor = [UIColor ground:[PointOfReferenceData kPlanetData]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
//    _registerButton.backgroundColor = ThemeColor;
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#05D481"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor ground:[PointOfReferenceData kPlanetData]] forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"zanwuzhanhaozhuce") forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(doRegister) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(dismissCan) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"activity_register_title"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[InputRed preserve:[PointOfReferenceData showFileData]] attributes:attributes];
    //: [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;


    //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    //: _agreementButton.selected = YES;
    _agreementButton.selected = YES;
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:[PointOfReferenceData appCongressionalData]] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[PointOfReferenceData mainVideoAcceptableText]] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(voxes:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_agreementButton];
    [self.view addSubview:_agreementButton];

    //: [self.view addSubview:self.protocolLabel];
    [self.view addSubview:self.protocolLabel];
    //: self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);

//    UIButton *forgetPSD = [UIButton buttonWithType:UIButtonTypeCustom];
//    forgetPSD.frame = CGRectMake(15, self.loginButton.bottom+15, SCREEN_WIDTH-30, 40);
//    forgetPSD.titleLabel.font = [UIFont systemFontOfSize:14];
//    [forgetPSD setTitleColor:ThemeColor forState:UIControlStateNormal];
//    [forgetPSD setTitle:LangKey(@"activity_safe_setting_modify") forState:UIControlStateNormal];
//    [forgetPSD addTarget:self action:@selector(forgetPSDButtonClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:forgetPSD];



    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: [self.view bringSubviewToFront:self.loadingView];
    [self.view bringSubviewToFront:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;
}

//: - (void)forgetPSDButtonClick
- (void)blow
{
    //: GetBackPasswordViewController *vc = [[GetBackPasswordViewController alloc]init];
    FuturismViewController *vc = [[FuturismViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doRegister
- (void)dismissCan
{
    //: FFFRegisterViewController *vc = [[FFFRegisterViewController alloc]init];
    ResearchLabViewController *vc = [[ResearchLabViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)pwdTextSwitch:(UIButton *)sender {
- (void)hiddening:(UIButton *)sender {

    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[PointOfReferenceData user_tagTitle]] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[PointOfReferenceData mAssaultValue]] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: -(YYLabel *)protocolLabel{
-(YYLabel *)protocolLabel{
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [FFFLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [InputRed preserve:[PointOfReferenceData user_atData]];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_alignment = NSTextAlignmentLeft;
        //: text1.yy_lineSpacing = 3;
        text1.yy_lineSpacing = 3;

        //: [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  //: color:[UIColor colorWithHexString:@"#05D481"]
                                  color:[UIColor ground:[PointOfReferenceData kPlanetData]]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {

            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            SumViewController *vc = [[SumViewController alloc] init];
            //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [InputRed preserve:[PointOfReferenceData noti_quickFileTitle]];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [SessionRecord afterUser].yshref;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
//            @weakify(self);
//            vc.complete = ^{
//                @strongify(self);
//                [self.navigationController popViewControllerAnimated:NO];
//                self.agreementButton.selected = YES;
//            };
        //: }];
        }];

        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: _protocolLabel = titleLb;
        _protocolLabel = titleLb;
    }
    //: return _protocolLabel;
    return _protocolLabel;
}


//: -(YYLabel *)registLabel{
-(YYLabel *)registLabel{
    //: if (!_registLabel) {
    if (!_registLabel) {
        //: NSString *noCount = [FFFLanguageManager getTextWithKey:@"activity_login_has_no_account"];
        NSString *noCount = [InputRed preserve:[PointOfReferenceData appHandleValue]];
        //: NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentCenter;
        text1.yy_alignment = NSTextAlignmentCenter;
        //: text1.yy_color = [UIColor colorWithHexString:@"#8282A7"];
        text1.yy_color = [UIColor ground:[PointOfReferenceData dreamFortunateValue]];
        //: text1.yy_lineSpacing = 8;
        text1.yy_lineSpacing = 8;


        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentCenter;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentCenter;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: _registLabel = titleLb;
        _registLabel = titleLb;
    }
    //: return _registLabel;
    return _registLabel;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)voxes:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)inputAccount:(NSString*)account password:(NSString *)password{
-(void)with:(NSString*)account icon:(NSString *)password{
    //: _usernameTextField.text = account;
    _usernameTextField.text = account;
    //: _passwordTextField.text = password;
    _passwordTextField.text = password;
}

//: - (BOOL)isVPNConnected
- (BOOL)value
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
        //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
        NSArray *keys = [dict[[PointOfReferenceData kShowDisableLengthValue]]allKeys];
        //: for (NSString *key in keys) {
        for (NSString *key in keys) {
            //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
            if ([key rangeOfString:[PointOfReferenceData kNovelTitle]].location != NSNotFound ||
                //: [key rangeOfString:@"tun"].location != NSNotFound ||
                [key rangeOfString:[PointOfReferenceData showMaxContent]].location != NSNotFound ||
                //: [key rangeOfString:@"ppp"].location != NSNotFound){
                [key rangeOfString:[PointOfReferenceData user_showValue]].location != NSNotFound){
                //: return YES;
                return YES;
            }
        }
        //: return NO;
        return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)inheritance:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [PointOfReferenceData main_acceptableName];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[PointOfReferenceData appUndertakeText], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)content:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [PointOfReferenceData mDeleteName];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[PointOfReferenceData appUndertakeText], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (void)doLogin {
- (void)redTitle {

//    if (_agreementButton.selected == NO) {
//        [self.view makeToast:LangKey(@"Read_agree_agreement") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[PointOfReferenceData dream_showText]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[PointOfReferenceData m_ambitionName]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:@"ios" forKey:@"client"];
    [dict setObject:[PointOfReferenceData main_deployData] forKey:[PointOfReferenceData notiInfoText]];
    //: [dict setObject:@"1" forKey:@"type"];
    [dict setObject:@"1" forKey:[PointOfReferenceData noti_sendTargetChangeContent]];
    //: [dict setObject:_usernameTextField.text forKey:@"account"];
    [dict setObject:_usernameTextField.text forKey:[PointOfReferenceData kAddValue]];
    //: [dict setObject:_passwordTextField.text forKey:@"password"];
    [dict setObject:_passwordTextField.text forKey:[PointOfReferenceData mReadBarrelData]];
    //: [dict setObject:[NSString stringWithFormat:@"iOS%@",[ZCHttpRequestHeader deviceVersion]] forKey:@"telname"];
    [dict setObject:[NSString stringWithFormat:[PointOfReferenceData noti_brokerTitle],[CountHeader data]] forKey:[PointOfReferenceData appButtonContent]];
    //: [dict setObject:[ZCHttpRequestHeader getIOSVersion] forKey:@"systems"];
    [dict setObject:[CountHeader bottomSessionVersion] forKey:[PointOfReferenceData k_olaContent]];
    //: [dict setObject:[SNDevice deviceIUUID] forKey:@"deviceid"];
    [dict setObject:[ModeWith at] forKey:[PointOfReferenceData mPremiumName]];

    //: [dict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [dict setObject:[self value]?@"1":@"0" forKey:[PointOfReferenceData app_drugName]];

    //: if (_isloading){
    if (_isloading){
        //: return;
        return;
    }
    //: _isloading = YES;
    _isloading = YES;

    //: [self.loadingView animationShow];
    [self.loadingView value];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/login"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[PointOfReferenceData user_readSessionKeepName]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {

        //: _isloading = NO;
        _isloading = NO;

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[PointOfReferenceData k_tableTitle]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict route:[PointOfReferenceData showAfternoonName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[PointOfReferenceData noti_removeValue]];
            //: __block NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            __block NSString *nimtoken = [data route:[PointOfReferenceData noti_severName]];
            //: __block NSString *accid = [data newStringValueForKey:@"id"];
            __block NSString *accid = [data route:@"id"];

            //: [NIMUserDefaults standardUserDefaults].loginToken = [data newStringValueForKey:@"token"];
            [SessionRecord afterUser].loginToken = [data route:[PointOfReferenceData user_withTableData]];
            //: [NIMUserDefaults standardUserDefaults].accid = [data newStringValueForKey:@"id"];
            [SessionRecord afterUser].accid = [data route:@"id"];


            //: [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {
            [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {

                    //: [self.loadingView animationClose];
                    [self.loadingView animationWithEnableAtHand];

                    //: if (error != nil) {
                    if (error != nil) {

                        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"login_activity_login_failed"] duration:2.0 position:CSToastPositionCenter];
                        [self.view makeToast:[InputRed preserve:[PointOfReferenceData main_planetTitle]] duration:2.0 position:CSToastPositionCenter];

                        //: return;
                        return;
                    }


                //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
                CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
                //: style.backgroundColor = [UIColor whiteColor];
                style.backgroundColor = [UIColor whiteColor];
                  //: style.imageSize = CGSizeMake(20, 20);
                  style.imageSize = CGSizeMake(20, 20);
                //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
                style.messageColor = [UIColor ground:[PointOfReferenceData notiHideContent]];
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"login_activity_login_success"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
                [self.view makeToast:[InputRed preserve:[PointOfReferenceData showDeployData]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[PointOfReferenceData showMakeTitle]] style:style completion:nil];

                    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
                    ShowCircle *sdkData = [[ShowCircle alloc] init];
                    //: sdkData.account = accid;
                    sdkData.account = accid;
                    //: sdkData.token = nimtoken;
                    sdkData.token = nimtoken;
                    //: sdkData.authType = 0;
                    sdkData.authType = 0;
                    //: sdkData.loginExtension = @"";
                    sdkData.loginExtension = @"";
                    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                    [[NameForwardMessage input] setCurrentLoginData:sdkData];




                    //: NTESMainTabController * mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
                    ManagerBarController * mainTab = [[ManagerBarController alloc] initWithNibName:nil bundle:nil];
                    //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    //: [NIMUserDefaults standardUserDefaults].accountName = _usernameTextField.text;
                    [SessionRecord afterUser].accountName = _usernameTextField.text;
                    //: [NIMUserDefaults standardUserDefaults].pCode = _passwordTextField.text;
                    [SessionRecord afterUser].pCode = _passwordTextField.text;


            //: }];
            }];
        //: }else{
        }else{
            //: [self.loadingView animationClose];
            [self.loadingView animationWithEnableAtHand];

//            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor ground:[PointOfReferenceData notiHideContent]];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[PointOfReferenceData user_quickText]] style:style completion:nil];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: [self.loadingView animationClose];
        [self.loadingView animationWithEnableAtHand];
            //: _isloading = NO;
            _isloading = NO;
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor ground:[PointOfReferenceData notiHideContent]];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[InputRed preserve:[PointOfReferenceData show_yaParentName]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[PointOfReferenceData user_quickText]] style:style completion:nil];

    //: }];
    }];
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: if ([string isEqualToString:@"\n"]) {
    if ([string isEqualToString:@"\n"]) {
        //: [self doLogin];
        [self redTitle];
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)textFieldDidEndEditing:(UITextField *)textField {
- (void)textFieldDidEndEditing:(UITextField *)textField {
    //: self.secureButton.hidden = YES;
    self.secureButton.hidden = YES;
}

//: - (void)textFieldDidBeginEditing:(UITextField *)textField {
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    //: self.secureButton.hidden = NO;
    self.secureButton.hidden = NO;
    //: [textField bringSubviewToFront:self.secureButton];
    [textField bringSubviewToFront:self.secureButton];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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


//: @end
@end