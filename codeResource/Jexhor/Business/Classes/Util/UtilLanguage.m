
#import <Foundation/Foundation.h>

@interface CaptiveData : NSObject

@end

@implementation CaptiveData

+ (Byte *)CaptiveDataToCache:(Byte *)data {
    int crease = data[0];
    Byte electronicImage = data[1];
    int empireMax = data[2];
    for (int i = empireMax; i < empireMax + crease; i++) {
        int value = data[i] - electronicImage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[empireMax + crease] = 0;
    return data + empireMax;
}

+ (NSString *)StringFromCaptiveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CaptiveDataToCache:data]];
}

//: 群消息撤回
+ (NSString *)dream_abortCropName {
    /* static */ NSString *dream_abortCropName = nil;
    if (!dream_abortCropName) {
        Byte value[] = {15, 40, 12, 62, 203, 228, 247, 250, 3, 71, 193, 198, 15, 230, 204, 14, 222, 176, 14, 169, 215, 14, 186, 204, 13, 195, 198, 230};
        dream_abortCropName = [self StringFromCaptiveData:value];
    }
    return dream_abortCropName;
}

//: 点对点消息单向撤回
+ (NSString *)noti_provedMotRichUrl {
    /* static */ NSString *noti_provedMotRichUrl = nil;
    if (!noti_provedMotRichUrl) {
        Byte value[] = {27, 91, 12, 153, 223, 139, 8, 93, 111, 246, 105, 35, 66, 221, 20, 64, 10, 20, 66, 221, 20, 65, 17, 227, 65, 220, 10, 64, 232, 240, 64, 235, 236, 65, 237, 255, 64, 246, 249, 211};
        noti_provedMotRichUrl = [self StringFromCaptiveData:value];
    }
    return noti_provedMotRichUrl;
}

//: 点对点消息撤回
+ (NSString *)appViewTitle {
    /* static */ NSString *appViewTitle = nil;
    if (!appViewTitle) {
        Byte value[] = {21, 57, 6, 173, 93, 135, 32, 187, 242, 30, 232, 242, 32, 187, 242, 31, 239, 193, 31, 186, 232, 31, 203, 221, 30, 212, 215, 217};
        appViewTitle = [self StringFromCaptiveData:value];
    }
    return appViewTitle;
}

//: [系统通知][%@]
+ (NSString *)noti_storageId {
    /* static */ NSString *noti_storageId = nil;
    if (!noti_storageId) {
        Byte value[] = {18, 18, 7, 176, 148, 152, 150, 109, 249, 197, 205, 249, 205, 177, 251, 146, 172, 249, 177, 183, 111, 109, 55, 82, 111, 31};
        noti_storageId = [self StringFromCaptiveData:value];
    }
    return noti_storageId;
}

//: 超大群消息撤回
+ (NSString *)notiDisappointedIdent {
    /* static */ NSString *notiDisappointedIdent = nil;
    if (!notiDisappointedIdent) {
        Byte value[] = {21, 74, 6, 28, 102, 247, 50, 0, 207, 47, 238, 241, 49, 8, 238, 48, 0, 210, 48, 203, 249, 48, 220, 238, 47, 229, 232, 181};
        notiDisappointedIdent = [self StringFromCaptiveData:value];
    }
    return notiDisappointedIdent;
}

//: 群消息单向撤回
+ (NSString *)noti_teamUpTitle {
    /* static */ NSString *noti_teamUpTitle = nil;
    if (!noti_teamUpTitle) {
        Byte value[] = {21, 51, 13, 209, 231, 61, 186, 138, 169, 78, 204, 147, 161, 26, 241, 215, 25, 233, 187, 25, 180, 226, 24, 192, 200, 24, 195, 196, 25, 197, 215, 24, 206, 209, 232};
        noti_teamUpTitle = [self StringFromCaptiveData:value];
    }
    return noti_teamUpTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilLanguage.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "UtilLanguage.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation UtilLanguage

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)user:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:[CaptiveData noti_storageId].minIn,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self parcelText:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)parcelText:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = [CaptiveData appViewTitle].minIn;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = [CaptiveData appViewTitle].minIn;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = [CaptiveData dream_abortCropName].minIn;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = [CaptiveData notiDisappointedIdent].minIn;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = [CaptiveData noti_provedMotRichUrl].minIn;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = [CaptiveData noti_teamUpTitle].minIn;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end