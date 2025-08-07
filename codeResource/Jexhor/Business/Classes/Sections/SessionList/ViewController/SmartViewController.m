
#import <Foundation/Foundation.h>

typedef struct {
    Byte thanTarget;
    Byte *disableAdd;
    unsigned int obstruct;
	int past;
	int imageWith;
	int paradigm;
} StructHandleValueData;

@interface HandleValueData : NSObject

@end

@implementation HandleValueData

+ (Byte *)HandleValueDataToByte:(StructHandleValueData *)data {
    for (int i = 0; i < data->obstruct; i++) {
        data->disableAdd[i] ^= data->thanTarget;
    }
    data->disableAdd[data->obstruct] = 0;
	if (data->obstruct >= 3) {
		data->past = data->disableAdd[0];
		data->imageWith = data->disableAdd[1];
		data->paradigm = data->disableAdd[2];
	}
    return data->disableAdd;
}

+ (NSString *)StringFromHandleValueData:(StructHandleValueData *)data {
    return [NSString stringWithUTF8String:(char *)[self HandleValueDataToByte:data]];
}

//: (连接中)
+ (NSString *)noti_canValue {
    /* static */ NSString *noti_canValue = nil;
    if (!noti_canValue) {
        StructHandleValueData value = (StructHandleValueData){210, (Byte []){250, 58, 109, 76, 52, 92, 119, 54, 106, 127, 251, 242}, 11, 237, 154, 151};
        noti_canValue = [self StringFromHandleValueData:&value];
    }
    return noti_canValue;
}

//: retracted_message
+ (NSString *)show_scaleName {
    /* static */ NSString *show_scaleName = nil;
    if (!show_scaleName) {
        StructHandleValueData value = (StructHandleValueData){108, (Byte []){30, 9, 24, 30, 13, 15, 24, 9, 8, 51, 1, 9, 31, 31, 13, 11, 9, 255}, 17, 3, 36, 121};
        show_scaleName = [self StringFromHandleValueData:&value];
    }
    return show_scaleName;
}

//: #5D5F66
+ (NSString *)main_completeValue {
    /* static */ NSString *main_completeValue = nil;
    if (!main_completeValue) {
        StructHandleValueData value = (StructHandleValueData){149, (Byte []){182, 160, 209, 160, 211, 163, 163, 166}, 7, 27, 192, 255};
        main_completeValue = [self StringFromHandleValueData:&value];
    }
    return main_completeValue;
}

//: invite_you_group
+ (NSString *)show_sessionTitle {
    /* static */ NSString *show_sessionTitle = nil;
    if (!show_sessionTitle) {
        StructHandleValueData value = (StructHandleValueData){55, (Byte []){94, 89, 65, 94, 67, 82, 104, 78, 88, 66, 104, 80, 69, 88, 66, 71, 158}, 16, 205, 248, 60};
        show_sessionTitle = [self StringFromHandleValueData:&value];
    }
    return show_sessionTitle;
}

//: (同步数据)
+ (NSString *)dream_addValue {
    /* static */ NSString *dream_addValue = nil;
    if (!dream_addValue) {
        StructHandleValueData value = (StructHandleValueData){183, (Byte []){159, 82, 39, 59, 81, 26, 18, 81, 34, 7, 81, 58, 25, 158, 220}, 14, 108, 141, 11};
        dream_addValue = [self StringFromHandleValueData:&value];
    }
    return dream_addValue;
}

//: home_notice
+ (NSString *)mMakeVideoTitle {
    /* static */ NSString *mMakeVideoTitle = nil;
    if (!mMakeVideoTitle) {
        StructHandleValueData value = (StructHandleValueData){103, (Byte []){15, 8, 10, 2, 56, 9, 8, 19, 14, 4, 2, 129}, 11, 114, 147, 38};
        mMakeVideoTitle = [self StringFromHandleValueData:&value];
    }
    return mMakeVideoTitle;
}

//: no_conversation
+ (NSString *)userDisableTitle {
    /* static */ NSString *userDisableTitle = nil;
    if (!userDisableTitle) {
        StructHandleValueData value = (StructHandleValueData){201, (Byte []){167, 166, 150, 170, 166, 167, 191, 172, 187, 186, 168, 189, 160, 166, 167, 241}, 15, 116, 124, 208};
        userDisableTitle = [self StringFromHandleValueData:&value];
    }
    return userDisableTitle;
}

//: ic_create_chat
+ (NSString *)show_viewParentTableData {
    /* static */ NSString *show_viewParentTableData = nil;
    if (!show_viewParentTableData) {
        StructHandleValueData value = (StructHandleValueData){139, (Byte []){226, 232, 212, 232, 249, 238, 234, 255, 238, 212, 232, 227, 234, 255, 213}, 14, 126, 119, 178};
        show_viewParentTableData = [self StringFromHandleValueData:&value];
    }
    return show_viewParentTableData;
}

//: tag_activity_set
+ (NSString *)show_viewName {
    /* static */ NSString *show_viewName = nil;
    if (!show_viewName) {
        StructHandleValueData value = (StructHandleValueData){193, (Byte []){181, 160, 166, 158, 160, 162, 181, 168, 183, 168, 181, 184, 158, 178, 164, 181, 138}, 16, 85, 241, 238};
        show_viewName = [self StringFromHandleValueData:&value];
    }
    return show_viewName;
}

//: type
+ (NSString *)noti_targetData {
    /* static */ NSString *noti_targetData = nil;
    if (!noti_targetData) {
        StructHandleValueData value = (StructHandleValueData){27, (Byte []){111, 98, 107, 126, 44}, 4, 42, 41, 160};
        noti_targetData = [self StringFromHandleValueData:&value];
    }
    return noti_targetData;
}

//: globalsign
+ (NSString *)k_nameData {
    /* static */ NSString *k_nameData = nil;
    if (!k_nameData) {
        StructHandleValueData value = (StructHandleValueData){28, (Byte []){123, 112, 115, 126, 125, 112, 111, 117, 123, 114, 43}, 10, 208, 164, 72};
        k_nameData = [self StringFromHandleValueData:&value];
    }
    return k_nameData;
}

//: ic_distrub
+ (NSString *)noti_mustName {
    /* static */ NSString *noti_mustName = nil;
    if (!noti_mustName) {
        StructHandleValueData value = (StructHandleValueData){185, (Byte []){208, 218, 230, 221, 208, 202, 205, 203, 204, 219, 68}, 10, 160, 30, 199};
        noti_mustName = [self StringFromHandleValueData:&value];
    }
    return noti_mustName;
}

//: contact_tag_fragment_cancel
+ (NSString *)notiPressTitle {
    /* static */ NSString *notiPressTitle = nil;
    if (!notiPressTitle) {
        StructHandleValueData value = (StructHandleValueData){65, (Byte []){34, 46, 47, 53, 32, 34, 53, 30, 53, 32, 38, 30, 39, 51, 32, 38, 44, 36, 47, 53, 30, 34, 32, 47, 34, 36, 45, 249}, 27, 246, 131, 233};
        notiPressTitle = [self StringFromHandleValueData:&value];
    }
    return notiPressTitle;
}

//: /team/create
+ (NSString *)appViewImageTitle {
    /* static */ NSString *appViewImageTitle = nil;
    if (!appViewImageTitle) {
        StructHandleValueData value = (StructHandleValueData){134, (Byte []){169, 242, 227, 231, 235, 169, 229, 244, 227, 231, 242, 227, 32}, 12, 175, 57, 85};
        appViewImageTitle = [self StringFromHandleValueData:&value];
    }
    return appViewImageTitle;
}

//: #999999
+ (NSString *)m_showData {
    /* static */ NSString *m_showData = nil;
    if (!m_showData) {
        StructHandleValueData value = (StructHandleValueData){247, (Byte []){212, 206, 206, 206, 206, 206, 206, 163}, 7, 230, 88, 75};
        m_showData = [self StringFromHandleValueData:&value];
    }
    return m_showData;
}

//: activity_user_profile_chat
+ (NSString *)mEndCommentOffTitle {
    /* static */ NSString *mEndCommentOffTitle = nil;
    if (!mEndCommentOffTitle) {
        StructHandleValueData value = (StructHandleValueData){13, (Byte []){108, 110, 121, 100, 123, 100, 121, 116, 82, 120, 126, 104, 127, 82, 125, 127, 98, 107, 100, 97, 104, 82, 110, 101, 108, 121, 190}, 26, 94, 195, 249};
        mEndCommentOffTitle = [self StringFromHandleValueData:&value];
    }
    return mEndCommentOffTitle;
}

//: activity_create_group_name_create_group
+ (NSString *)userReadNeedName {
    /* static */ NSString *userReadNeedName = nil;
    if (!userReadNeedName) {
        StructHandleValueData value = (StructHandleValueData){214, (Byte []){183, 181, 162, 191, 160, 191, 162, 175, 137, 181, 164, 179, 183, 162, 179, 137, 177, 164, 185, 163, 166, 137, 184, 183, 187, 179, 137, 181, 164, 179, 183, 162, 179, 137, 177, 164, 185, 163, 166, 159}, 39, 12, 169, 135};
        userReadNeedName = [self StringFromHandleValueData:&value];
    }
    return userReadNeedName;
}

//: ic_top
+ (NSString *)dream_videoName {
    /* static */ NSString *dream_videoName = nil;
    if (!dream_videoName) {
        StructHandleValueData value = (StructHandleValueData){177, (Byte []){216, 210, 238, 197, 222, 193, 177}, 6, 90, 150, 112};
        dream_videoName = [self StringFromHandleValueData:&value];
    }
    return dream_videoName;
}

