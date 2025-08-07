
#import <Foundation/Foundation.h>

@interface MentalObjectData : NSObject

@end

@implementation MentalObjectData

+ (Byte *)MentalObjectDataToCache:(Byte *)data {
    int iconDramatically = data[0];
    Byte wonderful = data[1];
    int distinction = data[2];
    for (int i = distinction; i < distinction + iconDramatically; i++) {
        int value = data[i] + wonderful;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[distinction + iconDramatically] = 0;
    return data + distinction;
}

+ (NSString *)StringFromMentalObjectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MentalObjectDataToCache:data]];
}

//: edit_profile
+ (NSString *)k_iconUrl {
    /* static */ NSString *k_iconUrl = nil;
    if (!k_iconUrl) {
        Byte value[] = {12, 16, 9, 42, 250, 163, 207, 215, 181, 85, 84, 89, 100, 79, 96, 98, 95, 86, 89, 92, 85, 255};
        k_iconUrl = [self StringFromMentalObjectData:value];
    }
    return k_iconUrl;
}

//: safe_setting_activity_title
+ (NSString *)show_chiefValue {
    /* static */ NSString *show_chiefValue = nil;
    if (!show_chiefValue) {
        Byte value[] = {27, 89, 12, 105, 222, 114, 239, 170, 90, 229, 144, 60, 26, 8, 13, 12, 6, 26, 12, 27, 27, 16, 21, 14, 6, 8, 10, 27, 16, 29, 16, 27, 32, 6, 27, 16, 27, 19, 12, 64};
        show_chiefValue = [self StringFromMentalObjectData:value];
    }
    return show_chiefValue;
}

//: Malta
+ (NSString *)dreamAtPath {
    /* static */ NSString *dreamAtPath = nil;
    if (!dreamAtPath) {
        Byte value[] = {5, 20, 6, 38, 140, 89, 57, 77, 88, 96, 77, 110};
        dreamAtPath = [self StringFromMentalObjectData:value];
    }
    return dreamAtPath;
}

//: user_ic_2
+ (NSString *)notiDismissDelicateTitle {
    /* static */ NSString *notiDismissDelicateTitle = nil;
    if (!notiDismissDelicateTitle) {
        Byte value[] = {9, 20, 3, 97, 95, 81, 94, 75, 85, 79, 75, 30, 145};
        notiDismissDelicateTitle = [self StringFromMentalObjectData:value];
    }
    return notiDismissDelicateTitle;
}

//: spa
+ (NSString *)user_economicValue {
    /* static */ NSString *user_economicValue = nil;
    if (!user_economicValue) {
        Byte value[] = {3, 34, 5, 210, 103, 81, 78, 63, 148};
        user_economicValue = [self StringFromMentalObjectData:value];
    }
    return user_economicValue;
}

//: #999999
+ (NSString *)main_empireMsg {
    /* static */ NSString *main_empireMsg = nil;
    if (!main_empireMsg) {
        Byte value[] = {7, 5, 8, 117, 26, 193, 191, 199, 30, 52, 52, 52, 52, 52, 52, 101};
        main_empireMsg = [self StringFromMentalObjectData:value];
    }
    return main_empireMsg;
}

//: Em alemão
+ (NSString *)kWarPath {
    /* static */ NSString *kWarPath = nil;
    if (!kWarPath) {
        Byte value[] = {10, 58, 13, 236, 127, 62, 74, 49, 198, 36, 16, 7, 160, 11, 51, 230, 39, 50, 43, 51, 137, 105, 53, 220};
        kWarPath = [self StringFromMentalObjectData:value];
    }
    return kWarPath;
}

//: icon_close
+ (NSString *)noti_horrorStr {
    /* static */ NSString *noti_horrorStr = nil;
    if (!noti_horrorStr) {
        Byte value[] = {10, 93, 13, 192, 253, 123, 172, 245, 167, 80, 182, 255, 154, 12, 6, 18, 17, 2, 6, 15, 18, 22, 8, 154};
        noti_horrorStr = [self StringFromMentalObjectData:value];
    }
    return noti_horrorStr;
}

//: contact_tag_fragment_sure
+ (NSString *)main_hostileKey {
    /* static */ NSString *main_hostileKey = nil;
    if (!main_hostileKey) {
        Byte value[] = {25, 81, 4, 168, 18, 30, 29, 35, 16, 18, 35, 14, 35, 16, 22, 14, 21, 33, 16, 22, 28, 20, 29, 35, 14, 34, 36, 33, 20, 239};
        main_hostileKey = [self StringFromMentalObjectData:value];
    }
    return main_hostileKey;
}

//: Finland
+ (NSString *)app_panPath {
    /* static */ NSString *app_panPath = nil;
    if (!app_panPath) {
        Byte value[] = {7, 87, 4, 62, 239, 18, 23, 21, 10, 23, 13, 38};
        app_panPath = [self StringFromMentalObjectData:value];
    }
    return app_panPath;
}

//: 中文繁体
+ (NSString *)main_buttName {
    /* static */ NSString *main_buttName = nil;
    if (!main_buttName) {
        Byte value[] = {12, 23, 11, 148, 134, 12, 55, 156, 186, 90, 199, 205, 161, 150, 207, 127, 112, 208, 162, 106, 205, 166, 124, 50};
        main_buttName = [self StringFromMentalObjectData:value];
    }
    return main_buttName;
}

//: #CCECFC
+ (NSString *)k_mageValue {
    /* static */ NSString *k_mageValue = nil;
    if (!k_mageValue) {
        Byte value[] = {7, 38, 12, 199, 150, 26, 142, 251, 214, 253, 66, 234, 253, 29, 29, 31, 29, 32, 29, 220};
        k_mageValue = [self StringFromMentalObjectData:value];
    }
    return k_mageValue;
}

//: Greece
+ (NSString *)noti_slatTextMessage {
    /* static */ NSString *noti_slatTextMessage = nil;
    if (!noti_slatTextMessage) {
        Byte value[] = {6, 35, 4, 250, 36, 79, 66, 66, 64, 66, 35};
        noti_slatTextMessage = [self StringFromMentalObjectData:value];
    }
    return noti_slatTextMessage;
}

//: receiver_model
+ (NSString *)m_belowReinforceMsg {
    /* static */ NSString *m_belowReinforceMsg = nil;
    if (!m_belowReinforceMsg) {
        Byte value[] = {14, 5, 12, 105, 72, 167, 70, 196, 24, 30, 33, 70, 109, 96, 94, 96, 100, 113, 96, 109, 90, 104, 106, 95, 96, 103, 97};
        m_belowReinforceMsg = [self StringFromMentalObjectData:value];
    }
    return m_belowReinforceMsg;
}

