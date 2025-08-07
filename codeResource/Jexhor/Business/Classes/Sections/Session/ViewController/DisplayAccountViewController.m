
#import <Foundation/Foundation.h>

@interface PursuitData : NSObject

@end

@implementation PursuitData

+ (Byte *)PursuitDataToCache:(Byte *)data {
    int dayToss = data[0];
    Byte seriesImage = data[1];
    int mortal = data[2];
    for (int i = mortal; i < mortal + dayToss; i++) {
        int value = data[i] - seriesImage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[mortal + dayToss] = 0;
    return data + mortal;
}

+ (NSString *)StringFromPursuitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PursuitDataToCache:data]];
}

//: Asia/Shanghai
+ (NSString *)noti_illegalText {
    /* static */ NSString *noti_illegalText = nil;
    if (!noti_illegalText) {
        Byte value[] = {13, 82, 4, 140, 147, 197, 187, 179, 129, 165, 186, 179, 192, 185, 186, 179, 187, 9};
        noti_illegalText = [self StringFromPursuitData:value];
    }
    return noti_illegalText;
}

//: zh-CHS
+ (NSString *)mHandleData {
    /* static */ NSString *mHandleData = nil;
    if (!mHandleData) {
        Byte value[] = {6, 89, 9, 245, 243, 149, 100, 109, 101, 211, 193, 134, 156, 161, 172, 31};
        mHandleData = [self StringFromPursuitData:value];
    }
    return mHandleData;
}

//: KEKENotificationLanguageChanged
+ (NSString *)main_showValue {
    /* static */ NSString *main_showValue = nil;
    if (!main_showValue) {
        Byte value[] = {31, 42, 6, 35, 151, 122, 117, 111, 117, 111, 120, 153, 158, 147, 144, 147, 141, 139, 158, 147, 153, 152, 118, 139, 152, 145, 159, 139, 145, 143, 109, 146, 139, 152, 145, 143, 142, 95};
        main_showValue = [self StringFromPursuitData:value];
    }
    return main_showValue;
}

//: 转发失败
+ (NSString *)userPlanetValue {
    /* static */ NSString *userPlanetValue = nil;
    if (!userPlanetValue) {
        Byte value[] = {12, 65, 12, 147, 115, 15, 35, 132, 143, 176, 58, 111, 41, 254, 237, 38, 208, 210, 38, 229, 242, 41, 245, 230, 202};
        userPlanetValue = [self StringFromPursuitData:value];
    }
    return userPlanetValue;
}

//: postscript
+ (NSString *)userLengthBubbleFileName {
    /* static */ NSString *userLengthBubbleFileName = nil;
    if (!userLengthBubbleFileName) {
        Byte value[] = {10, 54, 9, 10, 182, 119, 6, 76, 23, 166, 165, 169, 170, 169, 153, 168, 159, 166, 170, 43};
        userLengthBubbleFileName = [self StringFromPursuitData:value];
    }
    return userLengthBubbleFileName;
}

//: YYYY-MM-dd HH:mm:ss
+ (NSString *)userEnableData {
    /* static */ NSString *userEnableData = nil;
    if (!userEnableData) {
        Byte value[] = {19, 22, 8, 208, 28, 194, 216, 13, 111, 111, 111, 111, 67, 99, 99, 67, 122, 122, 54, 94, 94, 80, 131, 131, 80, 137, 137, 124};
        userEnableData = [self StringFromPursuitData:value];
    }
    return userEnableData;
}

//: user_profile_avtivity_user_info_update_failed
+ (NSString *)kSuccessName {
    /* static */ NSString *kSuccessName = nil;
    if (!kSuccessName) {
        Byte value[] = {45, 17, 12, 185, 196, 54, 90, 88, 54, 17, 88, 137, 134, 132, 118, 131, 112, 129, 131, 128, 119, 122, 125, 118, 112, 114, 135, 133, 122, 135, 122, 133, 138, 112, 134, 132, 118, 131, 112, 122, 127, 119, 128, 112, 134, 129, 117, 114, 133, 118, 112, 119, 114, 122, 125, 118, 117, 120};
        kSuccessName = [self StringFromPursuitData:value];
    }
    return kSuccessName;
}

//: canMemberInfo
+ (NSString *)mPlanetText {
    /* static */ NSString *mPlanetText = nil;
    if (!mPlanetText) {
        Byte value[] = {13, 91, 5, 183, 199, 190, 188, 201, 168, 192, 200, 189, 192, 205, 164, 201, 193, 202, 38};
        mPlanetText = [self StringFromPursuitData:value];
    }
    return mPlanetText;
}

//: 请输入附言
+ (NSString *)k_earlTitle {
    /* static */ NSString *k_earlTitle = nil;
    if (!k_earlTitle) {
        Byte value[] = {15, 62, 3, 38, 237, 245, 38, 252, 209, 35, 195, 227, 39, 215, 194, 38, 230, 190, 187};
        k_earlTitle = [self StringFromPursuitData:value];
    }
    return k_earlTitle;
}

//: code
+ (NSString *)dream_sendName {
    /* static */ NSString *dream_sendName = nil;
    if (!dream_sendName) {
        Byte value[] = {4, 68, 5, 91, 6, 167, 179, 168, 169, 87};
        dream_sendName = [self StringFromPursuitData:value];
    }
    return dream_sendName;
}

//: showFile:
+ (NSString *)show_sendData {
    /* static */ NSString *show_sendData = nil;
    if (!show_sendData) {
        Byte value[] = {9, 95, 8, 254, 48, 65, 169, 230, 210, 199, 206, 214, 165, 200, 203, 196, 153, 226};
        show_sendData = [self StringFromPursuitData:value];
    }
    return show_sendData;
}

//: type
+ (NSString *)m_completeData {
    /* static */ NSString *m_completeData = nil;
    if (!m_completeData) {
        Byte value[] = {4, 14, 4, 237, 130, 135, 126, 115, 166};
        m_completeData = [self StringFromPursuitData:value];
    }
    return m_completeData;
}

//: invalid event
+ (NSString *)app_fortunateAccountTitle {
    /* static */ NSString *app_fortunateAccountTitle = nil;
    if (!app_fortunateAccountTitle) {
        Byte value[] = {13, 82, 4, 57, 187, 192, 200, 179, 190, 187, 182, 114, 183, 200, 183, 192, 198, 226};
        app_fortunateAccountTitle = [self StringFromPursuitData:value];
    }
    return app_fortunateAccountTitle;
}

//: black_list_activity_add_black_failed
+ (NSString *)kBalanceSeverValue {
    /* static */ NSString *kBalanceSeverValue = nil;
    if (!kBalanceSeverValue) {
        Byte value[] = {36, 11, 7, 164, 145, 156, 178, 109, 119, 108, 110, 118, 106, 119, 116, 126, 127, 106, 108, 110, 127, 116, 129, 116, 127, 132, 106, 108, 111, 111, 106, 109, 119, 108, 110, 118, 106, 113, 108, 116, 119, 112, 111, 59};
        kBalanceSeverValue = [self StringFromPursuitData:value];
    }
    return kBalanceSeverValue;
}

//: nonce
+ (NSString *)app_accountingData {
    /* static */ NSString *app_accountingData = nil;
    if (!app_accountingData) {
        Byte value[] = {5, 7, 9, 249, 104, 218, 48, 81, 38, 117, 118, 117, 106, 108, 89};
        app_accountingData = [self StringFromPursuitData:value];
    }
    return app_accountingData;
}

//: 群申请失败
+ (NSString *)dreamYouthData {
    /* static */ NSString *dreamYouthData = nil;
    if (!dreamYouthData) {
        Byte value[] = {15, 48, 11, 62, 174, 102, 146, 135, 191, 207, 254, 23, 238, 212, 23, 196, 227, 24, 223, 231, 21, 212, 225, 24, 228, 213, 224};
        dreamYouthData = [self StringFromPursuitData:value];
    }
    return dreamYouthData;
}

//: friend_delete_fail
+ (NSString *)showReadValue {
    /* static */ NSString *showReadValue = nil;
    if (!showReadValue) {
        Byte value[] = {18, 70, 5, 235, 86, 172, 184, 175, 171, 180, 170, 165, 170, 171, 178, 171, 186, 171, 165, 172, 167, 175, 178, 13};
        showReadValue = [self StringFromPursuitData:value];
    }
    return showReadValue;
}

//: 取消标记失败
+ (NSString *)notiWeekName {
    /* static */ NSString *notiWeekName = nil;
    if (!notiWeekName) {
        Byte value[] = {18, 42, 4, 244, 15, 185, 192, 16, 224, 178, 16, 202, 177, 18, 216, 218, 15, 206, 219, 18, 222, 207, 138};
        notiWeekName = [self StringFromPursuitData:value];
    }
    return notiWeekName;
}

//: teamgonggao_content_
+ (NSString *)user_pursuitWeekValue {
    /* static */ NSString *user_pursuitWeekValue = nil;
    if (!user_pursuitWeekValue) {
        Byte value[] = {20, 95, 6, 191, 221, 159, 211, 196, 192, 204, 198, 206, 205, 198, 198, 192, 206, 190, 194, 206, 205, 211, 196, 205, 211, 190, 49};
        user_pursuitWeekValue = [self StringFromPursuitData:value];
    }
    return user_pursuitWeekValue;
}

//: message_super_team
+ (NSString *)dreamRowName {
    /* static */ NSString *dreamRowName = nil;
    if (!dreamRowName) {
        Byte value[] = {18, 59, 11, 135, 55, 215, 162, 148, 141, 212, 203, 168, 160, 174, 174, 156, 162, 160, 154, 174, 176, 171, 160, 173, 154, 175, 160, 156, 168, 197};
        dreamRowName = [self StringFromPursuitData:value];
    }
    return dreamRowName;
}

//: showLocation:
+ (NSString *)appMakeWithInfoValue {
    /* static */ NSString *appMakeWithInfoValue = nil;
    if (!appMakeWithInfoValue) {
        Byte value[] = {13, 90, 11, 32, 32, 159, 144, 60, 48, 154, 159, 205, 194, 201, 209, 166, 201, 189, 187, 206, 195, 201, 200, 148, 46};
        appMakeWithInfoValue = [self StringFromPursuitData:value];
    }
    return appMakeWithInfoValue;
}

//: /other/feedback
+ (NSString *)notiBrokerName {
    /* static */ NSString *notiBrokerName = nil;
    if (!notiBrokerName) {
        Byte value[] = {15, 73, 7, 32, 252, 118, 242, 120, 184, 189, 177, 174, 187, 120, 175, 174, 174, 173, 171, 170, 172, 180, 112};
        notiBrokerName = [self StringFromPursuitData:value];
    }
    return notiBrokerName;
}

//: showImage:
+ (NSString *)dreamUniteValue {
    /* static */ NSString *dreamUniteValue = nil;
    if (!dreamUniteValue) {
        Byte value[] = {10, 77, 5, 131, 217, 192, 181, 188, 196, 150, 186, 174, 180, 178, 135, 99};
        dreamUniteValue = [self StringFromPursuitData:value];
    }
    return dreamUniteValue;
}

//: showVideo:
+ (NSString *)user_sizeText {
    /* static */ NSString *user_sizeText = nil;
    if (!user_sizeText) {
        Byte value[] = {10, 3, 4, 144, 118, 107, 114, 122, 89, 108, 103, 104, 114, 61, 194};
        user_sizeText = [self StringFromPursuitData:value];
    }
    return user_sizeText;
}

//: checksum
+ (NSString *)show_sessionValue {
    /* static */ NSString *show_sessionValue = nil;
    if (!show_sessionValue) {
        Byte value[] = {8, 41, 9, 94, 6, 184, 155, 21, 109, 140, 145, 142, 140, 148, 156, 158, 150, 160};
        show_sessionValue = [self StringFromPursuitData:value];
    }
    return show_sessionValue;
}

//: msg
+ (NSString *)dream_textTitle {
    /* static */ NSString *dream_textTitle = nil;
    if (!dream_textTitle) {
        Byte value[] = {3, 53, 4, 184, 162, 168, 156, 33};
        dream_textTitle = [self StringFromPursuitData:value];
    }
    return dream_textTitle;
}

//: 撤回一条消息
+ (NSString *)kLengthTitle {
    /* static */ NSString *kLengthTitle = nil;
    if (!kLengthTitle) {
        Byte value[] = {18, 72, 9, 43, 132, 9, 231, 226, 185, 46, 218, 236, 45, 227, 230, 44, 0, 200, 46, 229, 233, 46, 254, 208, 46, 201, 247, 16};
        kLengthTitle = [self StringFromPursuitData:value];
    }
    return kLengthTitle;
}

//: 被拉黑
+ (NSString *)app_fileTitle {
    /* static */ NSString *app_fileTitle = nil;
    if (!app_fileTitle) {
        Byte value[] = {9, 4, 8, 44, 25, 25, 191, 135, 236, 166, 175, 234, 143, 141, 237, 191, 149, 5};
        app_fileTitle = [self StringFromPursuitData:value];
    }
    return app_fileTitle;
}

//: zh-CHT
+ (NSString *)userAgainstItsValue {
    /* static */ NSString *userAgainstItsValue = nil;
    if (!userAgainstItsValue) {
        Byte value[] = {6, 30, 8, 113, 94, 153, 173, 154, 152, 134, 75, 97, 102, 114, 55};
        userAgainstItsValue = [self StringFromPursuitData:value];
    }
    return userAgainstItsValue;
}

//: http
+ (NSString *)dream_colorName {
    /* static */ NSString *dream_colorName = nil;
    if (!dream_colorName) {
        Byte value[] = {4, 54, 8, 243, 192, 115, 152, 46, 158, 170, 170, 166, 192};
        dream_colorName = [self StringFromPursuitData:value];
    }
    return dream_colorName;
}

//: apns-collapse-id
+ (NSString *)mainSessionViewValue {
    /* static */ NSString *mainSessionViewValue = nil;
    if (!mainSessionViewValue) {
        Byte value[] = {16, 71, 13, 54, 7, 88, 133, 177, 187, 122, 218, 183, 108, 168, 183, 181, 186, 116, 170, 182, 179, 179, 168, 183, 186, 172, 116, 176, 171, 58};
        mainSessionViewValue = [self StringFromPursuitData:value];
    }
    return mainSessionViewValue;
}

//: 您已被禁言
+ (NSString *)kPursuitData {
    /* static */ NSString *kPursuitData = nil;
    if (!kPursuitData) {
        Byte value[] = {15, 33, 3, 7, 163, 201, 6, 216, 211, 9, 195, 204, 8, 199, 162, 9, 201, 161, 86};
        kPursuitData = [self StringFromPursuitData:value];
    }
    return kPursuitData;
}

//: contact_fragment_group
+ (NSString *)k_drugValue {
    /* static */ NSString *k_drugValue = nil;
    if (!k_drugValue) {
        Byte value[] = {22, 13, 9, 237, 187, 112, 230, 142, 48, 112, 124, 123, 129, 110, 112, 129, 108, 115, 127, 110, 116, 122, 114, 123, 129, 108, 116, 127, 124, 130, 125, 217};
        k_drugValue = [self StringFromPursuitData:value];
    }
    return k_drugValue;
}

//: 发送时间超过2分钟的消息不能被撤回
+ (NSString *)dreamShowData {
    /* static */ NSString *dreamShowData = nil;
    if (!dreamShowData) {
        Byte value[] = {49, 21, 6, 75, 172, 107, 250, 164, 166, 254, 149, 150, 251, 172, 203, 254, 172, 201, 253, 203, 154, 253, 212, 156, 71, 250, 157, 155, 254, 167, 180, 252, 175, 153, 251, 203, 157, 251, 150, 196, 249, 205, 162, 253, 152, 210, 253, 183, 192, 251, 167, 185, 250, 176, 179, 250};
        dreamShowData = [self StringFromPursuitData:value];
    }
    return dreamShowData;
}

