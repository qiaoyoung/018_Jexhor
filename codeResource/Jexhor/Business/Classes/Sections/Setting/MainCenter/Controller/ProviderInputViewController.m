
#import <Foundation/Foundation.h>

@interface ShouldData : NSObject

@end

@implementation ShouldData

+ (Byte *)ShouldDataToCache:(Byte *)data {
    int handleTitle = data[0];
    Byte disableTitle = data[1];
    int oldViewAt = data[2];
    for (int i = oldViewAt; i < oldViewAt + handleTitle; i++) {
        int value = data[i] - disableTitle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[oldViewAt + handleTitle] = 0;
    return data + oldViewAt;
}

+ (NSString *)StringFromShouldData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShouldDataToCache:data]];
}

//: Estonia
+ (NSString *)kTitleText {
    /* static */ NSString *kTitleText = nil;
    if (!kTitleText) {
        Byte value[] = {7, 98, 13, 216, 127, 217, 148, 83, 98, 9, 59, 210, 32, 167, 213, 214, 209, 208, 203, 195, 238};
        kTitleText = [self StringFromShouldData:value];
    }
    return kTitleText;
}

//: Sweden
+ (NSString *)k_textTitle {
    /* static */ NSString *k_textTitle = nil;
    if (!k_textTitle) {
        Byte value[] = {6, 83, 11, 167, 39, 30, 229, 207, 8, 203, 114, 166, 202, 184, 183, 184, 193, 200};
        k_textTitle = [self StringFromShouldData:value];
    }
    return k_textTitle;
}

//: flag_hr
+ (NSString *)m_colorTitle {
    /* static */ NSString *m_colorTitle = nil;
    if (!m_colorTitle) {
        Byte value[] = {7, 90, 12, 200, 200, 161, 2, 254, 4, 16, 56, 185, 192, 198, 187, 193, 185, 194, 204, 112};
        m_colorTitle = [self StringFromShouldData:value];
    }
    return m_colorTitle;
}

//: Língua portuguesa
+ (NSString *)userMessageText {
    /* static */ NSString *userMessageText = nil;
    if (!userMessageText) {
        Byte value[] = {18, 51, 9, 21, 105, 19, 189, 228, 89, 127, 246, 224, 161, 154, 168, 148, 83, 163, 162, 165, 167, 168, 154, 168, 152, 166, 148, 54};
        userMessageText = [self StringFromShouldData:value];
    }
    return userMessageText;
}

//: flag
+ (NSString *)noti_scaleContentTitle {
    /* static */ NSString *noti_scaleContentTitle = nil;
    if (!noti_scaleContentTitle) {
        Byte value[] = {4, 45, 4, 218, 147, 153, 142, 148, 192};
        noti_scaleContentTitle = [self StringFromShouldData:value];
    }
    return noti_scaleContentTitle;
}

//: flag_sa
+ (NSString *)noti_changeName {
    /* static */ NSString *noti_changeName = nil;
    if (!noti_changeName) {
        Byte value[] = {7, 30, 11, 76, 130, 81, 200, 13, 32, 23, 182, 132, 138, 127, 133, 125, 145, 127, 119};
        noti_changeName = [self StringFromShouldData:value];
    }
    return noti_changeName;
}

//: flag_hi
+ (NSString *)userImageSendShowName {
    /* static */ NSString *userImageSendShowName = nil;
    if (!userImageSendShowName) {
        Byte value[] = {7, 90, 13, 165, 36, 123, 5, 16, 186, 109, 99, 202, 116, 192, 198, 187, 193, 185, 194, 195, 82};
        userImageSendShowName = [self StringFromShouldData:value];
    }
    return userImageSendShowName;
}

//: flag_Be
+ (NSString *)m_buttonTitle {
    /* static */ NSString *m_buttonTitle = nil;
    if (!m_buttonTitle) {
        Byte value[] = {7, 37, 10, 148, 149, 198, 238, 223, 172, 51, 139, 145, 134, 140, 132, 103, 138, 126};
        m_buttonTitle = [self StringFromShouldData:value];
    }
    return m_buttonTitle;
}

//: Austria
+ (NSString *)mainRowShowValue {
    /* static */ NSString *mainRowShowValue = nil;
    if (!mainRowShowValue) {
        Byte value[] = {7, 4, 13, 25, 62, 194, 245, 79, 234, 43, 93, 161, 144, 69, 121, 119, 120, 118, 109, 101, 216};
        mainRowShowValue = [self StringFromShouldData:value];
    }
    return mainRowShowValue;
}

//: flag_th
+ (NSString *)main_pressMessageValue {
    /* static */ NSString *main_pressMessageValue = nil;
    if (!main_pressMessageValue) {
        Byte value[] = {7, 86, 7, 25, 222, 36, 244, 188, 194, 183, 189, 181, 202, 190, 48};
        main_pressMessageValue = [self StringFromShouldData:value];
    }
    return main_pressMessageValue;
}

//: Romania
+ (NSString *)app_messageName {
    /* static */ NSString *app_messageName = nil;
    if (!app_messageName) {
        Byte value[] = {7, 63, 7, 128, 202, 192, 101, 145, 174, 172, 160, 173, 168, 160, 84};
        app_messageName = [self StringFromShouldData:value];
    }
    return app_messageName;
}

//: Hungary
+ (NSString *)noti_valueTitle {
    /* static */ NSString *noti_valueTitle = nil;
    if (!noti_valueTitle) {
        Byte value[] = {7, 5, 11, 205, 97, 111, 224, 54, 67, 209, 45, 77, 122, 115, 108, 102, 119, 126, 227};
        noti_valueTitle = [self StringFromShouldData:value];
    }
    return noti_valueTitle;
}

//: flag_Au
+ (NSString *)app_mediaSessionWithValue {
    /* static */ NSString *app_mediaSessionWithValue = nil;
    if (!app_mediaSessionWithValue) {
        Byte value[] = {7, 13, 13, 66, 144, 54, 150, 116, 164, 125, 35, 190, 160, 115, 121, 110, 116, 108, 78, 130, 208};
        app_mediaSessionWithValue = [self StringFromShouldData:value];
    }
    return app_mediaSessionWithValue;
}

//: flag_da
+ (NSString *)dreamViewTagSessionData {
    /* static */ NSString *dreamViewTagSessionData = nil;
    if (!dreamViewTagSessionData) {
        Byte value[] = {7, 67, 5, 220, 21, 169, 175, 164, 170, 162, 167, 164, 69};
        dreamViewTagSessionData = [self StringFromShouldData:value];
    }
    return dreamViewTagSessionData;
}

//: flag_et
+ (NSString *)app_viewName {
    /* static */ NSString *app_viewName = nil;
    if (!app_viewName) {
        Byte value[] = {7, 50, 12, 129, 169, 51, 99, 7, 199, 106, 3, 188, 152, 158, 147, 153, 145, 151, 166, 30};
        app_viewName = [self StringFromShouldData:value];
    }
    return app_viewName;
}

