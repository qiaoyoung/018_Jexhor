
#import <Foundation/Foundation.h>

typedef struct {
    Byte willingCage;
    Byte *idly;
    unsigned int deadBlue;
	int teamWith;
	int unsuccessful;
	int affairRoc;
} StructRangeVileData;

@interface RangeVileData : NSObject

@end

@implementation RangeVileData

+ (Byte *)RangeVileDataToByte:(StructRangeVileData *)data {
    for (int i = 0; i < data->deadBlue; i++) {
        data->idly[i] ^= data->willingCage;
    }
    data->idly[data->deadBlue] = 0;
	if (data->deadBlue >= 3) {
		data->teamWith = data->idly[0];
		data->unsuccessful = data->idly[1];
		data->affairRoc = data->idly[2];
	}
    return data->idly;
}

+ (NSString *)StringFromRangeVileData:(StructRangeVileData *)data {
    return [NSString stringWithUTF8String:(char *)[self RangeVileDataToByte:data]];
}

//: group_info_activity_team_notify_all
+ (NSString *)notiHelpfulData {
    /* static */ NSString *notiHelpfulData = nil;
    if (!notiHelpfulData) {
        StructRangeVileData value = (StructRangeVileData){65, (Byte []){38, 51, 46, 52, 49, 30, 40, 47, 39, 46, 30, 32, 34, 53, 40, 55, 40, 53, 56, 30, 53, 36, 32, 44, 30, 47, 46, 53, 40, 39, 56, 30, 32, 45, 45, 184}, 35, 135, 54, 179};
        notiHelpfulData = [self StringFromRangeVileData:&value];
    }
    return notiHelpfulData;
}

//: ic_yanzheng_yes
+ (NSString *)k_disappearData {
    /* static */ NSString *k_disappearData = nil;
    if (!k_disappearData) {
        StructRangeVileData value = (StructRangeVileData){95, (Byte []){54, 60, 0, 38, 62, 49, 37, 55, 58, 49, 56, 0, 38, 58, 44, 189}, 15, 20, 181, 215};
        k_disappearData = [self StringFromRangeVileData:&value];
    }
    return k_disappearData;
}

//: ic_yanzheng_no
+ (NSString *)app_infoFormat {
    /* static */ NSString *app_infoFormat = nil;
    if (!app_infoFormat) {
        StructRangeVileData value = (StructRangeVileData){234, (Byte []){131, 137, 181, 147, 139, 132, 144, 130, 143, 132, 141, 181, 132, 133, 7}, 14, 235, 172, 83};
        app_infoFormat = [self StringFromRangeVileData:&value];
    }
    return app_infoFormat;
}

//: ic_all_no
+ (NSString *)dream_eliteKey {
    /* static */ NSString *dream_eliteKey = nil;
    if (!dream_eliteKey) {
        StructRangeVileData value = (StructRangeVileData){247, (Byte []){158, 148, 168, 150, 155, 155, 168, 153, 152, 22}, 9, 173, 65, 45};
        dream_eliteKey = [self StringFromRangeVileData:&value];
    }
    return dream_eliteKey;
}

//: ic_all
+ (NSString *)dream_nuclearMessage {
    /* static */ NSString *dream_nuclearMessage = nil;
    if (!dream_nuclearMessage) {
        StructRangeVileData value = (StructRangeVileData){28, (Byte []){117, 127, 67, 125, 112, 112, 243}, 6, 43, 118, 193};
        dream_nuclearMessage = [self StringFromRangeVileData:&value];
    }
    return dream_nuclearMessage;
}

//: group_info_activity_close
+ (NSString *)main_purpleGrandpaData {
    /* static */ NSString *main_purpleGrandpaData = nil;
    if (!main_purpleGrandpaData) {
        StructRangeVileData value = (StructRangeVileData){151, (Byte []){240, 229, 248, 226, 231, 200, 254, 249, 241, 248, 200, 246, 244, 227, 254, 225, 254, 227, 238, 200, 244, 251, 248, 228, 242, 137}, 25, 17, 81, 183};
        main_purpleGrandpaData = [self StringFromRangeVileData:&value];
    }
    return main_purpleGrandpaData;
}