//: my_computer
+ (NSString *)user_textName {
    /* static */ NSString *user_textName = nil;
    if (!user_textName) {
        Byte value[] = {11, 50, 7, 76, 252, 112, 21, 159, 171, 145, 149, 161, 159, 162, 167, 166, 151, 164, 167};
        user_textName = [self StringFromPursuitData:value];
    }
    return user_textName;
}

//: 正在输入
+ (NSString *)main_journalistText {
    /* static */ NSString *main_journalistText = nil;
    if (!main_journalistText) {
        Byte value[] = {12, 92, 8, 4, 194, 31, 229, 106, 66, 9, 255, 65, 248, 4, 68, 26, 239, 65, 225, 1, 117};
        main_journalistText = [self StringFromPursuitData:value];
    }
    return main_journalistText;
}

//: accid
+ (NSString *)dreamUniteName {
    /* static */ NSString *dreamUniteName = nil;
    if (!dreamUniteName) {
        Byte value[] = {5, 33, 3, 130, 132, 132, 138, 133, 56};
        dreamUniteName = [self StringFromPursuitData:value];
    }
    return dreamUniteName;
}

//: 确定删除？
+ (NSString *)m_seriesHighlightTitle {
    /* static */ NSString *m_seriesHighlightTitle = nil;
    if (!m_seriesHighlightTitle) {
        Byte value[] = {15, 25, 4, 116, 0, 186, 199, 254, 199, 179, 254, 161, 185, 2, 178, 189, 8, 213, 184, 122};
        m_seriesHighlightTitle = [self StringFromPursuitData:value];
    }
    return m_seriesHighlightTitle;
}

//: 消息撤回失败，请重试
+ (NSString *)showHideContent {
    /* static */ NSString *showHideContent = nil;
    if (!showHideContent) {
        Byte value[] = {30, 66, 8, 104, 229, 41, 24, 158, 40, 248, 202, 40, 195, 241, 40, 212, 230, 39, 221, 224, 39, 230, 243, 42, 246, 231, 49, 254, 206, 42, 241, 249, 43, 201, 207, 42, 241, 215, 30};
        showHideContent = [self StringFromPursuitData:value];
    }
    return showHideContent;
}

//: 被禁言
+ (NSString *)mUniteName {
    /* static */ NSString *mUniteName = nil;
    if (!mUniteName) {
        Byte value[] = {9, 58, 4, 124, 34, 220, 229, 33, 224, 187, 34, 226, 186, 135};
        mUniteName = [self StringFromPursuitData:value];
    }
    return mUniteName;
}

//: text
+ (NSString *)noti_lengthData {
    /* static */ NSString *noti_lengthData = nil;
    if (!noti_lengthData) {
        Byte value[] = {4, 71, 6, 177, 12, 249, 187, 172, 191, 187, 124};
        noti_lengthData = [self StringFromPursuitData:value];
    }
    return noti_lengthData;
}

//: /other/getNimCheckSum
+ (NSString *)kWeekSuccessValue {
    /* static */ NSString *kWeekSuccessValue = nil;
    if (!kWeekSuccessValue) {
        Byte value[] = {21, 34, 11, 208, 29, 253, 59, 89, 27, 21, 128, 81, 145, 150, 138, 135, 148, 81, 137, 135, 150, 112, 139, 143, 101, 138, 135, 133, 141, 117, 151, 143, 34};
        kWeekSuccessValue = [self StringFromPursuitData:value];
    }
    return kWeekSuccessValue;
}

//: 不允许文字
+ (NSString *)userAppearTitle {
    /* static */ NSString *userAppearTitle = nil;
    if (!userAppearTitle) {
        Byte value[] = {15, 16, 7, 244, 216, 125, 160, 244, 200, 157, 245, 149, 145, 248, 190, 200, 246, 166, 151, 245, 189, 167, 1};
        userAppearTitle = [self StringFromPursuitData:value];
    }
    return userAppearTitle;
}

//: 01B0FD
+ (NSString *)dreamOnValue {
    /* static */ NSString *dreamOnValue = nil;
    if (!dreamOnValue) {
        Byte value[] = {6, 70, 13, 181, 57, 241, 15, 201, 151, 144, 175, 202, 159, 118, 119, 136, 118, 140, 138, 64};
        dreamOnValue = [self StringFromPursuitData:value];
    }
    return dreamOnValue;
}

//: curTime
+ (NSString *)user_assaultTitle {
    /* static */ NSString *user_assaultTitle = nil;
    if (!user_assaultTitle) {
        Byte value[] = {7, 2, 9, 135, 200, 102, 1, 49, 107, 101, 119, 116, 86, 107, 111, 103, 79};
        user_assaultTitle = [self StringFromPursuitData:value];
    }
    return user_assaultTitle;
}

//: 选择会话类型
+ (NSString *)userTableName {
    /* static */ NSString *userTableName = nil;
    if (!userTableName) {
        Byte value[] = {18, 33, 6, 75, 129, 173, 10, 161, 170, 7, 172, 202, 5, 221, 187, 9, 208, 190, 8, 210, 220, 6, 191, 172, 252};
        userTableName = [self StringFromPursuitData:value];
    }
    return userTableName;
}

//: 添加失败
+ (NSString *)app_planetName {
    /* static */ NSString *app_planetName = nil;
    if (!app_planetName) {
        Byte value[] = {12, 34, 3, 8, 217, 221, 7, 172, 194, 7, 198, 211, 10, 214, 199, 91};
        app_planetName = [self StringFromPursuitData:value];
    }
    return app_planetName;
}

//: NTESMessageTranslate
+ (NSString *)dreamThanContent {
    /* static */ NSString *dreamThanContent = nil;
    if (!dreamThanContent) {
        Byte value[] = {20, 72, 10, 196, 21, 189, 93, 201, 182, 63, 150, 156, 141, 155, 149, 173, 187, 187, 169, 175, 173, 156, 186, 169, 182, 187, 180, 169, 188, 173, 16};
        dreamThanContent = [self StringFromPursuitData:value];
    }
    return dreamThanContent;
}

//: recid
+ (NSString *)showScaleSendContent {
    /* static */ NSString *showScaleSendContent = nil;
    if (!showScaleSendContent) {
        Byte value[] = {5, 9, 3, 123, 110, 108, 114, 109, 187};
        showScaleSendContent = [self StringFromPursuitData:value];
    }
    return showScaleSendContent;
}

//: teamgonggao_title_
+ (NSString *)k_removeText {
    /* static */ NSString *k_removeText = nil;
    if (!k_removeText) {
        Byte value[] = {18, 19, 6, 251, 193, 141, 135, 120, 116, 128, 122, 130, 129, 122, 122, 116, 130, 114, 135, 124, 135, 127, 120, 114, 64};
        k_removeText = [self StringFromPursuitData:value];
    }
    return k_removeText;
}

//: teamgonggao_
+ (NSString *)userSeriesText {
    /* static */ NSString *userSeriesText = nil;
    if (!userSeriesText) {
        Byte value[] = {12, 40, 4, 255, 156, 141, 137, 149, 143, 151, 150, 143, 143, 137, 151, 135, 136};
        userSeriesText = [self StringFromPursuitData:value];
    }
    return userSeriesText;
}

//: friend_verify_avtivity_net_error
+ (NSString *)noti_nameData {
    /* static */ NSString *noti_nameData = nil;
    if (!noti_nameData) {
        Byte value[] = {32, 7, 4, 150, 109, 121, 112, 108, 117, 107, 102, 125, 108, 121, 112, 109, 128, 102, 104, 125, 123, 112, 125, 112, 123, 128, 102, 117, 108, 123, 102, 108, 121, 121, 118, 121, 79};
        noti_nameData = [self StringFromPursuitData:value];
    }
    return noti_nameData;
}

//: 发送时间超过2分钟的消息，不能被撤回
+ (NSString *)app_messageValue {
    /* static */ NSString *app_messageValue = nil;
    if (!app_messageValue) {
        Byte value[] = {52, 19, 13, 65, 49, 53, 146, 192, 185, 6, 47, 52, 35, 248, 162, 164, 252, 147, 148, 249, 170, 201, 252, 170, 199, 251, 201, 152, 251, 210, 154, 69, 248, 155, 153, 252, 165, 178, 250, 173, 151, 249, 201, 155, 249, 148, 194, 2, 207, 159, 247, 203, 160, 251, 150, 208, 251, 181, 190, 249, 165, 183, 248, 174, 177, 115};
        app_messageValue = [self StringFromPursuitData:value];
    }
    return app_messageValue;
}

//: showCustom:
+ (NSString *)dream_threadDrugValue {
    /* static */ NSString *dream_threadDrugValue = nil;
    if (!dream_threadDrugValue) {
        Byte value[] = {11, 59, 8, 52, 28, 98, 225, 157, 174, 163, 170, 178, 126, 176, 174, 175, 170, 168, 117, 3};
        dream_threadDrugValue = [self StringFromPursuitData:value];
    }
    return dream_threadDrugValue;
}

//: 扩展字段
+ (NSString *)mCountDisableName {
    /* static */ NSString *mCountDisableName = nil;
    if (!mCountDisableName) {
        Byte value[] = {12, 91, 12, 128, 58, 39, 28, 20, 137, 41, 99, 248, 65, 228, 4, 64, 12, 240, 64, 8, 242, 65, 9, 16, 232};
        mCountDisableName = [self StringFromPursuitData:value];
    }
    return mCountDisableName;
}

//: sessionname
+ (NSString *)noti_modeImageData {
    /* static */ NSString *noti_modeImageData = nil;
    if (!noti_modeImageData) {
        Byte value[] = {11, 59, 6, 118, 212, 211, 174, 160, 174, 174, 164, 170, 169, 169, 156, 168, 160, 123};
        noti_modeImageData = [self StringFromPursuitData:value];
    }
    return noti_modeImageData;
}

//: app_avchat_not_start_with_less_member
+ (NSString *)mainTowerAtValue {
    /* static */ NSString *mainTowerAtValue = nil;
    if (!mainTowerAtValue) {
        Byte value[] = {37, 90, 4, 216, 187, 202, 202, 185, 187, 208, 189, 194, 187, 206, 185, 200, 201, 206, 185, 205, 206, 187, 204, 206, 185, 209, 195, 206, 194, 185, 198, 191, 205, 205, 185, 199, 191, 199, 188, 191, 204, 99};
        mainTowerAtValue = [self StringFromPursuitData:value];
    }
    return mainTowerAtValue;
}

//: activity_friend_verify_info
+ (NSString *)mQuickData {
    /* static */ NSString *mQuickData = nil;
    if (!mQuickData) {
        Byte value[] = {27, 12, 5, 244, 244, 109, 111, 128, 117, 130, 117, 128, 133, 107, 114, 126, 117, 113, 122, 112, 107, 130, 113, 126, 117, 114, 133, 107, 117, 122, 114, 123, 15};
        mQuickData = [self StringFromPursuitData:value];
    }
    return mQuickData;
}

//: group_chat_avatar_activity_add_black_success
+ (NSString *)m_mediaHandleData {
    /* static */ NSString *m_mediaHandleData = nil;
    if (!m_mediaHandleData) {
        Byte value[] = {44, 69, 7, 55, 46, 112, 145, 172, 183, 180, 186, 181, 164, 168, 173, 166, 185, 164, 166, 187, 166, 185, 166, 183, 164, 166, 168, 185, 174, 187, 174, 185, 190, 164, 166, 169, 169, 164, 167, 177, 166, 168, 176, 164, 184, 186, 168, 168, 170, 184, 184, 20};
        m_mediaHandleData = [self StringFromPursuitData:value];
    }
    return m_mediaHandleData;
}

//: 已发送
+ (NSString *)mainSessionTitle {
    /* static */ NSString *mainSessionTitle = nil;
    if (!mainSessionTitle) {
        Byte value[] = {9, 47, 6, 133, 90, 177, 20, 230, 225, 20, 190, 192, 24, 175, 176, 9};
        mainSessionTitle = [self StringFromPursuitData:value];
    }
    return mainSessionTitle;
}

//: 反垃圾消息
+ (NSString *)showSliceModeData {
    /* static */ NSString *showSliceModeData = nil;
    if (!showSliceModeData) {
        Byte value[] = {15, 39, 3, 12, 182, 180, 12, 197, 170, 12, 195, 229, 13, 221, 175, 13, 168, 214, 182};
        showSliceModeData = [self StringFromPursuitData:value];
    }
    return showSliceModeData;
}

//: luyintaiduan
+ (NSString *)app_mediaValue {
    /* static */ NSString *app_mediaValue = nil;
    if (!app_mediaValue) {
        Byte value[] = {12, 21, 11, 46, 108, 250, 13, 52, 241, 198, 97, 129, 138, 142, 126, 131, 137, 118, 126, 121, 138, 118, 131, 43};
        app_mediaValue = [self StringFromPursuitData:value];
    }
    return app_mediaValue;
}

//: canSendText
+ (NSString *)show_crowdedGivingValue {
    /* static */ NSString *show_crowdedGivingValue = nil;
    if (!show_crowdedGivingValue) {
        Byte value[] = {11, 40, 4, 133, 139, 137, 150, 123, 141, 150, 140, 124, 141, 160, 156, 35};
        show_crowdedGivingValue = [self StringFromPursuitData:value];
    }
    return show_crowdedGivingValue;
}

//: translation
+ (NSString *)notiChangeContent {
    /* static */ NSString *notiChangeContent = nil;
    if (!notiChangeContent) {
        Byte value[] = {11, 27, 5, 121, 250, 143, 141, 124, 137, 142, 135, 124, 143, 132, 138, 137, 168};
        notiChangeContent = [self StringFromPursuitData:value];
    }
    return notiChangeContent;
}

//: %@.code:%zd
+ (NSString *)userYouthLabelValue {
    /* static */ NSString *userYouthLabelValue = nil;
    if (!userYouthLabelValue) {
        Byte value[] = {11, 60, 9, 22, 123, 23, 238, 230, 73, 97, 124, 106, 159, 171, 160, 161, 118, 97, 182, 160, 107};
        userYouthLabelValue = [self StringFromPursuitData:value];
    }
    return userYouthLabelValue;
}

//: ispush
+ (NSString *)noti_viewSuccessAccelerateName {
    /* static */ NSString *noti_viewSuccessAccelerateName = nil;
    if (!noti_viewSuccessAccelerateName) {
        Byte value[] = {6, 36, 3, 141, 151, 148, 153, 151, 140, 246};
        noti_viewSuccessAccelerateName = [self StringFromPursuitData:value];
    }
    return noti_viewSuccessAccelerateName;
}

//: ** 该消息被屏蔽 **
+ (NSString *)user_yaVideoText {
    /* static */ NSString *user_yaVideoText = nil;
    if (!user_yaVideoText) {
        Byte value[] = {24, 65, 4, 184, 107, 107, 97, 41, 240, 230, 39, 247, 201, 39, 194, 240, 41, 227, 236, 38, 242, 208, 41, 213, 254, 97, 107, 107, 211};
        user_yaVideoText = [self StringFromPursuitData:value];
    }
    return user_yaVideoText;
}

//: message_helper_apply_to_group
+ (NSString *)showCommentInfoMakeData {
    /* static */ NSString *showCommentInfoMakeData = nil;
    if (!showCommentInfoMakeData) {
        Byte value[] = {29, 95, 7, 53, 90, 45, 39, 204, 196, 210, 210, 192, 198, 196, 190, 199, 196, 203, 207, 196, 209, 190, 192, 207, 207, 203, 216, 190, 211, 206, 190, 198, 209, 206, 212, 207, 66};
        showCommentInfoMakeData = [self StringFromPursuitData:value];
    }
    return showCommentInfoMakeData;
}

//: 不能和自己通话哦
+ (NSString *)user_illegalTitle {
    /* static */ NSString *user_illegalTitle = nil;
    if (!user_illegalTitle) {
        Byte value[] = {24, 28, 7, 136, 121, 203, 160, 0, 212, 169, 4, 159, 217, 1, 174, 168, 4, 163, 198, 1, 211, 205, 5, 156, 182, 4, 203, 185, 1, 175, 194, 225};
        user_illegalTitle = [self StringFromPursuitData:value];
    }
    return user_illegalTitle;
}