//: flag_pl
+ (NSString *)main_viewLimitData {
    /* static */ NSString *main_viewLimitData = nil;
    if (!main_viewLimitData) {
        Byte value[] = {7, 36, 5, 149, 215, 138, 144, 133, 139, 131, 148, 144, 31};
        main_viewLimitData = [self StringFromShouldData:value];
    }
    return main_viewLimitData;
}

//: Denmark
+ (NSString *)mainAddName {
    /* static */ NSString *mainAddName = nil;
    if (!mainAddName) {
        Byte value[] = {7, 24, 9, 183, 85, 181, 224, 28, 98, 92, 125, 134, 133, 121, 138, 131, 78};
        mainAddName = [self StringFromShouldData:value];
    }
    return mainAddName;
}

//: Latvia
+ (NSString *)k_hideName {
    /* static */ NSString *k_hideName = nil;
    if (!k_hideName) {
        Byte value[] = {6, 85, 7, 78, 194, 217, 158, 161, 182, 201, 203, 190, 182, 32};
        k_hideName = [self StringFromShouldData:value];
    }
    return k_hideName;
}

//: Czech Republic
+ (NSString *)mSizeName {
    /* static */ NSString *mSizeName = nil;
    if (!mSizeName) {
        Byte value[] = {14, 4, 9, 117, 192, 204, 47, 79, 103, 71, 126, 105, 103, 108, 36, 86, 105, 116, 121, 102, 112, 109, 103, 118};
        mSizeName = [self StringFromShouldData:value];
    }
    return mSizeName;
}

//: system_change_language
+ (NSString *)mainColorByData {
    /* static */ NSString *mainColorByData = nil;
    if (!mainColorByData) {
        Byte value[] = {22, 93, 8, 98, 179, 120, 194, 46, 208, 214, 208, 209, 194, 202, 188, 192, 197, 190, 203, 196, 194, 188, 201, 190, 203, 196, 210, 190, 196, 194, 169};
        mainColorByData = [self StringFromShouldData:value];
    }
    return mainColorByData;
}

//: Greece
+ (NSString *)app_placeName {
    /* static */ NSString *app_placeName = nil;
    if (!app_placeName) {
        Byte value[] = {6, 59, 10, 200, 46, 11, 220, 134, 197, 44, 130, 173, 160, 160, 158, 160, 209};
        app_placeName = [self StringFromShouldData:value];
    }
    return app_placeName;
}

//: Lithuania
+ (NSString *)user_makeValue {
    /* static */ NSString *user_makeValue = nil;
    if (!user_makeValue) {
        Byte value[] = {9, 49, 11, 38, 44, 101, 175, 69, 59, 186, 93, 125, 154, 165, 153, 166, 146, 159, 154, 146, 221};
        user_makeValue = [self StringFromShouldData:value];
    }
    return user_makeValue;
}

//: Croatia
+ (NSString *)main_thanData {
    /* static */ NSString *main_thanData = nil;
    if (!main_thanData) {
        Byte value[] = {7, 94, 12, 33, 132, 31, 234, 12, 7, 179, 227, 241, 161, 208, 205, 191, 210, 199, 191, 71};
        main_thanData = [self StringFromShouldData:value];
    }
    return main_thanData;
}

//: flag_lb
+ (NSString *)app_sendName {
    /* static */ NSString *app_sendName = nil;
    if (!app_sendName) {
        Byte value[] = {7, 94, 10, 145, 180, 244, 98, 83, 62, 220, 196, 202, 191, 197, 189, 202, 192, 248};
        app_sendName = [self StringFromShouldData:value];
    }
    return app_sendName;
}

//: En français
+ (NSString *)main_infoValue {
    /* static */ NSString *main_infoValue = nil;
    if (!main_infoValue) {
        Byte value[] = {12, 95, 6, 21, 242, 137, 164, 205, 127, 197, 209, 192, 205, 34, 6, 192, 200, 210, 226};
        main_infoValue = [self StringFromShouldData:value];
    }
    return main_infoValue;
}

//: flag_nl
+ (NSString *)kRowTitle {
    /* static */ NSString *kRowTitle = nil;
    if (!kRowTitle) {
        Byte value[] = {7, 59, 6, 51, 231, 23, 161, 167, 156, 162, 154, 169, 167, 196};
        kRowTitle = [self StringFromShouldData:value];
    }
    return kRowTitle;
}

//: flag_ro
+ (NSString *)mainShowText {
    /* static */ NSString *mainShowText = nil;
    if (!mainShowText) {
        Byte value[] = {7, 3, 7, 210, 185, 217, 254, 105, 111, 100, 106, 98, 117, 114, 189};
        mainShowText = [self StringFromShouldData:value];
    }
    return mainShowText;
}

//: Belgium-nl
+ (NSString *)appNameInfoText {
    /* static */ NSString *appNameInfoText = nil;
    if (!appNameInfoText) {
        Byte value[] = {10, 80, 5, 250, 194, 146, 181, 188, 183, 185, 197, 189, 125, 190, 188, 42};
        appNameInfoText = [self StringFromShouldData:value];
    }
    return appNameInfoText;
}

//: flag_spa
+ (NSString *)dreamThanMediaData {
    /* static */ NSString *dreamThanMediaData = nil;
    if (!dreamThanMediaData) {
        Byte value[] = {8, 60, 8, 38, 55, 30, 247, 140, 162, 168, 157, 163, 155, 175, 172, 157, 208};
        dreamThanMediaData = [self StringFromShouldData:value];
    }
    return dreamThanMediaData;
}

//: spa
+ (NSString *)user_tableText {
    /* static */ NSString *user_tableText = nil;
    if (!user_tableText) {
        Byte value[] = {3, 23, 9, 161, 244, 60, 135, 244, 218, 138, 135, 120, 148};
        user_tableText = [self StringFromShouldData:value];
    }
    return user_tableText;
}

//: hant
+ (NSString *)app_buttonSendData {
    /* static */ NSString *app_buttonSendData = nil;
    if (!app_buttonSendData) {
        Byte value[] = {4, 31, 4, 61, 135, 128, 141, 147, 216};
        app_buttonSendData = [self StringFromShouldData:value];
    }
    return app_buttonSendData;
}

//: Poland
+ (NSString *)dream_successHandleName {
    /* static */ NSString *dream_successHandleName = nil;
    if (!dream_successHandleName) {
        Byte value[] = {6, 61, 10, 120, 168, 74, 121, 15, 104, 169, 141, 172, 169, 158, 171, 161, 243};
        dream_successHandleName = [self StringFromShouldData:value];
    }
    return dream_successHandleName;
}