//: tid
+ (NSString *)main_countName {
    /* static */ NSString *main_countName = nil;
    if (!main_countName) {
        StructHandleValueData value = (StructHandleValueData){84, (Byte []){32, 61, 48, 61}, 3, 184, 230, 195};
        main_countName = [self StringFromHandleValueData:&value];
    }
    return main_countName;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)notiShouldData {
    /* static */ NSString *notiShouldData = nil;
    if (!notiShouldData) {
        StructHandleValueData value = (StructHandleValueData){102, (Byte []){19, 21, 3, 20, 57, 15, 8, 0, 9, 57, 7, 16, 18, 15, 16, 15, 18, 31, 57, 19, 22, 10, 9, 7, 2, 57, 7, 16, 7, 18, 7, 20, 57, 0, 7, 15, 10, 3, 2, 99}, 39, 192, 103, 106};
        notiShouldData = [self StringFromHandleValueData:&value];
    }
    return notiShouldData;
}

//: setting_privacy_camera
+ (NSString *)userSessionData {
    /* static */ NSString *userSessionData = nil;
    if (!userSessionData) {
        StructHandleValueData value = (StructHandleValueData){121, (Byte []){10, 28, 13, 13, 16, 23, 30, 38, 9, 11, 16, 15, 24, 26, 0, 38, 26, 24, 20, 28, 11, 24, 217}, 22, 113, 215, 199};
        userSessionData = [self StringFromHandleValueData:&value];
    }
    return userSessionData;
}

//: please_contact_your_administrator
+ (NSString *)noti_messageData {
    /* static */ NSString *noti_messageData = nil;
    if (!noti_messageData) {
        StructHandleValueData value = (StructHandleValueData){119, (Byte []){7, 27, 18, 22, 4, 18, 40, 20, 24, 25, 3, 22, 20, 3, 40, 14, 24, 2, 5, 40, 22, 19, 26, 30, 25, 30, 4, 3, 5, 22, 3, 24, 5, 70}, 33, 54, 130, 225};
        noti_messageData = [self StringFromHandleValueData:&value];
    }
    return noti_messageData;
}

//: fragment_contact_new_scan
+ (NSString *)k_accountData {
    /* static */ NSString *k_accountData = nil;
    if (!k_accountData) {
        StructHandleValueData value = (StructHandleValueData){165, (Byte []){195, 215, 196, 194, 200, 192, 203, 209, 250, 198, 202, 203, 209, 196, 198, 209, 250, 203, 192, 210, 250, 214, 198, 196, 203, 123}, 25, 76, 252, 61};
        k_accountData = [self StringFromHandleValueData:&value];
    }
    return k_accountData;
}

//: team_create_helper_create_failed
+ (NSString *)k_completeColorData {
    /* static */ NSString *k_completeColorData = nil;
    if (!k_completeColorData) {
        StructHandleValueData value = (StructHandleValueData){18, (Byte []){102, 119, 115, 127, 77, 113, 96, 119, 115, 102, 119, 77, 122, 119, 126, 98, 119, 96, 77, 113, 96, 119, 115, 102, 119, 77, 116, 115, 123, 126, 119, 118, 119}, 32, 4, 123, 180};
        k_completeColorData = [self StringFromHandleValueData:&value];
    }
    return k_completeColorData;
}

//: /user/checkcreateteam
+ (NSString *)user_itemValue {
    /* static */ NSString *user_itemValue = nil;
    if (!user_itemValue) {
        StructHandleValueData value = (StructHandleValueData){86, (Byte []){121, 35, 37, 51, 36, 121, 53, 62, 51, 53, 61, 53, 36, 51, 55, 34, 51, 34, 51, 55, 59, 19}, 21, 244, 107, 7};
        user_itemValue = [self StringFromHandleValueData:&value];
    }
    return user_itemValue;
}

//: quickchat
+ (NSString *)appThreadValue {
    /* static */ NSString *appThreadValue = nil;
    if (!appThreadValue) {
        StructHandleValueData value = (StructHandleValueData){144, (Byte []){225, 229, 249, 243, 251, 243, 248, 241, 228, 180}, 9, 113, 97, 170};
        appThreadValue = [self StringFromHandleValueData:&value];
    }
    return appThreadValue;
}

//: [有人@你]
+ (NSString *)mainRemoveColorValue {
    /* static */ NSString *mainRemoveColorValue = nil;
    if (!mainRemoveColorValue) {
        StructHandleValueData value = (StructHandleValueData){27, (Byte []){64, 253, 135, 146, 255, 161, 161, 91, 255, 166, 187, 70, 64}, 12, 154, 121, 239};
        mainRemoveColorValue = [self StringFromHandleValueData:&value];
    }
    return mainRemoveColorValue;
}

//: #875FFA
+ (NSString *)user_appearScaleData {
    /* static */ NSString *user_appearScaleData = nil;
    if (!user_appearScaleData) {
        StructHandleValueData value = (StructHandleValueData){243, (Byte []){208, 203, 196, 198, 181, 181, 178, 43}, 7, 215, 245, 46};
        user_appearScaleData = [self StringFromHandleValueData:&value];
    }
    return user_appearScaleData;
}

//: add_friend_activity_add_friend
+ (NSString *)noti_buttonName {
    /* static */ NSString *noti_buttonName = nil;
    if (!noti_buttonName) {
        StructHandleValueData value = (StructHandleValueData){214, (Byte []){183, 178, 178, 137, 176, 164, 191, 179, 184, 178, 137, 183, 181, 162, 191, 160, 191, 162, 175, 137, 183, 178, 178, 137, 176, 164, 191, 179, 184, 178, 138}, 30, 24, 253, 117};
        noti_buttonName = [self StringFromHandleValueData:&value];
    }
    return noti_buttonName;
}

//: ic_nodistrub
+ (NSString *)dream_nameValue {
    /* static */ NSString *dream_nameValue = nil;
    if (!dream_nameValue) {
        StructHandleValueData value = (StructHandleValueData){217, (Byte []){176, 186, 134, 183, 182, 189, 176, 170, 173, 171, 172, 187, 158}, 12, 159, 36, 167};
        dream_nameValue = [self StringFromHandleValueData:&value];
    }
    return dream_nameValue;
}

//: ic_add_fiend
+ (NSString *)dream_removeSuccessWithTitle {
    /* static */ NSString *dream_removeSuccessWithTitle = nil;
    if (!dream_removeSuccessWithTitle) {
        StructHandleValueData value = (StructHandleValueData){17, (Byte []){120, 114, 78, 112, 117, 117, 78, 119, 120, 116, 127, 117, 217}, 12, 38, 139, 80};
        dream_removeSuccessWithTitle = [self StringFromHandleValueData:&value];
    }
    return dream_removeSuccessWithTitle;
}

//: code
+ (NSString *)app_showImageData {
    /* static */ NSString *app_showImageData = nil;
    if (!app_showImageData) {
        StructHandleValueData value = (StructHandleValueData){35, (Byte []){64, 76, 71, 70, 146}, 4, 101, 129, 183};
        app_showImageData = [self StringFromHandleValueData:&value];
    }
    return app_showImageData;
}

//: ic_scan
+ (NSString *)dreamPressMaxText {
    /* static */ NSString *dreamPressMaxText = nil;
    if (!dreamPressMaxText) {
        StructHandleValueData value = (StructHandleValueData){255, (Byte []){150, 156, 160, 140, 156, 158, 145, 74}, 7, 12, 175, 187};
        dreamPressMaxText = [self StringFromHandleValueData:&value];
    }
    return dreamPressMaxText;
}

//: home_create_group
+ (NSString *)noti_removeTitle {
    /* static */ NSString *noti_removeTitle = nil;
    if (!noti_removeTitle) {
        StructHandleValueData value = (StructHandleValueData){52, (Byte []){92, 91, 89, 81, 107, 87, 70, 81, 85, 64, 81, 107, 83, 70, 91, 65, 68, 164}, 17, 201, 101, 211};
        noti_removeTitle = [self StringFromHandleValueData:&value];
    }
    return noti_removeTitle;
}

//: jpg
+ (NSString *)mainTableSizeData {
    /* static */ NSString *mainTableSizeData = nil;
    if (!mainTableSizeData) {
        StructHandleValueData value = (StructHandleValueData){144, (Byte []){250, 224, 247, 23}, 3, 108, 156, 42};
        mainTableSizeData = [self StringFromHandleValueData:&value];
    }
    return mainTableSizeData;
}

//: quick_icon
+ (NSString *)m_rowName {
    /* static */ NSString *m_rowName = nil;
    if (!m_rowName) {
        StructHandleValueData value = (StructHandleValueData){114, (Byte []){3, 7, 27, 17, 25, 45, 27, 17, 29, 28, 64}, 10, 130, 34, 116};
        m_rowName = [self StringFromHandleValueData:&value];
    }
    return m_rowName;
}

//: icon_session_list_empty
+ (NSString *)k_viewText {
    /* static */ NSString *k_viewText = nil;
    if (!k_viewText) {
        StructHandleValueData value = (StructHandleValueData){96, (Byte []){9, 3, 15, 14, 63, 19, 5, 19, 19, 9, 15, 14, 63, 12, 9, 19, 20, 63, 5, 13, 16, 20, 25, 96}, 23, 222, 221, 192};
        k_viewText = [self StringFromHandleValueData:&value];
    }
    return k_viewText;
}

//: ic_delete
+ (NSString *)app_tagData {
    /* static */ NSString *app_tagData = nil;
    if (!app_tagData) {
        StructHandleValueData value = (StructHandleValueData){106, (Byte []){3, 9, 53, 14, 15, 6, 15, 30, 15, 107}, 9, 87, 60, 50};
        app_tagData = [self StringFromHandleValueData:&value];
    }
    return app_tagData;
}