//: 收藏失败
+ (NSString *)userPressValue {
    /* static */ NSString *userPressValue = nil;
    if (!userPressValue) {
        Byte value[] = {12, 29, 9, 33, 58, 149, 113, 238, 139, 3, 177, 211, 5, 180, 172, 2, 193, 206, 5, 209, 194, 218};
        userPressValue = [self StringFromPursuitData:value];
    }
    return userPressValue;
}

//: 申请成功，等待验证
+ (NSString *)showColorData {
    /* static */ NSString *showColorData = nil;
    if (!showColorData) {
        Byte value[] = {27, 71, 11, 141, 80, 253, 130, 103, 80, 62, 253, 46, 219, 250, 47, 246, 254, 45, 207, 215, 44, 209, 230, 54, 3, 211, 46, 244, 208, 44, 5, 204, 48, 241, 211, 47, 246, 200, 223};
        showColorData = [self StringFromPursuitData:value];
    }
    return showColorData;
}

//: username
+ (NSString *)k_accountName {
    /* static */ NSString *k_accountName = nil;
    if (!k_accountName) {
        Byte value[] = {8, 41, 13, 64, 155, 28, 188, 146, 128, 54, 75, 227, 102, 158, 156, 142, 155, 151, 138, 150, 142, 220};
        k_accountName = [self StringFromPursuitData:value];
    }
    return k_accountName;
}

//: desc
+ (NSString *)user_viewTitle {
    /* static */ NSString *user_viewTitle = nil;
    if (!user_viewTitle) {
        Byte value[] = {4, 92, 5, 29, 185, 192, 193, 207, 191, 189};
        user_viewTitle = [self StringFromPursuitData:value];
    }
    return user_viewTitle;
}

//: content
+ (NSString *)noti_messageName {
    /* static */ NSString *noti_messageName = nil;
    if (!noti_messageName) {
        Byte value[] = {7, 85, 6, 38, 219, 171, 184, 196, 195, 201, 186, 195, 201, 99};
        noti_messageName = [self StringFromPursuitData:value];
    }
    return noti_messageName;
}

//: contact_tag_fragment_cancel
+ (NSString *)showRowContent {
    /* static */ NSString *showRowContent = nil;
    if (!showRowContent) {
        Byte value[] = {27, 92, 12, 224, 210, 145, 122, 69, 114, 174, 165, 209, 191, 203, 202, 208, 189, 191, 208, 187, 208, 189, 195, 187, 194, 206, 189, 195, 201, 193, 202, 208, 187, 191, 189, 202, 191, 193, 200, 152};
        showRowContent = [self StringFromPursuitData:value];
    }
    return showRowContent;
}

//: hant
+ (NSString *)k_seriesTitle {
    /* static */ NSString *k_seriesTitle = nil;
    if (!k_seriesTitle) {
        Byte value[] = {4, 9, 12, 186, 134, 110, 219, 134, 110, 223, 249, 38, 113, 106, 119, 125, 57};
        k_seriesTitle = [self StringFromPursuitData:value];
    }
    return k_seriesTitle;
}

//: NTESMessageRefusedTag
+ (NSString *)kQuickData {
    /* static */ NSString *kQuickData = nil;
    if (!kQuickData) {
        Byte value[] = {21, 9, 3, 87, 93, 78, 92, 86, 110, 124, 124, 106, 112, 110, 91, 110, 111, 126, 124, 110, 109, 93, 106, 112, 22};
        kQuickData = [self StringFromPursuitData:value];
    }
    return kQuickData;
}

//: 收藏成功
+ (NSString *)noti_sessionText {
    /* static */ NSString *noti_sessionText = nil;
    if (!noti_sessionText) {
        Byte value[] = {12, 65, 3, 39, 213, 247, 41, 216, 208, 39, 201, 209, 38, 203, 224, 170};
        noti_sessionText = [self StringFromPursuitData:value];
    }
    return noti_sessionText;
}

//: http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action
+ (NSString *)mAccelerateValue {
    /* static */ NSString *mAccelerateValue = nil;
    if (!mAccelerateValue) {
        Byte value[] = {63, 97, 4, 25, 201, 213, 213, 209, 155, 144, 144, 194, 209, 202, 142, 212, 200, 143, 218, 214, 207, 217, 202, 207, 194, 209, 202, 143, 196, 208, 206, 144, 207, 202, 206, 212, 198, 211, 215, 198, 211, 144, 213, 211, 194, 207, 212, 205, 194, 213, 208, 211, 144, 213, 198, 217, 213, 174, 212, 200, 143, 194, 196, 213, 202, 208, 207, 55};
        mAccelerateValue = [self StringFromPursuitData:value];
    }
    return mAccelerateValue;
}

//: contact
+ (NSString *)k_yaTitle {
    /* static */ NSString *k_yaTitle = nil;
    if (!k_yaTitle) {
        Byte value[] = {7, 70, 5, 140, 174, 169, 181, 180, 186, 167, 169, 186, 213};
        k_yaTitle = [self StringFromPursuitData:value];
    }
    return k_yaTitle;
}

//: #FEFECA
+ (NSString *)k_sliceTitle {
    /* static */ NSString *k_sliceTitle = nil;
    if (!k_sliceTitle) {
        Byte value[] = {7, 24, 4, 51, 59, 94, 93, 94, 93, 91, 89, 108};
        k_sliceTitle = [self StringFromPursuitData:value];
    }
    return k_sliceTitle;
}

//: SELF MATCHES %@
+ (NSString *)show_sizeContent {
    /* static */ NSString *show_sizeContent = nil;
    if (!show_sizeContent) {
        Byte value[] = {15, 97, 12, 139, 114, 7, 162, 161, 107, 149, 132, 8, 180, 166, 173, 167, 129, 174, 162, 181, 164, 169, 166, 180, 129, 134, 161, 88};
        show_sizeContent = [self StringFromPursuitData:value];
    }
    return show_sizeContent;
}

//: 发言频次过快，请%ld秒后重试
+ (NSString *)dreamTextName {
    /* static */ NSString *dreamTextName = nil;
    if (!dreamTextName) {
        Byte value[] = {39, 3, 12, 180, 210, 167, 178, 57, 144, 197, 195, 122, 232, 146, 148, 235, 171, 131, 236, 165, 148, 233, 175, 164, 235, 194, 138, 232, 194, 174, 242, 191, 143, 235, 178, 186, 40, 111, 103, 234, 170, 149, 232, 147, 145, 236, 138, 144, 235, 178, 152, 163};
        dreamTextName = [self StringFromPursuitData:value];
    }
    return dreamTextName;
}

//: 删除成功
+ (NSString *)app_accountImageName {
    /* static */ NSString *app_accountImageName = nil;
    if (!app_accountImageName) {
        Byte value[] = {12, 66, 4, 91, 39, 202, 226, 43, 219, 230, 40, 202, 210, 39, 204, 225, 137};
        app_accountImageName = [self StringFromPursuitData:value];
    }
    return app_accountImageName;
}

//: /team/getStatusSendText
+ (NSString *)dream_againstData {
    /* static */ NSString *dream_againstData = nil;
    if (!dream_againstData) {
        Byte value[] = {23, 95, 9, 191, 89, 231, 31, 191, 129, 142, 211, 196, 192, 204, 142, 198, 196, 211, 178, 211, 192, 211, 212, 210, 178, 196, 205, 195, 179, 196, 215, 211, 112};
        dream_againstData = [self StringFromPursuitData:value];
    }
    return dream_againstData;
}

//: 确认转发
+ (NSString *)showTargetValue {
    /* static */ NSString *showTargetValue = nil;
    if (!showTargetValue) {
        Byte value[] = {12, 69, 8, 169, 162, 188, 99, 183, 44, 230, 243, 45, 243, 233, 45, 2, 241, 42, 212, 214, 184};
        showTargetValue = [self StringFromPursuitData:value];
    }
    return showTargetValue;
}

//: title
+ (NSString *)kMustNeedTitle {
    /* static */ NSString *kMustNeedTitle = nil;
    if (!kMustNeedTitle) {
        Byte value[] = {5, 61, 5, 1, 242, 177, 166, 177, 169, 162, 80};
        kMustNeedTitle = [self StringFromPursuitData:value];
    }
    return kMustNeedTitle;
}

//: luyinshibai
+ (NSString *)showByTitle {
    /* static */ NSString *showByTitle = nil;
    if (!showByTitle) {
        Byte value[] = {11, 82, 5, 177, 59, 190, 199, 203, 187, 192, 197, 186, 187, 180, 179, 187, 231};
        showByTitle = [self StringFromPursuitData:value];
    }
    return showByTitle;
}

//: /team/getTeamSetting
+ (NSString *)dream_completeValue {
    /* static */ NSString *dream_completeValue = nil;
    if (!dream_completeValue) {
        Byte value[] = {20, 37, 12, 170, 130, 235, 228, 147, 17, 177, 80, 134, 84, 153, 138, 134, 146, 84, 140, 138, 153, 121, 138, 134, 146, 120, 138, 153, 153, 142, 147, 140, 126};
        dream_completeValue = [self StringFromPursuitData:value];
    }
    return dream_completeValue;
}

//: apple+%@
+ (NSString *)app_videoTowerValue {
    /* static */ NSString *app_videoTowerValue = nil;
    if (!app_videoTowerValue) {
        Byte value[] = {8, 63, 3, 160, 175, 175, 171, 164, 106, 100, 127, 205};
        app_videoTowerValue = [self StringFromPursuitData:value];
    }
    return app_videoTowerValue;
}

//: contact_tag_fragment_sure
+ (NSString *)notiColorSumValue {
    /* static */ NSString *notiColorSumValue = nil;
    if (!notiColorSumValue) {
        Byte value[] = {25, 22, 5, 229, 9, 121, 133, 132, 138, 119, 121, 138, 117, 138, 119, 125, 117, 124, 136, 119, 125, 131, 123, 132, 138, 117, 137, 139, 136, 123, 231};
        notiColorSumValue = [self StringFromPursuitData:value];
    }
    return notiColorSumValue;
}

//: contact_tag_fragment_delete_success
+ (NSString *)notiMakeData {
    /* static */ NSString *notiMakeData = nil;
    if (!notiMakeData) {
        Byte value[] = {35, 18, 3, 117, 129, 128, 134, 115, 117, 134, 113, 134, 115, 121, 113, 120, 132, 115, 121, 127, 119, 128, 134, 113, 118, 119, 126, 119, 134, 119, 113, 133, 135, 117, 117, 119, 133, 133, 49};
        notiMakeData = [self StringFromPursuitData:value];
    }
    return notiMakeData;
}

//: watch_multiretweet_activity_person
+ (NSString *)k_needData {
    /* static */ NSString *k_needData = nil;
    if (!k_needData) {
        Byte value[] = {34, 97, 7, 175, 237, 41, 232, 216, 194, 213, 196, 201, 192, 206, 214, 205, 213, 202, 211, 198, 213, 216, 198, 198, 213, 192, 194, 196, 213, 202, 215, 202, 213, 218, 192, 209, 198, 211, 212, 208, 207, 231};
        k_needData = [self StringFromPursuitData:value];
    }
    return k_needData;
}

//: 消息已发送，但对方拒收
+ (NSString *)notiParentNovelData {
    /* static */ NSString *notiParentNovelData = nil;
    if (!notiParentNovelData) {
        Byte value[] = {33, 6, 8, 222, 98, 159, 41, 253, 236, 188, 142, 236, 135, 181, 235, 189, 184, 235, 149, 151, 239, 134, 135, 245, 194, 146, 234, 195, 140, 235, 181, 191, 236, 156, 191, 236, 145, 152, 236, 154, 188, 204};
        notiParentNovelData = [self StringFromPursuitData:value];
    }
    return notiParentNovelData;
}

//: personCardId
+ (NSString *)kInfoBrokerPollutionName {
    /* static */ NSString *kInfoBrokerPollutionName = nil;
    if (!kInfoBrokerPollutionName) {
        Byte value[] = {12, 43, 9, 171, 229, 183, 55, 113, 35, 155, 144, 157, 158, 154, 153, 110, 140, 157, 143, 116, 143, 160};
        kInfoBrokerPollutionName = [self StringFromPursuitData:value];
    }
    return kInfoBrokerPollutionName;
}

//: 本地反垃圾失败
+ (NSString *)kBarrelName {
    /* static */ NSString *kBarrelName = nil;
    if (!kBarrelName) {
        Byte value[] = {21, 24, 6, 76, 90, 152, 254, 180, 196, 253, 180, 200, 253, 167, 165, 253, 182, 155, 253, 180, 214, 253, 188, 201, 0, 204, 189, 40};
        kBarrelName = [self StringFromPursuitData:value];
    }
    return kBarrelName;
}

//: app_team_invalid_tip
+ (NSString *)showMakeText {
    /* static */ NSString *showMakeText = nil;
    if (!showMakeText) {
        Byte value[] = {20, 22, 13, 110, 122, 249, 32, 22, 241, 255, 236, 149, 241, 119, 134, 134, 117, 138, 123, 119, 131, 117, 127, 132, 140, 119, 130, 127, 122, 117, 138, 127, 134, 167};
        showMakeText = [self StringFromPursuitData:value];
    }
    return showMakeText;
}

//: 撤回附言
+ (NSString *)dreamButtonValue {
    /* static */ NSString *dreamButtonValue = nil;
    if (!dreamButtonValue) {
        Byte value[] = {12, 94, 10, 45, 181, 254, 48, 171, 108, 194, 68, 240, 2, 67, 249, 252, 71, 247, 226, 70, 6, 222, 191};
        dreamButtonValue = [self StringFromPursuitData:value];
    }
    return dreamButtonValue;
}

//: data
+ (NSString *)mMustName {
    /* static */ NSString *mMustName = nil;
    if (!mMustName) {
        Byte value[] = {4, 89, 4, 203, 189, 186, 205, 186, 205};
        mMustName = [self StringFromPursuitData:value];
    }
    return mMustName;
}

//: 发言频次
+ (NSString *)noti_novelName {
    /* static */ NSString *noti_novelName = nil;
    if (!noti_novelName) {
        Byte value[] = {12, 46, 7, 222, 171, 60, 229, 19, 189, 191, 22, 214, 174, 23, 208, 191, 20, 218, 207, 38};
        noti_novelName = [self StringFromPursuitData:value];
    }
    return noti_novelName;
}

//: #F6B53E
+ (NSString *)appMustText {
    /* static */ NSString *appMustText = nil;
    if (!appMustText) {
        Byte value[] = {7, 72, 10, 173, 27, 252, 31, 115, 150, 91, 107, 142, 126, 138, 125, 123, 141, 83};
        appMustText = [self StringFromPursuitData:value];
    }
    return appMustText;
}

//: watch_multiretweet_activity_confirm_forwarded_to
+ (NSString *)showModeName {
    /* static */ NSString *showModeName = nil;
    if (!showModeName) {
        Byte value[] = {48, 95, 4, 201, 214, 192, 211, 194, 199, 190, 204, 212, 203, 211, 200, 209, 196, 211, 214, 196, 196, 211, 190, 192, 194, 211, 200, 213, 200, 211, 216, 190, 194, 206, 205, 197, 200, 209, 204, 190, 197, 206, 209, 214, 192, 209, 195, 196, 195, 190, 211, 206, 143};
        showModeName = [self StringFromPursuitData:value];
    }
    return showModeName;
}