//: flag_zh
+ (NSString *)kMediaThreadTitle {
    /* static */ NSString *kMediaThreadTitle = nil;
    if (!kMediaThreadTitle) {
        Byte value[] = {7, 55, 11, 226, 18, 21, 34, 148, 71, 189, 209, 157, 163, 152, 158, 150, 177, 159, 233};
        kMediaThreadTitle = [self StringFromShouldData:value];
    }
    return kMediaThreadTitle;
}

//: Türkçe
+ (NSString *)main_itemDisableData {
    /* static */ NSString *main_itemDisableData = nil;
    if (!main_itemDisableData) {
        Byte value[] = {8, 82, 4, 247, 166, 21, 14, 196, 189, 21, 249, 183, 132};
        main_itemDisableData = [self StringFromShouldData:value];
    }
    return main_itemDisableData;
}

//: Title
+ (NSString *)notiCommentValue {
    /* static */ NSString *notiCommentValue = nil;
    if (!notiCommentValue) {
        Byte value[] = {5, 19, 13, 244, 125, 98, 145, 238, 58, 195, 143, 198, 146, 103, 124, 135, 127, 120, 130};
        notiCommentValue = [self StringFromShouldData:value];
    }
    return notiCommentValue;
}

//: English
+ (NSString *)kSuccessTitle {
    /* static */ NSString *kSuccessTitle = nil;
    if (!kSuccessTitle) {
        Byte value[] = {7, 64, 10, 114, 87, 23, 202, 107, 39, 18, 133, 174, 167, 172, 169, 179, 168, 126};
        kSuccessTitle = [self StringFromShouldData:value];
    }
    return kSuccessTitle;
}

//: Finland
+ (NSString *)dreamOldText {
    /* static */ NSString *dreamOldText = nil;
    if (!dreamOldText) {
        Byte value[] = {7, 33, 6, 193, 239, 26, 103, 138, 143, 141, 130, 143, 133, 76};
        dreamOldText = [self StringFromShouldData:value];
    }
    return dreamOldText;
}

//: Netherlands
+ (NSString *)show_shouldContent {
    /* static */ NSString *show_shouldContent = nil;
    if (!show_shouldContent) {
        Byte value[] = {11, 71, 13, 216, 200, 63, 135, 45, 201, 240, 75, 185, 160, 149, 172, 187, 175, 172, 185, 179, 168, 181, 171, 186, 144};
        show_shouldContent = [self StringFromShouldData:value];
    }
    return show_shouldContent;
}

//: flag_cy
+ (NSString *)dream_disableTitle {
    /* static */ NSString *dream_disableTitle = nil;
    if (!dream_disableTitle) {
        Byte value[] = {7, 1, 13, 45, 140, 46, 162, 154, 223, 132, 230, 238, 205, 103, 109, 98, 104, 96, 100, 122, 199};
        dream_disableTitle = [self StringFromShouldData:value];
    }
    return dream_disableTitle;
}

//: Malta
+ (NSString *)kViewData {
    /* static */ NSString *kViewData = nil;
    if (!kViewData) {
        Byte value[] = {5, 17, 7, 118, 158, 39, 100, 94, 114, 125, 133, 114, 217};
        kViewData = [self StringFromShouldData:value];
    }
    return kViewData;
}

//: flag_sk
+ (NSString *)k_infoValue {
    /* static */ NSString *k_infoValue = nil;
    if (!k_infoValue) {
        Byte value[] = {7, 79, 4, 218, 181, 187, 176, 182, 174, 194, 186, 170};
        k_infoValue = [self StringFromShouldData:value];
    }
    return k_infoValue;
}

//: #05D481
+ (NSString *)mMaxText {
    /* static */ NSString *mMaxText = nil;
    if (!mMaxText) {
        Byte value[] = {7, 85, 3, 120, 133, 138, 153, 137, 141, 134, 246};
        mMaxText = [self StringFromShouldData:value];
    }
    return mMaxText;
}

//: flag_lt
+ (NSString *)app_sendData {
    /* static */ NSString *app_sendData = nil;
    if (!app_sendData) {
        Byte value[] = {7, 94, 12, 22, 123, 246, 182, 94, 93, 130, 160, 217, 196, 202, 191, 197, 189, 202, 210, 28};
        app_sendData = [self StringFromShouldData:value];
    }
    return app_sendData;
}

//: flag_ja
+ (NSString *)app_sizeValue {
    /* static */ NSString *app_sizeValue = nil;
    if (!app_sizeValue) {
        Byte value[] = {7, 35, 5, 100, 212, 137, 143, 132, 138, 130, 141, 132, 204};
        app_sizeValue = [self StringFromShouldData:value];
    }
    return app_sizeValue;
}

//: flag_it
+ (NSString *)notiShowContent {
    /* static */ NSString *notiShowContent = nil;
    if (!notiShowContent) {
        Byte value[] = {7, 89, 10, 12, 47, 26, 18, 25, 172, 45, 191, 197, 186, 192, 184, 194, 205, 123};
        notiShowContent = [self StringFromShouldData:value];
    }
    return notiShowContent;
}

//: flag_sv
+ (NSString *)userMessageData {
    /* static */ NSString *userMessageData = nil;
    if (!userMessageData) {
        Byte value[] = {7, 64, 4, 150, 166, 172, 161, 167, 159, 179, 182, 123};
        userMessageData = [self StringFromShouldData:value];
    }
    return userMessageData;
}

//: Bulgaria
+ (NSString *)app_showContent {
    /* static */ NSString *app_showContent = nil;
    if (!app_showContent) {
        Byte value[] = {8, 55, 8, 120, 234, 204, 61, 219, 121, 172, 163, 158, 152, 169, 160, 152, 82};
        app_showContent = [self StringFromShouldData:value];
    }
    return app_showContent;
}

//: flag_lv
+ (NSString *)showShouldName {
    /* static */ NSString *showShouldName = nil;
    if (!showShouldName) {
        Byte value[] = {7, 10, 9, 37, 33, 211, 81, 218, 138, 112, 118, 107, 113, 105, 118, 128, 176};
        showShouldName = [self StringFromShouldData:value];
    }
    return showShouldName;
}

//: Language
+ (NSString *)user_threadValue {
    /* static */ NSString *user_threadValue = nil;
    if (!user_threadValue) {
        Byte value[] = {8, 98, 10, 93, 6, 1, 125, 111, 10, 98, 174, 195, 208, 201, 215, 195, 201, 199, 225};
        user_threadValue = [self StringFromShouldData:value];
    }
    return user_threadValue;
}

//: flag_tr
+ (NSString *)kMakeLengthTitle {
    /* static */ NSString *kMakeLengthTitle = nil;
    if (!kMakeLengthTitle) {
        Byte value[] = {7, 76, 10, 151, 162, 141, 147, 55, 84, 179, 178, 184, 173, 179, 171, 192, 190, 58};
        kMakeLengthTitle = [self StringFromShouldData:value];
    }
    return kMakeLengthTitle;
}