//: ic_reminde_manager
+ (NSString *)dreamTossItValue {
    /* static */ NSString *dreamTossItValue = nil;
    if (!dreamTossItValue) {
        StructRangeVileData value = (StructRangeVileData){244, (Byte []){157, 151, 171, 134, 145, 153, 157, 154, 144, 145, 171, 153, 149, 154, 149, 147, 145, 134, 90}, 18, 46, 161, 104};
        dreamTossItValue = [self StringFromRangeVileData:&value];
    }
    return dreamTossItValue;
}

//: icon_team_creator
+ (NSString *)show_temporaryStr {
    /* static */ NSString *show_temporaryStr = nil;
    if (!show_temporaryStr) {
        StructRangeVileData value = (StructRangeVileData){130, (Byte []){235, 225, 237, 236, 221, 246, 231, 227, 239, 221, 225, 240, 231, 227, 246, 237, 240, 65}, 17, 218, 220, 248};
        show_temporaryStr = [self StringFromRangeVileData:&value];
    }
    return show_temporaryStr;
}

//: Reject_anyone
+ (NSString *)dreamCenterKey {
    /* static */ NSString *dreamCenterKey = nil;
    if (!dreamCenterKey) {
        StructRangeVileData value = (StructRangeVileData){146, (Byte []){192, 247, 248, 247, 241, 230, 205, 243, 252, 235, 253, 252, 247, 189}, 13, 211, 134, 116};
        dreamCenterKey = [self StringFromRangeVileData:&value];
    }
    return dreamCenterKey;
}

//: ic_reminde_all_no
+ (NSString *)noti_viewPrimaryData {
    /* static */ NSString *noti_viewPrimaryData = nil;
    if (!noti_viewPrimaryData) {
        StructRangeVileData value = (StructRangeVileData){134, (Byte []){239, 229, 217, 244, 227, 235, 239, 232, 226, 227, 217, 231, 234, 234, 217, 232, 233, 139}, 17, 245, 245, 137};
        noti_viewPrimaryData = [self StringFromRangeVileData:&value];
    }
    return noti_viewPrimaryData;
}

//: ic_all_yes
+ (NSString *)k_rageShowMsg {
    /* static */ NSString *k_rageShowMsg = nil;
    if (!k_rageShowMsg) {
        StructRangeVileData value = (StructRangeVileData){153, (Byte []){240, 250, 198, 248, 245, 245, 198, 224, 252, 234, 73}, 10, 45, 120, 104};
        k_rageShowMsg = [self StringFromRangeVileData:&value];
    }
    return k_rageShowMsg;
}

//: Allow_anyone
+ (NSString *)showHeroName {
    /* static */ NSString *showHeroName = nil;
    if (!showHeroName) {
        StructRangeVileData value = (StructRangeVileData){156, (Byte []){221, 240, 240, 243, 235, 195, 253, 242, 229, 243, 242, 249, 6}, 12, 27, 22, 171};
        showHeroName = [self StringFromRangeVileData:&value];
    }
    return showHeroName;
}

//: group_member_info_activity_team_admin
+ (NSString *)dream_pullId {
    /* static */ NSString *dream_pullId = nil;
    if (!dream_pullId) {
        StructRangeVileData value = (StructRangeVileData){224, (Byte []){135, 146, 143, 149, 144, 191, 141, 133, 141, 130, 133, 146, 191, 137, 142, 134, 143, 191, 129, 131, 148, 137, 150, 137, 148, 153, 191, 148, 133, 129, 141, 191, 129, 132, 141, 137, 142, 14}, 37, 188, 108, 137};
        dream_pullId = [self StringFromRangeVileData:&value];
    }
    return dream_pullId;
}

//: group_member_info_activity_team_creator
+ (NSString *)appComplianceHeroMsg {
    /* static */ NSString *appComplianceHeroMsg = nil;
    if (!appComplianceHeroMsg) {
        StructRangeVileData value = (StructRangeVileData){27, (Byte []){124, 105, 116, 110, 107, 68, 118, 126, 118, 121, 126, 105, 68, 114, 117, 125, 116, 68, 122, 120, 111, 114, 109, 114, 111, 98, 68, 111, 126, 122, 118, 68, 120, 105, 126, 122, 111, 116, 105, 139}, 39, 72, 59, 54};
        appComplianceHeroMsg = [self StringFromRangeVileData:&value];
    }
    return appComplianceHeroMsg;
}