//: name
+ (NSString *)dreamSuccessShowValue {
    /* static */ NSString *dreamSuccessShowValue = nil;
    if (!dreamSuccessShowValue) {
        StructHandleValueData value = (StructHandleValueData){10, (Byte []){100, 107, 103, 111, 83}, 4, 33, 239, 47};
        dreamSuccessShowValue = [self StringFromHandleValueData:&value];
    }
    return dreamSuccessShowValue;
}

//: home_add_friend
+ (NSString *)noti_sendData {
    /* static */ NSString *noti_sendData = nil;
    if (!noti_sendData) {
        StructHandleValueData value = (StructHandleValueData){37, (Byte []){77, 74, 72, 64, 122, 68, 65, 65, 122, 67, 87, 76, 64, 75, 65, 227}, 15, 50, 82, 243};
        noti_sendData = [self StringFromHandleValueData:&value];
    }
    return noti_sendData;
}

//: warm_prompt
+ (NSString *)m_videoData {
    /* static */ NSString *m_videoData = nil;
    if (!m_videoData) {
        StructHandleValueData value = (StructHandleValueData){68, (Byte []){51, 37, 54, 41, 27, 52, 54, 43, 41, 52, 48, 209}, 11, 130, 178, 211};
        m_videoData = [self StringFromHandleValueData:&value];
    }
    return m_videoData;
}

//: #ffffff
+ (NSString *)mLimitValue {
    /* static */ NSString *mLimitValue = nil;
    if (!mLimitValue) {
        StructHandleValueData value = (StructHandleValueData){51, (Byte []){16, 85, 85, 85, 85, 85, 85, 180}, 7, 145, 30, 156};
        mLimitValue = [self StringFromHandleValueData:&value];
    }
    return mLimitValue;
}

//: ic_topno
+ (NSString *)appNameValue {
    /* static */ NSString *appNameValue = nil;
    if (!appNameValue) {
        StructHandleValueData value = (StructHandleValueData){148, (Byte []){253, 247, 203, 224, 251, 228, 250, 251, 97}, 8, 1, 81, 197};
        appNameValue = [self StringFromHandleValueData:&value];
    }
    return appNameValue;
}

//: owner
+ (NSString *)mainTagText {
    /* static */ NSString *mainTagText = nil;
    if (!mainTagText) {
        StructHandleValueData value = (StructHandleValueData){65, (Byte []){46, 54, 47, 36, 51, 88}, 5, 179, 51, 16};
        mainTagText = [self StringFromHandleValueData:&value];
    }
    return mainTagText;
}

//: notification
+ (NSString *)noti_needData {
    /* static */ NSString *noti_needData = nil;
    if (!noti_needData) {
        StructHandleValueData value = (StructHandleValueData){88, (Byte []){54, 55, 44, 49, 62, 49, 59, 57, 44, 49, 55, 54, 197}, 12, 63, 24, 95};
        noti_needData = [self StringFromHandleValueData:&value];
    }
    return noti_needData;
}

//: (未连接)
+ (NSString *)notiMediaValue {
    /* static */ NSString *notiMediaValue = nil;
    if (!notiMediaValue) {
        StructHandleValueData value = (StructHandleValueData){253, (Byte []){213, 27, 97, 87, 21, 66, 99, 27, 115, 88, 212, 154}, 11, 196, 155, 95};
        notiMediaValue = [self StringFromHandleValueData:&value];
    }
    return notiMediaValue;
}

//: tname
+ (NSString *)dream_withData {
    /* static */ NSString *dream_withData = nil;
    if (!dream_withData) {
        StructHandleValueData value = (StructHandleValueData){90, (Byte []){46, 52, 59, 55, 63, 90}, 5, 152, 200, 54};
        dream_withData = [self StringFromHandleValueData:&value];
    }
    return dream_withData;
}

//: my_computer
+ (NSString *)app_mustName {
    /* static */ NSString *app_mustName = nil;
    if (!app_mustName) {
        StructHandleValueData value = (StructHandleValueData){220, (Byte []){177, 165, 131, 191, 179, 177, 172, 169, 168, 185, 174, 143}, 11, 163, 200, 84};
        app_mustName = [self StringFromHandleValueData:&value];
    }
    return app_mustName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartViewController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionListViewController.h"
#import "SmartViewController.h"
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "NTESListHeader.h"
#import "LineView.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "NTESPersonalCardViewController.h"
#import "SystemViewController.h"
//: #import "NTESMessageUtil.h"
#import "ShowTitleButton.h"
//: #import "NSString+NTES.h"
#import "NSString+Recent.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <Toast/UIView+Toast.h>
#import <Toast/UIView+Toast.h>
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESContactAddFriendViewController.h"
#import "ShowViewController.h"
//: #import "CCCContactScanViewController.h"
#import "LabViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "CompartmentViewController.h"
//: #import "NTESSystemSignNotificationSheet.h"
#import "OrientationView.h"
//: #import "ZCHttpInterfacedConst.h"
#import "ZCHttpInterfacedConst.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "FFFTextHighlight.h"
#import "ImageTextHighlight.h"
//: #import "FFFInputEmoticonParser.h"
#import "SignParser.h"
//: #import "FFFInputEmoticonManager.h"
#import "RedManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "NTESSystemNotificationViewController.h"
#import "WashedViewController.h"
//: #import "NTESNotificationView.h"
#import "RangeView.h"
//: #import "UIButton+Badge.h"
#import "UIButton+Status.h"
//: #import "CCCContactsViewController.h"
#import "ThreadViewController.h"
//: #import "NTESMainTabController.h"
#import "ManagerBarController.h"
//: #import "FFFKitFileLocationHelper.h"
#import "ImageHelper.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "PolicyView.h"

//: @interface NTESSessionListViewController ()<NIMLoginManagerDelegate,NTESListHeaderDelegate,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,NTESSystemSignNotificationDelegate,NIMSystemNotificationManagerDelegate>
@interface SmartViewController ()<NIMLoginManagerDelegate,HeaderDelegate,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,NameDelegate,NIMSystemNotificationManagerDelegate>

//: @property (nonatomic,strong) NTESListHeader *header;
@property (nonatomic,strong) LineView *header;
//: @property (nonatomic,assign) BOOL supportsForceTouch;
@property (nonatomic,assign) BOOL supportsForceTouch;
//: @property (nonatomic,strong) NSMutableDictionary *previews;
@property (nonatomic,strong) NSMutableDictionary *previews;

//: @property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;
@property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;

@property (nonatomic, strong) FFDropDownMenuView *dropdownMenu;/** 下拉菜单 */

//: @property (nonatomic, strong) NSString *creatTeam;
@property (nonatomic, strong) NSString *creatTeam;

//: @property (nonatomic, strong) NTESNotificationView *noticeView;
@property (nonatomic, strong) RangeView *noticeView;

//: @property (nonatomic, strong) UIButton *QuickChatBtn;
@property (nonatomic, strong) UIButton *QuickChatBtn;

//: @property (nonatomic, strong) UIButton *mesBtn;
@property (nonatomic, strong) UIButton *mesBtn;
//: @property (nonatomic, strong) UIButton *resqBtn;
@property (nonatomic, strong) UIButton *resqBtn;

//: @property (nonatomic, strong) UIView *reqView;
@property (nonatomic, strong) UIView *reqView;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) LabView *loadingView;

//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) PolicyView *policyView;


//: @end
@end

//: @implementation NTESSessionListViewController
@implementation SmartViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {
        //: _previews = [[NSMutableDictionary alloc] init];
        _previews = [[NSMutableDictionary alloc] init];
        //: self.stickTopInfos = NSMutableDictionary.dictionary;
        self.stickTopInfos = NSMutableDictionary.dictionary;
        //: self.autoRemoveRemoteSession = [[NTESBundleSetting sharedConfig] autoRemoveRemoteSession];
        self.autoRemoveRemoteSession = [[ImageTing configRefresh] button];
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)unreadCount];
    _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)unreadCount];
//    CGFloat width = SCREEN_WIDTH/4;
//    _resqBtn.badgeOriginX = width/2+20;
    //: _resqBtn.badgeOriginY = -5;
    _resqBtn.badgeOriginY = -5;
}

//: - (void)viewDidLoad{
- (void)viewDidLoad{
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.supportsForceTouch = [self.traitCollection respondsToSelector:@selector(forceTouchCapability)] && self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;
    self.supportsForceTouch = [self.traitCollection respondsToSelector:@selector(forceTouchCapability)] && self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];

    //: self.definesPresentationContext = YES;
    self.definesPresentationContext = YES;
    //: [self setUpNavItem];
    [self infoTime];

    /** 初始化下拉菜单 */