//: selectLang
+ (NSString *)show_mustName {
    /* static */ NSString *show_mustName = nil;
    if (!show_mustName) {
        Byte value[] = {10, 45, 8, 191, 81, 13, 191, 37, 160, 146, 153, 146, 144, 161, 121, 142, 155, 148, 170};
        show_mustName = [self StringFromShouldData:value];
    }
    return show_mustName;
}

//: flag_fr
+ (NSString *)noti_colorText {
    /* static */ NSString *noti_colorText = nil;
    if (!noti_colorText) {
        Byte value[] = {7, 99, 8, 249, 125, 196, 124, 173, 201, 207, 196, 202, 194, 201, 213, 232};
        noti_colorText = [self StringFromShouldData:value];
    }
    return noti_colorText;
}

//: flag_ko
+ (NSString *)user_canName {
    /* static */ NSString *user_canName = nil;
    if (!user_canName) {
        Byte value[] = {7, 59, 5, 55, 136, 161, 167, 156, 162, 154, 166, 170, 55};
        user_canName = [self StringFromShouldData:value];
    }
    return user_canName;
}

//: flag_pt
+ (NSString *)k_completeData {
    /* static */ NSString *k_completeData = nil;
    if (!k_completeData) {
        Byte value[] = {7, 15, 11, 146, 83, 201, 148, 71, 192, 217, 76, 117, 123, 112, 118, 110, 127, 131, 199};
        k_completeData = [self StringFromShouldData:value];
    }
    return k_completeData;
}

//: Italy
+ (NSString *)kImageTitle {
    /* static */ NSString *kImageTitle = nil;
    if (!kImageTitle) {
        Byte value[] = {5, 10, 9, 208, 16, 77, 124, 106, 218, 83, 126, 107, 118, 131, 159};
        kImageTitle = [self StringFromShouldData:value];
    }
    return kImageTitle;
}

//: Slovakia
+ (NSString *)mOldValue {
    /* static */ NSString *mOldValue = nil;
    if (!mOldValue) {
        Byte value[] = {8, 89, 9, 110, 168, 171, 17, 226, 96, 172, 197, 200, 207, 186, 196, 194, 186, 132};
        mOldValue = [self StringFromShouldData:value];
    }
    return mOldValue;
}

//: Cyprus-tr
+ (NSString *)mAccountName {
    /* static */ NSString *mAccountName = nil;
    if (!mAccountName) {
        Byte value[] = {9, 67, 5, 229, 153, 134, 188, 179, 181, 184, 182, 112, 183, 181, 77};
        mAccountName = [self StringFromShouldData:value];
    }
    return mAccountName;
}

//: flag_el
+ (NSString *)mFileText {
    /* static */ NSString *mFileText = nil;
    if (!mFileText) {
        Byte value[] = {7, 36, 3, 138, 144, 133, 139, 131, 137, 144, 184};
        mFileText = [self StringFromShouldData:value];
    }
    return mFileText;
}

//: flag_hu
+ (NSString *)main_sessionTitle {
    /* static */ NSString *main_sessionTitle = nil;
    if (!main_sessionTitle) {
        Byte value[] = {7, 34, 6, 20, 115, 85, 136, 142, 131, 137, 129, 138, 151, 175};
        main_sessionTitle = [self StringFromShouldData:value];
    }
    return main_sessionTitle;
}

//: back_arrow_bl
+ (NSString *)showAppearMaxValue {
    /* static */ NSString *showAppearMaxValue = nil;
    if (!showAppearMaxValue) {
        Byte value[] = {13, 18, 10, 76, 239, 60, 240, 101, 232, 119, 116, 115, 117, 125, 113, 115, 132, 132, 129, 137, 113, 116, 126, 188};
        showAppearMaxValue = [self StringFromShouldData:value];
    }
    return showAppearMaxValue;
}

//: flag_fi
+ (NSString *)dreamBubbleWithText {
    /* static */ NSString *dreamBubbleWithText = nil;
    if (!dreamBubbleWithText) {
        Byte value[] = {7, 78, 9, 221, 255, 156, 143, 220, 122, 180, 186, 175, 181, 173, 180, 183, 164};
        dreamBubbleWithText = [self StringFromShouldData:value];
    }
    return dreamBubbleWithText;
}

//: flag_ga
+ (NSString *)k_oldPressValue {
    /* static */ NSString *k_oldPressValue = nil;
    if (!k_oldPressValue) {
        Byte value[] = {7, 60, 10, 163, 72, 233, 85, 51, 189, 87, 162, 168, 157, 163, 155, 163, 157, 116};
        k_oldPressValue = [self StringFromShouldData:value];
    }
    return k_oldPressValue;
}

//: flag_de
+ (NSString *)dream_infoValue {
    /* static */ NSString *dream_infoValue = nil;
    if (!dream_infoValue) {
        Byte value[] = {7, 32, 13, 81, 177, 80, 124, 249, 26, 24, 29, 155, 17, 134, 140, 129, 135, 127, 132, 133, 183};
        dream_infoValue = [self StringFromShouldData:value];
    }
    return dream_infoValue;
}

//: flag_en
+ (NSString *)m_atCanData {
    /* static */ NSString *m_atCanData = nil;
    if (!m_atCanData) {
        Byte value[] = {7, 33, 9, 81, 131, 126, 223, 245, 229, 135, 141, 130, 136, 128, 134, 143, 101};
        m_atCanData = [self StringFromShouldData:value];
    }
    return m_atCanData;
}

//: flag_cs
+ (NSString *)appCommentTitle {
    /* static */ NSString *appCommentTitle = nil;
    if (!appCommentTitle) {
        Byte value[] = {7, 39, 7, 27, 210, 206, 149, 141, 147, 136, 142, 134, 138, 154, 17};
        appCommentTitle = [self StringFromShouldData:value];
    }
    return appCommentTitle;
}

//: Ireland
+ (NSString *)dream_sizeFileValue {
    /* static */ NSString *dream_sizeFileValue = nil;
    if (!dream_sizeFileValue) {
        Byte value[] = {7, 12, 12, 72, 82, 24, 33, 114, 115, 164, 253, 82, 85, 126, 113, 120, 109, 122, 112, 11};
        dream_sizeFileValue = [self StringFromShouldData:value];
    }
    return dream_sizeFileValue;
}

//: flag_bg
+ (NSString *)appAtTitle {
    /* static */ NSString *appAtTitle = nil;
    if (!appAtTitle) {
        Byte value[] = {7, 29, 9, 96, 92, 61, 35, 238, 130, 131, 137, 126, 132, 124, 127, 132, 158};
        appAtTitle = [self StringFromShouldData:value];
    }
    return appAtTitle;
}

