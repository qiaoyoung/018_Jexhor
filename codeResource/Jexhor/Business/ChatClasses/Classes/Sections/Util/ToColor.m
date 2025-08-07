
#import <Foundation/Foundation.h>

@interface BiasData : NSObject

@end

@implementation BiasData

+ (Byte *)BiasDataToCache:(Byte *)data {
    int arthurianLegend = data[0];
    Byte decisionMaking = data[1];
    int plantFiber = data[2];
    for (int i = plantFiber; i < plantFiber + arthurianLegend; i++) {
        int value = data[i] + decisionMaking;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[plantFiber + arthurianLegend] = 0;
    return data + plantFiber;
}

+ (NSString *)StringFromBiasData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BiasDataToCache:data]];
}

//: teamgonggao_record_
+ (NSString *)mainFarName {
    /* static */ NSString *mainFarName = nil;
    if (!mainFarName) {
        Byte value[] = {19, 8, 4, 196, 108, 93, 89, 101, 95, 103, 102, 95, 95, 89, 103, 87, 106, 93, 91, 103, 106, 92, 87, 8};
        mainFarName = [self StringFromBiasData:value];
    }
    return mainFarName;
}

//: Audio
+ (NSString *)appProvedMsg {
    /* static */ NSString *appProvedMsg = nil;
    if (!appProvedMsg) {
        Byte value[] = {5, 5, 5, 176, 173, 60, 112, 95, 100, 106, 185};
        appProvedMsg = [self StringFromBiasData:value];
    }
    return appProvedMsg;
}

//: content
+ (NSString *)mTextData {
    /* static */ NSString *mTextData = nil;
    if (!mTextData) {
        Byte value[] = {7, 26, 3, 73, 85, 84, 90, 75, 84, 90, 169};
        mTextData = [self StringFromBiasData:value];
    }
    return mTextData;
}

//: File
+ (NSString *)mainNuclearKey {
    /* static */ NSString *mainNuclearKey = nil;
    if (!mainNuclearKey) {
        Byte value[] = {4, 20, 8, 36, 231, 214, 118, 83, 50, 85, 88, 81, 190};
        mainNuclearKey = [self StringFromBiasData:value];
    }
    return mainNuclearKey;
}

//: teamgonggao_content_
+ (NSString *)m_roughTitle {
    /* static */ NSString *m_roughTitle = nil;
    if (!m_roughTitle) {
        Byte value[] = {20, 20, 9, 193, 81, 122, 140, 18, 24, 96, 81, 77, 89, 83, 91, 90, 83, 83, 77, 91, 75, 79, 91, 90, 96, 81, 90, 96, 75, 56};
        m_roughTitle = [self StringFromBiasData:value];
    }
    return m_roughTitle;
}

//: Internet_call
+ (NSString *)showSlatValue {
    /* static */ NSString *showSlatValue = nil;
    if (!showSlatValue) {
        Byte value[] = {13, 86, 10, 179, 59, 161, 137, 42, 113, 122, 243, 24, 30, 15, 28, 24, 15, 30, 9, 13, 11, 22, 22, 39};
        showSlatValue = [self StringFromBiasData:value];
    }
    return showSlatValue;
}

//: Image
+ (NSString *)appWillingNanFormat {
    /* static */ NSString *appWillingNanFormat = nil;
    if (!appWillingNanFormat) {
        Byte value[] = {5, 2, 12, 61, 51, 255, 50, 230, 241, 242, 103, 147, 71, 107, 95, 101, 99, 105};
        appWillingNanFormat = [self StringFromBiasData:value];
    }
    return appWillingNanFormat;
}

//: Location
+ (NSString *)kRichIdent {
    /* static */ NSString *kRichIdent = nil;
    if (!kRichIdent) {
        Byte value[] = {8, 41, 12, 34, 81, 94, 236, 67, 216, 55, 74, 239, 35, 70, 58, 56, 75, 64, 70, 69, 84};
        kRichIdent = [self StringFromBiasData:value];
    }
    return kRichIdent;
}

//: Group_information_update
+ (NSString *)mStressName {
    /* static */ NSString *mStressName = nil;
    if (!mStressName) {
        Byte value[] = {24, 36, 11, 132, 145, 200, 208, 148, 147, 209, 96, 35, 78, 75, 81, 76, 59, 69, 74, 66, 75, 78, 73, 61, 80, 69, 75, 74, 59, 81, 76, 64, 61, 80, 65, 77};
        mStressName = [self StringFromBiasData:value];
    }
    return mStressName;
}

//: teamgonggao_
+ (NSString *)dreamUpMsg {
    /* static */ NSString *dreamUpMsg = nil;
    if (!dreamUpMsg) {
        Byte value[] = {12, 98, 6, 88, 61, 164, 18, 3, 255, 11, 5, 13, 12, 5, 5, 255, 13, 253, 217};
        dreamUpMsg = [self StringFromBiasData:value];
    }
    return dreamUpMsg;
}

//: Group_chat_information_update
+ (NSString *)app_atMessage {
    /* static */ NSString *app_atMessage = nil;
    if (!app_atMessage) {
        Byte value[] = {29, 6, 7, 86, 210, 216, 67, 65, 108, 105, 111, 106, 89, 93, 98, 91, 110, 89, 99, 104, 96, 105, 108, 103, 91, 110, 99, 105, 104, 89, 111, 106, 94, 91, 110, 95, 70};
        app_atMessage = [self StringFromBiasData:value];
    }
    return app_atMessage;
}

//: Video
+ (NSString *)mainHostageKey {
    /* static */ NSString *mainHostageKey = nil;
    if (!mainHostageKey) {
        Byte value[] = {5, 17, 13, 173, 136, 87, 34, 119, 239, 141, 203, 113, 79, 69, 88, 83, 84, 94, 1};
        mainHostageKey = [self StringFromBiasData:value];
    }
    return mainHostageKey;
}