//: 消息合并转发失败
+ (NSString *)showMustValue {
    /* static */ NSString *showMustValue = nil;
    if (!showMustValue) {
        Byte value[] = {24, 51, 12, 66, 122, 93, 228, 2, 90, 35, 150, 114, 25, 233, 187, 25, 180, 226, 24, 195, 187, 24, 236, 233, 27, 240, 223, 24, 194, 196, 24, 215, 228, 27, 231, 216, 162};
        showMustValue = [self StringFromPursuitData:value];
    }
    return showMustValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayAccountViewController.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+BottomMagnitude.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "NameBarView.h"
//: #import "NTESSessionConfig.h"
#import "ActivityConfigImage.h"
//: #import "FFFMediaItem.h"
#import "AccountAction.h"
//: #import "NTESSessionMsgConverter.h"
#import "ViewLine.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import "NTESSessionMsgConverter.h"
#import "ViewLine.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESVideoViewController.h"
#import "WordViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+SubjectMatterJson.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "JvViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "NTESPersonalCardViewController.h"
#import "SystemViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "CompartmentViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESFPSLabel.h"
#import "ContentLabel.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+BottomMagnitude.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "FFFKitMediaFetcher.h"
#import "ValueAction.h"
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "NTESSubscribeManager.h"
#import "ColorTingManager.h"
//: #import "FFFInputAtCache.h"
#import "AdministratorCache.h"
//: #import "NTESRedPacketAttachment.h"
#import "ItemViewAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "NameButton.h"
//: #import "NTESCellLayoutConfig.h"
#import "RangeWithLayoutConfig.h"
//: #import "NTESMulSelectFunctionBar.h"
#import "ThrowView.h"
//: #import "NTESMergeForwardSession.h"
#import "ManagerWith.h"
//: #import "NTESSessionMultiRetweetContentView.h"
#import "RetweetMessageView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFReplyContentView.h"
#import "CircleView.h"
//: #import "NTESThreadTalkSessionViewController.h"
#import "TeamThreadViewController.h"
//: #import "UIView+FFFToast.h"
#import "UIView+Factor.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "NTESOpenRedPackageSheet.h"
#import "OpenRangeSheetView.h"
//: #import "ZOMNForwardViewController.h"
#import "ManagerViewController.h"
//: #import "ZMONGalleryImgViewController.h"
#import "RangeViewController.h"
//: #import "SNLeadCompleteManager.h"
#import "CompleteManager.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "OnViewController.h"
//: #import "FFFTeamListDataManager.h"
#import "ShowManager.h"
//: #import "LEEAlert.h"
#import "SendAlert.h"
//: #import "ZCHttpManager+Addtionals.h"
#import "TitleManager+SoleMode.h"
//: #import "NTESListHeader.h"
#import "LineView.h"
//: #import "ZMONTranslateView.h"
#import "TextCleanView.h"
//: #import "ZMONReportNextView.h"
#import "DoingenceView.h"
//: #import "ZMONReportBlackView.h"
#import "MisnomerView.h"
//: #import "ZMONReportDeleteView.h"
#import "StatuteTitleView.h"
//: #import "ZMONReportHisView.h"
#import "OnView.h"

//: @import MobileCoreServices;
@import MobileCoreServices;
//: @import AVFoundation;
@import AVFoundation;
//: NSString *kNTESDemoRevokeMessageFromMeNotication = @"kNTESDemoRevokeMessageFromMeNotication";
NSString *appBlockData = @"kNTESDemoRevokeMessageFromMeNotication";
// 定义后台允许的最大时间（1小时）
//: static const NSTimeInterval kMaxBackgroundTime = 60*60;
static const NSTimeInterval appRelativeTitle = 60*60;

//: @interface NTESSessionViewController ()
@interface DisplayAccountViewController ()
//: <UIImagePickerControllerDelegate,
<UIImagePickerControllerDelegate,
//: UINavigationControllerDelegate,
UINavigationControllerDelegate,
//: UISearchControllerDelegate,
UISearchControllerDelegate,
//: NIMSystemNotificationManagerDelegate,
NIMSystemNotificationManagerDelegate,
//: NIMMediaManagerDelegate,
NIMMediaManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: FFFTeamCardViewControllerDelegate,
DialFrame,
//: NIMChatExtendManagerDelegate,
NIMChatExtendManagerDelegate,
//: UISearchBarDelegate,
UISearchBarDelegate,
//: NTESListHeaderDelegate,
HeaderDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NTESOpenRedPackageSheetDelegate,
RedTitle,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: NTESReportContentDelegate,
MessageTing,
//: NTESReportNextDelegate,
InformTing,
//: NTESReportHisNextDelegate>
RecordName>
{
    //: BOOL _canSendText;
    BOOL _canSendText;
}

//: @property (nonatomic,strong) NTESCustomSysNotificationSender *notificaionSender;
@property (nonatomic,strong) NameBarView *notificaionSender;
//: @property (nonatomic,strong) NTESSessionConfig *sessionConfig;
@property (nonatomic,strong) ActivityConfigImage *sessionConfig;
//: @property (nonatomic,strong) UIImagePickerController *imagePicker;
@property (nonatomic,strong) UIImagePickerController *imagePicker;
//: @property (nonatomic,strong) UIView *currentSingleSnapView;
@property (nonatomic,strong) UIView *currentSingleSnapView;
//@property (nonatomic,strong)    ContentLabel *fpsLabel;
//: @property (nonatomic,strong) FFFKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) ValueAction *mediaFetcher;
//: @property (nonatomic,strong) NSMutableArray *selectedMessages;
@property (nonatomic,strong) NSMutableArray *selectedMessages;
//: @property (nonatomic,strong) NTESMulSelectFunctionBar *mulSelectedSureBar;
@property (nonatomic,strong) ThrowView *mulSelectedSureBar;
//: @property (nonatomic,strong) UIButton *mulSelectCancelBtn;
@property (nonatomic,strong) UIButton *mulSelectCancelBtn;
//: @property (nonatomic,strong) NTESMergeForwardSession *mergeForwardSession;
@property (nonatomic,strong) ManagerWith *mergeForwardSession;

//: @property (nonatomic,assign) NSInteger intervalTime;
@property (nonatomic,assign) NSInteger intervalTime;
//: @property (nonatomic,assign) BOOL isSend;
@property (nonatomic,assign) BOOL isSend;
//: @property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,strong) NSTimer *timer;

//: @property (nonatomic, strong) NSDate *backgroundEnterTime;
@property (nonatomic, strong) NSDate *backgroundEnterTime;
//: @property (nonatomic, assign) BOOL shouldRestart;
@property (nonatomic, assign) BOOL shouldRestart;

//: @property (nonatomic, strong) UILabel *invalid_tip;
@property (nonatomic, strong) UILabel *invalid_tip;// 不在群聊view

//: @property (nonatomic, strong) NTESListHeader *header;
@property (nonatomic, strong) LineView *header;
//: @property (nonatomic, strong) ZMONTranslateView *translateView;
@property (nonatomic, strong) TextCleanView *translateView;

//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) DoingenceView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) MisnomerView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) StatuteTitleView *reprotDeleteView;
//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;
//: @property (nonatomic, strong) ZMONReportHisView *reprotHisNextView;
@property (nonatomic, strong) OnView *reprotHisNextView;

//: @end
@end


//: @implementation NTESSessionViewController
@implementation DisplayAccountViewController


//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //    self.navigationController.navigationBarHidden = NO;
    //    [self.navigationController.navigationBar setHidden:YES];
    //: [self showNotice];
    [self label];

    // 当前用户不在群聊
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {

            //: self.invalid_tip.hidden = NO;
            self.invalid_tip.hidden = NO;

            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self refreshMessages];
                [self withMessages];
            //: }];
            }];
        //: } else {
        } else {

//            [[NIMSDK sharedSDK].teamManager fetchTeamMembers:team.teamId
//                                                  completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
//                
//                if (members && members.count >= 100) {
//                    
//                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateOnlyManager
//                                                                 inTeam:team.teamId
//                                                             completion:^(NSError *error) {
//                        
//                    }];
//                }
//            }];
        }
    }
}

//: - (void)showNotice {
- (void)label {

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{

        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: if (team && team.announcement && team.announcement.length > 0) {
        if (team && team.announcement && team.announcement.length > 0) {
            //取出标题和内容
            //: NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: if (datas.count <= 0){
            if (datas.count <= 0){
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[CompleteManager redDown] stub];
                //: return;
                return;
            }

            //: NSString *title = [datas lastObject][@"title"];
            NSString *title = [datas lastObject][[PursuitData kMustNeedTitle]];
            //: NSString *content = [datas lastObject][@"content"];
            NSString *content = [datas lastObject][[PursuitData noti_messageName]];

            //: NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];
            NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];

            //: if (title.length > 0 || content.length > 0){
            if (title.length > 0 || content.length > 0){

                @
                 //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                 autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                              ;
                //: [[SNLeadCompleteManager sharedInstance] showLeadViewForCompletingUserInfoWithSuperView:self.view withMessage:message cancleBlock:^{
                [[CompleteManager redDown] at:self.view color:message accumulation:^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
                    TeamStatus *option = [[TeamStatus alloc] init];
                    //: option.canCreateAnnouncement = NO;
                    option.canCreateAnnouncement = NO;
                    //: option.announcement = team.announcement;
                    option.announcement = team.announcement;
                    //: option.nick = team.teamName;
                    option.nick = team.teamName;
                    //: option.team = team;
                    option.team = team;
                    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
                    OnViewController *vc = [[OnViewController alloc] initWithManagerPressedDate:option];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                //: }];
                }];
            //: } else {
            } else {
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[CompleteManager redDown] stub];
            }
        }

    //: });
    });
}


//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification {
- (void)indicatorred:(NSNotification *)notification {
    //: [self showNotice];
    [self label];
    //在聊天页面停留时间长了，再次进来卡死。刷新一下数据
//    [self refreshMessages];

    // 检查是否需要重启
        //: if (self.shouldRestart) {
        if (self.shouldRestart) {
            //: [self refreshMessages];
            [self withMessages];
            //: self.shouldRestart = NO;
            self.shouldRestart = NO;
        }
}

//: - (void)vcEnterBackground:(NSNotification *)notification
- (void)anTextColor:(NSNotification *)notification
{
        // 记录进入后台的时间
            //: self.backgroundEnterTime = [NSDate date];
            self.backgroundEnterTime = [NSDate date];
            //: NSLog(@"应用进入后台，开始计时: %@", self.backgroundEnterTime);
}
//: - (void)vcEnterForeground:(NSNotification *)notification
- (void)modelEnable:(NSNotification *)notification
{
    // 检查后台停留时间是否超过阈值
       //: if (self.backgroundEnterTime) {
       if (self.backgroundEnterTime) {
           //: NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           //: NSLog(@"应用从后台返回，后台停留时间: %.0f秒", backgroundTime);

           //: if (backgroundTime >= kMaxBackgroundTime) {
           if (backgroundTime >= appRelativeTitle) {
               //: self.shouldRestart = YES;
               self.shouldRestart = YES;
           }
       }
       //: self.backgroundEnterTime = nil;
       self.backgroundEnterTime = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: _isSend = YES;
    _isSend = YES;
    //: _canSendText = YES;
    _canSendText = YES;
    //: self.canTapVoiceBtn = YES;
    self.canTapVoiceBtn = YES;

    // 初始化时重置重启标志
     //: self.shouldRestart = NO;
     self.shouldRestart = NO;

    //: _notificaionSender = [[NTESCustomSysNotificationSender alloc] init];
    _notificaionSender = [[NameBarView alloc] init];
//    [self setupNormalNav];
    //: BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    //: if (!disableCommandTyping) {
    if (!disableCommandTyping) {
        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    }

//    if ([[ImageTing sharedConfig] showFps])
//    {
//        self.fpsLabel = [[ContentLabel alloc] initWithFrame:CGRectZero];
//        [self.view addSubview:self.fpsLabel];
//        self.fpsLabel.right = self.view.width;
//        self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    }

    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //临时订阅这个人的在线状态
        //: [[NTESSubscribeManager sharedManager] subscribeTempUserOnlineState:self.session.sessionId];
        [[ColorTingManager message] pressedFor:self.session.sessionId];
        //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
    }

    //删除最近会话列表中有人@你的标记
    //: [NTESSessionUtil removeRecentSessionMark:self.session type:NTESRecentSessionMarkTypeAt];
    [SessionUtil past:self.session characteristicRootOfASquareMatrix:NTESRecentSessionMarkTypeAt];

    //批量转发
    //: _mergeForwardSession = [[NTESMergeForwardSession alloc] init];
    _mergeForwardSession = [[ManagerWith alloc] init];
    //    [self setupSearchVC];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(onRevokeMessageFromMe:)
                                             selector:@selector(recentContent:)
                                                 //: name:kNTESDemoRevokeMessageFromMeNotication
                                                 name:appBlockData
                                               //: object:nil];
                                               object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(indicatorred:) name:UIApplicationDidBecomeActiveNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(anTextColor:) name:UIApplicationDidEnterBackgroundNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(modelEnable:) name:UIApplicationWillEnterForegroundNotification object:nil];




    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(duringHighChanged:) name:[PursuitData main_showValue] object:nil];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.session.sessionId;
    dict[@"id"] = self.session.sessionId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[PursuitData dream_completeValue]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[PursuitData dream_sendName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[PursuitData mMustName]];
            //: self.teamSettingConfig = data;
            self.teamSettingConfig = data;

//            NSString *frequency = [data newStringValueForKey:@"frequency"];
            //: NSString *canMemberInfovalue = [data newStringValueForKey:@"canMemberInfo"];
            NSString *canMemberInfovalue = [data route:[PursuitData mPlanetText]];
            //: NSString *ispushvalue = [data newStringValueForKey:@"ispush"];
            NSString *ispushvalue = [data route:[PursuitData noti_viewSuccessAccelerateName]];

            //: self.canMemberInfo = canMemberInfovalue.boolValue;
            self.canMemberInfo = canMemberInfovalue.boolValue;
            //: self.canNoticeMsg = ispushvalue.boolValue;
            self.canNoticeMsg = ispushvalue.boolValue;

//            self.canMemberInfo = [data boolValueForKey:@"canMemberInfo"];
//            self.canNoticeMsg = [data boolValueForKey:@"ispush"];
//            weakself.intervalTime = frequency.integerValue;
//            if (weakself.intervalTime > 0) {
//                weakself.timer = [NSTimer scheduledTimerWithTimeInterval:weakself.intervalTime target:weakself selector:@selector(timerWithTimeInterval) userInfo:nil repeats:YES];
//            }


            //: if (self.session.sessionType == NIMSessionTypeTeam) {
            if (self.session.sessionType == NIMSessionTypeTeam) {
                //: if (self.canNoticeMsg) {
                if (self.canNoticeMsg) {

                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];

                //: }else{
                }else{
                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];
                }
            }




        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getStatusSendText"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[PursuitData dream_againstData]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[PursuitData dream_sendName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[PursuitData mMustName]];
            //: NSString *canSendText = [data stringValueForKey:@"canSendText" defaultValue:@"1"];
            NSString *canSendText = [data canValue:[PursuitData show_crowdedGivingValue] background:@"1"];
            //: _canSendText = canSendText.boolValue;
            _canSendText = canSendText.boolValue;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];


    // 群公告
    //: NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
    NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[PursuitData userSeriesText],self.session.sessionId]];
    //: if([@"1" isEqualToString:flag]){
    if([@"1" isEqualToString:flag]){
        //: [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
        [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",[PursuitData userSeriesText],self.session.sessionId]];
        //取出标题和内容
        //: NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",self.session.sessionId]];
        NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[PursuitData k_removeText],self.session.sessionId]];
        //: NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",self.session.sessionId]];
        NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[PursuitData user_pursuitWeekValue],self.session.sessionId]];

        //: if (title.length > 0 || content.length > 0){
        if (title.length > 0 || content.length > 0){

            //: [LEEAlert alert].config
            [SendAlert hide].config
                //: .LeeAddTitle(^(UILabel *label) {
                .LeeAddTitle(^(UILabel *label) {
                    //: label.text = title;
                    label.text = title;
                    //: label.textColor = [UIColor darkGrayColor];
                    label.textColor = [UIColor darkGrayColor];
                //: })
                })
                //: .LeeAddContent(^(UILabel *label) {
                .LeeAddContent(^(UILabel *label) {
                    //: label.text = content;
                    label.text = content;
                    //: label.textColor = [UIColor grayColor];
                    label.textColor = [UIColor grayColor];
                //: })
                })
                //: .LeeAddAction(^(LEEAction *action) {
                .LeeAddAction(^(NameVideo *action) {

                    //: action.type = LEEActionTypeCancel;
                    action.type = LEEActionTypeCancel;
                    //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
                    action.title = [InputRed preserve:[PursuitData notiColorSumValue]];
                    //: action.titleColor = [UIColor colorWithHexString:@"01B0FD"];
                    action.titleColor = [UIColor ground:[PursuitData dreamOnValue]];
                    //: action.backgroundColor = [UIColor whiteColor];
                    action.backgroundColor = [UIColor whiteColor];
                    //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    //: action.borderWidth = 1.0f;
                    action.borderWidth = 1.0f;
                    //: action.borderColor = action.backgroundHighlightColor;
                    action.borderColor = action.backgroundHighlightColor;
                //: })
                })
                //: .LeeShow();
                .LeeShow();
        }

    }

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), self.view.width, 0)];
    self.header = [[LineView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop]), self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header streetwise:ListHeaderTypeNetStauts kitKey:@(step)];
}

