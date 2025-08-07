
#import <Foundation/Foundation.h>

@interface MessageDogData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MessageDogData

+ (instancetype)sharedInstance {
    static MessageDogData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MessageDogDataToCache:(Byte *)data {
    int directness = data[0];
    Byte purplish = data[1];
    int enableHero = data[2];
    for (int i = enableHero; i < enableHero + directness; i++) {
        int value = data[i] + purplish;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[enableHero + directness] = 0;
    return data + enableHero;
}

- (NSString *)StringFromMessageDogData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MessageDogDataToCache:data]];
}

//: home_fragment_bai
- (NSString *)showStatText {
    /* static */ NSString *showStatText = nil;
    if (!showStatText) {
        Byte value[] = {17, 95, 9, 190, 28, 230, 52, 139, 61, 9, 16, 14, 6, 0, 7, 19, 2, 8, 14, 6, 15, 21, 0, 3, 2, 10, 194};
        showStatText = [self StringFromMessageDogData:value];
    }
    return showStatText;
}

//: message_guess
- (NSString *)show_custodyMessage {
    /* static */ NSString *show_custodyMessage = nil;
    if (!show_custodyMessage) {
        Byte value[] = {13, 78, 8, 120, 93, 64, 94, 160, 31, 23, 37, 37, 19, 25, 23, 17, 25, 39, 23, 37, 37, 225};
        show_custodyMessage = [self StringFromMessageDogData:value];
    }
    return show_custodyMessage;
}

//: message_red_packet
- (NSString *)mTeamAtName {
    /* static */ NSString *mTeamAtName = nil;
    if (!mTeamAtName) {
        Byte value[] = {18, 38, 12, 140, 90, 151, 188, 228, 177, 101, 203, 245, 71, 63, 77, 77, 59, 65, 63, 57, 76, 63, 62, 57, 74, 59, 61, 69, 63, 78, 218};
        mTeamAtName = [self StringFromMessageDogData:value];
    }
    return mTeamAtName;
}

//: home_fragment_liao
- (NSString *)k_hostageMsg {
    /* static */ NSString *k_hostageMsg = nil;
    if (!k_hostageMsg) {
        Byte value[] = {18, 99, 8, 26, 151, 188, 230, 1, 5, 12, 10, 2, 252, 3, 15, 254, 4, 10, 2, 11, 17, 252, 9, 6, 254, 12, 208};
        k_hostageMsg = [self StringFromMessageDogData:value];
    }
    return k_hostageMsg;
}

//: home_fragment_yue
- (NSString *)appDepartValue {
    /* static */ NSString *appDepartValue = nil;
    if (!appDepartValue) {
        Byte value[] = {17, 57, 7, 13, 218, 24, 76, 47, 54, 52, 44, 38, 45, 57, 40, 46, 52, 44, 53, 59, 38, 64, 60, 44, 32};
        appDepartValue = [self StringFromMessageDogData:value];
    }
    return appDepartValue;
}

//: person_card
- (NSString *)k_imagePath {
    /* static */ NSString *k_imagePath = nil;
    if (!k_imagePath) {
        Byte value[] = {11, 86, 13, 41, 66, 79, 63, 149, 65, 244, 148, 178, 189, 26, 15, 28, 29, 25, 24, 9, 13, 11, 28, 14, 23};
        k_imagePath = [self StringFromMessageDogData:value];
    }
    return k_imagePath;
}

//: group_card
- (NSString *)show_photographyPenaltyContent {
    /* static */ NSString *show_photographyPenaltyContent = nil;
    if (!show_photographyPenaltyContent) {
        Byte value[] = {10, 64, 13, 195, 133, 204, 251, 11, 95, 30, 47, 206, 162, 39, 50, 47, 53, 48, 31, 35, 33, 50, 36, 69};
        show_photographyPenaltyContent = [self StringFromMessageDogData:value];
    }
    return show_photographyPenaltyContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PushData.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "PushData.h"
//: #import "PushMessageUtil.h"
#import "ToColor.h"
//: #import "NTESShareCardAttachment.h"
#import "MaxAttachment.h"

//: @implementation NTESMessageUtil
@implementation PushData

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)aggregationName:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self message:message];
    //: } else {
    } else {
        //: text = [PushMessageUtil messageContent:message];
        text = [ToColor old:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)message:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[NameAttachment class]])
    {
        //: text = [PushLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] appDepartValue]];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[SizeAttachment class]])
    {
        //: text = [PushLanguageManager getTextWithKey:@"message_guess"];
        text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] show_custodyMessage]];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[DoingAttachment class]])
    {
        //: text = [PushLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] showStatText]];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[PacketImage class]])
    {
        //: text = [PushLanguageManager getTextWithKey:@"message_red_packet"];
        text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] mTeamAtName]];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[AccumulationSecret class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        AccumulationSecret *attach = (AccumulationSecret *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.menuOn;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[AttachmentOn class]])
    {
        //: text = [PushLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] k_hostageMsg]];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[MaxAttachment class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        MaxAttachment *cardAtt = (MaxAttachment *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [PushLanguageManager getTextWithKey:@"group_card"];
            text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] show_photographyPenaltyContent]];
        //: } else {
        } else {
            //: text = [PushLanguageManager getTextWithKey:@"person_card"];
            text = [BackgroundRandomAttribute content:[[MessageDogData sharedInstance] k_imagePath]];
        }
    }
//    else if (message.messageSubType == 20)
//    {
//        text = LangKey(@"retracted_message");//撤回
//    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]";LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}
//: @end
@end