//: Việt nam
+ (NSString *)main_withSodJuryTitle {
    /* static */ NSString *main_withSodJuryTitle = nil;
    if (!main_withSodJuryTitle) {
        Byte value[] = {10, 44, 11, 188, 93, 157, 187, 138, 198, 75, 134, 42, 61, 181, 143, 91, 72, 244, 66, 53, 65, 165};
        main_withSodJuryTitle = [self StringFromMentalObjectData:value];
    }
    return main_withSodJuryTitle;
}

//: Hungary
+ (NSString *)appAllyMessage {
    /* static */ NSString *appAllyMessage = nil;
    if (!appAllyMessage) {
        Byte value[] = {7, 29, 12, 240, 186, 212, 80, 12, 23, 89, 33, 163, 43, 88, 81, 74, 68, 85, 92, 131};
        appAllyMessage = [self StringFromMentalObjectData:value];
    }
    return appAllyMessage;
}

//: Estonia
+ (NSString *)user_imageFormat {
    /* static */ NSString *user_imageFormat = nil;
    if (!user_imageFormat) {
        Byte value[] = {7, 51, 6, 49, 226, 134, 18, 64, 65, 60, 59, 54, 46, 98};
        user_imageFormat = [self StringFromMentalObjectData:value];
    }
    return user_imageFormat;
}

//: qrcode_activity_title
+ (NSString *)m_statStr {
    /* static */ NSString *m_statStr = nil;
    if (!m_statStr) {
        Byte value[] = {21, 47, 3, 66, 67, 52, 64, 53, 54, 48, 50, 52, 69, 58, 71, 58, 69, 74, 48, 69, 58, 69, 61, 54, 133};
        m_statStr = [self StringFromMentalObjectData:value];
    }
    return m_statStr;
}

//: Slovenija
+ (NSString *)mainLeaveUrl {
    /* static */ NSString *mainLeaveUrl = nil;
    if (!mainLeaveUrl) {
        Byte value[] = {9, 61, 11, 234, 86, 240, 255, 124, 122, 201, 26, 22, 47, 50, 57, 40, 49, 44, 45, 36, 17};
        mainLeaveUrl = [self StringFromMentalObjectData:value];
    }
    return mainLeaveUrl;
}

//: Czech Republic
+ (NSString *)kExplosionContent {
    /* static */ NSString *kExplosionContent = nil;
    if (!kExplosionContent) {
        Byte value[] = {14, 83, 8, 205, 1, 38, 207, 233, 240, 39, 18, 16, 21, 205, 255, 18, 29, 34, 15, 25, 22, 16, 20};
        kExplosionContent = [self StringFromMentalObjectData:value];
    }
    return kExplosionContent;
}

//: Kiswahili
+ (NSString *)dream_messageItselfValue {
    /* static */ NSString *dream_messageItselfValue = nil;
    if (!dream_messageItselfValue) {
        Byte value[] = {9, 55, 10, 253, 61, 224, 172, 88, 198, 148, 20, 50, 60, 64, 42, 49, 50, 53, 50, 78};
        dream_messageItselfValue = [self StringFromMentalObjectData:value];
    }
    return dream_messageItselfValue;
}

//: Romania
+ (NSString *)main_inputFabricUrl {
    /* static */ NSString *main_inputFabricUrl = nil;
    if (!main_inputFabricUrl) {
        Byte value[] = {7, 40, 3, 42, 71, 69, 57, 70, 65, 57, 240};
        main_inputFabricUrl = [self StringFromMentalObjectData:value];
    }
    return main_inputFabricUrl;
}

//: Ireland
+ (NSString *)dream_centerEnableRandomKey {
    /* static */ NSString *dream_centerEnableRandomKey = nil;
    if (!dream_centerEnableRandomKey) {
        Byte value[] = {7, 78, 6, 155, 11, 116, 251, 36, 23, 30, 19, 32, 22, 230};
        dream_centerEnableRandomKey = [self StringFromMentalObjectData:value];
    }
    return dream_centerEnableRandomKey;
}

//: Netherlands
+ (NSString *)dream_atFormat {
    /* static */ NSString *dream_atFormat = nil;
    if (!dream_atFormat) {
        Byte value[] = {11, 64, 11, 199, 240, 47, 6, 170, 126, 104, 39, 14, 37, 52, 40, 37, 50, 44, 33, 46, 36, 51, 154};
        dream_atFormat = [self StringFromMentalObjectData:value];
    }
    return dream_atFormat;
}

//: #05D481
+ (NSString *)dreamCancelMessage {
    /* static */ NSString *dreamCancelMessage = nil;
    if (!dreamCancelMessage) {
        Byte value[] = {7, 68, 8, 75, 181, 191, 158, 40, 223, 236, 241, 0, 240, 244, 237, 16};
        dreamCancelMessage = [self StringFromMentalObjectData:value];
    }
    return dreamCancelMessage;
}

//: #F7D2F3
+ (NSString *)noti_investorId {
    /* static */ NSString *noti_investorId = nil;
    if (!noti_investorId) {
        Byte value[] = {7, 12, 11, 127, 174, 245, 217, 122, 108, 179, 69, 23, 58, 43, 56, 38, 58, 39, 45};
        noti_investorId = [self StringFromMentalObjectData:value];
    }
    return noti_investorId;
}

//: France
+ (NSString *)notiDistractIdent {
    /* static */ NSString *notiDistractIdent = nil;
    if (!notiDistractIdent) {
        Byte value[] = {6, 58, 5, 217, 125, 12, 56, 39, 52, 41, 43, 74};
        notiDistractIdent = [self StringFromMentalObjectData:value];
    }
    return notiDistractIdent;
}

//: Luxembourg
+ (NSString *)appSubMsg {
    /* static */ NSString *appSubMsg = nil;
    if (!appSubMsg) {
        Byte value[] = {10, 66, 4, 45, 10, 51, 54, 35, 43, 32, 45, 51, 48, 37, 67};
        appSubMsg = [self StringFromMentalObjectData:value];
    }
    return appSubMsg;
}

//: user_ic_3
+ (NSString *)show_sizeValue {
    /* static */ NSString *show_sizeValue = nil;
    if (!show_sizeValue) {
        Byte value[] = {9, 79, 11, 198, 123, 41, 115, 164, 38, 85, 50, 38, 36, 22, 35, 16, 26, 20, 16, 228, 218};
        show_sizeValue = [self StringFromMentalObjectData:value];
    }
    return show_sizeValue;
}

//: CFBundleShortVersionString
+ (NSString *)main_itemName {
    /* static */ NSString *main_itemName = nil;
    if (!main_itemName) {
        Byte value[] = {26, 48, 12, 192, 1, 73, 114, 79, 193, 142, 75, 233, 19, 22, 18, 69, 62, 52, 60, 53, 35, 56, 63, 66, 68, 38, 53, 66, 67, 57, 63, 62, 35, 68, 66, 57, 62, 55, 204};
        main_itemName = [self StringFromMentalObjectData:value];
    }
    return main_itemName;
}