//    [self setupDropDownMenu];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice heightShowStop]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice heightShowStop]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    contentView.backgroundColor = [UIColor ground:[HandleValueData mLimitValue]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice heightShowStop]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    //: [contentView addSubview:self.tableView];
    [contentView addSubview:self.tableView];

    //: [self.view addSubview:self.QuickChatBtn];
    [self.view addSubview:self.QuickChatBtn];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    self.header = [[LineView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: self.emptyImageView = [[UIImageView alloc] init];
    self.emptyImageView = [[UIImageView alloc] init];
    //: self.emptyImageView.hidden = YES;
    self.emptyImageView.hidden = YES;
    //: self.emptyImageView.image = [UIImage imageNamed:@"icon_session_list_empty"];
    self.emptyImageView.image = [UIImage imageNamed:[HandleValueData k_viewText]];
    //: [self.view addSubview:self.emptyImageView];
    [self.view addSubview:self.emptyImageView];
    //: [self.emptyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.emptyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_offset(0);
        make.centerX.mas_offset(0);
        //: make.centerY.mas_offset(0).mas_offset(-50);
        make.centerY.mas_offset(0).mas_offset(-50);
        //: make.width.mas_equalTo(213);
        make.width.mas_equalTo(213);
        //: make.height.mas_offset(148);
        make.height.mas_offset(148);
    //: }];
    }];

    //: self.emptyTipLabel = [[UILabel alloc] init];
    self.emptyTipLabel = [[UILabel alloc] init];
    //: self.emptyTipLabel.hidden = YES;
    self.emptyTipLabel.hidden = YES;
    //: self.emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"no_conversation"];
    self.emptyTipLabel.text = [InputRed preserve:[HandleValueData userDisableTitle]];//@"还没有会话，在通讯录中找个人聊聊吧".ntes_localized;
    //: self.emptyTipLabel.numberOfLines = 0;
    self.emptyTipLabel.numberOfLines = 0;
    //: self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    //: self.emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    self.emptyTipLabel.textColor = [UIColor ground:[HandleValueData m_showData]];
    //: self.emptyTipLabel.textAlignment = NSTextAlignmentCenter;
    self.emptyTipLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.emptyTipLabel];
    [self.view addSubview:self.emptyTipLabel];
    //: [self.emptyTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.emptyTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(self.emptyImageView);
        make.centerX.mas_equalTo(self.emptyImageView);
        //: make.top.mas_equalTo(self.emptyImageView.mas_bottom).mas_offset(15);
        make.top.mas_equalTo(self.emptyImageView.mas_bottom).mas_offset(15);
        //: make.height.mas_equalTo(60);
        make.height.mas_equalTo(60);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width-40);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width-40);
    //: }];
    }];

    //: if(![[NIMUserDefaults standardUserDefaults].yspop isEqualToString:@"1"]){
    if(![[SessionRecord afterUser].yspop isEqualToString:@"1"]){
        //: UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        //: [window addSubview:self.policyView];
        [window addSubview:self.policyView];
    }


    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [TitleManager kindness:^(NSDictionary * _Nonnull configDict) {
        //: if (configDict.allKeys.count > 0) {
        if (configDict.allKeys.count > 0) {
            //: NSString *globalsign = [configDict newStringValueForKey:@"globalsign"];
            NSString *globalsign = [configDict route:[HandleValueData k_nameData]];
            //: if (globalsign.integerValue > 0) {
            if (globalsign.integerValue > 0) {
                //: NTESSystemSignNotificationSheet *sheet = [[NTESSystemSignNotificationSheet alloc] initWithFrame:self.view.bounds dictionary:@{}];
                OrientationView *sheet = [[OrientationView alloc] initWithImage:self.view.bounds exceptValue:@{}];
                //: sheet.delegate = self;
                sheet.delegate = self;
                //: [sheet show];
                [sheet container];
            }
        }
    //: }];
    }];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;
            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            //: }];
            }];
        //: });
        });
}

//: - (void)addfriends {
- (void)belowImage {
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    ShowViewController *vc = [[ShowViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)leftAction {
- (void)objectDoingLimit {
    //: [self requestAuthorizationForVideo];
    [self withStandard];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self loadStickTopSessions];
    [self loadTing];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self checkCreateTeam];
    [self canvass];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: -(void)checkCreateTeam{
-(void)canvass{
    //: __weak typeof(self) weakself = self;
    __weak typeof(self) weakself = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkcreateteam"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[HandleValueData user_itemValue]] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[HandleValueData app_showImageData]];
        //: weakself.creatTeam = code;
        weakself.creatTeam = code;
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)reloadUnreadCount{
-(void)accumulation{
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];

    //: UINavigationController *nav = self.navigationController.viewControllers[0];
    UINavigationController *nav = self.navigationController.viewControllers[0];
    //: nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
}

//: - (void)setUpNavItem{
- (void)infoTime{

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 180)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice heightShowStop], [[UIScreen mainScreen] bounds].size.width, 180)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"];
    labtitle.text = [InputRed preserve:[HandleValueData mEndCommentOffTitle]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    //: [moreBtn addTarget:self action:@selector(requestAuthorizationForVideo) forControlEvents:UIControlEventTouchUpInside];
    [moreBtn addTarget:self action:@selector(withStandard) forControlEvents:UIControlEventTouchUpInside];
    //: [moreBtn setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [moreBtn setImage:[UIImage imageNamed:[HandleValueData dreamPressMaxText]] forState:UIControlStateNormal];
    //: moreBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    moreBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: moreBtn.layer.cornerRadius = 16;
    moreBtn.layer.cornerRadius = 16;
    //: moreBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    moreBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: moreBtn.layer.shadowOffset = CGSizeMake(0,4);
    moreBtn.layer.shadowOffset = CGSizeMake(0,4);
    //: moreBtn.layer.shadowOpacity = 1;
    moreBtn.layer.shadowOpacity = 1;
    //: moreBtn.layer.shadowRadius = 12;
    moreBtn.layer.shadowRadius = 12;
    //: [topview addSubview:moreBtn];
    [topview addSubview:moreBtn];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-25)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-25)/2;
    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(12, 60, width+5, 116)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(12, 60, width+5, 116)];
    //: [topview addSubview:box1];
    [topview addSubview:box1];
    //: box1.userInteractionEnabled = YES;
    box1.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerAddfriend)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dataArray)];
    //: [box1 addGestureRecognizer:singleTap1];
    [box1 addGestureRecognizer:singleTap1];
    //: UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_add_friend"]];
    UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[HandleValueData noti_sendData]]];
    //: image1.frame = CGRectMake(0, 0, width+5, 116);
    image1.frame = CGRectMake(0, 0, width+5, 116);
    //: image1.contentMode = UIViewContentModeScaleAspectFill;
    image1.contentMode = UIViewContentModeScaleAspectFill;
    //: [box1 addSubview:image1];
    [box1 addSubview:image1];
    //: UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-10, 116)];
    UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-10, 116)];
    //: label12.font = [UIFont systemFontOfSize:16.f];
    label12.font = [UIFont systemFontOfSize:16.f];
//    label12.textAlignment = NSTextAlignmentCenter;
    //: label12.textColor = [UIColor whiteColor];
    label12.textColor = [UIColor whiteColor];
    //: label12.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    label12.text = [InputRed preserve:[HandleValueData noti_buttonName]];
    //: label12.numberOfLines = 0;
    label12.numberOfLines = 0;
    //: [box1 addSubview:label12];
    [box1 addSubview:label12];

    //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(12+width+10, 60, width-10, 52)];
    UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(12+width+10, 60, width-10, 52)];
    //: [topview addSubview:box2];
    [topview addSubview:box2];
    //: box2.userInteractionEnabled = YES;
    box2.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerAddgroup)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(shadowinessAddgroup)];
    //: [box2 addGestureRecognizer:singleTap2];
    [box2 addGestureRecognizer:singleTap2];

    //: UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_notice"]];
    UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[HandleValueData mMakeVideoTitle]]];
    //: image2.frame = CGRectMake(0, 0, width-10, 52);
    image2.frame = CGRectMake(0, 0, width-10, 52);
    //: image2.contentMode = UIViewContentModeScaleAspectFill;
    image2.contentMode = UIViewContentModeScaleAspectFill;
    //: [box2 addSubview:image2];
    [box2 addSubview:image2];
    //: UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label2.font = [UIFont systemFontOfSize:16.f];
    label2.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label2.textColor = [UIColor whiteColor];
    label2.textColor = [UIColor whiteColor];
    //: label2.text = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    label2.text = [InputRed preserve:[HandleValueData userReadNeedName]];
    //: [box2 addSubview:label2];
    [box2 addSubview:label2];

    //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    //: [topview addSubview:box4];
    [topview addSubview:box4];

    //: UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_create_group"]];
    UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[HandleValueData noti_removeTitle]]];
    //: image3.frame = CGRectMake(0, 0, width-5, 52);
    image3.frame = CGRectMake(0, 0, width-5, 52);
    //: image3.contentMode = UIViewContentModeScaleAspectFill;
    image3.contentMode = UIViewContentModeScaleAspectFill;
    //: [box4 addSubview:image3];
    [box4 addSubview:image3];

    //: _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _resqBtn.frame = CGRectMake(0, 0, width-5, 52);
    _resqBtn.frame = CGRectMake(0, 0, width-5, 52);
//    [_resqBtn setImage:[UIImage imageNamed:@"home_create_group"] forState:UIControlStateNormal];
    //: [_resqBtn addTarget:self action:@selector(handlerNotice) forControlEvents:UIControlEventTouchUpInside];
    [_resqBtn addTarget:self action:@selector(withMessage) forControlEvents:UIControlEventTouchUpInside];
     //: [box4 addSubview:_resqBtn];
     [box4 addSubview:_resqBtn];

    //: UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label3.font = [UIFont systemFontOfSize:16.f];
    label3.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label3.textColor = [UIColor whiteColor];
    label3.textColor = [UIColor whiteColor];
    //: label3.text = [FFFLanguageManager getTextWithKey:@"notification"];
    label3.text = [InputRed preserve:[HandleValueData noti_needData]];
    //: [box4 addSubview:label3];
    [box4 addSubview:label3];

    //: NSInteger systemUnreadCount = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    NSInteger systemUnreadCount = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    //: _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)systemUnreadCount];
    _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)systemUnreadCount];
//    _resqBtn.badgeOriginX = width/2+20;
    //: _resqBtn.badgeOriginY = -5;
    _resqBtn.badgeOriginY = -5;

}