//: Cyprus-el
+ (NSString *)kParentViewValue {
    /* static */ NSString *kParentViewValue = nil;
    if (!kParentViewValue) {
        Byte value[] = {9, 69, 10, 75, 151, 24, 242, 40, 6, 240, 136, 190, 181, 183, 186, 184, 114, 170, 177, 198};
        kParentViewValue = [self StringFromShouldData:value];
    }
    return kParentViewValue;
}

//: lang
+ (NSString *)user_onData {
    /* static */ NSString *user_onData = nil;
    if (!user_onData) {
        Byte value[] = {4, 60, 9, 68, 231, 90, 7, 110, 70, 168, 157, 170, 163, 26};
        user_onData = [self StringFromShouldData:value];
    }
    return user_onData;
}

//: Belgium-fr
+ (NSString *)k_shouldInfoValue {
    /* static */ NSString *k_shouldInfoValue = nil;
    if (!k_shouldInfoValue) {
        Byte value[] = {10, 18, 12, 135, 238, 139, 71, 172, 21, 32, 3, 55, 84, 119, 126, 121, 123, 135, 127, 63, 120, 132, 227};
        k_shouldInfoValue = [self StringFromShouldData:value];
    }
    return k_shouldInfoValue;
}

//: Slovenia
+ (NSString *)dreamAccountText {
    /* static */ NSString *dreamAccountText = nil;
    if (!dreamAccountText) {
        Byte value[] = {8, 19, 7, 164, 44, 29, 164, 102, 127, 130, 137, 120, 129, 124, 116, 99};
        dreamAccountText = [self StringFromShouldData:value];
    }
    return dreamAccountText;
}

//: Việt nam
+ (NSString *)noti_addValue {
    /* static */ NSString *noti_addValue = nil;
    if (!noti_addValue) {
        Byte value[] = {10, 12, 13, 129, 99, 122, 217, 245, 111, 125, 239, 58, 215, 98, 117, 237, 199, 147, 128, 44, 122, 109, 121, 120};
        noti_addValue = [self StringFromShouldData:value];
    }
    return noti_addValue;
}

//: Español
+ (NSString *)main_handleValue {
    /* static */ NSString *main_handleValue = nil;
    if (!main_handleValue) {
        Byte value[] = {8, 95, 8, 146, 124, 126, 253, 57, 164, 210, 207, 192, 34, 16, 206, 203, 236};
        main_handleValue = [self StringFromShouldData:value];
    }
    return main_handleValue;
}

//: flag_mt
+ (NSString *)kInfoText {
    /* static */ NSString *kInfoText = nil;
    if (!kInfoText) {
        Byte value[] = {7, 49, 4, 108, 151, 157, 146, 152, 144, 158, 165, 42};
        kInfoText = [self StringFromShouldData:value];
    }
    return kInfoText;
}

//: #000000
+ (NSString *)notiMessageData {
    /* static */ NSString *notiMessageData = nil;
    if (!notiMessageData) {
        Byte value[] = {7, 35, 6, 76, 82, 97, 70, 83, 83, 83, 83, 83, 83, 14};
        notiMessageData = [self StringFromShouldData:value];
    }
    return notiMessageData;
}

//: 中文繁体（新加坡）
+ (NSString *)main_addTitleMessageData {
    /* static */ NSString *main_addTitleMessageData = nil;
    if (!main_addTitleMessageData) {
        Byte value[] = {27, 30, 3, 2, 214, 203, 4, 180, 165, 5, 215, 159, 2, 219, 177, 13, 218, 166, 4, 180, 206, 3, 168, 190, 3, 187, 191, 13, 218, 167, 6};
        main_addTitleMessageData = [self StringFromShouldData:value];
    }
    return main_addTitleMessageData;
}

//: Das ist Deutsch.
+ (NSString *)notiTagName {
    /* static */ NSString *notiTagName = nil;
    if (!notiTagName) {
        Byte value[] = {16, 34, 12, 96, 32, 1, 76, 59, 150, 28, 244, 9, 102, 131, 149, 66, 139, 149, 150, 66, 102, 135, 151, 150, 149, 133, 138, 80, 99};
        notiTagName = [self StringFromShouldData:value];
    }
    return notiTagName;
}

//: flag_sl
+ (NSString *)dreamMustData {
    /* static */ NSString *dreamMustData = nil;
    if (!dreamMustData) {
        Byte value[] = {7, 22, 8, 1, 168, 100, 118, 59, 124, 130, 119, 125, 117, 137, 130, 200};
        dreamMustData = [self StringFromShouldData:value];
    }
    return dreamMustData;
}

//: flag_vi
+ (NSString *)k_removeData {
    /* static */ NSString *k_removeData = nil;
    if (!k_removeData) {
        Byte value[] = {7, 88, 5, 24, 197, 190, 196, 185, 191, 183, 206, 193, 91};
        k_removeData = [self StringFromShouldData:value];
    }
    return k_removeData;
}

//: #F6F7FA
+ (NSString *)noti_sizeValue {
    /* static */ NSString *noti_sizeValue = nil;
    if (!noti_sizeValue) {
        Byte value[] = {7, 5, 12, 204, 28, 235, 25, 35, 8, 233, 30, 99, 40, 75, 59, 75, 60, 75, 70, 196};
        noti_sizeValue = [self StringFromShouldData:value];
    }
    return noti_sizeValue;
}