//: - (void)languageChanged:(NSNotification *)noti {
- (void)duringHighChanged:(NSNotification *)noti {
    //: [self refreshMessages];
    [self withMessages];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

/** NIMTeamManagerDelegate
 *  群组成员变动回调,包含被移除的群成员ID
 *
 *  @param team 变动的群组
 *  @param memberIDs 变动的成员ID
 */
//: - (void)onTeamMemberRemoved:(NIMTeam *)team
- (void)onTeamMemberRemoved:(NIMTeam *)team
                //: withMembers:(nullable NSArray<NSString *> *)memberIDs; {
                withMembers:(nullable NSArray<NSString *> *)memberIDs; {

    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
    if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
        //: self.invalid_tip.hidden = NO;
        self.invalid_tip.hidden = NO;

        //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        //: options.removeOtherClients = YES;
        options.removeOtherClients = YES;
        //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
        [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: return;
                return;
            }
            //: [self refreshMessages];
            [self withMessages];
        //: }];
        }];
    }
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    [self.view endEditing:YES];
//}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step{
- (void)onLogin:(NIMLoginStep)step{
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header streetwise:ListHeaderTypeNetStauts kitKey:@(step)];
}

//: -(void)timerWithTimeInterval{
-(void)back{
    //: _isSend = YES;
    _isSend = YES;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        //: [[NTESSubscribeManager sharedManager] unsubscribeTempUserOnlineState:self.session.sessionId];
        [[ColorTingManager message] signature:self.session.sessionId];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }

//    [_fpsLabel invalidate];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: [self.timer invalidate];
    [self.timer invalidate];
}



//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    self.fpsLabel.right = self.view.width;
//    self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    self.mulSelectedSureBar.frame = self.sessionInputView.frame;
}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];

    //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
    [[CompleteManager redDown] stub];
    //    [self.navigationController.navigationBar setHidden:NO];
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<LineConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESSessionConfig alloc] init];
        _sessionConfig = [[ActivityConfigImage alloc] init];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - FFFTeamCardViewControllerDelegate
#pragma mark - DialFrame

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)isTop {
- (void)showwed:(BOOL)isTop {
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    //: if (isTop) {
    if (isTop) {
        //: if (!recent) {
        if (!recent) {
            //: [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
            [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
        }
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
    //: } else {
    } else {
        //: if (recent) {
        if (recent) {
            //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
        //: } else {}
        } else {}
    }
}

//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate
//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: if ([event.from isEqualToString:self.session.sessionId]) {
        if ([event.from isEqualToString:self.session.sessionId]) {
            //: [self refreshSessionSubTitle:[NTESSessionUtil onlineState:self.session.sessionId detail:YES]];
            [self backgroundIn:[SessionUtil info:self.session.sessionId layer:YES]];
        }
    }
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
{
    //: if (!notification.sendToOnlineUsersOnly) {
    if (!notification.sendToOnlineUsersOnly) {
        //: return;
        return;
    }
    //: NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict jsonInteger:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        if ([dict cell:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        {
            //: [self refreshSessionTitle:[NSString stringWithFormat:@"%@...",@"正在输入".ntes_localized]];
            [self mode:[NSString stringWithFormat:@"%@...",[PursuitData main_journalistText].shouldLocalized]];

        }
    }


}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)playAudio:(NSString *)filePath progress:(float)value
- (void)playAudio:(NSString *)filePath progress:(float)value
{
}

//: #pragma mark - UISearchControllerDelegate
#pragma mark - UISearchControllerDelegate

//: - (NSString *)sessionTitle
- (NSString *)pathRemove
{
    //: if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [FFFLanguageManager getTextWithKey:@"my_computer"];
        return [InputRed preserve:[PursuitData user_textName]];
    }
    //: return [super sessionTitle];
    return [super pathRemove];
}

//: - (NSString *)sessionSubTitle
- (NSString *)convertName
{
    //: if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [NTESSessionUtil onlineState:self.session.sessionId detail:YES];
        return [SessionUtil info:self.session.sessionId layer:YES];
    }
    //: return @"";
    return @"";
}

//: - (void)onTextChanged:(id)sender
- (void)empties:(id)sender
{
    //: [_notificaionSender sendTypingState:self.session];
    [_notificaionSender project:self.session];
}


//: #pragma mark - 文本消息
#pragma mark - 文本消息

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers{
- (void)straightness:(NSString *)text imageChecked:(NSArray *)atUsers{
    //: [super onSendText:text atUsers:atUsers];
    [super straightness:text imageChecked:atUsers];
}

//正则过滤，字符串是否是纯数字
//: - (BOOL)filterInputShouldNumber:(NSString *)str
- (BOOL)along:(NSString *)str
{
   //: if (str.length == 0) {
   if (str.length == 0) {
        //: return NO;
        return NO;
    }
    //: NSString *regex = @"[0-9]*";
    NSString *regex = @"[0-9]*";
    //: NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    NSPredicate *pred = [NSPredicate predicateWithFormat:[PursuitData show_sizeContent],regex];
    //: if ([pred evaluateWithObject:str]) {
    if ([pred evaluateWithObject:str]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

// 设置成垃圾消息，发送给服务器
//: - (void)hitClientAntispamWithMessage:(NIMMessage *)message type:(NSString *)type
- (void)elite:(NIMMessage *)message message:(NSString *)type
{
    //: NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    //: option.hitClientAntispam = YES;
    option.hitClientAntispam = YES;
    //: message.antiSpamOption = option;
    message.antiSpamOption = option;

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: NSString *nickName = me.userInfo.nickName;
    NSString *nickName = me.userInfo.nickName;

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
        //: @"accid" : emptyString(userID),
        [PursuitData dreamUniteName] : emptyString(userID),
        //: @"username" : nickName?:@"",
        [PursuitData k_accountName] : nickName?:@"",
        //: @"content" : message.text?:@"",
        [PursuitData noti_messageName] : message.text?:@"",
        //: @"recid" : self.session.sessionId?:@"",
        [PursuitData showScaleSendContent] : self.session.sessionId?:@"",
        //: @"type" : [NSString stringWithFormat:@"apple+%@",type],
        [PursuitData m_completeData] : [NSString stringWithFormat:[PursuitData app_videoTowerValue],type],
        //: @"sessionname" : self.sessionTitle?:@"",
        [PursuitData noti_modeImageData] : self.pathRemove?:@"",
    //: };
    };

    //: [ZCHttpManager refreshForbiddenWordsparams:dic GenerateUser:^(NSDictionary * _Nonnull configDict) {
    [TitleManager path:dic nearKey:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];
}
// 发送的所有消息类型最终 都会走这个 sendMessage方法，所以在这拦截
//: - (void)sendMessage:(NIMMessage *)message
- (void)createAllow:(NIMMessage *)message
{
    // 不再群聊 不允许发送消息
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    // 发送频率设置，距离上一次发送消息间隔小于frequency秒，提示 @"发言频次过快，请%ld秒后重试"
    //: if (_intervalTime > 0 && _isSend == NO) {
    if (_intervalTime > 0 && _isSend == NO) {
        //: [self hitClientAntispamWithMessage:message type:@"发言频次"];
        [self elite:message message:[PursuitData noti_novelName]];
        //: NSString *title = [NSString stringWithFormat:[FFFLanguageManager getTextWithKey:@"发言频次过快，请%ld秒后重试"],(long)_intervalTime];
        NSString *title = [NSString stringWithFormat:[InputRed preserve:[PursuitData dreamTextName]],(long)_intervalTime];
        //: [SVProgressHUD showMessage:title];
        [SVProgressHUD text:title];
        //: return;
        return;
    }
    //: _isSend = NO;
    _isSend = NO;

    // 发送消息的间隔时间 frequency>0 && 文本消息 && 输入不是数字
    //: if (!_canSendText && message.messageType == NIMMessageTypeText && ![self filterInputShouldNumber:message.text]) {
    if (!_canSendText && message.messageType == NIMMessageTypeText && ![self along:message.text]) {
        //: [self hitClientAntispamWithMessage:message type:@"不允许文字"];
        [self elite:message message:[PursuitData userAppearTitle]];
    }

    //: if ([[NTESBundleSetting sharedConfig] enableLocalAnti] && message.messageType == NIMMessageTypeText)
    if ([[ImageTing configRefresh] sound] && message.messageType == NIMMessageTypeText)
    {
        //: NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        //: checkOption.content = message.text;
        checkOption.content = message.text;
        //: checkOption.replacement = @"*";
        checkOption.replacement = @"*";
        //: NSError *error = nil;
        NSError *error = nil;
        //: NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        //: if (error)
        if (error)
        {
            //: [self.view makeToast:@"本地反垃圾失败".ntes_localized];
            [self.view makeToast:[PursuitData kBarrelName].shouldLocalized];
        }
        //: else
        else
        {
            //: switch (result.type) {
            switch (result.type) {
                //: case NIMAntiSpamOperateFileNotExists:
                case NIMAntiSpamOperateFileNotExists:
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalReplace:
                case NIMAntiSpamResultLocalReplace:
                    //: message.text = result.content;
                    message.text = result.content;
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalForbidden:
                case NIMAntiSpamResultLocalForbidden:
                    //: [self.view makeToast:@"** 该消息被屏蔽 **".ntes_localized];
                    [self.view makeToast:[PursuitData user_yaVideoText].shouldLocalized];
                    //: return;
                    return;
                //: case NIMAntiSpamResultServerForbidden:
                case NIMAntiSpamResultServerForbidden:
                {
                    //: [self hitClientAntispamWithMessage:message type:@"反垃圾消息"];
                    [self elite:message message:[PursuitData showSliceModeData]];
                }
                    //: break;
                    break;
                //: case NIMAntiSpamResultNotHit:
                case NIMAntiSpamResultNotHit:
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
    //: [super sendMessage:message];
    [super createAllow:message];
}



//: #pragma mark - NIMInputActionProtocol
#pragma mark - NIMInputActionProtocol

//: - (BOOL)onTapVoiceBtn:(id)sender {
- (BOOL)specialSession:(id)sender {
    //: return _canSendText;
    return _canSendText;
}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (void)onTapMenuItemReply:(FFFMediaItem *)item
- (void)scaleColor:(AccountAction *)item
{
    //: NIMMessage *menuMessage = [self messageForMenu];
    NIMMessage *menuMessage = [self messageForMenu];
    //: if ([self.sessionConfig respondsToSelector:@selector(setThreadMessage:)])
    if ([self.sessionConfig respondsToSelector:@selector(setNameImage:)])
    {
        //: [self.sessionConfig setThreadMessage:menuMessage];
        [self.sessionConfig setNameImage:menuMessage];
    }

    //: [self.sessionInputView refreshStatus:NIMInputStatusText];
    [self.sessionInputView commentMinimum:NIMInputStatusText];
    //: [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    //: [self.sessionInputView refreshReplyedContent:menuMessage];
    [self.sessionInputView need:menuMessage];
    //: [self.sessionInputView sizeToFit];
    [self.sessionInputView sizeToFit];
    //: if (self.session.sessionType != NIMSessionTypeP2P &&
    if (self.session.sessionType != NIMSessionTypeP2P &&
        //: menuMessage)
        menuMessage)
    {
        //: [self.sessionInputView addAtItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
        [self.sessionInputView streetwiseItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
    }
}

//: - (void)onTapMenuItemForword:(FFFMediaItem *)item
- (void)pathForword:(AccountAction *)item
{
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    ManagerViewController *vc = [[ManagerViewController alloc]init];
    //: vc.message = [self messageForMenu];
    vc.message = [self messageForMenu];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTapMenuItemMark:(FFFMediaItem *)item
- (void)blueTap:(AccountAction *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    //: NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    //: params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    //: params.type = 1;
    params.type = 1;
    //: params.uniqueId = message.messageId.MD5String;
    params.uniqueId = message.messageId.upNeed;
    //: [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
    [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:[FFFLanguageManager getTextWithKey:@"收藏失败"]];
            [SVProgressHUD showErrorWithStatus:[InputRed preserve:[PursuitData userPressValue]]];
            //: return;
            return;
        }
        //: [SVProgressHUD showSuccessWithStatus:[FFFLanguageManager getTextWithKey:@"收藏成功"]];
        [SVProgressHUD showSuccessWithStatus:[InputRed preserve:[PursuitData noti_sessionText]]];
    //: }];
    }];
}

//: - (void)onTapMenuItemPin:(FFFMediaItem *)item
- (void)count:(AccountAction *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];
    NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"添加失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[PursuitData app_planetName].shouldLocalized];
            //: return;
            return;
        }
        //: [sself uiPinMessage:message];
        [sself trap:message];
    //: }];
    }];
}

//: - (void)onTapMenuItemUnpin:(FFFMediaItem *)item
- (void)letterDate:(AccountAction *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"取消标记失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[PursuitData notiWeekName].shouldLocalized];
            //: return;
            return;
        }
        //: [sself uiUnpinMessage:message];
        [sself to:message];
    //: }];
    }];

}

//: - (void)onTapMenuItemRevoke:(FFFMediaItem *)item
- (void)convert:(AccountAction *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL enableRevokePostscript = [[NTESBundleSetting sharedConfig] enableRevokeMsgPostscript];
    BOOL enableRevokePostscript = [[ImageTing configRefresh] addRecordPostscript];
    //: if (enableRevokePostscript) {
    if (enableRevokePostscript) {
        //: [self doShowInputRevokePostscriptAlert:message];
        [self randomM:message];
    //: } else {
    } else {
        //: [self doRevokeMessage:message postscript:nil];
        [self ting:message disregard:nil];
    }
}
///获取UTC时间戳
//: - (NSString *)getNowUTCTimeTimestamp{
- (NSString *)date{
//      NSDate *datenow = [NSDate date];
//      NSTimeZone *zone = [NSTimeZone localTimeZone];
//    // 获取指定时间所在时区与UTC时区的间隔秒数
//    NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
//    return timeSp;

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
        //: [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        //: [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        //: [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; 
        [formatter setDateFormat:[PursuitData userEnableData]]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
        //设置时区,这个对于时间的处理有时很重要
        //: NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
        NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:[PursuitData noti_illegalText]];
        //: [formatter setTimeZone:timeZone];
        [formatter setTimeZone:timeZone];
        //: NSDate *datenow = [NSDate date];
        NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];

        //: return timeSp;
        return timeSp;
}


//: - (void)onTapMenuItemReport:(FFFMediaItem *)item
- (void)complete:(AccountAction *)item
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView dateModel];
}