//: icon_team_manager
+ (NSString *)k_hisBlackIdent {
    /* static */ NSString *k_hisBlackIdent = nil;
    if (!k_hisBlackIdent) {
        StructRangeVileData value = (StructRangeVileData){188, (Byte []){213, 223, 211, 210, 227, 200, 217, 221, 209, 227, 209, 221, 210, 221, 219, 217, 206, 216}, 17, 85, 174, 178};
        k_hisBlackIdent = [self StringFromRangeVileData:&value];
    }
    return k_hisBlackIdent;
}

//: Need_verification
+ (NSString *)noti_artMsg {
    /* static */ NSString *noti_artMsg = nil;
    if (!noti_artMsg) {
        StructRangeVileData value = (StructRangeVileData){87, (Byte []){25, 50, 50, 51, 8, 33, 50, 37, 62, 49, 62, 52, 54, 35, 62, 56, 57, 156}, 17, 183, 93, 174};
        noti_artMsg = [self StringFromRangeVileData:&value];
    }
    return noti_artMsg;
}

//: Group_Everyone
+ (NSString *)mainDirectKey {
    /* static */ NSString *mainDirectKey = nil;
    if (!mainDirectKey) {
        StructRangeVileData value = (StructRangeVileData){162, (Byte []){229, 208, 205, 215, 210, 253, 231, 212, 199, 208, 219, 205, 204, 199, 75}, 14, 124, 14, 103};
        mainDirectKey = [self StringFromRangeVileData:&value];
    }
    return mainDirectKey;
}

//: online_state_event_manager_unknown
+ (NSString *)notiVoiceFormat {
    /* static */ NSString *notiVoiceFormat = nil;
    if (!notiVoiceFormat) {
        StructRangeVileData value = (StructRangeVileData){232, (Byte []){135, 134, 132, 129, 134, 141, 183, 155, 156, 137, 156, 141, 183, 141, 158, 141, 134, 156, 183, 133, 137, 134, 137, 143, 141, 154, 183, 157, 134, 131, 134, 135, 159, 134, 174}, 34, 250, 31, 202};
        notiVoiceFormat = [self StringFromRangeVileData:&value];
    }
    return notiVoiceFormat;
}

//: ic_reminde_all
+ (NSString *)main_progressMsg {
    /* static */ NSString *main_progressMsg = nil;
    if (!main_progressMsg) {
        StructRangeVileData value = (StructRangeVileData){181, (Byte []){220, 214, 234, 199, 208, 216, 220, 219, 209, 208, 234, 212, 217, 217, 15}, 14, 38, 225, 116};
        main_progressMsg = [self StringFromRangeVileData:&value];
    }
    return main_progressMsg;
}

//: group_info_activity_team_member
+ (NSString *)main_contentConsumeIdent {
    /* static */ NSString *main_contentConsumeIdent = nil;
    if (!main_contentConsumeIdent) {
        StructRangeVileData value = (StructRangeVileData){206, (Byte []){169, 188, 161, 187, 190, 145, 167, 160, 168, 161, 145, 175, 173, 186, 167, 184, 167, 186, 183, 145, 186, 171, 175, 163, 145, 163, 171, 163, 172, 171, 188, 113}, 31, 68, 37, 44};
        main_contentConsumeIdent = [self StringFromRangeVileData:&value];
    }
    return main_contentConsumeIdent;
}

//: group_info_activity_team_notify_manager
+ (NSString *)m_veryActorPath {
    /* static */ NSString *m_veryActorPath = nil;
    if (!m_veryActorPath) {
        StructRangeVileData value = (StructRangeVileData){132, (Byte []){227, 246, 235, 241, 244, 219, 237, 234, 226, 235, 219, 229, 231, 240, 237, 242, 237, 240, 253, 219, 240, 225, 229, 233, 219, 234, 235, 240, 237, 226, 253, 219, 233, 229, 234, 229, 227, 225, 246, 127}, 39, 219, 205, 193};
        m_veryActorPath = [self StringFromRangeVileData:&value];
    }
    return m_veryActorPath;
}