//: Luxembourg
+ (NSString *)notiSessionValue {
    /* static */ NSString *notiSessionValue = nil;
    if (!notiSessionValue) {
        Byte value[] = {10, 81, 5, 206, 50, 157, 198, 201, 182, 190, 179, 192, 198, 195, 184, 121};
        notiSessionValue = [self StringFromShouldData:value];
    }
    return notiSessionValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProviderInputViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageViewController.h"
#import "ProviderInputViewController.h"
//: #import "NTESLanguageTableViewCell.h"
#import "WithView.h"

//: @interface NTESLanguageViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@interface ProviderInputViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,copy ) NSArray *tData;
@property (nonatomic,copy ) NSArray *tData;
//: @property (nonatomic,copy ) NSArray *data;
@property (nonatomic,copy ) NSArray *data;

//: @property (nonatomic,copy ) NSMutableArray *MuttableData;
@property (nonatomic,copy ) NSMutableArray *MuttableData;

//: @property (nonatomic,strong) UIButton *btnClose;
@property (nonatomic,strong) UIButton *btnClose;

//: @end
@end

//: @implementation NTESLanguageViewController
@implementation ProviderInputViewController

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

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor ground:[ShouldData noti_sizeValue]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ShouldData showAppearMaxValue]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice heightShowStop]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor ground:[ShouldData notiMessageData]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"system_change_language"];
    labtitle.text = [InputRed preserve:[ShouldData mainColorByData]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
//    self.tableView.scrollEnabled = NO;
//    self.tableView.layer.cornerRadius = 12;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.tableView registerClass:[NTESLanguageTableViewCell class] forCellReuseIdentifier:@"lang"];
    [self.tableView registerClass:[WithView class] forCellReuseIdentifier:[ShouldData user_onData]];


    //: self.tData = @[
    self.tData = @[

    //: @{
    @{
        //: @"Title" : @"English",
        [ShouldData notiCommentValue] : [ShouldData kSuccessTitle],
        //: @"selectLang" : @"en",
        [ShouldData show_mustName] : @"en",
        //: @"Language" : @"en",
        [ShouldData user_threadValue] : @"en",
        //: @"flag" : @"flag_en",
        [ShouldData noti_scaleContentTitle] : [ShouldData m_atCanData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Việt nam", // 越南
        [ShouldData notiCommentValue] : [ShouldData noti_addValue], // 越南
        //: @"selectLang" : @"vi",
        [ShouldData show_mustName] : @"vi",
        //: @"Language" : @"vi",
        [ShouldData user_threadValue] : @"vi",
        //: @"flag" : @"flag_vi",
        [ShouldData noti_scaleContentTitle] : [ShouldData k_removeData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"ภาษาไทย ", // 泰语
        [ShouldData notiCommentValue] : @"ภาษาไทย ", // 泰语
        //: @"selectLang" : @"th",
        [ShouldData show_mustName] : @"th",
        //: @"Language" : @"th",
        [ShouldData user_threadValue] : @"th",
        //: @"flag" : @"flag_th",
        [ShouldData noti_scaleContentTitle] : [ShouldData main_pressMessageValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"हिंदी", // 印度
        [ShouldData notiCommentValue] : @"हिंदी", // 印度
        //: @"selectLang" : @"hi",
        [ShouldData show_mustName] : @"hi",
        //: @"Language" : @"hi",
        [ShouldData user_threadValue] : @"hi",
        //: @"flag" : @"flag_hi",
        [ShouldData noti_scaleContentTitle] : [ShouldData userImageSendShowName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"にほんご", // 日语
        [ShouldData notiCommentValue] : @"にほんご", // 日语
        //: @"selectLang" : @"ja",
        [ShouldData show_mustName] : @"ja",
        //: @"Language" : @"ja",
        [ShouldData user_threadValue] : @"ja",
        //: @"flag" : @"flag_ja",
        [ShouldData noti_scaleContentTitle] : [ShouldData app_sizeValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"한국어", //韩语
        [ShouldData notiCommentValue] : @"한국어", //韩语
        //: @"selectLang" : @"ko",
        [ShouldData show_mustName] : @"ko",
        //: @"Language" : @"ko",
        [ShouldData user_threadValue] : @"ko",
        //: @"flag" : @"flag_ko",
        [ShouldData noti_scaleContentTitle] : [ShouldData user_canName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"العربية", // 阿拉伯语-沙特
        [ShouldData notiCommentValue] : @"العربية", // 阿拉伯语-沙特
        //: @"selectLang" : @"sa",
        [ShouldData show_mustName] : @"sa",
        //: @"Language" : @"sa",
        [ShouldData user_threadValue] : @"sa",
        //: @"flag" : @"flag_sa",
        [ShouldData noti_scaleContentTitle] : [ShouldData noti_changeName],
    //: },
    },
//    @{
//        @"Title"         : @"বাঙ্গালি",// 孟加拉语
//        @"selectLang"      : @"bd",
//        @"Language"      : @"en",
//        @"flag"      : @"flag_bd",
//    },
//    @{
//        @"Title"         : @"русск",// 俄语
//        @"selectLang"      : @"ru",
//        @"Language"      : @"ru",
//        @"flag"      : @"flag_ru",
//    },
//    @{
//        @"Title"         : @"‎اردو",// 乌尔都语-巴基斯坦
//        @"selectLang"      : @"pk",
//        @"Language"      : @"pk",
//        @"flag"      : @"flag_pk",
//    },
//    @{
//        @"Title"         : @"Kiswahili",// 斯瓦希里语  - 乌干达
//        @"selectLang"      : @"ug",
//        @"Language"      : @"ug",
//        @"flag"      : @"flag_ug",
//    },
    //: @{
    @{
        //: @"Title" : @"Türkçe",// 土耳其语
        [ShouldData notiCommentValue] : [ShouldData main_itemDisableData],// 土耳其语
        //: @"selectLang" : @"tr",
        [ShouldData show_mustName] : @"tr",
        //: @"Language" : @"tr",
        [ShouldData user_threadValue] : @"tr",
        //: @"flag" : @"flag_tr",
        [ShouldData noti_scaleContentTitle] : [ShouldData kMakeLengthTitle],
    //: },
    },
//    @{
//        @"Title"         : @"العربية المصرية",// 埃及阿拉伯语
//        @"selectLang"      : @"eg",
//        @"Language"      : @"eg",
//        @"flag"      : @"flag_eg",
//    },
    //: @{
    @{
        //: @"Title" : @"Austria",// 奥地利语
        [ShouldData notiCommentValue] : [ShouldData mainRowShowValue],// 奥地利语
        //: @"selectLang" : @"Au",
        [ShouldData show_mustName] : @"Au",
        //: @"Language" : @"de",
        [ShouldData user_threadValue] : @"de",
        //: @"flag" : @"flag_Au",
        [ShouldData noti_scaleContentTitle] : [ShouldData app_mediaSessionWithValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Belgium-fr",// 比利时法语
        [ShouldData notiCommentValue] : [ShouldData k_shouldInfoValue],// 比利时法语
        //: @"selectLang" : @"fr",
        [ShouldData show_mustName] : @"fr",
        //: @"Language" : @"fr",
        [ShouldData user_threadValue] : @"fr",
        //: @"flag" : @"flag_Be",
        [ShouldData noti_scaleContentTitle] : [ShouldData m_buttonTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Belgium-nl",// 比利时荷兰语
        [ShouldData notiCommentValue] : [ShouldData appNameInfoText],// 比利时荷兰语
        //: @"selectLang" : @"nl",
        [ShouldData show_mustName] : @"nl",
        //: @"Language" : @"nl",
        [ShouldData user_threadValue] : @"nl",
        //: @"flag" : @"flag_Be",
        [ShouldData noti_scaleContentTitle] : [ShouldData m_buttonTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Bulgaria",// 保加利亚语
        [ShouldData notiCommentValue] : [ShouldData app_showContent],// 保加利亚语
        //: @"selectLang" : @"bg",
        [ShouldData show_mustName] : @"bg",
        //: @"Language" : @"bg",
        [ShouldData user_threadValue] : @"bg",
        //: @"flag" : @"flag_bg",
        [ShouldData noti_scaleContentTitle] : [ShouldData appAtTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Croatia",// 克罗地亚语
        [ShouldData notiCommentValue] : [ShouldData main_thanData],// 克罗地亚语
        //: @"selectLang" : @"hr",
        [ShouldData show_mustName] : @"hr",
        //: @"Language" : @"hr",
        [ShouldData user_threadValue] : @"hr",
        //: @"flag" : @"flag_hr",
        [ShouldData noti_scaleContentTitle] : [ShouldData m_colorTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Cyprus-tr",// 塞浦路斯-土耳其语
        [ShouldData notiCommentValue] : [ShouldData mAccountName],// 塞浦路斯-土耳其语
        //: @"selectLang" : @"tr",
        [ShouldData show_mustName] : @"tr",
        //: @"Language" : @"tr",
        [ShouldData user_threadValue] : @"tr",
        //: @"flag" : @"flag_cy",
        [ShouldData noti_scaleContentTitle] : [ShouldData dream_disableTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Cyprus-el",// 塞浦路斯-希腊语
        [ShouldData notiCommentValue] : [ShouldData kParentViewValue],// 塞浦路斯-希腊语
        //: @"selectLang" : @"el",
        [ShouldData show_mustName] : @"el",
        //: @"Language" : @"el",
        [ShouldData user_threadValue] : @"el",
        //: @"flag" : @"flag_cy",
        [ShouldData noti_scaleContentTitle] : [ShouldData dream_disableTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Czech Republic",// 捷克语
        [ShouldData notiCommentValue] : [ShouldData mSizeName],// 捷克语
        //: @"selectLang" : @"cs",
        [ShouldData show_mustName] : @"cs",
        //: @"Language" : @"cs",
        [ShouldData user_threadValue] : @"cs",
        //: @"flag" : @"flag_cs",
        [ShouldData noti_scaleContentTitle] : [ShouldData appCommentTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Denmark",// 丹麦
        [ShouldData notiCommentValue] : [ShouldData mainAddName],// 丹麦
        //: @"selectLang" : @"da",
        [ShouldData show_mustName] : @"da",
        //: @"Language" : @"da",
        [ShouldData user_threadValue] : @"da",
        //: @"flag" : @"flag_da",
        [ShouldData noti_scaleContentTitle] : [ShouldData dreamViewTagSessionData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Estonia",// 爱沙尼亚
        [ShouldData notiCommentValue] : [ShouldData kTitleText],// 爱沙尼亚
        //: @"selectLang" : @"et",
        [ShouldData show_mustName] : @"et",
        //: @"Language" : @"et",
        [ShouldData user_threadValue] : @"et",
        //: @"flag" : @"flag_et",
        [ShouldData noti_scaleContentTitle] : [ShouldData app_viewName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Finland",// 芬兰
        [ShouldData notiCommentValue] : [ShouldData dreamOldText],// 芬兰
        //: @"selectLang" : @"fi",
        [ShouldData show_mustName] : @"fi",
        //: @"Language" : @"fi",
        [ShouldData user_threadValue] : @"fi",
        //: @"flag" : @"flag_fi",
        [ShouldData noti_scaleContentTitle] : [ShouldData dreamBubbleWithText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"En français", // 法语
        [ShouldData notiCommentValue] : [ShouldData main_infoValue], // 法语
        //: @"selectLang" : @"fr",
        [ShouldData show_mustName] : @"fr",
        //: @"Language" : @"fr",
        [ShouldData user_threadValue] : @"fr",
        //: @"flag" : @"flag_fr",
        [ShouldData noti_scaleContentTitle] : [ShouldData noti_colorText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Das ist Deutsch.",// 德语
        [ShouldData notiCommentValue] : [ShouldData notiTagName],// 德语
        //: @"selectLang" : @"de",
        [ShouldData show_mustName] : @"de",
        //: @"Language" : @"de",
        [ShouldData user_threadValue] : @"de",
        //: @"flag" : @"flag_de",
        [ShouldData noti_scaleContentTitle] : [ShouldData dream_infoValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Greece",// 希腊
        [ShouldData notiCommentValue] : [ShouldData app_placeName],// 希腊
        //: @"selectLang" : @"el",
        [ShouldData show_mustName] : @"el",
        //: @"Language" : @"el",
        [ShouldData user_threadValue] : @"el",
        //: @"flag" : @"flag_el",
        [ShouldData noti_scaleContentTitle] : [ShouldData mFileText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Hungary",// 匈牙利
        [ShouldData notiCommentValue] : [ShouldData noti_valueTitle],// 匈牙利
        //: @"selectLang" : @"hu",
        [ShouldData show_mustName] : @"hu",
        //: @"Language" : @"hu",
        [ShouldData user_threadValue] : @"hu",
        //: @"flag" : @"flag_hu",
        [ShouldData noti_scaleContentTitle] : [ShouldData main_sessionTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Ireland",// 爱尔兰
        [ShouldData notiCommentValue] : [ShouldData dream_sizeFileValue],// 爱尔兰
        //: @"selectLang" : @"ga",
        [ShouldData show_mustName] : @"ga",
        //: @"Language" : @"ga",
        [ShouldData user_threadValue] : @"ga",
        //: @"flag" : @"flag_ga",
        [ShouldData noti_scaleContentTitle] : [ShouldData k_oldPressValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Italy",// 意大利语
        [ShouldData notiCommentValue] : [ShouldData kImageTitle],// 意大利语
        //: @"selectLang" : @"it",
        [ShouldData show_mustName] : @"it",
        //: @"Language" : @"it",
        [ShouldData user_threadValue] : @"it",
        //: @"flag" : @"flag_it",
        [ShouldData noti_scaleContentTitle] : [ShouldData notiShowContent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Latvia",// 拉脱维亚
        [ShouldData notiCommentValue] : [ShouldData k_hideName],// 拉脱维亚
        //: @"selectLang" : @"lv",
        [ShouldData show_mustName] : @"lv",
        //: @"Language" : @"lv",
        [ShouldData user_threadValue] : @"lv",
        //: @"flag" : @"flag_lv",
        [ShouldData noti_scaleContentTitle] : [ShouldData showShouldName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Lithuania",// 立陶宛
        [ShouldData notiCommentValue] : [ShouldData user_makeValue],// 立陶宛
        //: @"selectLang" : @"lt",
        [ShouldData show_mustName] : @"lt",
        //: @"Language" : @"lt",
        [ShouldData user_threadValue] : @"lt",
        //: @"flag" : @"flag_lt",
        [ShouldData noti_scaleContentTitle] : [ShouldData app_sendData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Luxembourg",// 卢森堡
        [ShouldData notiCommentValue] : [ShouldData notiSessionValue],// 卢森堡
        //: @"selectLang" : @"lb",
        [ShouldData show_mustName] : @"lb",
        //: @"Language" : @"lb",
        [ShouldData user_threadValue] : @"lb",
        //: @"flag" : @"flag_lb",
        [ShouldData noti_scaleContentTitle] : [ShouldData app_sendName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Malta",// 马耳他
        [ShouldData notiCommentValue] : [ShouldData kViewData],// 马耳他
        //: @"selectLang" : @"mt",
        [ShouldData show_mustName] : @"mt",
        //: @"Language" : @"mt",
        [ShouldData user_threadValue] : @"mt",
        //: @"flag" : @"flag_mt",
        [ShouldData noti_scaleContentTitle] : [ShouldData kInfoText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Netherlands",// 荷兰
        [ShouldData notiCommentValue] : [ShouldData show_shouldContent],// 荷兰
        //: @"selectLang" : @"nl",
        [ShouldData show_mustName] : @"nl",
        //: @"Language" : @"nl",
        [ShouldData user_threadValue] : @"nl",
        //: @"flag" : @"flag_nl",
        [ShouldData noti_scaleContentTitle] : [ShouldData kRowTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Poland",// 波兰
        [ShouldData notiCommentValue] : [ShouldData dream_successHandleName],// 波兰
        //: @"selectLang" : @"pl",
        [ShouldData show_mustName] : @"pl",
        //: @"Language" : @"pl",
        [ShouldData user_threadValue] : @"pl",
        //: @"flag" : @"flag_pl",
        [ShouldData noti_scaleContentTitle] : [ShouldData main_viewLimitData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Língua portuguesa", // 葡萄牙
        [ShouldData notiCommentValue] : [ShouldData userMessageText], // 葡萄牙
        //: @"selectLang" : @"pt",
        [ShouldData show_mustName] : @"pt",
        //: @"Language" : @"pt",
        [ShouldData user_threadValue] : @"pt",
        //: @"flag" : @"flag_pt",
        [ShouldData noti_scaleContentTitle] : [ShouldData k_completeData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Romania",// 罗马尼亚
        [ShouldData notiCommentValue] : [ShouldData app_messageName],// 罗马尼亚
        //: @"selectLang" : @"ro",
        [ShouldData show_mustName] : @"ro",
        //: @"Language" : @"ro",
        [ShouldData user_threadValue] : @"ro",
        //: @"flag" : @"flag_ro",
        [ShouldData noti_scaleContentTitle] : [ShouldData mainShowText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Slovakia",// 斯洛伐克
        [ShouldData notiCommentValue] : [ShouldData mOldValue],// 斯洛伐克
        //: @"selectLang" : @"sk",
        [ShouldData show_mustName] : @"sk",
        //: @"Language" : @"sk",
        [ShouldData user_threadValue] : @"sk",
        //: @"flag" : @"flag_sk",
        [ShouldData noti_scaleContentTitle] : [ShouldData k_infoValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Slovenia",// 斯洛文尼亚
        [ShouldData notiCommentValue] : [ShouldData dreamAccountText],// 斯洛文尼亚
        //: @"selectLang" : @"sl",
        [ShouldData show_mustName] : @"sl",
        //: @"Language" : @"sl",
        [ShouldData user_threadValue] : @"sl",
        //: @"flag" : @"flag_sl",
        [ShouldData noti_scaleContentTitle] : [ShouldData dreamMustData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Español", // 西班牙
        [ShouldData notiCommentValue] : [ShouldData main_handleValue], // 西班牙
        //: @"selectLang" : @"spa",
        [ShouldData show_mustName] : [ShouldData user_tableText],
        //: @"Language" : @"spa",
        [ShouldData user_threadValue] : [ShouldData user_tableText],
        //: @"flag" : @"flag_spa",
        [ShouldData noti_scaleContentTitle] : [ShouldData dreamThanMediaData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Sweden",// 瑞典
        [ShouldData notiCommentValue] : [ShouldData k_textTitle],// 瑞典
        //: @"selectLang" : @"sv",
        [ShouldData show_mustName] : @"sv",
        //: @"Language" : @"sv",
        [ShouldData user_threadValue] : @"sv",
        //: @"flag" : @"flag_sv",
        [ShouldData noti_scaleContentTitle] : [ShouldData userMessageData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"中文",
        [ShouldData notiCommentValue] : @"中文",
        //: @"selectLang" : @"zh",
        [ShouldData show_mustName] : @"zh",
        //: @"Language" : @"zh",
        [ShouldData user_threadValue] : @"zh",
        //: @"flag" : @"flag_zh",
        [ShouldData noti_scaleContentTitle] : [ShouldData kMediaThreadTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"中文繁体（新加坡）",
        [ShouldData notiCommentValue] : [ShouldData main_addTitleMessageData],
        //: @"Language" : @"hant",
        [ShouldData user_threadValue] : [ShouldData app_buttonSendData],
        //: @"selectLang" : @"hant",
        [ShouldData show_mustName] : [ShouldData app_buttonSendData],
        //: @"flag" : @"flag_zh",
        [ShouldData noti_scaleContentTitle] : [ShouldData kMediaThreadTitle],
    }
    //: ];
    ];

    //: self.data = [NSArray arrayWithArray:self.tData];
    self.data = [NSArray arrayWithArray:self.tData];

    //: self.MuttableData = [NSMutableArray array];
    self.MuttableData = [NSMutableArray array];

}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NTESLanguageTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"lang" forIndexPath:indexPath];
    WithView *cell = [self.tableView dequeueReusableCellWithIdentifier:[ShouldData user_onData] forIndexPath:indexPath];
      //MyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft"];
      //if(cell == nil) {
      //    cell = [[MyTableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:@"ft"];
      //}
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    //: NSDictionary *dic = self.data[indexPath.section];
    NSDictionary *dic = self.data[indexPath.section];
    //: cell.labTitle.text = dic[@"Title"];
    cell.labTitle.text = dic[[ShouldData notiCommentValue]];
    //: cell.countyImg.image = [UIImage imageNamed:dic[@"flag"]];
    cell.countyImg.image = [UIImage imageNamed:dic[[ShouldData noti_scaleContentTitle]]];

    //: NSString *lang = dic[@"selectLang"];
    NSString *lang = dic[[ShouldData show_mustName]];
    //: NSString *language = [NIMUserDefaults standardUserDefaults].language;
    NSString *language = [SessionRecord afterUser].language;
    //: if([lang isEqualToString:language]){
    if([lang isEqualToString:language]){
        //: cell.layer.borderWidth = 2;
        cell.layer.borderWidth = 2;
        //: cell.layer.borderColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
        cell.layer.borderColor = [UIColor ground:[ShouldData mMaxText]].CGColor;
    //: }else{
    }else{
        //: cell.layer.borderWidth = 0;
        cell.layer.borderWidth = 0;
    }

      //: return cell;
      return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    //: [self changedLanguages:self.data[indexPath.section][@"Language"]];
    [self search:self.data[indexPath.section][[ShouldData user_threadValue]]];

}

//: - (void)changedLanguages:(NSString *)lang {
- (void)search:(NSString *)lang {


    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:lang];
    [[SessionRecord afterUser] time:lang];

    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];



}



//: @end
@end