//: - (void)handlerMessage {
- (void)worldView {
    //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _mesBtn.backgroundColor = [UIColor ground:[HandleValueData user_appearScaleData]];
    //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor ground:[HandleValueData main_completeValue]] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor clearColor];
    _resqBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = YES;
    self.noticeView.hidden = YES;
    //: self.tableView.hidden = NO;
    self.tableView.hidden = NO;
}
//: - (void)handlerRequests {
- (void)commentReply {
    //: [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _resqBtn.backgroundColor = [UIColor ground:[HandleValueData user_appearScaleData]];
    //: [_mesBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor ground:[HandleValueData main_completeValue]] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor clearColor];
    _mesBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = NO;
    self.noticeView.hidden = NO;
    //: self.tableView.hidden = YES;
    self.tableView.hidden = YES;
}
//: - (void)handlerAddfriend {
- (void)dataArray {
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    ShowViewController *vc = [[ShowViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handlerAddgroup {
- (void)shadowinessAddgroup {
    //: [self creatTeamGroup];
    [self resolutionIn];
}

//: - (void)handlerNotice {
- (void)withMessage {
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    WashedViewController *vc = [[WashedViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)refresh{
- (void)collection{
    //: [super refresh];
    [super collection];
    //: self.emptyTipLabel.hidden = self.recentSessions.count;
    self.emptyTipLabel.hidden = self.recentSessions.count;
    //: self.emptyImageView.hidden = self.recentSessions.count;
    self.emptyImageView.hidden = self.recentSessions.count;
    //: self.addBtn.hidden = self.recentSessions.count;
    self.addBtn.hidden = self.recentSessions.count;

}

//: - (void)onSelectedRecent:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath{
- (void)table:(NIMRecentSession *)recent thumbContent:(NSIndexPath *)indexPath{
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:recent.session];
    DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:recent.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onSelectedAvatar:(NIMRecentSession *)recent
- (void)beforeContainerPath:(NIMRecentSession *)recent
             //: atIndexPath:(NSIndexPath *)indexPath{
             mode:(NSIndexPath *)indexPath{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: UIViewController *vc;
        UIViewController *vc;
        //: vc = [[NTESPersonalCardViewController alloc] initWithUserId:recent.session.sessionId];
        vc = [[SystemViewController alloc] initWithAdd:recent.session.sessionId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)onDeleteRecentAtIndexPath:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath
- (void)number:(NIMRecentSession *)recent color:(NSIndexPath *)indexPath
{
    //: id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
    NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
    //: option.isDeleteRoamMessage = self.autoRemoveRemoteSession;
    option.isDeleteRoamMessage = self.autoRemoveRemoteSession;
    //: [manager deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
    [manager deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: NSLog(@"deleteRecentSessionError:%@",error);
        //: if (!error) {
        if (!error) {
            //清理本地数据
            //: [self.recentSessions removeObject:recent];
            [self.recentSessions removeObject:recent];
            //: self.recentSessions = [self customSortRecents:self.recentSessions];
            self.recentSessions = [self coloured:self.recentSessions];
            //: [self refresh];
            [self collection];
        }
    //: }];
    }];

//    [manager deleteRecentSession:recent];

}

//: - (void)onTopRecentAtIndexPath:(NIMRecentSession *)recent
- (void)content:(NIMRecentSession *)recent
                   //: atIndexPath:(NSIndexPath *)indexPath
                   view:(NSIndexPath *)indexPath
                         //: isTop:(BOOL)isTop
                         clearInput:(BOOL)isTop
{
    //: if (isTop)
    if (isTop)
    {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:self.stickTopInfos[recent.session] completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
        [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:self.stickTopInfos[recent.session] completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
            //: __weak typeof(self) sself = wself;
            __weak typeof(self) sself = wself;
            //: if (!sself) return;
            if (!sself) return;
            //: if (error) {
            if (error) {
                //: [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                //: return;
                return;
            }
            //: self.stickTopInfos[recent.session] = nil;
            self.stickTopInfos[recent.session] = nil;
            //: [self refresh];
            [self collection];
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:recent.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:recent.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable newInfo) {
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable newInfo) {
            //: __weak typeof(self) sself = wself;
            __weak typeof(self) sself = wself;
            //: if (!sself) return;
            if (!sself) return;
            //: if (error) {
            if (error) {
                //: [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                //: return;
                return;
            }
            //: self.stickTopInfos[newInfo.session] = newInfo;
            self.stickTopInfos[newInfo.session] = newInfo;
            //: [self refresh];
            [self collection];
        //: }];
        }];
    }
}

//: - (void)onDisnodistrubRecentAtIndexPath:(NIMRecentSession *)recent isDis:(BOOL)isDis
- (void)beyondView:(NIMRecentSession *)recent want:(BOOL)isDis
{
    //: FFFKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (recent.session.sessionType == NIMSessionTypeTeam) {
    if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
        info = [[MessageContent secretResolution] info:recent.session.sessionId comment:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;
        notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;

        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
            //: [self refresh];
            [self collection];
        //: }];
        }];
    //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
    } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = recent.session;
        option.session = recent.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
        info = [[MessageContent secretResolution] recent:recent.session.sessionId blue:option];
//        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰

        //: [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
            //: [self refresh];
            [self collection];
        //: }];
        }];
    }
//
//    if(!isDis){
//        [self reloadUnreadCount];
//    }


}

///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)sharedWith:(NIMRecentSession *)recentSession; {
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: return isTop;
    return isTop;
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: [self refreshSubview];
    [self median];
}


//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent{
- (NSString *)tin:(NIMRecentSession *)recent{
    //: if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: return [FFFLanguageManager getTextWithKey:@"my_computer"];
        return [InputRed preserve:[HandleValueData app_mustName]];
    }
    //: return [super nameForRecentSession:recent];
    return [super tin:recent];
}

//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)coloured:(NSMutableArray *)recentSessions
{
    //: [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    //: return recentSessions;
    return recentSessions;
}


//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step {
- (void)onLogin:(NIMLoginStep)step {

    //: ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep = step;
    ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep = step;

    //: [super onLogin:step];
    [super onLogin:step];
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
            //: self.navigationItem.title = @"(未连接)".ntes_localized;
            self.navigationItem.title = [HandleValueData notiMediaValue].shouldLocalized;
            //: break;
            break;
        //: case NIMLoginStepLinking:
        case NIMLoginStepLinking:
            //: self.navigationItem.title = @"(连接中)".ntes_localized;
            self.navigationItem.title = [HandleValueData noti_canValue].shouldLocalized;
            //: break;
            break;
        //: case NIMLoginStepLinkOK:
        case NIMLoginStepLinkOK:
        //: case NIMLoginStepSyncOK:
        case NIMLoginStepSyncOK:
            //: self.navigationItem.title = @"";
            self.navigationItem.title = @"";
            //: break;
            break;
        //: case NIMLoginStepSyncing:
        case NIMLoginStepSyncing:
            //: self.navigationItem.title = @"(同步数据)".ntes_localized;
            self.navigationItem.title = [HandleValueData dream_addValue].shouldLocalized;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header streetwise:ListHeaderTypeNetStauts kitKey:@(step)];
    //: [self refreshSubview];
    [self median];
}

//: - (void)onMultiLoginClientsChanged
- (void)onMultiLoginClientsChanged
{
//    [self.header refreshWithType:ListHeaderTypeLoginClients value:[NIMSDK sharedSDK].loginManager.currentLoginClients];
//    [self refreshSubview];
}

//: - (void)onTeamUsersSyncFinished:(BOOL)success
- (void)onTeamUsersSyncFinished:(BOOL)success
{
}


//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if (self.supportsForceTouch) {
    if (self.supportsForceTouch) {
        //: id<UIViewControllerPreviewing> preview = [self registerForPreviewingWithDelegate:self sourceView:cell];
        id<UIViewControllerPreviewing> preview = [self registerForPreviewingWithDelegate:self sourceView:cell];
        //: [self.previews setObject:preview forKey:@(indexPath.section)];
        [self.previews setObject:preview forKey:@(indexPath.section)];
    }
}

//: - (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if (self.supportsForceTouch) {
    if (self.supportsForceTouch) {
        //: id<UIViewControllerPreviewing> preview = [self.previews objectForKey:@(indexPath.row)];
        id<UIViewControllerPreviewing> preview = [self.previews objectForKey:@(indexPath.row)];
        //: [self unregisterForPreviewingWithContext:preview];
        [self unregisterForPreviewingWithContext:preview];
        //: [self.previews removeObjectForKey:@(indexPath.section)];
        [self.previews removeObjectForKey:@(indexPath.section)];
    }
}


//: - (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
    //: UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;

    //: return nil;
    return nil;
}

//: - (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    //: UITableViewCell *touchCell = (UITableViewCell *)previewingContext.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)previewingContext.sourceView;
    //: if ([touchCell isKindOfClass:[UITableViewCell class]]) {
    if ([touchCell isKindOfClass:[UITableViewCell class]]) {
        //: NSIndexPath *indexPath = [self.tableView indexPathForCell:touchCell];
        NSIndexPath *indexPath = [self.tableView indexPathForCell:touchCell];
        //: NIMRecentSession *recent = self.recentSessions[indexPath.row];
        NIMRecentSession *recent = self.recentSessions[indexPath.row];
        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:recent.session];
        DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:recent.session];
        //: [self.navigationController showViewController:vc sender:nil];
        [self.navigationController showViewController:vc sender:nil];
    }
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 偶现侧滑数组越界，但并没有发现并发问题，暂且防护
    //: return indexPath.section < self.recentSessions.count;
    return indexPath.section < self.recentSessions.count;
}