//: group_info_activity_team_notify_mute
+ (NSString *)showAllyMsg {
    /* static */ NSString *showAllyMsg = nil;
    if (!showAllyMsg) {
        StructRangeVileData value = (StructRangeVileData){89, (Byte []){62, 43, 54, 44, 41, 6, 48, 55, 63, 54, 6, 56, 58, 45, 48, 47, 48, 45, 32, 6, 45, 60, 56, 52, 6, 55, 54, 45, 48, 63, 32, 6, 52, 44, 45, 60, 119}, 36, 15, 45, 254};
        showAllyMsg = [self StringFromRangeVileData:&value];
    }
    return showAllyMsg;
}

//: ic_guanliyuan
+ (NSString *)m_rangeKey {
    /* static */ NSString *m_rangeKey = nil;
    if (!m_rangeKey) {
        StructRangeVileData value = (StructRangeVileData){245, (Byte []){156, 150, 170, 146, 128, 148, 155, 153, 156, 140, 128, 148, 155, 229}, 13, 121, 121, 143};
        m_rangeKey = [self StringFromRangeVileData:&value];
    }
    return m_rangeKey;
}

//: group_info_activity_open
+ (NSString *)dream_povertyId {
    /* static */ NSString *dream_povertyId = nil;
    if (!dream_povertyId) {
        StructRangeVileData value = (StructRangeVileData){143, (Byte []){232, 253, 224, 250, 255, 208, 230, 225, 233, 224, 208, 238, 236, 251, 230, 249, 230, 251, 246, 208, 224, 255, 234, 225, 113}, 24, 229, 36, 240};
        dream_povertyId = [self StringFromRangeVileData:&value];
    }
    return dream_povertyId;
}