//: - (void)onTapMenuItemTranslation:(FFFMediaItem *)item
- (void)labelTranslation:(AccountAction *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: NSString *time = [self getNowUTCTimeTimestamp];
    NSString *time = [self date];
    //: NSMutableDictionary *param = @{}.mutableCopy;
    NSMutableDictionary *param = @{}.mutableCopy;
    //: param[@"curTime"] = time;
    param[[PursuitData user_assaultTitle]] = time;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/getNimCheckSum"] params:param isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[PursuitData kWeekSuccessValue]] queryedBlockOf:param managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[PursuitData dream_sendName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[PursuitData mMustName]];
            //: NSString *checksum = [data newStringValueForKey:@"checksum"];
            NSString *checksum = [data route:[PursuitData show_sessionValue]];
            //: NSString *nonce = [data newStringValueForKey:@"nonce"];
            NSString *nonce = [data route:[PursuitData app_accountingData]];

            //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
            NSString *lang = emptyString([SessionRecord afterUser].language);
            //: if([lang isEqualToString:@"zh"]){
            if([lang isEqualToString:@"zh"]){
                //: lang = @"zh-CHS";
                lang = [PursuitData mHandleData];
            //: }else if ([lang isEqualToString:@"hant"]){
            }else if ([lang isEqualToString:[PursuitData k_seriesTitle]]){
                //: lang = @"zh-CHT";
                lang = [PursuitData userAgainstItsValue];
            }
            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: [dict setObject:userID forKey:@"accid"];
            [dict setObject:userID forKey:[PursuitData dreamUniteName]];
            //: [dict setObject:message.text forKey:@"text"];
            [dict setObject:message.text forKey:[PursuitData noti_lengthData]];
            //: [dict setObject:lang forKey:@"to"];
            [dict setObject:lang forKey:@"to"];

            //: [ZCHttpManager postWithUrl:@"http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action" checksum:checksum nonce:nonce CurTime:time params:dict success:^(id responseObject) {
            [TitleManager session:[PursuitData mAccelerateValue] indexFailed:checksum find:nonce thread:time info:dict randomResponseSuccess:^(id responseObject) {

                //: NSDictionary *resultDict = (NSDictionary *)responseObject;
                NSDictionary *resultDict = (NSDictionary *)responseObject;
                //: NSLog(@"resultDict-%@",resultDict);
                //: NSString *code = [resultDict newStringValueForKey:@"code"];
                NSString *code = [resultDict route:[PursuitData dream_sendName]];

                //: if (code.integerValue == 200) {
                if (code.integerValue == 200) {
                    //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
                    NSDictionary *data = [resultDict objectColor:[PursuitData mMustName]];
                    //: NSString *translation = [data newStringValueForKey:@"translation"];
                    NSString *translation = [data route:[PursuitData notiChangeContent]];

                    //: message.localExt = @{@"NTESMessageTranslate": translation };
                    message.localExt = @{[PursuitData dreamThanContent]: translation };
                    //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                    [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                        //: [self uiUpdateMessage:message];
                        [self monthBar:message];
                        //: [self.tableView reloadData];
                        [self.tableView reloadData];
                    //: }];
                    }];


                //: }else{
                }else{
                    //: NSString *desc = [resultDict newStringValueForKey:@"desc"];
                    NSString *desc = [resultDict route:[PursuitData user_viewTitle]];
                    //: [SVProgressHUD showMessage:desc];
                    [SVProgressHUD text:desc];
                }


            //: } failed:^(id responseObject, NSError *error) {
            } sound:^(id responseObject, NSError *error) {
                //: [SVProgressHUD showMessage:error.domain];
                [SVProgressHUD text:error.domain];
            //: }];
            }];

        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: NSLog(@"%@",error);
    //: }];
    }];

}

//: - (void)scrollsafelyReloadRowAtToMessage:(NIMMessage *)message
- (void)buttonMessage:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor noRemove:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
//        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];

        //: if (indexPath) {
        if (indexPath) {
            //: [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
        //: } else {
        } else {
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    }



}


//: - (void)doShowInputRevokePostscriptAlert:(NIMMessage *)message {
- (void)randomM:(NIMMessage *)message {
    //: UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"撤回附言"
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:[PursuitData dreamButtonValue]
                                                                     //: message:nil
                                                                     message:nil
                                                              //: preferredStyle:UIAlertControllerStyleAlert];
                                                              preferredStyle:UIAlertControllerStyleAlert];
    //: [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //: textField.placeholder = @"请输入附言";
        textField.placeholder = [PursuitData k_earlTitle];
    //: }];
    }];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[InputRed preserve:[PursuitData notiColorSumValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: UITextField *input = alertVC.textFields.firstObject;
        UITextField *input = alertVC.textFields.firstObject;
        //: [weakSelf doRevokeMessage:message postscript:input.text];
        [weakSelf ting:message disregard:input.text];
    //: }];
    }];
    //: [alertVC addAction:sure];
    [alertVC addAction:sure];
    //: [self presentViewController:alertVC animated:YES completion:nil];
    [self presentViewController:alertVC animated:YES completion:nil];
}

//: - (void)doRevokeMessage:(NIMMessage *)message postscript:(NSString *)postscript{
- (void)ting:(NIMMessage *)message disregard:(NSString *)postscript{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[PursuitData mainSessionViewValue]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [PursuitData mainSessionViewValue]: collapseId ? : @"",
    //: };
    };
    //: NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    //: option.apnsContent = [FFFLanguageManager getTextWithKey:@"撤回一条消息"];
    option.apnsContent = [InputRed preserve:[PursuitData kLengthTitle]];
    //: option.apnsPayload = payload;
    option.apnsPayload = payload;
    //: option.shouldBeCounted = ![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount];
    option.shouldBeCounted = ![[ImageTing configRefresh] custom];
    //: option.postscript = postscript;
    option.postscript = postscript;
    //: option.attach = _revokeAttach;
    option.attach = _revokeAttach;
    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
    [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"发送时间超过2分钟的消息不能被撤回"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[InputRed preserve:[PursuitData dreamShowData]] delegate:nil cancelButtonTitle:[InputRed preserve:[PursuitData notiColorSumValue]] otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"] duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[InputRed preserve:[PursuitData kSuccessName]] duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            //: userInfo[@"msg"] = message;
            userInfo[[PursuitData dream_textTitle]] = message;
            //: userInfo[@"postscript"] = postscript;
            userInfo[[PursuitData userLengthBubbleFileName]] = postscript;
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNTESDemoRevokeMessageFromMeNotication
            [[NSNotificationCenter defaultCenter] postNotificationName:appBlockData
                                                                //: object:nil
                                                                object:nil
                                                              //: userInfo:userInfo];
                                                              userInfo:userInfo];

            // 撤回的消息 作为自定义消息发出去
            //: NIMMessage *revocationMessage = [NTESSessionMsgConverter msgWithRevocationMessage:message];
            NIMMessage *revocationMessage = [ViewLine direct:message];
            //: [weakSelf sendMessage:revocationMessage];
            [weakSelf createAllow:revocationMessage];
        }
    //: }];
    }];
}

//: - (void)onRevokeMessageFromMe:(NSNotification *)note {
- (void)recentContent:(NSNotification *)note {
    //: NIMMessage *message = note.userInfo[@"msg"];
    NIMMessage *message = note.userInfo[[PursuitData dream_textTitle]];
    //: NSString *postscript = note.userInfo[@"postscript"];
    NSString *postscript = note.userInfo[[PursuitData userLengthBubbleFileName]];
    //: if (message) {
    if (message) {
        //: FFFMessageModel *model = [self uiDeleteMessage:message];
        ShowModel *model = [self image:message];
        //主动撤回场景下，将之前填充的attach内容再次填充保存
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevokedLocal:postscript]
        NIMMessage *tip = [ViewLine menu:[SessionUtil extra:postscript]
                                                 //: revokeAttach:_revokeAttach
                                                 range:_revokeAttach
                                            //: revokeCallbackExt:nil];
                                            bringHome:nil];
        //: tip.timestamp = model.messageTime;
        tip.timestamp = model.messageTime;
        //[self uiInsertMessages:@[tip]];//撤回消息不显示

        //: tip.timestamp = message.timestamp;
        tip.timestamp = message.timestamp;
        // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
    }
}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)provider:(AccountAction *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [ImageTing configRefresh].background;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[PursuitData mCountDisableName]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf image:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: BOOL isDeleteFromDB = [NTESBundleSetting sharedConfig].isDeleteMsgFromDB;
        BOOL isDeleteFromDB = [ImageTing configRefresh].chromosomalMutation;
        //: NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        //: option.removeFromDB = isDeleteFromDB;
        option.removeFromDB = isDeleteFromDB;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        //: [self uiDeleteMessage:message];
        [self image:message];
    }
}

//: - (void)onTapMenuItemMutiSelect:(FFFMediaItem *)item
- (void)airBubble:(AccountAction *)item
{
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self usufructuary:NIMKitSessionStateSelect];
}

//: - (void)onTapMenuItemAudio2Text:(FFFMediaItem *)item
- (void)fundamentalMeasure:(AccountAction *)item
{

}

//: #pragma mark - 消息发送时间截获
#pragma mark - 消息发送时间截获
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (error.code == NIMRemoteErrorCodeInBlackList)
    if (error.code == NIMRemoteErrorCodeInBlackList)
    {
        //消息打上拉黑拒收标记，方便 UI 显示
        //: message.localExt = @{@"NTESMessageRefusedTag":@(true)};
        message.localExt = @{[PursuitData kQuickData]:@(true)};
        //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];

        //插入一条 Tip 提示
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"消息已发送，但对方拒收".ntes_localized];
        NIMMessage *tip = [ViewLine view:[PursuitData notiParentNovelData].shouldLocalized];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 文本消息 && 当前用户被拉黑 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
            //: [self hitClientAntispamWithMessage:message type:@"被拉黑"];
            [self elite:message message:[PursuitData app_fileTitle]];
        }

    //: } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
    } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"您已被禁言"];
        NIMMessage *tip = [ViewLine view:[PursuitData kPursuitData]];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: [self hitClientAntispamWithMessage:message type:@"被禁言"];
            [self elite:message message:[PursuitData mUniteName]];
        }

    }
    //: else if (error.code == NIMRemoteErrorCodeTeamAccessError) {
    else if (error.code == NIMRemoteErrorCodeTeamAccessError) {

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            //: [self hitClientAntispamWithMessage:message type:@""];
            [self elite:message message:@""];
        }

    }
    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//: #pragma mark - 录音事件
#pragma mark - 录音事件
//: - (void)onRecordFailed:(NSError *)error
- (void)under:(NSError *)error
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyinshibai"] duration:2 position:CSToastPositionCenter];
    [self.view makeToast:[InputRed preserve:[PursuitData showByTitle]] duration:2 position:CSToastPositionCenter];
}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)tap:(NSString *)filepath
{
    //: NSURL *URL = [NSURL fileURLWithPath:filepath];
    NSURL *URL = [NSURL fileURLWithPath:filepath];
    //: AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    //: CMTime time = urlAsset.duration;
    CMTime time = urlAsset.duration;
    //: CGFloat mediaLength = CMTimeGetSeconds(time);
    CGFloat mediaLength = CMTimeGetSeconds(time);
    //: return mediaLength > 2;
    return mediaLength > 2;
}

//: - (void)showRecordFileNotSendReason
- (void)remote
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyintaiduan"] duration:0.2f position:CSToastPositionCenter];
    [self.view makeToast:[InputRed preserve:[PursuitData app_mediaValue]] duration:0.2f position:CSToastPositionCenter];
}

//: #pragma mark - Cell事件
#pragma mark - Cell事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event
- (BOOL)magnitudeerlayerred:(WrittenAccountLab *)event
{
    //: BOOL handled = [super onTapCell:event];
    BOOL handled = [super magnitudeerlayerred:event];
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;

    //: if ([eventName isEqualToString:FFFKitEventNameTapContent])
    if ([eventName isEqualToString:userTopData])
    {
        //: NIMMessage *message = event.messageModel.message;
        NIMMessage *message = event.messageModel.message;
        //: NSDictionary *actions = [self cellActions];
        NSDictionary *actions = [self compartmentInActions];
        //: NSString *value = actions[@(message.messageType)];
        NSString *value = actions[@(message.messageType)];
        //: if (value) {
        if (value) {
            //: SEL selector = NSSelectorFromString(value);
            SEL selector = NSSelectorFromString(value);
            //: if (selector && [self respondsToSelector:selector]) {
            if (selector && [self respondsToSelector:selector]) {
                //: SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                //: handled = YES;
                handled = YES;
            }
        }
    }
    //: else if ([eventName isEqualToString:FFFKitEventNameTapRepliedContent])
    else if ([eventName isEqualToString:dreamSumObjectText])
    {
//        handled = YES;
//        ShowModel *model = event.messageModel;
//        NIMMessage *message = model.parentMessage;
//        if (!message)
//        {
//            [self.view makeToast:@"父消息不存在".ntes_localized];
//            return handled;
//        }
//        TeamThreadViewController *vc = [[TeamThreadViewController alloc] initWithThreadMessage:message];
//        [self.navigationController pushViewController:vc animated:YES];
    }
    //: else if([eventName isEqualToString:FFFKitEventNameTapLabelLink])
    else if([eventName isEqualToString:k_onText])
    {
        //: NSString *link = event.data;
        NSString *link = event.data;
        //: [self openSafari:link];
        [self withReopen:link];
        //: handled = YES;
        handled = YES;
    }

    //: if (!handled) {
    if (!handled) {
        //: NSAssert(0, @"invalid event");
        NSAssert(0, [PursuitData app_fortunateAccountTitle]);
    }
    //: return handled;
    return handled;
}

//: - (BOOL)onTapAvatar:(NIMMessage *)message{
- (BOOL)generated:(NIMMessage *)message{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self min:message];
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    SystemViewController *vc = [[SystemViewController alloc] initWithAdd:userId];

    //进入個人名片
    //: if (self.canMemberInfo) {
    if (self.canMemberInfo) {
        //: vc.teamSetingConfig = self.teamSettingConfig;
        vc.teamSetingConfig = self.teamSettingConfig;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
    //: return YES;
    return YES;
}


//: - (BOOL)onLongPressAvatar:(NIMMessage *)message
- (BOOL)ting:(NIMMessage *)message
{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self min:message];
    //: NIMSessionType sessionType = self.session.sessionType;
    NIMSessionType sessionType = self.session.sessionType;
    //: if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
    if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
        //: && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = self.session;
        option.session = self.session;
        //: option.forbidaAlias = YES;
        option.forbidaAlias = YES;

        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:userId option:option].showName;
        NSString *nick = [[MessageContent secretResolution].provider recent:userId blue:option].showName;
        //: NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];
        NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];

        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        OpendSessionItem *item = [[OpendSessionItem alloc] init];
        //: item.uid = userId;
        item.uid = userId;
        //: item.name = nick;
        item.name = nick;
        //: [self.sessionInputView.atCache addAtItem:item];
        [self.sessionInputView.atCache view:item];

        //: [self.sessionInputView.toolBar insertText:text];
        [self.sessionInputView.toolBar scale:text];
    }
    //: return YES;
    return YES;
}