//: title
+ (NSString *)dream_complianceIdent {
    /* static */ NSString *dream_complianceIdent = nil;
    if (!dream_complianceIdent) {
        Byte value[] = {5, 85, 9, 241, 173, 254, 69, 17, 145, 31, 20, 31, 23, 16, 16};
        dream_complianceIdent = [self StringFromBiasData:value];
    }
    return dream_complianceIdent;
}

//: Video_chat
+ (NSString *)main_prisonName {
    /* static */ NSString *main_prisonName = nil;
    if (!main_prisonName) {
        Byte value[] = {10, 76, 7, 171, 31, 88, 196, 10, 29, 24, 25, 35, 19, 23, 28, 21, 40, 67};
        main_prisonName = [self StringFromBiasData:value];
    }
    return main_prisonName;
}

//: teamgonggao_title_
+ (NSString *)main_economicKey {
    /* static */ NSString *main_economicKey = nil;
    if (!main_economicKey) {
        Byte value[] = {18, 27, 5, 8, 132, 89, 74, 70, 82, 76, 84, 83, 76, 76, 70, 84, 68, 89, 78, 89, 81, 74, 68, 199};
        main_economicKey = [self StringFromBiasData:value];
    }
    return main_economicKey;
}

//: Super_Group_Information_Update
+ (NSString *)main_pressedValue {
    /* static */ NSString *main_pressedValue = nil;
    if (!main_pressedValue) {
        Byte value[] = {30, 60, 10, 255, 251, 147, 219, 109, 184, 254, 23, 57, 52, 41, 54, 35, 11, 54, 51, 57, 52, 35, 13, 50, 42, 51, 54, 49, 37, 56, 45, 51, 50, 35, 25, 52, 40, 37, 56, 41, 35};
        main_pressedValue = [self StringFromBiasData:value];
    }
    return main_pressedValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToColor.m
// Secret
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageUtil.h"
#import "ToColor.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitUtil.h"
#import "KitUtil.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Secret.h"

//: @implementation FFFMessageUtil
@implementation ToColor

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)old:(NIMMessage*)message {
    //: NSString *text = @"";
    NSString *text = @"";
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: text = [FFFLanguageManager getTextWithKey:@"Audio"]; 
            text = [BackgroundRandomAttribute content:[BiasData appProvedMsg]]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [FFFLanguageManager getTextWithKey:@"Image"];
            text = [BackgroundRandomAttribute content:[BiasData appWillingNanFormat]];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [FFFLanguageManager getTextWithKey:@"Video"];
            text = [BackgroundRandomAttribute content:[BiasData mainHostageKey]];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [FFFLanguageManager getTextWithKey:@"Location"];
            text = [BackgroundRandomAttribute content:[BiasData kRichIdent]];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self will:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [FFFLanguageManager getTextWithKey:@"File"];
            text = [BackgroundRandomAttribute content:[BiasData mainNuclearKey]];//@"[文件]".;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeRtcCallRecord: {
        case NIMMessageTypeRtcCallRecord: {
            //: NIMRtcCallRecordObject *record = message.messageObject;
            NIMRtcCallRecordObject *record = message.messageObject;
            //: return (record.callType == NIMRtcCallTypeAudio ? [FFFLanguageManager getTextWithKey:@"Internet_call"] : [FFFLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [BackgroundRandomAttribute content:[BiasData showSlatValue]] : [BackgroundRandomAttribute content:[BiasData main_prisonName]]);
        }
        //: default:
        default:
            //: text = @"";
            text = @"";//@"[未知消息]".;
    }
    //: return text;
    return text;
}

//: + (NSString *)notificationMessageContent:(NIMMessage *)message{
+ (NSString *)will:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [FFFLanguageManager getTextWithKey:@"Internet_call"];
            return [BackgroundRandomAttribute content:[BiasData showSlatValue]];//@"[网络通话]".;
        }
        //: return [FFFLanguageManager getTextWithKey:@"Video_chat"];
        return [BackgroundRandomAttribute content:[BiasData main_prisonName]];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [FFFLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [BackgroundRandomAttribute content:[BiasData app_atMessage]];//@"[讨论组信息更新]".;
        //: }else{
        }else{

            //: NSString * flag=nil;
            NSString * flag=nil;
            //: NSString * title=nil;
            NSString * title=nil;
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: switch (content.operationType) {
            switch (content.operationType) {
                    //: case NIMTeamOperationTypeUpdate:
                    case NIMTeamOperationTypeUpdate:

                        //: if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            //: if ([teamAttachment.values count] == 1) {
                            if ([teamAttachment.values count] == 1) {
                                //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                //: switch (tag) {
                                switch (tag) {
                                    //: case NIMTeamUpdateTagAnouncement:
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        //: title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        //: NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        //: if([datas count]==0){
                                        if([datas count]==0){
                                            //: break;
                                            break;
                                        }
                                        //: title=[datas lastObject][@"title"];
                                        title=[datas lastObject][[BiasData dream_complianceIdent]];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][[BiasData mTextData]];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[BiasData mainFarName],message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[BiasData mainFarName],message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[BiasData dreamUpMsg],message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",[BiasData main_economicKey],message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",[BiasData m_roughTitle],message.session.sessionId]];
                                        }

                                    }
                                        //: break;
                                        break;

                                    //: default:
                                    default:
                                        //: break;
                                        break;
                                }
                            }
                        }

                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
            }

            //: return [FFFLanguageManager getTextWithKey:@"Group_information_update"];
            return [BackgroundRandomAttribute content:[BiasData mStressName]];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [FFFLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [BackgroundRandomAttribute content:[BiasData main_pressedValue]];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end