//: - (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: UIContextualAction *deleteAction1 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction1 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES]; 
        [tableView setEditing:NO animated:YES]; // 这句很重要，退出编辑模式，隐藏左滑菜单

        //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
        NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
        //: [self onDeleteRecentAtIndexPath:recentSession atIndexPath:indexPath];
        [self number:recentSession color:indexPath];
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];

        // 删除置顶
        //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:recentSession.session];
        NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:recentSession.session];
        //: if (stickTopInfo) {
        if (stickTopInfo) {
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;

                //: if (!self) return;
                if (!self) return;
                //: if (!error) {
                if (!error) {
                    //: self.stickTopInfos[recentSession.session] = nil;
                    self.stickTopInfos[recentSession.session] = nil;
                }
            //: }];
            }];
        }
    //: }];
    }];

    //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: UIContextualAction *deleteAction2 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction2 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];
        //: [self onTopRecentAtIndexPath:recentSession atIndexPath:indexPath isTop:isTop];
        [self content:recentSession view:indexPath clearInput:isTop];
    //: }];
    }];

    //: BOOL isDisnodistrub = NO;
    BOOL isDisnodistrub = NO;
    //: FFFKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (recentSession.session.sessionType == NIMSessionTypeTeam) {
    if (recentSession.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recentSession.session.sessionId option:nil];
        info = [[MessageContent secretResolution] info:recentSession.session.sessionId comment:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
        isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;

    //: } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
    } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = recentSession.session;
        option.session = recentSession.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recentSession.session.sessionId option:option];
        info = [[MessageContent secretResolution] recent:recentSession.session.sessionId blue:option];
        //: isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
    }
    //: UIContextualAction *deleteAction3 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction3 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];
        //: [self onDisnodistrubRecentAtIndexPath:recentSession isDis:isDisnodistrub];
        [self beyondView:recentSession want:isDisnodistrub];
    //: }];
    }];

//    //只能设置背景颜色，图片，文字
    //: deleteAction1.backgroundColor = [UIColor whiteColor];
    deleteAction1.backgroundColor = [UIColor whiteColor];
    //: deleteAction1.image = [UIImage imageNamed:@"ic_delete"];
    deleteAction1.image = [UIImage imageNamed:[HandleValueData app_tagData]];
//
    //: deleteAction2.backgroundColor = [UIColor whiteColor];
    deleteAction2.backgroundColor = [UIColor whiteColor];
    //: if(isTop){
    if(isTop){
        //: deleteAction2.image = [UIImage imageNamed:@"ic_topno"];
        deleteAction2.image = [UIImage imageNamed:[HandleValueData appNameValue]];
    //: }else{
    }else{
        //: deleteAction2.image = [UIImage imageNamed:@"ic_top"];
        deleteAction2.image = [UIImage imageNamed:[HandleValueData dream_videoName]];
    }


    //: deleteAction3.backgroundColor = [UIColor whiteColor];
    deleteAction3.backgroundColor = [UIColor whiteColor];
    //: if(isDisnodistrub){
    if(isDisnodistrub){
        //: deleteAction3.image = [UIImage imageNamed:@"ic_distrub"];
        deleteAction3.image = [UIImage imageNamed:[HandleValueData noti_mustName]];
    //: }else{
    }else{
        //: deleteAction3.image = [UIImage imageNamed:@"ic_nodistrub"];
        deleteAction3.image = [UIImage imageNamed:[HandleValueData dream_nameValue]];
    }
//    // 创建包含图片和文字的自定义视图
//    UIView *customView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView1.backgroundColor = [UIColor redColor];
//    // 图片
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView1.centerX = customView1.centerX;
//    imageView1.image = [UIImage imageNamed:@"ic_delete"];
//    [customView1 addSubview:imageView1];
//    // 文字
//    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label1.text = @"删除".nim_localized;
//    label1.textColor = [UIColor whiteColor];
//    label1.textAlignment = NSTextAlignmentCenter;
//    label1.font = [UIFont systemFontOfSize:12.0];
//    label1.centerX = customView1.centerX;
//    [customView1 addSubview:label1];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction1.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView1]];
//    // 创建包含图片和文字的自定义视图
//    UIView *customView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView2.backgroundColor = kCommonColor;
//    // 图片
//    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView2.centerX = customView2.centerX;
//    imageView2.image = [UIImage imageNamed:@"ic_top"];
//    [customView2 addSubview:imageView2];
//    // 文字
//    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label2.text = isTop?@"取消置顶".nim_localized:@"置顶".nim_localized;
//    label2.textColor = [UIColor whiteColor];
//    label2.textAlignment = NSTextAlignmentCenter;
//    label2.font = [UIFont systemFontOfSize:12.0];
//    label2.centerX = customView2.centerX;
//    [customView2 addSubview:label2];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction2.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView2]];

//    // 创建包含图片和文字的自定义视图
//    UIView *customView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView3.backgroundColor = RGB_COLOR_String(@"#FFA339");
//    // 图片
//    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView3.centerX = customView3.centerX;
//    imageView3.image = [UIImage imageNamed:@"ic_nodistrub"];
//    [customView3 addSubview:imageView3];
//    // 文字
//    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label3.text = isDisnodistrub?LangKey(@"Block"):LangKey(@"unBlock");
//    label3.textColor = [UIColor whiteColor];
//    label3.textAlignment = NSTextAlignmentCenter;
//    label3.font = [UIFont systemFontOfSize:12.0];
//    label3.centerX = customView3.centerX;
//    [customView3 addSubview:label3];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction3.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView3]];

    //: NSArray<UIContextualAction*> *contextualAction = @[deleteAction1,deleteAction3,deleteAction2];
    NSArray<UIContextualAction*> *contextualAction = @[deleteAction1,deleteAction3,deleteAction2];
    //: UISwipeActionsConfiguration *actions = [UISwipeActionsConfiguration configurationWithActions:contextualAction];
    UISwipeActionsConfiguration *actions = [UISwipeActionsConfiguration configurationWithActions:contextualAction];
    //: actions.performsFirstActionWithFullSwipe = NO; 
    actions.performsFirstActionWithFullSwipe = NO; // 禁止侧滑无线拉伸
    //: return actions;
    return actions;
}
//: - (UIImage *)imageWithView:(UIView *)view {
- (UIImage *)certainty:(UIView *)view {
    //: UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    //: [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return image;
    return image;
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
        //: NIMRecentSession *recent = self.recentSessions[indexPath.row];
        NIMRecentSession *recent = self.recentSessions[indexPath.row];
        //: if (recent.session.sessionType == NIMSessionTypeP2P) {
        if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: NSString *from = recent.session.sessionId;
            NSString *from = recent.session.sessionId;
            //: if ([ids containsObject:from]) {
            if ([ids containsObject:from]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }

    //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
}

//: - (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
- (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
{
    //: self.stickTopInfos[newInfo.session] = newInfo;
    self.stickTopInfos[newInfo.session] = newInfo;
    //: [self refresh];
    [self collection];
}

//: - (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
- (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
{
    //: self.stickTopInfos[removedInfo.session] = nil;
    self.stickTopInfos[removedInfo.session] = nil;
    //: [self refresh];
    [self collection];
}

//: - (void)onNotifySyncStickTopSessions:(NIMSyncStickTopSessionResponse *)response
- (void)onNotifySyncStickTopSessions:(NIMSyncStickTopSessionResponse *)response
{
    //: if (response.hasChange) {
    if (response.hasChange) {
        //: [self.stickTopInfos removeAllObjects];
        [self.stickTopInfos removeAllObjects];
        //: [response.allInfos enumerateObjectsUsingBlock:^(NIMStickTopSessionInfo * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [response.allInfos enumerateObjectsUsingBlock:^(NIMStickTopSessionInfo * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: self.stickTopInfos[obj.session] = obj;
            self.stickTopInfos[obj.session] = obj;
        //: }];
        }];
        //: [self refresh];
        [self collection];
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)onMarkMessageReadCompleteInSession:(NIMSession *)session error:(NSError *)error {
- (void)onMarkMessageReadCompleteInSession:(NIMSession *)session error:(NSError *)error {
    //: if (error) {
    if (error) {
//        UIWindow *keyWindow = [UIApplication sharedApplication].windows.firstObject;
//        NSString *msg = [NSString stringWithFormat:@"session %@ type %@ mark fail.code:%@",
//                         session.sessionId, @(session.sessionType), @(error.code)];
//        [keyWindow makeToast:msg duration:2 position:CSToastPositionCenter];
    }
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)refreshSubview{
- (void)median{
    //: self.header.top = [UIDevice vg_statusBarHeight]+180;
    self.header.top = [UIDevice heightShowStop]+180;
//    self.tableView.top = SCREEN_STATUS_HEIGHT +44;
//    CGFloat offset = self.view.safeAreaInsets.bottom;
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, offset, 0);
//
//    self.tableView.height = self.view.height - self.tableView.top;

}

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)server:(NIMRecentSession *)recent{
    //: NSAttributedString *content;
    NSAttributedString *content;
    //: if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    {
        //: NIMMessage *msg = recent.lastMessage;
        NIMMessage *msg = recent.lastMessage;
        //: if ([recent.lastMessage.text containsString:[FFFLanguageManager getTextWithKey:@"retracted_message"]]) {
        if ([recent.lastMessage.text containsString:[InputRed preserve:[HandleValueData show_scaleName]]]) {
            //: msg = [self lastMessageWithNoRevocationMessage:recent.lastMessage];
            msg = [self imageContent:recent.lastMessage];
        }
        //: NSString *text = [NTESMessageUtil messageContent:msg];
        NSString *text = [ShowTitleButton dataTitle:msg];
        //: if (recent.session.sessionType != NIMSessionTypeP2P)
        if (recent.session.sessionType != NIMSessionTypeP2P)
        {
            //: NSString *nickName = [NTESSessionUtil showNick:msg.from inSession:msg.session];
            NSString *nickName = [SessionUtil name:msg.from progressSession:msg.session];
            //: text = nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
            text = nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
        }
        //: content = [[NSAttributedString alloc] initWithString:text?:@""];
        content = [[NSAttributedString alloc] initWithString:text?:@""];
    }
    //: else
    else
    {
        //: content = [super contentForRecentSession:recent];
        content = [super server:recent];
    }
    //: NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    //: [self checkNeedAtTip:recent content:attContent];
    [self date:recent member:attContent];
    //: [self checkOnlineState:recent content:attContent];
    [self value:recent full_strong:attContent];

    //: NSMutableAttributedString *resultS = [self transformEmojiDescToEomjiImageWithAttributedString:attContent];
    NSMutableAttributedString *resultS = [self tap:attContent];

    //: return resultS;
    return resultS;
}