//: No_Need_verification
+ (NSString *)k_onIdent {
    /* static */ NSString *k_onIdent = nil;
    if (!k_onIdent) {
        StructRangeVileData value = (StructRangeVileData){91, (Byte []){21, 52, 4, 21, 62, 62, 63, 4, 45, 62, 41, 50, 61, 50, 56, 58, 47, 50, 52, 53, 112}, 20, 204, 230, 76};
        k_onIdent = [self StringFromRangeVileData:&value];
    }
    return k_onIdent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowHelper.m
// Secret
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamHelper.h"
#import "ShowHelper.h"
//: #import "FFFTeamCardRowItem.h"
#import "Item.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"

//: static NSString *const kTeamHelperText = @"kTeamHelperText";
static NSString *const dreamMyValue = @"kTeamHelperText";
//: static NSString *const kTeamHelperValue = @"kTeamHelperValue";
static NSString *const mTransformAssetMsg = @"kTeamHelperValue";
//: static NSString *const kTeamHelperImg = @"kTeamHelperImg";
static NSString *const mainImageData = @"kTeamHelperImg";

//: @implementation FFFTeamHelper
@implementation ShowHelper

//: #pragma mark - 验证方式
#pragma mark - 验证方式
//: + (NSArray<NSDictionary *> *)allJoinModes {
+ (NSArray<NSDictionary *> *)system {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNoAuth),
                         mTransformAssetMsg : @(NIMTeamJoinModeNoAuth),
                         //: kTeamHelperText : [FFFTeamHelper jonModeText:NIMTeamJoinModeNoAuth],
                         dreamMyValue : [ShowHelper nearTitleQuantityeract:NIMTeamJoinModeNoAuth],
                         //: kTeamHelperImg: @"ic_all_yes",
                         mainImageData: [RangeVileData k_rageShowMsg],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNeedAuth),
                         mTransformAssetMsg : @(NIMTeamJoinModeNeedAuth),
                         //: kTeamHelperText : [FFFTeamHelper jonModeText:NIMTeamJoinModeNeedAuth],
                         dreamMyValue : [ShowHelper nearTitleQuantityeract:NIMTeamJoinModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         mainImageData: [RangeVileData k_disappearData],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeRejectAll),
                         mTransformAssetMsg : @(NIMTeamJoinModeRejectAll),
                         //: kTeamHelperText : [FFFTeamHelper jonModeText:NIMTeamJoinModeRejectAll],
                         dreamMyValue : [ShowHelper nearTitleQuantityeract:NIMTeamJoinModeRejectAll],
                         //: kTeamHelperImg: @"ic_all_no",
                         mainImageData: [RangeVileData dream_eliteKey],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode {
+ (NSString *)nearTitleQuantityeract:(NIMTeamJoinMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamJoinModeNoAuth:
        case NIMTeamJoinModeNoAuth:
            //: return [FFFLanguageManager getTextWithKey:@"Allow_anyone"];
            return [BackgroundRandomAttribute content:[RangeVileData showHeroName]];//@"允许任何人".;
        //: case NIMTeamJoinModeNeedAuth:
        case NIMTeamJoinModeNeedAuth:
            //: return [FFFLanguageManager getTextWithKey:@"Need_verification"];
            return [BackgroundRandomAttribute content:[RangeVileData noti_artMsg]];//@"需要验证".;
        //: case NIMTeamJoinModeRejectAll:
        case NIMTeamJoinModeRejectAll:
            //: return [FFFLanguageManager getTextWithKey:@"Reject_anyone"];
            return [BackgroundRandomAttribute content:[RangeVileData dreamCenterKey]];//@"拒绝任何人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)event:(NIMTeamJoinMode)mode {
    //: return [self itemsWithListDic:[self allJoinModes] selectValue:mode];
    return [self blockAcross:[self system] max:mode];
}

//: #pragma mark - 邀请模式
#pragma mark - 邀请模式
//: + (NSArray<NSDictionary *> *)allInviteModes {
+ (NSArray<NSDictionary *> *)message {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeManager),
                         mTransformAssetMsg : @(NIMTeamInviteModeManager),
                         //: kTeamHelperText : [FFFTeamHelper InviteModeText:NIMTeamInviteModeManager],
                         dreamMyValue : [ShowHelper messageTitle:NIMTeamInviteModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         mainImageData: [RangeVileData m_rangeKey],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeAll),
                         mTransformAssetMsg : @(NIMTeamInviteModeAll),
                         //: kTeamHelperText : [FFFTeamHelper InviteModeText:NIMTeamInviteModeAll],
                         dreamMyValue : [ShowHelper messageTitle:NIMTeamInviteModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         mainImageData: [RangeVileData dream_nuclearMessage],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode {
+ (NSString *)messageTitle:(NIMTeamInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamInviteModeManager:
        case NIMTeamInviteModeManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [BackgroundRandomAttribute content:[RangeVileData dream_pullId]];//@"管理员".;
        //: case NIMTeamInviteModeAll:
        case NIMTeamInviteModeAll:
            //: return [FFFLanguageManager getTextWithKey:@"Group_Everyone"];
            return [BackgroundRandomAttribute content:[RangeVileData mainDirectKey]];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)size:(NIMTeamInviteMode)mode {
    //: return [self itemsWithListDic:[self allInviteModes] selectValue:mode];
    return [self blockAcross:[self message] max:mode];
}

//: #pragma mark - 被邀请模式
#pragma mark - 被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes {
+ (NSArray<NSDictionary *> *)panoply {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNeedAuth),
                         mTransformAssetMsg : @(NIMTeamBeInviteModeNeedAuth),
                         //: kTeamHelperText : [FFFTeamHelper beInviteModeText:NIMTeamBeInviteModeNeedAuth],
                         dreamMyValue : [ShowHelper back:NIMTeamBeInviteModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         mainImageData: [RangeVileData k_disappearData],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNoAuth),
                         mTransformAssetMsg : @(NIMTeamBeInviteModeNoAuth),
                         //: kTeamHelperText : [FFFTeamHelper beInviteModeText:NIMTeamBeInviteModeNoAuth],
                         dreamMyValue : [ShowHelper back:NIMTeamBeInviteModeNoAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_no",
                         mainImageData: [RangeVileData app_infoFormat],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode {
+ (NSString *)back:(NIMTeamBeInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamBeInviteModeNeedAuth:
        case NIMTeamBeInviteModeNeedAuth:
            //: return [FFFLanguageManager getTextWithKey:@"Need_verification"];
            return [BackgroundRandomAttribute content:[RangeVileData noti_artMsg]];//@"需要验证".;
        //: case NIMTeamBeInviteModeNoAuth:
        case NIMTeamBeInviteModeNoAuth:
            //: return [FFFLanguageManager getTextWithKey:@"No_Need_verification"];
            return [BackgroundRandomAttribute content:[RangeVileData k_onIdent]];//@"不需要验证".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)empty:(NIMTeamBeInviteMode)mode {
    //: return [self itemsWithListDic:[self allBeInviteModes] selectValue:mode];
    return [self blockAcross:[self panoply] max:mode];
}

//: #pragma mark - 信息修改权限
#pragma mark - 信息修改权限
//: + (NSArray<NSDictionary *> *)allUpdateInfoModes {
+ (NSArray<NSDictionary *> *)agreeBe {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeManager),
                         mTransformAssetMsg : @(NIMTeamUpdateInfoModeManager),
                         //: kTeamHelperText : [FFFTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeManager],
                         dreamMyValue : [ShowHelper session:NIMTeamUpdateInfoModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         mainImageData: [RangeVileData m_rangeKey],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeAll),
                         mTransformAssetMsg : @(NIMTeamUpdateInfoModeAll),
                         //: kTeamHelperText : [FFFTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeAll],
                         dreamMyValue : [ShowHelper session:NIMTeamUpdateInfoModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         mainImageData: [RangeVileData dream_nuclearMessage],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode {
+ (NSString *)session:(NIMTeamUpdateInfoMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamUpdateInfoModeManager:
        case NIMTeamUpdateInfoModeManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [BackgroundRandomAttribute content:[RangeVileData dream_pullId]];//@"管理员".;
        //: case NIMTeamUpdateInfoModeAll:
        case NIMTeamUpdateInfoModeAll:
            //: return [FFFLanguageManager getTextWithKey:@"Group_Everyone"];
            return [BackgroundRandomAttribute content:[RangeVileData mainDirectKey]];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)title:(NIMTeamUpdateInfoMode)mode {
    //: return [self itemsWithListDic:[self allUpdateInfoModes] selectValue:mode];
    return [self blockAcross:[self agreeBe] max:mode];
}

//: #pragma mark - 消息接受状态
#pragma mark - 消息接受状态
//: + (NSArray<NSDictionary *> *)allNotifyStates {
+ (NSArray<NSDictionary *> *)change {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         mTransformAssetMsg : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         dreamMyValue : [ShowHelper tap:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         mainImageData: [RangeVileData main_progressMsg],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         mTransformAssetMsg : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         dreamMyValue : [ShowHelper tap:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         mainImageData: [RangeVileData noti_viewPrimaryData],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateOnlyManager),
                         mTransformAssetMsg : @(NIMTeamNotifyStateOnlyManager),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateOnlyManager],
                         dreamMyValue : [ShowHelper tap:NIMTeamNotifyStateOnlyManager],
                         //: kTeamHelperImg: @"ic_reminde_manager",
                         mainImageData: [RangeVileData dreamTossItValue],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSArray<NSDictionary *> *)allSuperNotifyStates {
+ (NSArray<NSDictionary *> *)skullSession {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         mTransformAssetMsg : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         dreamMyValue : [ShowHelper tap:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         mainImageData: [RangeVileData main_progressMsg],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         mTransformAssetMsg : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         dreamMyValue : [ShowHelper tap:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         mainImageData: [RangeVileData noti_viewPrimaryData],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state {
+ (NSString *)tap:(NIMTeamNotifyState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMTeamNotifyStateAll:
        case NIMTeamNotifyStateAll:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_notify_all"];
            return [BackgroundRandomAttribute content:[RangeVileData notiHelpfulData]];//@"提醒所有消息".;
        //: case NIMTeamNotifyStateNone:
        case NIMTeamNotifyStateNone:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_notify_mute"];
            return [BackgroundRandomAttribute content:[RangeVileData showAllyMsg]];//@"不提醒任何消息".;
        //: case NIMTeamNotifyStateOnlyManager:
        case NIMTeamNotifyStateOnlyManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_notify_manager"];
            return [BackgroundRandomAttribute content:[RangeVileData m_veryActorPath]];//@"只提醒管理员消息".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)selecedWith:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allNotifyStates] selectValue:state];
    return [self blockAcross:[self change] max:state];
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)background:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allSuperNotifyStates] selectValue:state];
    return [self blockAcross:[self skullSession] max:state];
}

//: #pragma mark - 群禁言
#pragma mark - 群禁言
//: + (NSArray<NSDictionary *> *)allTeamMuteState {
+ (NSArray<NSDictionary *> *)titleState {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(YES),
                         mTransformAssetMsg : @(YES),
                         //: kTeamHelperText : [FFFTeamHelper teamMuteText:YES]
                         dreamMyValue : [ShowHelper action:YES]
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NO),
                         mTransformAssetMsg : @(NO),
                         //: kTeamHelperText : [FFFTeamHelper teamMuteText:NO]
                         dreamMyValue : [ShowHelper action:NO]
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}
//: + (NSString *)teamMuteText:(BOOL)isMute {
+ (NSString *)action:(BOOL)isMute {
    //: return isMute ? [FFFLanguageManager getTextWithKey:@"group_info_activity_open"] : [FFFLanguageManager getTextWithKey:@"group_info_activity_close"];
    return isMute ? [BackgroundRandomAttribute content:[RangeVileData dream_povertyId]] : [BackgroundRandomAttribute content:[RangeVileData main_purpleGrandpaData]];
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute {
+ (NSMutableArray<id <FFFKitSelectCardData>> *)red:(BOOL)isMute {
    //: return [self itemsWithListDic:[self allTeamMuteState] selectValue:isMute];
    return [self blockAcross:[self titleState] max:isMute];
}

//: #pragma mark - 成员类型
#pragma mark - 成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type {
+ (NSString *)view:(NIMTeamMemberType)type {
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeNormal:
        case NIMTeamMemberTypeNormal:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
            return [BackgroundRandomAttribute content:[RangeVileData main_contentConsumeIdent]];//@"普通成员".;
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
            return [BackgroundRandomAttribute content:[RangeVileData appComplianceHeroMsg]];//@"群主".;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [BackgroundRandomAttribute content:[RangeVileData dream_pullId]];//@"管理员".;
        //: default:
        default:
            //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_unknown"];
            return [BackgroundRandomAttribute content:[RangeVileData notiVoiceFormat]];//@"未知".;
    }
}

//: + (UIImage *)imageWithMemberType:(NIMTeamMemberType)type {
+ (UIImage *)notSpace:(NIMTeamMemberType)type {
    //: UIImage *ret = nil;
    UIImage *ret = nil;
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: ret = [UIImage imageNamed:@"icon_team_creator"];
            ret = [UIImage imageNamed:[RangeVileData show_temporaryStr]];
            //: break;
            break;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: ret = [UIImage imageNamed:@"icon_team_manager"];
            ret = [UIImage imageNamed:[RangeVileData k_hisBlackIdent]];
            //: break;
            break;
        //: default:
        default:
            //: ret = nil;
            ret = nil;
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Tool
#pragma mark - Tool
//: + (NSMutableArray *)itemsWithListDic:(NSArray <NSDictionary *> *)listDic
+ (NSMutableArray *)blockAcross:(NSArray <NSDictionary *> *)listDic
                         //: selectValue:(NSInteger)selectValue {
                         max:(NSInteger)selectValue {
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dic in listDic) {
    for (NSDictionary *dic in listDic) {
        //: FFFTeamCardRowItem *item = [[FFFTeamCardRowItem alloc] init];
        Item *item = [[Item alloc] init];
        //: item.value = dic[kTeamHelperValue];
        item.value = dic[mTransformAssetMsg];
        //: item.title = dic[kTeamHelperText];
        item.title = dic[dreamMyValue];
        //: item.img = dic[kTeamHelperImg];
        item.img = dic[mainImageData];
        //: item.selected = (selectValue == [dic[kTeamHelperValue] integerValue]);
        item.selected = (selectValue == [dic[mTransformAssetMsg] integerValue]);
        //: [items addObject:item];
        [items addObject:item];
    }
    //: return items;
    return items;
}

//: @end
@end