//: system_change_language_title
+ (NSString *)user_displayBlackTitle {
    /* static */ NSString *user_displayBlackTitle = nil;
    if (!user_displayBlackTitle) {
        Byte value[] = {28, 83, 3, 32, 38, 32, 33, 18, 26, 12, 16, 21, 14, 27, 20, 18, 12, 25, 14, 27, 20, 34, 14, 20, 18, 12, 33, 22, 33, 25, 18, 193};
        user_displayBlackTitle = [self StringFromMentalObjectData:value];
    }
    return user_displayBlackTitle;
}

//: Türkçe
+ (NSString *)userMaxIdent {
    /* static */ NSString *userMaxIdent = nil;
    if (!userMaxIdent) {
        Byte value[] = {8, 62, 13, 143, 204, 73, 167, 48, 163, 14, 206, 26, 126, 22, 133, 126, 52, 45, 133, 105, 39, 96};
        userMaxIdent = [self StringFromMentalObjectData:value];
    }
    return userMaxIdent;
}

//: fragment_my_version
+ (NSString *)kMotKey {
    /* static */ NSString *kMotKey = nil;
    if (!kMotKey) {
        Byte value[] = {19, 95, 7, 3, 212, 147, 51, 7, 19, 2, 8, 14, 6, 15, 21, 0, 14, 26, 0, 23, 6, 19, 20, 10, 16, 15, 238};
        kMotKey = [self StringFromMentalObjectData:value];
    }
    return kMotKey;
}

//: activity_comment_setting_ys
+ (NSString *)k_slatAbortName {
    /* static */ NSString *k_slatAbortName = nil;
    if (!k_slatAbortName) {
        Byte value[] = {27, 7, 11, 20, 191, 90, 252, 30, 27, 118, 229, 90, 92, 109, 98, 111, 98, 109, 114, 88, 92, 104, 102, 102, 94, 103, 109, 88, 108, 94, 109, 109, 98, 103, 96, 88, 114, 108, 128};
        k_slatAbortName = [self StringFromMentalObjectData:value];
    }
    return k_slatAbortName;
}

//: enable
+ (NSString *)dream_distinctionUrl {
    /* static */ NSString *dream_distinctionUrl = nil;
    if (!dream_distinctionUrl) {
        Byte value[] = {6, 18, 9, 15, 70, 11, 75, 123, 129, 83, 92, 79, 80, 90, 83, 243};
        dream_distinctionUrl = [self StringFromMentalObjectData:value];
    }
    return dream_distinctionUrl;
}

//: italiano
+ (NSString *)mInfoKey {
    /* static */ NSString *mInfoKey = nil;
    if (!mInfoKey) {
        Byte value[] = {8, 84, 6, 129, 110, 66, 21, 32, 13, 24, 21, 13, 26, 27, 198};
        mInfoKey = [self StringFromMentalObjectData:value];
    }
    return mInfoKey;
}

//: my_log
+ (NSString *)mPanStr {
    /* static */ NSString *mPanStr = nil;
    if (!mPanStr) {
        Byte value[] = {6, 77, 6, 82, 62, 161, 32, 44, 18, 31, 34, 26, 89};
        mPanStr = [self StringFromMentalObjectData:value];
    }
    return mPanStr;
}

//: Latvia
+ (NSString *)mainPickFormat {
    /* static */ NSString *mainPickFormat = nil;
    if (!mainPickFormat) {
        Byte value[] = {6, 95, 9, 30, 114, 170, 72, 130, 61, 237, 2, 21, 23, 10, 2, 60};
        mainPickFormat = [self StringFromMentalObjectData:value];
    }
    return mainPickFormat;
}

//: Español
+ (NSString *)appNorthernMessage {
    /* static */ NSString *appNorthernMessage = nil;
    if (!appNorthernMessage) {
        Byte value[] = {8, 76, 7, 203, 90, 8, 227, 249, 39, 36, 21, 119, 101, 35, 32, 63};
        appNorthernMessage = [self StringFromMentalObjectData:value];
    }
    return appNorthernMessage;
}

//: Poland
+ (NSString *)main_downDeadKey {
    /* static */ NSString *main_downDeadKey = nil;
    if (!main_downDeadKey) {
        Byte value[] = {6, 58, 12, 58, 103, 50, 94, 7, 13, 64, 227, 155, 22, 53, 50, 39, 52, 42, 191};
        main_downDeadKey = [self StringFromMentalObjectData:value];
    }
    return main_downDeadKey;
}

//: #ffffff
+ (NSString *)userSodMessage {
    /* static */ NSString *userSodMessage = nil;
    if (!userSodMessage) {
        Byte value[] = {7, 57, 9, 59, 227, 116, 254, 177, 208, 234, 45, 45, 45, 45, 45, 45, 170};
        userSodMessage = [self StringFromMentalObjectData:value];
    }
    return userSodMessage;
}

//: feedback_activity_title
+ (NSString *)dreamWithText {
    /* static */ NSString *dreamWithText = nil;
    if (!dreamWithText) {
        Byte value[] = {23, 52, 9, 140, 227, 65, 56, 10, 14, 50, 49, 49, 48, 46, 45, 47, 55, 43, 45, 47, 64, 53, 66, 53, 64, 69, 43, 64, 53, 64, 56, 49, 151};
        dreamWithText = [self StringFromMentalObjectData:value];
    }
    return dreamWithText;
}

//: user_ic_5
+ (NSString *)user_cellData {
    /* static */ NSString *user_cellData = nil;
    if (!user_cellData) {
        Byte value[] = {9, 13, 5, 7, 1, 104, 102, 88, 101, 82, 92, 86, 82, 40, 144};
        user_cellData = [self StringFromMentalObjectData:value];
    }
    return user_cellData;
}

//: icon_select_confirm
+ (NSString *)appRoughViewName {
    /* static */ NSString *appRoughViewName = nil;
    if (!appRoughViewName) {
        Byte value[] = {19, 50, 13, 12, 79, 80, 156, 141, 191, 155, 23, 81, 114, 55, 49, 61, 60, 45, 65, 51, 58, 51, 49, 66, 45, 49, 61, 60, 52, 55, 64, 59, 55};
        appRoughViewName = [self StringFromMentalObjectData:value];
    }
    return appRoughViewName;
}

//: #2C3042
+ (NSString *)showGovernMessage {
    /* static */ NSString *showGovernMessage = nil;
    if (!showGovernMessage) {
        Byte value[] = {7, 11, 10, 198, 33, 126, 143, 64, 8, 177, 24, 39, 56, 40, 37, 41, 39, 10};
        showGovernMessage = [self StringFromMentalObjectData:value];
    }
    return showGovernMessage;
}

//: Bulgaria
+ (NSString *)notiFarSodMsg {
    /* static */ NSString *notiFarSodMsg = nil;
    if (!notiFarSodMsg) {
        Byte value[] = {8, 69, 12, 216, 6, 82, 243, 34, 56, 82, 39, 174, 253, 48, 39, 34, 28, 45, 36, 28, 219};
        notiFarSodMsg = [self StringFromMentalObjectData:value];
    }
    return notiFarSodMsg;
}