//: - (NIMMessage *)lastMessageWithNoRevocationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)imageContent:(NIMMessage *)recentMsg {

    //: NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    //: NIMMessage *msg = recentMsg;
    NIMMessage *msg = recentMsg;
    //: if (messages.count > 0) {
    if (messages.count > 0) {
        //: msg = messages.firstObject;
        msg = messages.firstObject;
        //: if (msg.messageType == NIMMessageTypeCustom && msg.messageSubType == 20) {
        if (msg.messageType == NIMMessageTypeCustom && msg.messageSubType == 20) {
            //: return [self lastMessageWithNoRevocationMessage:msg];
            return [self imageContent:msg];
        }
    }
    //: return msg;
    return msg;
}

//: + (NSRegularExpression *)regexEmoticon {
+ (NSRegularExpression *)betweenSend {
    //: static NSRegularExpression *regex;
    static NSRegularExpression *regex;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
        regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
    //: });
    });
    //: return regex;
    return regex;
}

//: - (NSMutableAttributedString *)transformEmojiDescToEomjiImageWithAttributedString:(NSAttributedString *)attributedString {
- (NSMutableAttributedString *)tap:(NSAttributedString *)attributedString {
    // 匹配 [表情]
    //: NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    //: if (attrM.length > 0) {
    if (attrM.length > 0) {

        //: NSArray<NSTextCheckingResult *> *emoticonResults = [[NTESSessionListViewController regexEmoticon] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        NSArray<NSTextCheckingResult *> *emoticonResults = [[SmartViewController betweenSend] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        //: UIFont *fontSize = [UIFont systemFontOfSize:13];
        UIFont *fontSize = [UIFont systemFontOfSize:13];
        //: NSTextAlignment textAlignment = attrM.yy_alignment;
        NSTextAlignment textAlignment = attrM.yy_alignment;
        //: CGFloat lineSpacing = attrM.yy_lineSpacing;
        CGFloat lineSpacing = attrM.yy_lineSpacing;

        //: [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
        [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
            //: NSRange range = emo.range;
            NSRange range = emo.range;
            //: if (range.location == NSNotFound && range.length <= 1) return;
            if (range.location == NSNotFound && range.length <= 1) return;

            //: if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            //: if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            //: NSString *emoString = [attrM.string substringWithRange:range];
            NSString *emoString = [attrM.string substringWithRange:range];

            //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:emoString];
            FrontwardsCount *emoticon = [[RedManager session] success:emoString];

            //: UIImage *image = [UIImage nim_emoticonInKit:emoticon.filename];
            UIImage *image = [UIImage view:emoticon.filename];

            //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            //: attachment.image = image;
            attachment.image = image;
            //: CGFloat emojiHeight = fontSize.lineHeight;
            CGFloat emojiHeight = fontSize.lineHeight;
            //: attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight, emojiHeight);
            attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight, emojiHeight);

            //: NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
            NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
            //: [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
            [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
            //: [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            //: [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];
            [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];

            //: if (!image && emoticon.unicode){
            if (!image && emoticon.unicode){
                //: emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                //: [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
                [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            }

            //: FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
            ImageTextHighlight *highlight = [[ImageTextHighlight alloc] init];
            //: highlight.type = FFFTextHighlightTypeEmoji;
            highlight.type = FFFTextHighlightTypeEmoji;
            //: highlight.text = emoString;
            highlight.text = emoString;
            //: [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
            [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
            //: if (image || (!image && emoticon.unicode)) {
            if (image || (!image && emoticon.unicode)) {
                //: [attrM replaceCharactersInRange:range withAttributedString:emoText];
                [attrM replaceCharactersInRange:range withAttributedString:emoText];
            }
        //: }];
        }];
        //: attrM.yy_font = fontSize;
        attrM.yy_font = fontSize;
        //: attrM.yy_alignment = textAlignment;
        attrM.yy_alignment = textAlignment;
        //: attrM.yy_lineSpacing = lineSpacing;
        attrM.yy_lineSpacing = lineSpacing;
    }
    //: return attrM;
    return attrM;
}

//: - (void)checkNeedAtTip:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)date:(NIMRecentSession *)recent member:(NSMutableAttributedString *)content
{
    //: if ([NTESSessionUtil recentSessionIsMark:recent type:NTESRecentSessionMarkTypeAt]) {
    if ([SessionUtil itemBackground:recent cell:NTESRecentSessionMarkTypeAt]) {
        //: NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:@"[有人@你]".ntes_localized attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:[HandleValueData mainRemoveColorValue].shouldLocalized attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        //: [content insertAttributedString:atTip atIndex:0];
        [content insertAttributedString:atTip atIndex:0];
    }
}

//: - (void)checkOnlineState:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)value:(NIMRecentSession *)recent full_strong:(NSMutableAttributedString *)content
{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
//        NSString *state  = [SessionUtil onlineState:recent.session.sessionId detail:NO];
//        if (state.length) {
//            NSString *format = [NSString stringWithFormat:@"[%@] ",state];
//            NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:format attributes:nil];
//            [content insertAttributedString:atTip atIndex:0];
//        }
    }
}

//: - (void)loadStickTopSessions
- (void)loadTing
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [NIMSDK.sharedSDK.chatExtendManager loadStickTopSessionInfos:^(NSError * _Nullable error, NSDictionary<NIMSession *,NIMStickTopSessionInfo *> * _Nullable infos) {
    [NIMSDK.sharedSDK.chatExtendManager loadStickTopSessionInfos:^(NSError * _Nullable error, NSDictionary<NIMSession *,NIMStickTopSessionInfo *> * _Nullable infos) {
        //: __strong typeof(self) sself = wself;
        __strong typeof(self) sself = wself;
        //: if (!sself) return;
        if (!sself) return;
        //: sself.stickTopInfos = [NSMutableDictionary dictionaryWithDictionary:infos];
        sself.stickTopInfos = [NSMutableDictionary dictionaryWithDictionary:infos];
        //: [sself refresh];
        [sself collection];
    //: }];
    }];
}


//: -(void)moreClickDelegate{
-(void)press{
    //: [self showDropDownMenu];
    [self statusMy];
}



//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)groupType:(NSString *)teamID group:(NSString *)teamName viewGreen:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[HandleValueData mainTagText]] = currentUserId;
    //: dict[@"type"] = type;
    dict[[HandleValueData noti_targetData]] = type;
    //: dict[@"tname"] = teamName;
    dict[[HandleValueData dream_withData]] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[HandleValueData main_countName]] = teamID;

}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)like:(ContactSelectFinishBlock) block{
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
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc high];
}

//: - (void)quickChatpresentMemberSelector:(ContactSelectFinishBlock) block{
- (void)by:(ContactSelectFinishBlock) block{
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
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc high];
}

//: #pragma mark - 下拉菜单
#pragma mark - 下拉菜单