//: - (BOOL)onPressReadLabel:(NIMMessage *)message
- (BOOL)alongBy:(NIMMessage *)message
{
    //: return YES;
    return YES;
}

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message {
- (void)pin:(BOOL)selected media_strong:(NIMMessage *)message {
    //: if (!_selectedMessages) {
    if (!_selectedMessages) {
        //: _selectedMessages = [NSMutableArray array];
        _selectedMessages = [NSMutableArray array];
    }
    //: if (selected) {
    if (selected) {
        //: [_selectedMessages addObject:message];
        [_selectedMessages addObject:message];
    //: } else {
    } else {
        //: [_selectedMessages removeObject:message];
        [_selectedMessages removeObject:message];
    }
}

//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)dated:(NIMMessage *)message
{
    //: NTESThreadTalkSessionViewController *vc = [[NTESThreadTalkSessionViewController alloc] initWithThreadMessage:message];
    TeamThreadViewController *vc = [[TeamThreadViewController alloc] initWith:message];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (NSString *)messageSendSource:(NIMMessage *)message {
- (NSString *)min:(NIMMessage *)message {
    //: return message.from;
    return message.from;
}

//: #pragma mark - Cell Actions
#pragma mark - Cell Actions
//: - (void)showImage:(NIMMessage *)message
- (void)inheritance:(NIMMessage *)message
{
    //: NIMImageObject *object = message.messageObject;
    NIMImageObject *object = message.messageObject;
    //: NTESGalleryItem *item = [[NTESGalleryItem alloc] init];
    ItemText *item = [[ItemText alloc] init];
    //: item.thumbPath = [object thumbPath];
    item.thumbPath = [object thumbPath];
    //: item.imageURL = [object url];
    item.imageURL = [object url];
    //: item.name = [object displayName];
    item.name = [object displayName];
    //: item.itemId = [message messageId];
    item.itemId = [message messageId];
    //: item.size = [object size];
    item.size = [object size];
    //: item.imagePath = [object path];
    item.imagePath = [object path];

    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[DisplayAccountViewController class]]? self.session : nil;


    //: ZMONGalleryImgViewController *vc = [[ZMONGalleryImgViewController alloc] init];
    RangeViewController *vc = [[RangeViewController alloc] init];
    //: vc.imageURL = [object url];
    vc.imageURL = [object url];
    //: vc.imagePath = [object path];
    vc.imagePath = [object path];
    //: vc.message = message;
    vc.message = message;
//    NTESGalleryViewController *vc = [[NTESGalleryViewController alloc] initWithItem:item session:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];


//    if(![[NSFileManager defaultManager] fileExistsAtPath:object.thumbPath]){
//        //如果缩略图下跪了，点进看大图的时候再去下一把缩略图
//        __weak typeof(self) wself = self;
//        [[NIMSDK sharedSDK].resourceManager download:object.thumbUrl filepath:object.thumbPath progress:nil completion:^(NSError *error) {
//            if (!error) {
//                [wself uiUpdateMessage:message];
//            }
//        }];
//    }
}

//: - (void)showVideo:(NIMMessage *)message
- (void)cableTelevision:(NIMMessage *)message
{
    //: NIMVideoObject *object = message.messageObject;
    NIMVideoObject *object = message.messageObject;
    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[DisplayAccountViewController class]]? self.session : nil;

    //: NTESVideoViewItem *item = [[NTESVideoViewItem alloc] init];
    FrameSession *item = [[FrameSession alloc] init];
    //: item.path = object.path;
    item.path = object.path;
    //: item.url = object.url;
    item.url = object.url;
    //: item.session = session;
    item.session = session;
    //: item.itemId = object.message.messageId;
    item.itemId = object.message.messageId;

    //: NTESVideoViewController *playerViewController = [[NTESVideoViewController alloc] initWithVideoViewItem:item];
    WordViewController *playerViewController = [[WordViewController alloc] initWithShould:item];
    //: playerViewController.message = message;
    playerViewController.message = message;
    //: [self.navigationController pushViewController:playerViewController animated:YES];
    [self.navigationController pushViewController:playerViewController animated:YES];
    //: if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
    if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
        //如果封面图下跪了，点进视频的时候再去下一把封面图
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
        [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself uiUpdateMessage:message];
                [wself monthBar:message];
            }
        //: }];
        }];
    }
}

//: - (void)showCustom:(NIMMessage *)message
- (void)press:(NIMMessage *)message
{
   //普通的自定义消息点击事件可以在这里做哦~

    //: NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[PursuitData m_completeData]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[PursuitData mMustName]];
            //: if (type == 105) {
            if (type == 105) {
                //: NSString *type = [datatyl stringValueForKey:@"type" defaultValue:@"0"];
                NSString *type = [datatyl canValue:[PursuitData m_completeData] background:@"0"];
                //: NSString *personCardId = [datatyl objectForKey:@"personCardId"];
                NSString *personCardId = [datatyl objectForKey:[PursuitData kInfoBrokerPollutionName]];
                //: if ([type boolValue]) {
                if ([type boolValue]) {
                    //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
//                    if (!team) {
//                        [self.view makeToast:LangKey(@"group_info_activity_group_already_jiesan") duration:2.0 position:CSToastPositionCenter];
//                        return;
//                    }
                    //: if (isMyTeam) {
                    if (isMyTeam) {
                        //: NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];
                        NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];

//                        ThreadBottom *option = [[ThreadBottom alloc] init];
//                        option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//                        ProviderViewController *vc = [[JvViewController alloc] initWithTeam:team session:session option:option];
//                        vc.delegate = self;
//                        [self.navigationController pushViewController:vc animated:YES];

                        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                        DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    //: } else {
                    } else {
                        //: [self onJionTeamWithTeam:team];
                        [self section:team];
                    }
                //: } else {
                } else {

                    //: if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                    if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:personCardId];
                        SystemViewController *vc = [[SystemViewController alloc] initWithAdd:personCardId];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    }

                }
            }
        }
    }
}



//: - (void)onJionTeamWithTeam:(NIMTeam *)team {
- (void)section:(NIMTeam *)team {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if(team.joinMode == NIMTeamJoinModeNoAuth) {
    if(team.joinMode == NIMTeamJoinModeNoAuth) {
        //: [self didApplyToTeamWithMessage:@"" WithTeam:team];
        [self smart:@"" utilise:team];
    //: } else {
    } else {
        //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[FFFLanguageManager getTextWithKey:@"activity_friend_verify_info"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[InputRed preserve:[PursuitData mQuickData]] delegate:nil cancelButtonTitle:[InputRed preserve:[PursuitData notiColorSumValue]] otherButtonTitles:nil, nil];
        //: alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
        [alert menuMedia:^(NSInteger index) {
            //: NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            //: [wself didApplyToTeamWithMessage:message WithTeam:team];
            [wself smart:message utilise:team];
        //: }];
        }];
    }

}

//: - (void)handleApplyToTeam:(NSError *)error status:(NIMTeamApplyStatus)status WithId:(NSString *)cardId{
- (void)tap:(NSError *)error position:(NIMTeamApplyStatus)status pauseObject:(NSString *)cardId{
    //: if (!error) {
    if (!error) {
        //: switch (status) {
        switch (status) {
            //: case NIMTeamApplyStatusAlreadyInTeam:{
            case NIMTeamApplyStatusAlreadyInTeam:{
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
                //: break;
                break;
            }
            //: case NIMTeamApplyStatusWaitForPass:
            case NIMTeamApplyStatusWaitForPass:
                //: [self.view makeToast:@"申请成功，等待验证".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[PursuitData showColorData].titleBy duration:2.0 position:CSToastPositionCenter];
            //: default:
            default:
                //: break;
                break;
        }
    //: }else{
    }else{
        //: switch (error.code) {
        switch (error.code) {
            //: case NIMRemoteErrorCodeTeamAlreadyIn:
            case NIMRemoteErrorCodeTeamAlreadyIn:
            {
                //                [self.view makeToast:@"已经在群里" duration:2.0 position:CSToastPositionCenter];
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            }
                //: break;
                break;
            //: default:
            default:
                //: [self.view makeToast:@"群申请失败".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[PursuitData dreamYouthData].titleBy duration:2.0 position:CSToastPositionCenter];
                //: break;
                break;
        }
    }
}

//: - (void)didApplyToTeamWithMessage:(NSString *)message WithTeam:(NIMTeam *)team {
- (void)smart:(NSString *)message utilise:(NIMTeam *)team {

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: [LEEAlert alert].config
    [SendAlert hide].config
        //: .LeeAddTitle(^(UILabel *label) {
        .LeeAddTitle(^(UILabel *label) {
            //: NSString *msg = [NSString stringWithFormat:@"%@: %@",[FFFLanguageManager getTextWithKey:@"message_helper_apply_to_group"],team.teamName];
            NSString *msg = [NSString stringWithFormat:@"%@: %@",[InputRed preserve:[PursuitData showCommentInfoMakeData]],team.teamName];
            //: label.text = msg;
            label.text = msg;
            //: label.textColor = [UIColor grayColor];
            label.textColor = [UIColor grayColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(NameVideo *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"];
            action.title = [InputRed preserve:[PursuitData showRowContent]];//@"取消"
            //: action.titleColor = [UIColor grayColor];
            action.titleColor = [UIColor grayColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

            //: };
            };
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(NameVideo *action) {

            //: action.type = LEEActionTypeDefault;
            action.type = LEEActionTypeDefault;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"]; 
            action.title = [InputRed preserve:[PursuitData notiColorSumValue]]; //@"确定";
            //: action.titleColor = [UIColor redColor];
            action.titleColor = [UIColor redColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

                //: [SVProgressHUD show];
                [SVProgressHUD show];
                //: [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                                                    //: message:message
                                                    message:message
                                                 //: completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                                                 completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: [wself handleApplyToTeam:error status:applyStatus WithId:team.teamId];
                    [wself tap:error position:applyStatus pauseObject:team.teamId];
                //: }];
                }];
            //: };
            };
        //: })
        })
        //: .LeeHeaderColor([UIColor whiteColor])
        .LeeHeaderColor([UIColor whiteColor])
        //: .LeeShow();
        .LeeShow();
}


//: - (void)openSafari:(NSString *)link
- (void)withReopen:(NSString *)link
{
    //: NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    //: if (components)
    if (components)
    {
        //: if (!components.scheme)
        if (!components.scheme)
        {
            //默认添加 http
            //: components.scheme = @"http";
            components.scheme = [PursuitData dream_colorName];
        }
        //: [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
        [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
    }
}


//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)enterPersonInfoCard:(id)sender
- (void)recordCard:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    SystemViewController *vc = [[SystemViewController alloc] initWithAdd:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}


//: - (void)showDeleteSureVCWithTitle:(NSString *)title confirmBlock:(void(^)(void))confirmBlock {
- (void)show:(NSString *)title key:(void(^)(void))confirmBlock {
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: if (confirmBlock) {
        if (confirmBlock) {
            //: confirmBlock();
            confirmBlock();
        }
    //: }];
    }];
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".ntes_localized
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".shouldLocalized
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [sheet addAction:sure];
    [sheet addAction:sure];
    //: [sheet addAction:cancel];
    [sheet addAction:cancel];
    //: [self presentViewController:sheet animated:YES completion:nil];
    [self presentViewController:sheet animated:YES completion:nil];
}


//- (void)enterTeamCard:(id)sender {
//    ProviderViewController *vc = nil;
//    ThreadBottom *option = [[ThreadBottom alloc] init];
//    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//
//    if (self.session.sessionType == NIMSessionTypeTeam) {
//        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
//        if(team.type == NIMTeamTypeAdvanced){
//            vc = [[JvViewController alloc] initWithTeam:team
//                                                                 session:self.session
//                                                                  option:option];
//            vc.delegate = self;
//        }
//    }
//    if (vc) {
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//}

//: - (void)enterSuperTeamCard:(id)sender{
- (void)limit:(id)sender{

}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (NSArray *)menusItems:(NIMMessage *)message
- (NSArray *)option:(NIMMessage *)message
{
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: NSArray *defaultItems = [super menusItems:message];
    NSArray *defaultItems = [super option:message];
    //: if (defaultItems) {
    if (defaultItems) {
        //: [items addObjectsFromArray:defaultItems];
        [items addObjectsFromArray:defaultItems];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([SessionUtil dataConverter:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"转发"] action:@selector(forwardMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[InputRed preserve:@"转发"] action:@selector(oned:)]];
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".ntes_localized action:@selector(multiSelect:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".shouldLocalized action:@selector(firsts:)]];
    }

    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([SessionUtil row:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"撤回"] action:@selector(revokeMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[InputRed preserve:@"撤回"] action:@selector(endueMessage:)]];
    }

    //: return items;
    return items;

}

//: - (void)cancelMessage:(id)sender {
- (void)cancelMessage:(id)sender {
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
    [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
}

//: - (void)audio2Text:(id)sender
- (void)month:(id)sender
{
//    NIMMessage *message = [self messageForMenu];
//    __weak typeof(self) wself = self;
//    NTESAudio2TextViewController *vc = [[NTESAudio2TextViewController alloc] initWithMessage:message];
//    vc.completeHandler = ^(void){
//        [wself uiUpdateMessage:message];
//    };
//    [self presentViewController:vc
//                       animated:YES
//                     completion:nil];
}

//: - (void)deleteMsg:(id)sender
- (void)net:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [ImageTing configRefresh].background;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[PursuitData mCountDisableName]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf image:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: [self uiDeleteMessage:message];
        [self image:message];
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
    }

}

//: #pragma mark - 转发
#pragma mark - 转发
//: - (void)doMergerForwardToSession:(NIMSession *)session {
- (void)production:(NIMSession *)session {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NTESMergeForwardTask *task = [_mergeForwardSession forwardTaskWithMessages:_selectedMessages process:nil completion:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
    ActionTask *task = [_mergeForwardSession sessionOff:_selectedMessages messages:nil value:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
        //: if (error) {
        if (error) {
            //: NSString *msg = [NSString stringWithFormat:@"%@：%zd",@"消息合并转发失败".ntes_localized, error.code];
            NSString *msg = [NSString stringWithFormat:@"%@：%zd",[PursuitData showMustValue].shouldLocalized, error.code];
            //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: } else {
        } else {
            //: [weakSelf forwardMessage:message toSession:session];
            [weakSelf showBubble:message top:session];
        }
    //: }];
    }];
    //: [task resume];
    [task date];
}

//: - (void)switchUIWithSessionState:(NIMKitSessionState)state {
- (void)usufructuary:(NIMKitSessionState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMKitSessionStateSelect:
        case NIMKitSessionStateSelect:
        {
            //: [self setupSelectedNav];
            [self green];
            //: [self setSessionState:NIMKitSessionStateSelect];
            [self setTing:NIMKitSessionStateSelect];
            //: [self.view addSubview:self.mulSelectedSureBar];
            [self.view addSubview:self.mulSelectedSureBar];
            //: break;
            break;
        }
        //: case NIMKitSessionStateNormal:
        case NIMKitSessionStateNormal:
        //: default:
        default:
        {
            //: [self.mulSelectedSureBar removeFromSuperview];
            [self.mulSelectedSureBar removeFromSuperview];
            //: [self setSessionState:NIMKitSessionStateNormal];
            [self setTing:NIMKitSessionStateNormal];
//            [self setupNormalNav];
            //: _selectedMessages = nil;
            _selectedMessages = nil;
            //: break;
            break;
        }
    }
}

//: - (void)cancelSelected:(id)sender {
- (void)itemScratch:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
    [self usufructuary:NIMKitSessionStateNormal];
}

//: - (void)confirmSelected:(id)sender {
- (void)messageBe:(id)sender {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
    [self timeSearch:^(NIMSession *targetSession) {
        //转发批量消息
        //: [weakSelf doMergerForwardToSession:targetSession];
        [weakSelf production:targetSession];
        //返回正常页面
        //: [weakSelf switchUIWithSessionState:NIMKitSessionStateNormal];
        [weakSelf usufructuary:NIMKitSessionStateNormal];
    //: }];
    }];
}