//: user_edit_profile
+ (NSString *)kMessageErrValue {
    /* static */ NSString *kMessageErrValue = nil;
    if (!kMessageErrValue) {
        Byte value[] = {17, 96, 8, 244, 204, 239, 167, 236, 21, 19, 5, 18, 255, 5, 4, 9, 20, 255, 16, 18, 15, 6, 9, 12, 5, 252};
        kMessageErrValue = [self StringFromMentalObjectData:value];
    }
    return kMessageErrValue;
}

//: activity_comment_setting_exit
+ (NSString *)main_panId {
    /* static */ NSString *main_panId = nil;
    if (!main_panId) {
        Byte value[] = {29, 42, 8, 213, 121, 246, 156, 96, 55, 57, 74, 63, 76, 63, 74, 79, 53, 57, 69, 67, 67, 59, 68, 74, 53, 73, 59, 74, 74, 63, 68, 61, 53, 59, 78, 63, 74, 51};
        main_panId = [self StringFromMentalObjectData:value];
    }
    return main_panId;
}

//: common_bg
+ (NSString *)dreamDisplayIdent {
    /* static */ NSString *dreamDisplayIdent = nil;
    if (!dreamDisplayIdent) {
        Byte value[] = {9, 32, 9, 209, 192, 4, 240, 85, 124, 67, 79, 77, 77, 79, 78, 63, 66, 71, 153};
        dreamDisplayIdent = [self StringFromMentalObjectData:value];
    }
    return dreamDisplayIdent;
}

//: user_edit_lang
+ (NSString *)notiHorrorKey {
    /* static */ NSString *notiHorrorKey = nil;
    if (!notiHorrorKey) {
        Byte value[] = {14, 94, 3, 23, 21, 7, 20, 1, 7, 6, 11, 22, 1, 14, 3, 16, 9, 196};
        notiHorrorKey = [self StringFromMentalObjectData:value];
    }
    return notiHorrorKey;
}

//: user_my_log
+ (NSString *)user_heroData {
    /* static */ NSString *user_heroData = nil;
    if (!user_heroData) {
        Byte value[] = {11, 51, 10, 45, 246, 6, 243, 41, 55, 55, 66, 64, 50, 63, 44, 58, 70, 44, 57, 60, 52, 189};
        user_heroData = [self StringFromMentalObjectData:value];
    }
    return user_heroData;
}

//: NotificationLogout
+ (NSString *)appDownWakeNorthernMsg {
    /* static */ NSString *appDownWakeNorthernMsg = nil;
    if (!appDownWakeNorthernMsg) {
        Byte value[] = {18, 1, 3, 77, 110, 115, 104, 101, 104, 98, 96, 115, 104, 110, 109, 75, 110, 102, 110, 116, 115, 233};
        appDownWakeNorthernMsg = [self StringFromMentalObjectData:value];
    }
    return appDownWakeNorthernMsg;
}

//: user_ic_4
+ (NSString *)k_cancelValue {
    /* static */ NSString *k_cancelValue = nil;
    if (!k_cancelValue) {
        Byte value[] = {9, 11, 7, 188, 77, 246, 150, 106, 104, 90, 103, 84, 94, 88, 84, 41, 73};
        k_cancelValue = [self StringFromMentalObjectData:value];
    }
    return k_cancelValue;
}

//: 5D5F66
+ (NSString *)main_pressedText {
    /* static */ NSString *main_pressedText = nil;
    if (!main_pressedText) {
        Byte value[] = {6, 23, 10, 215, 46, 251, 156, 114, 78, 60, 30, 45, 30, 47, 31, 31, 209};
        main_pressedText = [self StringFromMentalObjectData:value];
    }
    return main_pressedText;
}

//: Croatia
+ (NSString *)mButtonFormat {
    /* static */ NSString *mButtonFormat = nil;
    if (!mButtonFormat) {
        Byte value[] = {7, 20, 6, 211, 199, 117, 47, 94, 91, 77, 96, 85, 77, 129};
        mButtonFormat = [self StringFromMentalObjectData:value];
    }
    return mButtonFormat;
}

//: Sverige
+ (NSString *)notiWonderfulKey {
    /* static */ NSString *notiWonderfulKey = nil;
    if (!notiWonderfulKey) {
        Byte value[] = {7, 33, 6, 114, 250, 44, 50, 85, 68, 81, 72, 70, 68, 79};
        notiWonderfulKey = [self StringFromMentalObjectData:value];
    }
    return notiWonderfulKey;
}

//: Portugal
+ (NSString *)show_nuclearName {
    /* static */ NSString *show_nuclearName = nil;
    if (!show_nuclearName) {
        Byte value[] = {8, 84, 3, 252, 27, 30, 32, 33, 19, 13, 24, 116};
        show_nuclearName = [self StringFromMentalObjectData:value];
    }
    return show_nuclearName;
}

//: Denmark
+ (NSString *)notiSodUrl {
    /* static */ NSString *notiSodUrl = nil;
    if (!notiSodUrl) {
        Byte value[] = {7, 23, 9, 243, 31, 192, 111, 168, 171, 45, 78, 87, 86, 74, 91, 84, 151};
        notiSodUrl = [self StringFromMentalObjectData:value];
    }
    return notiSodUrl;
}

//: English
+ (NSString *)noti_detectivePath {
    /* static */ NSString *noti_detectivePath = nil;
    if (!noti_detectivePath) {
        Byte value[] = {7, 49, 6, 228, 15, 63, 20, 61, 54, 59, 56, 66, 55, 250};
        noti_detectivePath = [self StringFromMentalObjectData:value];
    }
    return noti_detectivePath;
}

//: user_qr_icon
+ (NSString *)userImageSodUrl {
    /* static */ NSString *userImageSodUrl = nil;
    if (!userImageSodUrl) {
        Byte value[] = {12, 96, 7, 157, 149, 98, 183, 21, 19, 5, 18, 255, 17, 18, 255, 9, 3, 15, 14, 90};
        userImageSodUrl = [self StringFromMentalObjectData:value];
    }
    return userImageSodUrl;
}

//: user_ic_1
+ (NSString *)dream_textGovernTitle {
    /* static */ NSString *dream_textGovernTitle = nil;
    if (!dream_textGovernTitle) {
        Byte value[] = {9, 88, 10, 138, 197, 115, 2, 52, 173, 244, 29, 27, 13, 26, 7, 17, 11, 7, 217, 225};
        dream_textGovernTitle = [self StringFromMentalObjectData:value];
    }
    return dream_textGovernTitle;
}

//: Slovakia
+ (NSString *)show_sessionPath {
    /* static */ NSString *show_sessionPath = nil;
    if (!show_sessionPath) {
        Byte value[] = {8, 49, 11, 195, 34, 41, 38, 176, 205, 209, 133, 34, 59, 62, 69, 48, 58, 56, 48, 22};
        show_sessionPath = [self StringFromMentalObjectData:value];
    }
    return show_sessionPath;
}