/** 初始化下拉菜单 */
//: - (void)setupDropDownMenu {
- (void)frank {
    //: NSArray *modelsArray = [self getMenuModelsArray];
    NSArray *modelsArray = [self frameShow];


    //: self.dropdownMenu = [FFDropDownMenuView new];
    self.dropdownMenu = [FFDropDownMenuView new];

     //进行属性的赋值

     //若使用默认CGFloat值     请使用 FFDefaultFloat          、或者无需进行赋值
     //若使用默认CGSize值      请使用 FFDefaultSize           、或者无需进行赋值
     //若使用默认Cell值        请使用 FFDefaultCell           、或者无需进行赋值
     //若使用默认Color值       请使用 FFDefaultColor          、或者无需进行赋值
     //若使用默认ScaleType值   请使用 FFDefaultMenuScaleType  、或者无需进行赋值


     /** 下拉菜单模型数组 */
     //: self.dropdownMenu.menuModelsArray = modelsArray;
     self.dropdownMenu.menuModelsArray = modelsArray;
     /** cell的类名 */
     //: self.dropdownMenu.cellClassName = @"FFDropDownMenuCell";
     self.dropdownMenu.cellClassName = @"FFDropDownMenuCell";
     /** 菜单的宽度(若不设置，默认为 150) */
     //: self.dropdownMenu.menuWidth = 120;
     self.dropdownMenu.menuWidth = 120;
     /** 菜单的圆角半径(若不设置，默认为5) */
     //: self.dropdownMenu.menuCornerRadius = -10.0;
     self.dropdownMenu.menuCornerRadius = -10.0;
     /** 每一个选项的高度(若不设置，默认为40) */
     //: self.dropdownMenu.eachMenuItemHeight = 50;
     self.dropdownMenu.eachMenuItemHeight = 50;
     /** 菜单条离屏幕右边的间距(若不设置，默认为10) */
     //: self.dropdownMenu.menuRightMargin = 10;
     self.dropdownMenu.menuRightMargin = 10;
     /** 三角形颜色(若不设置，默认为白色) */
     //: self.dropdownMenu.triangleColor = [UIColor whiteColor];
     self.dropdownMenu.triangleColor = [UIColor whiteColor];
     /** 三角形相对于keyWindow的y值,也就是相对于屏幕顶部的y值(若不设置，默认为64) */
     //: self.dropdownMenu.triangleY = [UIDevice vg_statusBarHeight] +30;
     self.dropdownMenu.triangleY = [UIDevice heightShowStop] +30;
     /** 三角形距离屏幕右边的间距(若不设置，默认为20) */
     //: self.dropdownMenu.triangleRightMargin = 20;
     self.dropdownMenu.triangleRightMargin = 20;
     /** 三角形的size  size.width:代表三角形底部边长，size.Height:代表三角形的高度(若不设置，默认为CGSizeMake(15, 10)) */
     //: self.dropdownMenu.triangleSize = CGSizeMake(15, 10);
     self.dropdownMenu.triangleSize = CGSizeMake(15, 10);
     /** 背景颜色开始时的透明度(还没展示menu的透明度)(若不设置，默认为0.02) */
     //: self.dropdownMenu.bgColorbeginAlpha = 0;
     self.dropdownMenu.bgColorbeginAlpha = 0;
     /** 背景颜色结束的的透明度(menu完全展示的透明度)(若不设置，默认为0.2) */
     //: self.dropdownMenu.bgColorEndAlpha = 0.4;
     self.dropdownMenu.bgColorEndAlpha = 0.4;
     /** 动画效果时间(若不设置，默认为0.2) */
     //: self.dropdownMenu.animateDuration = -10.0;
     self.dropdownMenu.animateDuration = -10.0;
     /** 菜单的伸缩类型 */
     //: self.dropdownMenu.menuAnimateType = FFDropDownMenuViewAnimateType_ScaleBasedTopRight;
     self.dropdownMenu.menuAnimateType = FFDropDownMenuViewAnimateType_ScaleBasedTopRight;

    //: self.dropdownMenu.cellClassName = @"FFDropDownMenuCustomCell";
    self.dropdownMenu.cellClassName = @"SessionBasedCell";

     //所有属性赋值完 一定要调用 setup
     //: [self.dropdownMenu setup];
     [self.dropdownMenu setup];

}



/** 获取菜单模型数组 */
//: - (NSArray *)getMenuModelsArray {
- (NSArray *)frameShow {
    //菜单模型0
    //: NSString *add_friend = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    NSString *add_friend = [InputRed preserve:[HandleValueData noti_buttonName]];
    //: FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:@"ic_add_fiend" menuBlock:^{
    FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:[HandleValueData dream_removeSuccessWithTitle] menuBlock:^{
        //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
        ShowViewController *vc = [[ShowViewController alloc] initWithNibName:nil bundle:nil];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }];
    }];

    //: NSString *activity = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    NSString *activity = [InputRed preserve:[HandleValueData userReadNeedName]];

    //菜单模型1
    //: FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:@"ic_create_chat" menuBlock:^{
    FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:[HandleValueData show_viewParentTableData] menuBlock:^{
        //: if (_creatTeam.integerValue != 0) {
        if (_creatTeam.integerValue != 0) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD text:[InputRed preserve:[HandleValueData noti_messageData]]];
        //: }else{
        }else{
            //: [self creatTeamGroup];
            [self resolutionIn];//创建群组
        }
    //: }];
    }];

    //菜单模型1
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[FFFLanguageManager getTextWithKey:@"fragment_contact_new_scan"] menuItemIconName:@"ic_scan" menuBlock:^{
    FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[InputRed preserve:[HandleValueData k_accountData]] menuItemIconName:[HandleValueData dreamPressMaxText] menuBlock:^{
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [self requestAuthorizationForVideo];
        [self withStandard];
    //: }];
    }];

    //: NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    //: return menuModelArr;
    return menuModelArr;
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
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[HandleValueData m_videoData]] message:[InputRed preserve:[HandleValueData userSessionData]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[HandleValueData notiPressTitle]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[HandleValueData show_viewName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
-(void)resolutionIn{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self like:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView value];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self mentalRepresentation:avater threadComplete:^(NSString *urlString) {

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
            option.postscript = [InputRed preserve:[HandleValueData show_sessionTitle]];
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
                    [self groupType:teamId group:option.name viewGreen:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self offRecording:option.name mark:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[InputRed preserve:[HandleValueData k_completeColorData]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)mentalRepresentation:(UIImage *)image threadComplete:(void(^)(NSString *urlString ))complete {

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
    NSString *fileName = [ImageHelper key:[HandleValueData mainTableSizeData]];
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
                [wself.view makeToast:[InputRed preserve:[HandleValueData notiShouldData]]
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
        [self.view makeToast:[InputRed preserve:[HandleValueData notiShouldData]]
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
-(void)offRecording:(NSString *)groupName mark:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[HandleValueData dreamSuccessShowValue]] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[HandleValueData appViewImageTitle]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)handlerQuickChat
- (void)blueColor
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self quickChatpresentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self by:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if(uids.count>1){
        if(uids.count>1){
            //: NSString *groupName = @"";
            NSString *groupName = @"";
            //: NSMutableArray *nameArray = [NSMutableArray array];
            NSMutableArray *nameArray = [NSMutableArray array];
            //: for (NSString *userId in uids) {
            for (NSString *userId in uids) {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: [nameArray addObject:user.userInfo.nickName];
                [nameArray addObject:user.userInfo.nickName];
            }

            //: NSArray *firstFourNames = nil;
            NSArray *firstFourNames = nil;
            // 确保数组至少有 4 个元素，避免越界
            //: if (nameArray.count >= 4) {
            if (nameArray.count >= 4) {
                //: firstFourNames = [nameArray subarrayWithRange:NSMakeRange(0, 4)];
                firstFourNames = [nameArray subarrayWithRange:NSMakeRange(0, 4)];
            //: } else {
            } else {
                //: firstFourNames = nameArray; 
                firstFourNames = nameArray; // 如果不足 4 个，就取全部
            }

            // 拼接成字符串，用逗号分隔
            //: groupName = [firstFourNames componentsJoinedByString:@", "];
            groupName = [firstFourNames componentsJoinedByString:@", "];

            //: NSLog(@"前 4 个名字: %@", groupName);

            //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = groupName;
            option.name = groupName;
            //: option.avatarUrl = @"";
            option.avatarUrl = @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [InputRed preserve:[HandleValueData show_sessionTitle]];
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
                    [self groupType:teamId group:option.name viewGreen:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self offRecording:option.name mark:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[InputRed preserve:[HandleValueData k_completeColorData]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];

        //: }else if(uids.count == 1){
        }else if(uids.count == 1){

            //: NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }

        }
    //: ];
    ];
}

/** 显示下拉菜单 */
//: - (void)showDropDownMenu {
- (void)statusMy {
    //: [self.dropdownMenu showMenu];
    [self.dropdownMenu showMenu];
}

//: - (NTESNotificationView *)noticeView
- (RangeView *)noticeView
{
    //: if(!_noticeView){
    if(!_noticeView){
        //: _noticeView = [[NTESNotificationView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        _noticeView = [[RangeView alloc]initWithFrame:CGRectMake(0, [UIDevice heightShowStop]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice heightShowStop]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        //: _noticeView.hidden = YES;
        _noticeView.hidden = YES;
    }
    //: return _noticeView;
    return _noticeView;
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

//: - (ZMONPrivacyPolicyView *)policyView
- (PolicyView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[PolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _policyView.hidden = YES;
    }
    //: return _policyView;
    return _policyView;
}
//: - (UIButton *)QuickChatBtn
- (UIButton *)QuickChatBtn
{
    //: if (!_QuickChatBtn) {
    if (!_QuickChatBtn) {
        //: _QuickChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _QuickChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _QuickChatBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-137, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-(49.0f)-50, 127, 40);
        _QuickChatBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-137, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-(49.0f)-50, 127, 40);
        //: [_QuickChatBtn setImage:[UIImage imageNamed:@"quick_icon"] forState:UIControlStateNormal];
        [_QuickChatBtn setImage:[UIImage imageNamed:[HandleValueData m_rowName]] forState:UIControlStateNormal];
        //: [_QuickChatBtn addTarget:self action:@selector(handlerQuickChat) forControlEvents:UIControlEventTouchUpInside];
        [_QuickChatBtn addTarget:self action:@selector(blueColor) forControlEvents:UIControlEventTouchUpInside];
        //: _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_QuickChatBtn setTitle:[FFFLanguageManager getTextWithKey:@"quickchat"] forState:UIControlStateNormal];
        [_QuickChatBtn setTitle:[InputRed preserve:[HandleValueData appThreadValue]] forState:UIControlStateNormal];
        //: [_QuickChatBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_QuickChatBtn cookie:(MKButtonEdgeInsetsStyleLeft) disable:10];
        //: _QuickChatBtn.layer.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1].CGColor;
        _QuickChatBtn.layer.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1].CGColor;
        //: _QuickChatBtn.layer.cornerRadius = 20;
        _QuickChatBtn.layer.cornerRadius = 20;
        //: _QuickChatBtn.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        _QuickChatBtn.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        //: _QuickChatBtn.layer.shadowOffset = CGSizeMake(0,4);
        _QuickChatBtn.layer.shadowOffset = CGSizeMake(0,4);
        //: _QuickChatBtn.layer.shadowOpacity = 1;
        _QuickChatBtn.layer.shadowOpacity = 1;
        //: _QuickChatBtn.layer.shadowRadius = 12;
        _QuickChatBtn.layer.shadowRadius = 12;
    }
    //: return _QuickChatBtn;
    return _QuickChatBtn;
}

//: @end
@end