//: - (void)confirmDelete:(id)sender
- (void)tipIcon:(id)sender
{
    //: [self showDeleteSureVCWithTitle:@"确定删除？".ntes_localized confirmBlock:^{
    [self show:[PursuitData m_seriesHighlightTitle].shouldLocalized key:^{
        //: [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
        [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
                                                              //: exts: nil
                                                              exts: nil
                                                        //: completion:^(NSError * _Nullable error) {
                                                        completion:^(NSError * _Nullable error) {
            //: [self.view makeToast:error.localizedDescription ?: @"删除成功".ntes_localized];
            [self.view makeToast:error.localizedDescription ?: [PursuitData app_accountImageName].shouldLocalized];
            //: if (!error) {
            if (!error) {
                //: [self.interactor resetMessages:^(NSError *error) {
                [self.interactor sendBlue:^(NSError *error) {
                    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
                    [self usufructuary:NIMKitSessionStateNormal];
                //: }];
                }];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (void)multiSelect:(id)sender {
- (void)firsts:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self usufructuary:NIMKitSessionStateSelect];
}

//: - (void)forwardMessage:(id)sender
- (void)oned:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: message.setting.teamReceiptEnabled = NO;
    message.setting.teamReceiptEnabled = NO;


//    __weak typeof(self) weakSelf = self;
//    [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
//        [weakSelf forwardMessage:message toSession:targetSession];
//    }];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    RecentMessage *config = [[RecentMessage alloc] init];
    //: config.needMutiSelected = NO;
    config.needMutiSelected = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
    vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        //: NSString *userId = array.firstObject;
        NSString *userId = array.firstObject;
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [self forwardMessage:message toSession:session];
        [self showBubble:message top:session];
    //: };
    };
    //: [vc show];
    [vc high];
}

//: - (void)selectForwardSessionCompletion:(void (^)(NIMSession *targetSession))completion {
- (void)timeSearch:(void (^)(NIMSession *targetSession))completion {
    //: UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] destructiveButtonTitle:nil otherButtonTitles:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"], [FFFLanguageManager getTextWithKey:@"contact_fragment_group"], [FFFLanguageManager getTextWithKey:@"message_super_team"], nil];
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[InputRed preserve:[PursuitData userTableName]] delegate:nil cancelButtonTitle:[InputRed preserve:[PursuitData showRowContent]] destructiveButtonTitle:nil otherButtonTitles:[InputRed preserve:[PursuitData k_needData]], [InputRed preserve:[PursuitData k_drugValue]], [InputRed preserve:[PursuitData dreamRowName]], nil];
    //: [sheet showInView:self.view completionHandler:^(NSInteger index) {
    [sheet search:self.view containerHandler:^(NSInteger index) {
        //: switch (index) {
        switch (index) {
            //: case 0:{
            case 0:{
                //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
                RecentMessage *config = [[RecentMessage alloc] init];
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *userId = array.firstObject;
                    NSString *userId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc high];
            }
                //: break;
                break;
            //: case 1:{
            case 1:{
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                MagnitudeRecord *config = [[MagnitudeRecord alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc high];
            }
                //: break;
                break;
            //: case 2: {
            case 2: {
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                MagnitudeRecord *config = [[MagnitudeRecord alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc high];
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];
}


//: - (void)revokeMessage:(id)sender
- (void)endueMessage:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[PursuitData mainSessionViewValue]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [PursuitData mainSessionViewValue]: collapseId ? : @"",
    //: };
    };

    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message
    [[NIMSDK sharedSDK].chatManager revokeMessage:message
                                      //: apnsContent:@"撤回一条消息"
                                      apnsContent:[PursuitData kLengthTitle]
                                      //: apnsPayload:payload
                                      apnsPayload:payload
                                  //: shouldBeCounted:![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount]
                                  shouldBeCounted:![[ImageTing configRefresh] custom]
                                         //: completion:^(NSError * _Nullable error)
                                         completion:^(NSError * _Nullable error)
    {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"发送时间超过2分钟的消息，不能被撤回".ntes_localized delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[PursuitData app_messageValue].shouldLocalized delegate:nil cancelButtonTitle:@"确定".shouldLocalized otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"消息撤回失败，请重试".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[PursuitData showHideContent].shouldLocalized duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: FFFMessageModel *model = [weakSelf uiDeleteMessage:message];
            ShowModel *model = [weakSelf image:message];
            //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:nil]];
            NIMMessage *tip = [ViewLine view:[SessionUtil groundBubble:nil]];
            //: tip.timestamp = model.messageTime;
            tip.timestamp = model.messageTime;
            //[weakSelf uiInsertMessages:@[tip]];//撤回消息不显示

            //: tip.timestamp = message.timestamp;
            tip.timestamp = message.timestamp;
            // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
            //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
            [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
        }
    //: }];
    }];
}

 //: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session
 - (void)showBubble:(NIMMessage *)message top:(NIMSession *)session
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[MessageContent secretResolution] recent:session.sessionId blue:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[MessageContent secretResolution] info:session.sessionId comment:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[MessageContent secretResolution] item:session.sessionId pit:nil].showName;
    }
    //: else {
    else {
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_confirm_forwarded_to"], name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [InputRed preserve:[PursuitData showModeName]], name];
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"确认转发".ntes_localized message:tip delegate:nil cancelButtonTitle:@"取消".ntes_localized otherButtonTitles:@"确认".ntes_localized, nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[PursuitData showTargetValue].shouldLocalized message:tip delegate:nil cancelButtonTitle:@"取消".shouldLocalized otherButtonTitles:@"确认".shouldLocalized, nil];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert menuMedia:^(NSInteger index) {
        //: if(index == 1)
        if(index == 1)
        {
            //: NSError *error = nil;
            NSError *error = nil;
            //: if (message.session) {
            if (message.session) {
                //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            }

            //: if (error) {
            if (error) {
                //: NSString *msg = [NSString stringWithFormat:@"%@.code:%zd", @"转发失败".ntes_localized, error.code];
                NSString *msg = [NSString stringWithFormat:[PursuitData userYouthLabelValue], [PursuitData userPlanetValue].shouldLocalized, error.code];
                //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"已发送".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[PursuitData mainSessionTitle].shouldLocalized duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}


//: - (BOOL)checkRTSCondition
- (BOOL)viewSecret
{
    //: BOOL result = YES;
    BOOL result = YES;

    //: if (![[Reachability reachabilityForInternetConnection] isReachable])
    if (![[Reachability reachabilityForInternetConnection] isReachable])
    {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[PursuitData noti_nameData]] duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    {
        //: [self.view makeToast:@"不能和自己通话哦".ntes_localized duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[PursuitData user_illegalTitle].shouldLocalized duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[InputRed preserve:[PursuitData mainTowerAtValue]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: if (self.session.sessionType == NIMSessionTypeSuperTeam)
    if (self.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[InputRed preserve:[PursuitData mainTowerAtValue]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: return result;
    return result;
}

//: - (NSDictionary *)cellActions
- (NSDictionary *)compartmentInActions
{
    //: static NSDictionary *actions = nil;
    static NSDictionary *actions = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: actions = @{@(NIMMessageTypeImage) : @"showImage:",
        actions = @{@(NIMMessageTypeImage) : [PursuitData dreamUniteValue],
                    //: @(NIMMessageTypeVideo) : @"showVideo:",
                    @(NIMMessageTypeVideo) : [PursuitData user_sizeText],
                    //: @(NIMMessageTypeLocation) : @"showLocation:",
                    @(NIMMessageTypeLocation) : [PursuitData appMakeWithInfoValue],
                    //: @(NIMMessageTypeFile) : @"showFile:",
                    @(NIMMessageTypeFile) : [PursuitData show_sendData],
                    //: @(NIMMessageTypeCustom): @"showCustom:"};
                    @(NIMMessageTypeCustom): [PursuitData dream_threadDrugValue]};
    //: });
    });
    //: return actions;
    return actions;
}

//: - (FFFKitMediaFetcher *)mediaFetcher
- (ValueAction *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[FFFKitMediaFetcher alloc] init];
        _mediaFetcher = [[ValueAction alloc] init];
        //: _mediaFetcher.limit = 1;
        _mediaFetcher.limit = 1;
        //: _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//- (void)setupNormalNav {
//    
//    UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterTeamCard setImage:[UIImage imageNamed:@"icon_session_info_pressed"] forState:UIControlStateHighlighted];
//    [enterTeamCard sizeToFit];
//    UIBarButtonItem *enterTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterTeamCard];
//
//    UIButton *enterSuperTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterSuperTeamCard addTarget:self action:@selector(enterSuperTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterSuperTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterSuperTeamCard sizeToFit];
//    UIBarButtonItem *enterSuperTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterSuperTeamCard];
//
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
//    [infoBtn setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [infoBtn sizeToFit];
//    UIBarButtonItem *enterUInfoItem = [[UIBarButtonItem alloc] initWithCustomView:infoBtn];
//
//    UIButton *historyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [historyBtn addTarget:self action:@selector(enterHistory:) forControlEvents:UIControlEventTouchUpInside];
//    [historyBtn setImage:[UIImage imageNamed:@"icon_history_normal"] forState:UIControlStateNormal];
//    [historyBtn sizeToFit];
//    //UIBarButtonItem *historyButtonItem = [[UIBarButtonItem alloc] initWithCustomView:historyBtn];
//
//    enterTeamCardItem.tintColor = [UIColor whiteColor];
//    enterUInfoItem.tintColor = [UIColor whiteColor];
//    enterSuperTeamCardItem.tintColor = [UIColor whiteColor];
//
//    if (self.session.sessionType == NIMSessionTypeTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterTeamCardItem];
//    }
//    else if (self.session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterSuperTeamCardItem];
//    }
//    else if(self.session.sessionType == NIMSessionTypeP2P)
//    {
//        if ([self.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
//        {
//            //self.navigationItem.rightBarButtonItems = @[historyButtonItem];
//        }
//        else
//        {
//            self.navigationItem.rightBarButtonItems = @[enterUInfoItem];
//        }
//    }
//    self.navigationItem.leftBarButtonItem.customView.hidden = NO;
//    self.navigationItem.hidesBackButton = NO;
//    [self.mulSelectCancelBtn removeFromSuperview];
//}

//: - (void)setupSelectedNav {
- (void)green {
    //: self.navigationItem.rightBarButtonItems = nil;
    self.navigationItem.rightBarButtonItems = nil;
    //: self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    //: self.navigationItem.hidesBackButton = YES;
    self.navigationItem.hidesBackButton = YES;
    //: [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
    [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
}

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: return !self.currentSingleSnapView;
    return !self.currentSingleSnapView;
}

//: - (NTESMulSelectFunctionBar *)mulSelectedSureBar {
- (ThrowView *)mulSelectedSureBar {
    //: if (!_mulSelectedSureBar) {
    if (!_mulSelectedSureBar) {
        //: _mulSelectedSureBar = [[NTESMulSelectFunctionBar alloc] initWithFrame:self.sessionInputView.frame];
        _mulSelectedSureBar = [[ThrowView alloc] initWithFrame:self.sessionInputView.frame];
        //: [_mulSelectedSureBar.sureBtn addTarget:self
        [_mulSelectedSureBar.sureBtn addTarget:self
                                        //: action:@selector(confirmSelected:)
                                        action:@selector(messageBe:)
                              //: forControlEvents:UIControlEventTouchUpInside];
                              forControlEvents:UIControlEventTouchUpInside];
        //: [_mulSelectedSureBar.deleteButton addTarget:self
        [_mulSelectedSureBar.deleteButton addTarget:self
                                             //: action:@selector(confirmDelete:)
                                             action:@selector(tipIcon:)
                                   //: forControlEvents:UIControlEventTouchUpInside];
                                   forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _mulSelectedSureBar;
    return _mulSelectedSureBar;
}

//: - (UIButton *)mulSelectCancelBtn {
- (UIButton *)mulSelectCancelBtn {
    //: if (!_mulSelectCancelBtn) {
    if (!_mulSelectCancelBtn) {
        //: UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [cancelBtn addTarget:self action:@selector(cancelSelected:) forControlEvents:UIControlEventTouchUpInside];
        [cancelBtn addTarget:self action:@selector(itemScratch:) forControlEvents:UIControlEventTouchUpInside];
        //: [cancelBtn setTitle:@"取消".ntes_localized forState:UIControlStateNormal];
        [cancelBtn setTitle:@"取消".shouldLocalized forState:UIControlStateNormal];
        //: [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        //: UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        //: [cancelBtn setTitleEdgeInsets:titleInsets];
        [cancelBtn setTitleEdgeInsets:titleInsets];
        //: cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        //: _mulSelectCancelBtn = cancelBtn;
        _mulSelectCancelBtn = cancelBtn;
    }
    //: return _mulSelectCancelBtn;
    return _mulSelectCancelBtn;
}



//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)nameMessage:(NIMMessage *)message
{
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;


    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification ||
        message.messageType == NIMMessageTypeNotification ||
        //: [self cancelMenuByMessageObject:messageObject])
        [self scoff:messageObject])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)cancelMenuByMessageObject:(id<NIMMessageObject>) object
- (BOOL)scoff:(id<NIMMessageObject>) object
{
    //: if ([object isKindOfClass:[NIMCustomObject class]])
    if ([object isKindOfClass:[NIMCustomObject class]])
    {
        //: NIMCustomObject *custom = object;
        NIMCustomObject *custom = object;
        //: id<NIMCustomAttachment> attachment = custom.attachment;
        id<NIMCustomAttachment> attachment = custom.attachment;
        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
        if ([attachment isKindOfClass:[ClickText class]])
        {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (UILabel *)invalid_tip {
- (UILabel *)invalid_tip {
    //: if (!_invalid_tip) {
    if (!_invalid_tip) {
        //: _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 50)];
        _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop]), [[UIScreen mainScreen] bounds].size.width, 50)];
        //: _invalid_tip.backgroundColor = [UIColor colorWithHexString:@"#FEFECA"];
        _invalid_tip.backgroundColor = [UIColor ground:[PursuitData k_sliceTitle]];
        //: _invalid_tip.textColor = [UIColor colorWithHexString:@"#F6B53E"];
        _invalid_tip.textColor = [UIColor ground:[PursuitData appMustText]];
        //: _invalid_tip.text = [FFFLanguageManager getTextWithKey:@"app_team_invalid_tip"]; 
        _invalid_tip.text = [InputRed preserve:[PursuitData showMakeText]]; //
        //: _invalid_tip.textAlignment = NSTextAlignmentCenter;
        _invalid_tip.textAlignment = NSTextAlignmentCenter;
        //: _invalid_tip.hidden = YES;
        _invalid_tip.hidden = YES;

        //: [self.view addSubview:_invalid_tip];
        [self.view addSubview:_invalid_tip];
    }
    //: return _invalid_tip;
    return _invalid_tip;
}

//: - (ZMONTranslateView *)translateView
- (TextCleanView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[TextCleanView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)joinned:(NSString *)reason
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: self.userId = message.from;
    self.userId = message.from;
    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: if(isMyFriend){
    if(isMyFriend){
        //: [self.view addSubview:self.reprotNextView];
        [self.view addSubview:self.reprotNextView];
        //: [self.reprotNextView animationShow];
        [self.reprotNextView withShow];
    //: }else{
    }else{
        //: [self.view addSubview:self.reprotHisNextView];
        [self.view addSubview:self.reprotHisNextView];
        //: [self.reprotHisNextView animationShow];
        [self.reprotHisNextView visible];
    }

        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"contact"] = reason;
        dict[[PursuitData k_yaTitle]] = reason;
        //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
        [TitleManager bringHome:[NSString stringWithFormat:[PursuitData notiBrokerName]] militaryQuarters:dict comment:NO shareFailed:^(id responseObject) {
//            [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
        //: } failed:^(id responseObject, NSError *error) {
        } time:^(id responseObject, NSError *error) {
        //: }];
        }];

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
                       [self.view makeToast:[InputRed preserve:[PursuitData m_mediaHandleData]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[InputRed preserve:[PursuitData kBalanceSeverValue]] duration:2.0f position:CSToastPositionCenter];

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

        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

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
                [self.view makeToast:[InputRed preserve:[PursuitData notiMakeData]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[InputRed preserve:[PursuitData showReadValue]] duration:2.0f position:CSToastPositionCenter];
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



        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];

//            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
//            options.removeOtherClients = YES;
//            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
//                if (error) {
//                    return;
//                }
//                [self.navigationController popToRootViewControllerAnimated:YES];
//
//            }];
        }


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

//: - (ZMONReportHisView *)reprotHisNextView
- (OnView *)reprotHisNextView
{
    //: if(!_reprotHisNextView){
    if(!_reprotHisNextView){
        //: _reprotHisNextView = [[ZMONReportHisView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotHisNextView = [[OnView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotHisNextView.delegate = self;
        _reprotHisNextView.delegate = self;
    }
    //: return _reprotHisNextView;
    return _reprotHisNextView;

}


//: @end
@end