//: btn_right
+ (NSString *)show_rageUrl {
    /* static */ NSString *show_rageUrl = nil;
    if (!show_rageUrl) {
        Byte value[] = {9, 51, 4, 161, 47, 65, 59, 44, 63, 54, 52, 53, 65, 22};
        show_rageUrl = [self StringFromMentalObjectData:value];
    }
    return show_rageUrl;
}

//: Lithuania
+ (NSString *)dreamKeyTitle {
    /* static */ NSString *dreamKeyTitle = nil;
    if (!dreamKeyTitle) {
        Byte value[] = {9, 42, 4, 19, 34, 63, 74, 62, 75, 55, 68, 63, 55, 224};
        dreamKeyTitle = [self StringFromMentalObjectData:value];
    }
    return dreamKeyTitle;
}

//: hant
+ (NSString *)show_goingMessage {
    /* static */ NSString *show_goingMessage = nil;
    if (!show_goingMessage) {
        Byte value[] = {4, 35, 9, 112, 80, 40, 91, 185, 182, 69, 62, 75, 81, 6};
        show_goingMessage = [self StringFromMentalObjectData:value];
    }
    return show_goingMessage;
}

//: contact_tag_fragment_cancel
+ (NSString *)show_nameProfessionMsg {
    /* static */ NSString *show_nameProfessionMsg = nil;
    if (!show_nameProfessionMsg) {
        Byte value[] = {27, 21, 11, 46, 183, 156, 75, 30, 51, 30, 246, 78, 90, 89, 95, 76, 78, 95, 74, 95, 76, 82, 74, 81, 93, 76, 82, 88, 80, 89, 95, 74, 78, 76, 89, 78, 80, 87, 200};
        show_nameProfessionMsg = [self StringFromMentalObjectData:value];
    }
    return show_nameProfessionMsg;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeQuantityervalViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainCenterViewController.h"
#import "MakeQuantityervalViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "StanzaDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Collection.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "NTESNotificationCenter.h"
#import "SizeCenter.h"
//: #import "NTESCustomNotificationDB.h"
#import "BeforeDb.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESColorButtonCell.h"
#import "CompartmentViewCell.h"
//: #import "CCCBlackListViewController.h"
#import "MakeShowViewController.h"
//: #import "NTESUserUtil.h"
#import "BackgroundUtil.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "NTESMigrateMessageViewController.h"
#import "CoverViewController.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "FFFUserInfoViewController.h"//个人资料
#import "RandomViewController.h"//个人资料
//: #import "NTESUserQRCodeViewController.h" //我的二维码
#import "EnableViewController.h" //我的二维码
//: #import "NTESSafetySetingController.h"   //安全设置
#import "NeedViewController.h"   //安全设置
//: #import "NTESFeedbackViewController.h" //意见反馈
#import "IndexViewController.h" //意见反馈
//: #import "NTESLanguageViewController.h"
#import "CellViewController.h"
//: #import "NTESOpinionBackViewController.h" //意见反馈
#import "MaxViewController.h" //意见反馈
//: #import "ZMONPolicyPrivacyViewController.h"
#import "MarginViewController.h"
//: #import "MyLogViewController.h"
#import "MessageDataViewController.h"

//: @interface NTESMainCenterViewController ()<NIMUserManagerDelegate>
@interface MakeQuantityervalViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *lablang;
@property (nonatomic,strong) UILabel *lablang;
//: @property (nonatomic ,strong) NSString *language;
@property (nonatomic ,strong) NSString *language;


//: @end
@end

//: @implementation NTESMainCenterViewController
@implementation MakeQuantityervalViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self refreshUserInfo];
    [self bar];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[MentalObjectData dreamDisplayIdent]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initBy];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: self.language = [self requestLanguage:[NIMUserDefaults standardUserDefaults].language];
    self.language = [self media:[CrossShouldBlock towardScaleOfMeasurement].language];
}

//: - (void)refreshUserInfo
- (void)bar
{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:userID item:nil];

    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",vacantTab([CrossShouldBlock towardScaleOfMeasurement].accountName)];
    //: [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];


    //: _lablang.text = self.language;
    _lablang.text = self.language;
}

//: - (NSString *)requestLanguage:(NSString *)langType {
- (NSString *)media:(NSString *)langType {

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"English";
        resourceType = [MentalObjectData noti_detectivePath];
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"ภาษาไทย ";
        resourceType = @"ภาษาไทย ";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"Việt nam";
        resourceType = [MentalObjectData main_withSodJuryTitle];
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"हिंदी";
        resourceType = @"हिंदी";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"にほんご";
        resourceType = @"にほんご";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"한국어";
        resourceType = @"한국어";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[MentalObjectData user_economicValue]]){
        //: resourceType = @"Español";
        resourceType = [MentalObjectData appNorthernMessage];
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"Portugal";
        resourceType = [MentalObjectData show_nuclearName];
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"中文";
        resourceType = @"中文";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"italiano";
        resourceType = [MentalObjectData mInfoKey];
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"العربية المصرية";
        resourceType = @"العربية المصرية";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"Türkçe";
        resourceType = [MentalObjectData userMaxIdent];
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"Kiswahili";
        resourceType = [MentalObjectData dream_messageItselfValue];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"Em alemão";
        resourceType = [MentalObjectData kWarPath];
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"‎اردو";
        resourceType = @"‎اردو";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"العربية";
        resourceType = @"العربية";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"русск";
        resourceType = @"русск";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"বাঙ্গালি";
        resourceType = @"বাঙ্গালি";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"France";
        resourceType = [MentalObjectData notiDistractIdent];
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[MentalObjectData show_goingMessage]]){
        //: resourceType = @"中文繁体";
        resourceType = [MentalObjectData main_buttName];
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"Sverige";
        resourceType = [MentalObjectData notiWonderfulKey];
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"Slovenija";
        resourceType = [MentalObjectData mainLeaveUrl];
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"Slovakia";
        resourceType = [MentalObjectData show_sessionPath];
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"Romania";
        resourceType = [MentalObjectData main_inputFabricUrl];
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"Poland";
        resourceType = [MentalObjectData main_downDeadKey];
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"Netherlands";
        resourceType = [MentalObjectData dream_atFormat];
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"Malta";
        resourceType = [MentalObjectData dreamAtPath];
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"Luxembourg";
        resourceType = [MentalObjectData appSubMsg];
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"Lithuania";
        resourceType = [MentalObjectData dreamKeyTitle];
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"Latvia";
        resourceType = [MentalObjectData mainPickFormat];
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"Bulgaria";
        resourceType = [MentalObjectData notiFarSodMsg];
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"Croatia";
        resourceType = [MentalObjectData mButtonFormat];
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"Czech Republic";
        resourceType = [MentalObjectData kExplosionContent];
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"Denmark";
        resourceType = [MentalObjectData notiSodUrl];
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"Estonia";
        resourceType = [MentalObjectData user_imageFormat];
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"Finland";
        resourceType = [MentalObjectData app_panPath];
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"Greece";
        resourceType = [MentalObjectData noti_slatTextMessage];
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"Hungary";
        resourceType = [MentalObjectData appAllyMessage];
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"Ireland";
        resourceType = [MentalObjectData dream_centerEnableRandomKey];
    }

    //: NSLog(@"resourceType : %@",resourceType);

    //: return resourceType;
    return resourceType;
}

