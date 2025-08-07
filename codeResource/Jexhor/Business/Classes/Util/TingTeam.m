
#import <Foundation/Foundation.h>

@interface SumellectualData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SumellectualData

+ (instancetype)sharedInstance {
    static SumellectualData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SumellectualDataToCache:(Byte *)data {
    int nationalism = data[0];
    Byte totalUp = data[1];
    int barrelButton = data[2];
    for (int i = barrelButton; i < barrelButton + nationalism; i++) {
        int value = data[i] + totalUp;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[barrelButton + nationalism] = 0;
    return data + barrelButton;
}

- (NSString *)StringFromSumellectualData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SumellectualDataToCache:data]];
}

//: 群消息单向撤回
- (NSString *)dreamMilkYouthValue {
    /* static */ NSString *dreamMilkYouthValue = nil;
    if (!dreamMilkYouthValue) {
        Byte value[] = {21, 35, 11, 190, 219, 34, 4, 234, 19, 132, 204, 196, 155, 129, 195, 147, 101, 195, 94, 140, 194, 106, 114, 194, 109, 110, 195, 111, 129, 194, 120, 123, 114};
        dreamMilkYouthValue = [self StringFromSumellectualData:value];
    }
    return dreamMilkYouthValue;
}

//: 群消息撤回
- (NSString *)userWarnLengthData {
    /* static */ NSString *userWarnLengthData = nil;
    if (!userWarnLengthData) {
        Byte value[] = {15, 6, 6, 133, 187, 15, 225, 184, 158, 224, 176, 130, 224, 123, 169, 224, 140, 158, 223, 149, 152, 16};
        userWarnLengthData = [self StringFromSumellectualData:value];
    }
    return userWarnLengthData;
}

//: 点对点消息撤回
- (NSString *)showSumellectualPlaceData {
    /* static */ NSString *showSumellectualPlaceData = nil;
    if (!showSumellectualPlaceData) {
        Byte value[] = {21, 47, 7, 102, 234, 152, 126, 184, 83, 138, 182, 128, 138, 184, 83, 138, 183, 135, 89, 183, 82, 128, 183, 99, 117, 182, 108, 111, 222};
        showSumellectualPlaceData = [self StringFromSumellectualData:value];
    }
    return showSumellectualPlaceData;
}

//: 点对点消息单向撤回
- (NSString *)dreamDayData {
    /* static */ NSString *dreamDayData = nil;
    if (!dreamDayData) {
        Byte value[] = {27, 36, 11, 71, 123, 113, 24, 125, 113, 188, 211, 195, 94, 149, 193, 139, 149, 195, 94, 149, 194, 146, 100, 194, 93, 139, 193, 105, 113, 193, 108, 109, 194, 110, 128, 193, 119, 122, 48};
        dreamDayData = [self StringFromSumellectualData:value];
    }
    return dreamDayData;
}

//: [系统通知][%@]
- (NSString *)notiAtViewName {
    /* static */ NSString *notiAtViewName = nil;
    if (!notiAtViewName) {
        Byte value[] = {18, 21, 6, 254, 164, 183, 70, 210, 158, 166, 210, 166, 138, 212, 107, 133, 210, 138, 144, 72, 70, 16, 43, 72, 62};
        notiAtViewName = [self StringFromSumellectualData:value];
    }
    return notiAtViewName;
}

//: 超大群消息撤回
- (NSString *)dreamPetContent {
    /* static */ NSString *dreamPetContent = nil;
    if (!dreamPetContent) {
        Byte value[] = {21, 83, 7, 119, 4, 99, 249, 149, 99, 50, 146, 81, 84, 148, 107, 81, 147, 99, 53, 147, 46, 92, 147, 63, 81, 146, 72, 75, 56};
        dreamPetContent = [self StringFromSumellectualData:value];
    }
    return dreamPetContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingTeam.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "TingTeam.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation TingTeam

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)arraySize:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:[[SumellectualData sharedInstance] notiAtViewName].titleBy,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self exhibit:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)exhibit:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = [[SumellectualData sharedInstance] showSumellectualPlaceData].titleBy;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = [[SumellectualData sharedInstance] showSumellectualPlaceData].titleBy;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = [[SumellectualData sharedInstance] userWarnLengthData].titleBy;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = [[SumellectualData sharedInstance] dreamPetContent].titleBy;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = [[SumellectualData sharedInstance] dreamDayData].titleBy;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = [[SumellectualData sharedInstance] dreamMilkYouthValue].titleBy;
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