//: - (void)initUI{
- (void)initBy{

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:userID item:nil];

    //: _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice vg_statusBarHeight]), 64, 64)];
    _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice title]), 64, 64)];
    //: [self.view addSubview:_headerImage];
    [self.view addSubview:_headerImage];
    //: _headerImage.layer.cornerRadius = 32;
    _headerImage.layer.cornerRadius = 32;
    //: _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    //: _headerImage.layer.borderWidth = 1;
    _headerImage.layer.borderWidth = 1;
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];

    //: [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.titleLabel];
    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice vg_statusBarHeight])+7, 150, 25);
    self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice title])+7, 150, 25);
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];

    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",vacantTab([CrossShouldBlock towardScaleOfMeasurement].accountName)];
    //: self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);
    self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);

    //: UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice vg_statusBarHeight])+2, 53, 60);
    qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice title])+2, 53, 60);
    //: qrBtn.backgroundColor = [UIColor whiteColor];
    qrBtn.backgroundColor = [UIColor whiteColor];
    //: qrBtn.layer.cornerRadius = 12;
    qrBtn.layer.cornerRadius = 12;
    //: [qrBtn setImage:[UIImage imageNamed:@"user_qr_icon"] forState:(UIControlStateNormal)];
    [qrBtn setImage:[UIImage imageNamed:[MentalObjectData userImageSodUrl]] forState:(UIControlStateNormal)];
    //: [qrBtn addTarget:self action:@selector(handlebtnQr) forControlEvents:UIControlEventTouchUpInside];
    [qrBtn addTarget:self action:@selector(valueName) forControlEvents:UIControlEventTouchUpInside];
    //: qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [qrBtn setTitleColor:[UIColor colorWithHexString:@"#05D481"] forState:UIControlStateNormal];
    [qrBtn setTitleColor:[UIColor user:[MentalObjectData dreamCancelMessage]] forState:UIControlStateNormal];
    //: [qrBtn setTitle:[FFFLanguageManager getTextWithKey:@"qrcode_activity_title"] forState:UIControlStateNormal];
    [qrBtn setTitle:[BackgroundRandomAttribute content:[MentalObjectData m_statStr]] forState:UIControlStateNormal];
    //: [qrBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
    [qrBtn putUp:(MKButtonEdgeInsetsStyleTop) line:10];
    //: [self.view addSubview:qrBtn];
    [self.view addSubview:qrBtn];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-(49.0f))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    contentView.backgroundColor = [UIColor user:[MentalObjectData userSodMessage]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
    editView.backgroundColor = [UIColor user:[MentalObjectData noti_investorId]];
    //: editView.layer.cornerRadius = 12;
    editView.layer.cornerRadius = 12;
    //: [contentView addSubview:editView];
    [contentView addSubview:editView];
    //: editView.userInteractionEnabled = YES;
    editView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userInfoCenter)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userReloadMonitor)];
    //: [editView addGestureRecognizer:singleTap1];
    [editView addGestureRecognizer:singleTap1];
    //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: editimg.image = [UIImage imageNamed:@"user_edit_profile"];
    editimg.image = [UIImage imageNamed:[MentalObjectData kMessageErrValue]];
    //: editimg.contentMode = UIViewContentModeScaleAspectFill;
    editimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [editView addSubview:editimg];
    [editView addSubview:editimg];
    //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: labedit.font = [UIFont systemFontOfSize:14];
    labedit.font = [UIFont systemFontOfSize:14];
    //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labedit.textColor = [UIColor user:[MentalObjectData showGovernMessage]];
    //: labedit.text = [FFFLanguageManager getTextWithKey:@"edit_profile"];
    labedit.text = [BackgroundRandomAttribute content:[MentalObjectData k_iconUrl]];
    //: [editView addSubview:labedit];
    [editView addSubview:labedit];

    //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
    langView.backgroundColor = [UIColor user:[MentalObjectData k_mageValue]];
    //: langView.layer.cornerRadius = 12;
    langView.layer.cornerRadius = 12;
    //: [contentView addSubview:langView];
    [contentView addSubview:langView];
    //: langView.userInteractionEnabled = YES;
    langView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeLang)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(reliefSession)];
    //: [langView addGestureRecognizer:singleTap2];
    [langView addGestureRecognizer:singleTap2];
    //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: langimg.image = [UIImage imageNamed:@"user_edit_lang"];
    langimg.image = [UIImage imageNamed:[MentalObjectData notiHorrorKey]];
    //: langimg.contentMode = UIViewContentModeScaleAspectFill;
    langimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [langView addSubview:langimg];
    [langView addSubview:langimg];
    //: _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: _lablang.font = [UIFont systemFontOfSize:14];
    _lablang.font = [UIFont systemFontOfSize:14];
    //: _lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
    _lablang.textColor = [UIColor user:[MentalObjectData showGovernMessage]];
    //: _lablang.text = @"English";
    _lablang.text = [MentalObjectData noti_detectivePath];
    //: [langView addSubview:_lablang];
    [langView addSubview:_lablang];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view1];
    [contentView addSubview:view1];
    //: view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 12;
    view1.layer.cornerRadius = 12;
    //: view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view1.layer.shadowOffset = CGSizeMake(0,4);
    view1.layer.shadowOffset = CGSizeMake(0,4);
    //: view1.layer.shadowOpacity = 1;
    view1.layer.shadowOpacity = 1;
    //: view1.layer.shadowRadius = 16;
    view1.layer.shadowRadius = 16;

    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box1.backgroundColor = [UIColor clearColor];
    box1.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box1];
    [view1 addSubview:box1];

    //: UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_1"]];
    UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MentalObjectData dream_textGovernTitle]]];
    //: image11.frame = CGRectMake(0, 13, 28, 28);
    image11.frame = CGRectMake(0, 13, 28, 28);
    //: [box1 addSubview:image11];
    [box1 addSubview:image11];
    //: UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    //: label11.font = [UIFont systemFontOfSize:13.f];
    label11.font = [UIFont systemFontOfSize:13.f];
    //: label11.textColor = [UIColor blackColor];
    label11.textColor = [UIColor blackColor];
    //: label11.text = [FFFLanguageManager getTextWithKey:@"receiver_model"];
    label11.text = [BackgroundRandomAttribute content:[MentalObjectData m_belowReinforceMsg]];
    //: [box1 addSubview:label11];
    [box1 addSubview:label11];
    //: UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    //: switch11.onTintColor = [UIColor colorWithHexString:@"#05D481"];
    switch11.onTintColor = [UIColor user:[MentalObjectData dreamCancelMessage]];
    //: [switch11 addTarget:self action:@selector(switchWith:) forControlEvents:UIControlEventValueChanged];
    [switch11 addTarget:self action:@selector(activitied:) forControlEvents:UIControlEventValueChanged];
    //: [box1 addSubview:switch11];
    [box1 addSubview:switch11];


    //: UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: boxlog.backgroundColor = [UIColor clearColor];
    boxlog.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:boxlog];
    [view1 addSubview:boxlog];
    //: boxlog.userInteractionEnabled = YES;
    boxlog.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoMyLog)];
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(bumpShow)];
    //: [boxlog addGestureRecognizer:singleTap8];
    [boxlog addGestureRecognizer:singleTap8];

    //: UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_my_log"]];
    UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MentalObjectData user_heroData]]];
    //: imagelog.frame = CGRectMake(0, 13, 28, 28);
    imagelog.frame = CGRectMake(0, 13, 28, 28);
    //: [boxlog addSubview:imagelog];
    [boxlog addSubview:imagelog];
    //: UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: labellog.font = [UIFont systemFontOfSize:13.f];
    labellog.font = [UIFont systemFontOfSize:13.f];
    //: labellog.textColor = [UIColor blackColor];
    labellog.textColor = [UIColor blackColor];
    //: labellog.text = [FFFLanguageManager getTextWithKey:@"my_log"];
    labellog.text = [BackgroundRandomAttribute content:[MentalObjectData mPanStr]];
    //: [boxlog addSubview:labellog];
    [boxlog addSubview:labellog];
    //: UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowrightlog.image = [UIImage imageNamed:@"btn_right"];
    arrowrightlog.image = [UIImage imageNamed:[MentalObjectData show_rageUrl]];
    //: [boxlog addSubview:arrowrightlog];
    [boxlog addSubview:arrowrightlog];

    //: UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box6.backgroundColor = [UIColor clearColor];
    box6.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box6];
    [view1 addSubview:box6];
    //: box6.userInteractionEnabled = YES;
    box6.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(safetySeting)];
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(remoteShow)];
    //: [box6 addGestureRecognizer:singleTap7];
    [box6 addGestureRecognizer:singleTap7];

    //: UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_2"]];
    UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MentalObjectData notiDismissDelicateTitle]]];
    //: image23.frame = CGRectMake(0, 13, 28, 28);
    image23.frame = CGRectMake(0, 13, 28, 28);
    //: [box6 addSubview:image23];
    [box6 addSubview:image23];
    //: UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label23.font = [UIFont systemFontOfSize:13.f];
    label23.font = [UIFont systemFontOfSize:13.f];
    //: label23.textColor = [UIColor blackColor];
    label23.textColor = [UIColor blackColor];
    //: label23.text = [FFFLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    label23.text = [BackgroundRandomAttribute content:[MentalObjectData show_chiefValue]];
    //: [box6 addSubview:label23];
    [box6 addSubview:label23];
    //: UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright6.image = [UIImage imageNamed:@"btn_right"];
    arrowright6.image = [UIImage imageNamed:[MentalObjectData show_rageUrl]];
    //: [box6 addSubview:arrowright6];
    [box6 addSubview:arrowright6];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view2];
    [contentView addSubview:view2];
    //: view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view2.layer.cornerRadius = 12;
    view2.layer.cornerRadius = 12;
    //: view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view2.layer.shadowOffset = CGSizeMake(0,4);
    view2.layer.shadowOffset = CGSizeMake(0,4);
    //: view2.layer.shadowOpacity = 1;
    view2.layer.shadowOpacity = 1;
    //: view2.layer.shadowRadius = 16;
    view2.layer.shadowRadius = 16;



    //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box3.backgroundColor = [UIColor clearColor];
    box3.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box3];
    [view2 addSubview:box3];

    //: UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_3"]];
    UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MentalObjectData show_sizeValue]]];
    //: image14.frame = CGRectMake(0, 13, 28, 28);
    image14.frame = CGRectMake(0, 13, 28, 28);
    //: [box3 addSubview:image14];
    [box3 addSubview:image14];
    //: UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label14.font = [UIFont systemFontOfSize:13.f];
    label14.font = [UIFont systemFontOfSize:13.f];
    //: label14.textColor = [UIColor blackColor];
    label14.textColor = [UIColor blackColor];
    //: label14.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    label14.text = [BackgroundRandomAttribute content:[MentalObjectData k_slatAbortName]];//@"用户协议和隐私协议";
    //: [box3 addSubview:label14];
    [box3 addSubview:label14];
    //: UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright2.image = [UIImage imageNamed:@"btn_right"];
    arrowright2.image = [UIImage imageNamed:[MentalObjectData show_rageUrl]];
    //: [box3 addSubview:arrowright2];
    [box3 addSubview:arrowright2];
    //: box3.userInteractionEnabled = YES;
    box3.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpAgreement)];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(agreementDisable)];
    //: [box3 addGestureRecognizer:singleTap4];
    [box3 addGestureRecognizer:singleTap4];

    //: UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box5.backgroundColor = [UIColor clearColor];
    box5.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box5];
    [view2 addSubview:box5];
    //: box5.userInteractionEnabled = YES;
    box5.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(opinionBack)];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(topIcon)];
    //: [box5 addGestureRecognizer:singleTap6];
    [box5 addGestureRecognizer:singleTap6];

    //: UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_4"]];
    UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MentalObjectData k_cancelValue]]];
    //: image22.frame = CGRectMake(0, 13, 28, 28);
    image22.frame = CGRectMake(0, 13, 28, 28);
    //: [box5 addSubview:image22];
    [box5 addSubview:image22];
    //: UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label22.font = [UIFont systemFontOfSize:13.f];
    label22.font = [UIFont systemFontOfSize:13.f];
    //: label22.textColor = [UIColor blackColor];
    label22.textColor = [UIColor blackColor];
    //: label22.text = [FFFLanguageManager getTextWithKey:@"feedback_activity_title"];
    label22.text = [BackgroundRandomAttribute content:[MentalObjectData dreamWithText]];
    //: [box5 addSubview:label22];
    [box5 addSubview:label22];

    //: UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright5.image = [UIImage imageNamed:@"btn_right"];
    arrowright5.image = [UIImage imageNamed:[MentalObjectData show_rageUrl]];
    //: [box5 addSubview:arrowright5];
    [box5 addSubview:arrowright5];






    //: UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box7.backgroundColor = [UIColor clearColor];
    box7.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box7];
    [view2 addSubview:box7];

    //: UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_5"]];
    UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MentalObjectData user_cellData]]];
    //: image31.frame = CGRectMake(0, 13, 28, 28);
    image31.frame = CGRectMake(0, 13, 28, 28);
    //: [box7 addSubview:image31];
    [box7 addSubview:image31];
    //: UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label31.font = [UIFont systemFontOfSize:13.f];
    label31.font = [UIFont systemFontOfSize:13.f];
    //: label31.textColor = [UIColor blackColor];
    label31.textColor = [UIColor blackColor];
    //: [box7 addSubview:label31];
    [box7 addSubview:label31];
    //: NSString *fragment_my_version = [FFFLanguageManager getTextWithKey:@"fragment_my_version"];
    NSString *fragment_my_version = [BackgroundRandomAttribute content:[MentalObjectData kMotKey]];
    //: NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    //: NSString *appVersion = [infoDic objectForKey:@"CFBundleShortVersionString"];
    NSString *appVersion = [infoDic objectForKey:[MentalObjectData main_itemName]];// 获取App的版本号
    //: label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];

    //: UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [loginButton setTitleColor:[UIColor colorWithHexString:@"5D5F66"] forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor user:[MentalObjectData main_pressedText]] forState:UIControlStateNormal];
    //: [loginButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_comment_setting_exit"] forState:UIControlStateNormal];
    [loginButton setTitle:[BackgroundRandomAttribute content:[MentalObjectData main_panId]] forState:UIControlStateNormal];
    //: [loginButton addTarget:self action:@selector(logoutCurrentAccount) forControlEvents:UIControlEventTouchUpInside];
    [loginButton addTarget:self action:@selector(startVoice) forControlEvents:UIControlEventTouchUpInside];
    //: [contentView addSubview:loginButton];
    [contentView addSubview:loginButton];
    //: loginButton.layer.borderWidth = 1;
    loginButton.layer.borderWidth = 1;
    //: loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: loginButton.layer.cornerRadius = 22;
    loginButton.layer.cornerRadius = 22;



}
//: #pragma mark - NTESMainCenterDelegate
#pragma mark - NTESMainCenterDelegate
//: -(void)userInfoCenter{
-(void)userReloadMonitor{
    //: FFFUserInfoViewController *vc = [[FFFUserInfoViewController alloc] init];
    RandomViewController *vc = [[RandomViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)handlebtnQr{
-(void)valueName{

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    EnableViewController *vc = [[EnableViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)opinionBack{
-(void)topIcon{

    //: NTESFeedbackViewController *vc = [[NTESFeedbackViewController alloc] init];
    IndexViewController *vc = [[IndexViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)safetySeting{
-(void)remoteShow{
    //: NTESSafetySetingController *vc = [[NTESSafetySetingController alloc] init];
    NeedViewController *vc = [[NeedViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)gotoMyLog
- (void)bumpShow
{
    //: MyLogViewController *vc = [[MyLogViewController alloc] init];
    MessageDataViewController *vc = [[MessageDataViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)switchWith:(UISwitch *)switchView{
-(void)activitied:(UISwitch *)switchView{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: if (switchView.on) {
    if (switchView.on) {
        //: [dict setObject:@"1" forKey:@"enable"];
        [dict setObject:@"1" forKey:[MentalObjectData dream_distinctionUrl]];

        // 启用听筒模式
        //: [self setEarpieceMode:YES];
        [self setRange:YES];

    //: }else{
    }else{
        //: [dict setObject:@"0" forKey:@"enable"];
        [dict setObject:@"0" forKey:[MentalObjectData dream_distinctionUrl]];

        // 禁用听筒模式
        //: [self setEarpieceMode:NO];
        [self setRange:NO];
    }
}

//: - (void)setEarpieceMode:(BOOL)enabled {
- (void)setRange:(BOOL)enabled {
    //: NSError *error = nil;
    NSError *error = nil;

    // 获取当前的音频会话
    //: AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];

    // 配置音频会话为播放和录制
    //: [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error setting audio session category: %@", error);
        //: return;
        return;
    }

    // 激活音频会话
    //: [audioSession setActive:YES error:&error];
    [audioSession setActive:YES error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error activating audio session: %@", error);
        //: return;
        return;
    }

    // 根据开关设置听筒模式
    //: if (enabled) {
    if (enabled) {
        // 切换到听筒
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
    //: } else {
    } else {
        // 使用默认音频输出设备（即听筒模式）
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
    }

    //: if (error) {
    if (error) {
        //: NSLog(@"Error overriding audio port: %@", error);
    }
}


//: -(void)changeLang
-(void)reliefSession
{
    //: NTESLanguageViewController *vc = [[NTESLanguageViewController alloc]init];
    CellViewController *vc = [[CellViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)exitApp{
-(void)time{
    //: NSString *alertStr = [FFFLanguageManager getTextWithKey:@"system_change_language_title"];
    NSString *alertStr = [BackgroundRandomAttribute content:[MentalObjectData user_displayBlackTitle]];
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    //: [alert addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[MentalObjectData main_hostileKey]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: exit(0);
        exit(0);
    //: }]];
    }]];

    //: [alert addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[MentalObjectData show_nameProfessionMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    //: }]];
    }]];

    //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: [rootVC presentViewController:alert animated:YES completion:nil];
    [rootVC presentViewController:alert animated:YES completion:nil];

}

//: -(void)jumpAgreement{
-(void)agreementDisable{

    //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
    MarginViewController *vc = [[MarginViewController alloc] init];
    //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [BackgroundRandomAttribute content:[MentalObjectData k_slatAbortName]];//@"隐私协议";
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [CrossShouldBlock towardScaleOfMeasurement].yshref;

    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)logoutCurrentAccount
- (void)startVoice
{

    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
     {
        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
        [[NSNotificationCenter defaultCenter] postNotificationName:[MentalObjectData appDownWakeNorthernMsg] object:nil];
    //: }];
    }];

}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:22.f];
        _titleLabel.font = [UIFont systemFontOfSize:22.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)accountLabel{
- (UILabel *)accountLabel{
    //: if (!_accountLabel) {
    if (!_accountLabel) {
        //: _accountLabel = [[UILabel alloc] init];
        _accountLabel = [[UILabel alloc] init];
        //: _accountLabel.font = [UIFont systemFontOfSize:12.f];
        _accountLabel.font = [UIFont systemFontOfSize:12.f];
        //: _accountLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _accountLabel.textColor = [UIColor user:[MentalObjectData main_empireMsg]];
    }
    //: return _accountLabel;
    return _accountLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        //: [_closeBtn setImage:[UIImage imageNamed:@"icon_close"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:[MentalObjectData noti_horrorStr]] forState:UIControlStateNormal];
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn setImage:[UIImage imageNamed:@"icon_select_confirm"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:[MentalObjectData appRoughViewName]] forState:UIControlStateNormal];
        //        [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _sureBtn;
    return _sureBtn;
}



//: @end
@end