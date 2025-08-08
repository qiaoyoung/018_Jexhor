
#import <Foundation/Foundation.h>

@interface DevastatingRowData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DevastatingRowData

+ (instancetype)sharedInstance {
    static DevastatingRowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DevastatingRowDataToCache:(Byte *)data {
    int imageRemark = data[0];
    int takeCare = data[1];
    for (int i = 0; i < imageRemark / 2; i++) {
        int begin = takeCare + i;
        int end = takeCare + imageRemark - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[takeCare + imageRemark] = 0;
    return data + takeCare;
}

- (NSString *)StringFromDevastatingRowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DevastatingRowDataToCache:data]];
}  

//: teamgonggao_
- (NSString *)mainMeasureSliceValue {
    /* static */ NSString *mainMeasureSliceValue = nil;
    if (!mainMeasureSliceValue) {
        Byte value[] = {12, 9, 42, 92, 38, 23, 233, 156, 63, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 203};
        mainMeasureSliceValue = [self StringFromDevastatingRowData:value];
    }
    return mainMeasureSliceValue;
}

//: File
- (NSString *)show_nationalText {
    /* static */ NSString *show_nationalText = nil;
    if (!show_nationalText) {
        Byte value[] = {4, 6, 186, 19, 161, 56, 101, 108, 105, 70, 30};
        show_nationalText = [self StringFromDevastatingRowData:value];
    }
    return show_nationalText;
}

//: teamgonggao_content_
- (NSString *)userContemplateTitle {
    /* static */ NSString *userContemplateTitle = nil;
    if (!userContemplateTitle) {
        Byte value[] = {20, 9, 59, 180, 48, 213, 192, 161, 236, 95, 116, 110, 101, 116, 110, 111, 99, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 142};
        userContemplateTitle = [self StringFromDevastatingRowData:value];
    }
    return userContemplateTitle;
}

//: Video_chat
- (NSString *)noti_comfortablePaintValue {
    /* static */ NSString *noti_comfortablePaintValue = nil;
    if (!noti_comfortablePaintValue) {
        Byte value[] = {10, 3, 47, 116, 97, 104, 99, 95, 111, 101, 100, 105, 86, 215};
        noti_comfortablePaintValue = [self StringFromDevastatingRowData:value];
    }
    return noti_comfortablePaintValue;
}

//: Location
- (NSString *)show_threadText {
    /* static */ NSString *show_threadText = nil;
    if (!show_threadText) {
        Byte value[] = {8, 5, 182, 118, 232, 110, 111, 105, 116, 97, 99, 111, 76, 198};
        show_threadText = [self StringFromDevastatingRowData:value];
    }
    return show_threadText;
}

//: title
- (NSString *)kBreastConfirmComfortName {
    /* static */ NSString *kBreastConfirmComfortName = nil;
    if (!kBreastConfirmComfortName) {
        Byte value[] = {5, 2, 101, 108, 116, 105, 116, 40};
        kBreastConfirmComfortName = [self StringFromDevastatingRowData:value];
    }
    return kBreastConfirmComfortName;
}

//: content
- (NSString *)user_earlData {
    /* static */ NSString *user_earlData = nil;
    if (!user_earlData) {
        Byte value[] = {7, 5, 237, 54, 25, 116, 110, 101, 116, 110, 111, 99, 49};
        user_earlData = [self StringFromDevastatingRowData:value];
    }
    return user_earlData;
}

//: teamgonggao_title_
- (NSString *)app_unitName {
    /* static */ NSString *app_unitName = nil;
    if (!app_unitName) {
        Byte value[] = {18, 5, 64, 196, 176, 95, 101, 108, 116, 105, 116, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 5};
        app_unitName = [self StringFromDevastatingRowData:value];
    }
    return app_unitName;
}

//: Internet_call
- (NSString *)showCousinName {
    /* static */ NSString *showCousinName = nil;
    if (!showCousinName) {
        Byte value[] = {13, 2, 108, 108, 97, 99, 95, 116, 101, 110, 114, 101, 116, 110, 73, 86};
        showCousinName = [self StringFromDevastatingRowData:value];
    }
    return showCousinName;
}

//: teamgonggao_record_
- (NSString *)mProgressiveName {
    /* static */ NSString *mProgressiveName = nil;
    if (!mProgressiveName) {
        Byte value[] = {19, 2, 95, 100, 114, 111, 99, 101, 114, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 62};
        mProgressiveName = [self StringFromDevastatingRowData:value];
    }
    return mProgressiveName;
}

//: Video
- (NSString *)mainTitleData {
    /* static */ NSString *mainTitleData = nil;
    if (!mainTitleData) {
        Byte value[] = {5, 6, 199, 191, 168, 50, 111, 101, 100, 105, 86, 65};
        mainTitleData = [self StringFromDevastatingRowData:value];
    }
    return mainTitleData;
}

//: Super_Group_Information_Update
- (NSString *)notiHandleTitle {
    /* static */ NSString *notiHandleTitle = nil;
    if (!notiHandleTitle) {
        Byte value[] = {30, 2, 101, 116, 97, 100, 112, 85, 95, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 73, 95, 112, 117, 111, 114, 71, 95, 114, 101, 112, 117, 83, 151};
        notiHandleTitle = [self StringFromDevastatingRowData:value];
    }
    return notiHandleTitle;
}

//: Group_chat_information_update
- (NSString *)dreamMothValue {
    /* static */ NSString *dreamMothValue = nil;
    if (!dreamMothValue) {
        Byte value[] = {29, 12, 156, 159, 157, 2, 134, 218, 131, 97, 206, 75, 101, 116, 97, 100, 112, 117, 95, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 105, 95, 116, 97, 104, 99, 95, 112, 117, 111, 114, 71, 18};
        dreamMothValue = [self StringFromDevastatingRowData:value];
    }
    return dreamMothValue;
}

//: Group_information_update
- (NSString *)appRantValue {
    /* static */ NSString *appRantValue = nil;
    if (!appRantValue) {
        Byte value[] = {24, 5, 83, 102, 105, 101, 116, 97, 100, 112, 117, 95, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 105, 95, 112, 117, 111, 114, 71, 107};
        appRantValue = [self StringFromDevastatingRowData:value];
    }
    return appRantValue;
}

//: Audio
- (NSString *)app_quickText {
    /* static */ NSString *app_quickText = nil;
    if (!app_quickText) {
        Byte value[] = {5, 4, 175, 253, 111, 105, 100, 117, 65, 64};
        app_quickText = [self StringFromDevastatingRowData:value];
    }
    return app_quickText;
}

//: Image
- (NSString *)show_emotionName {
    /* static */ NSString *show_emotionName = nil;
    if (!show_emotionName) {
        Byte value[] = {5, 8, 12, 221, 42, 100, 150, 128, 101, 103, 97, 109, 73, 49};
        show_emotionName = [self StringFromDevastatingRowData:value];
    }
    return show_emotionName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithUtil.m
// MessageContent
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkMessageUtil.h"
#import "WithUtil.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+MessageContent.h"

//: @implementation WorkMessageUtil
@implementation WithUtil

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)mailSession:(NIMMessage*)message {
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
            //: text = [WorkLanguageManager getTextWithKey:@"Audio"]; 
            text = [InputRed preserve:[[DevastatingRowData sharedInstance] app_quickText]]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [WorkLanguageManager getTextWithKey:@"Image"];
            text = [InputRed preserve:[[DevastatingRowData sharedInstance] show_emotionName]];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [WorkLanguageManager getTextWithKey:@"Video"];
            text = [InputRed preserve:[[DevastatingRowData sharedInstance] mainTitleData]];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [WorkLanguageManager getTextWithKey:@"Location"];
            text = [InputRed preserve:[[DevastatingRowData sharedInstance] show_threadText]];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self messageTitle:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [WorkLanguageManager getTextWithKey:@"File"];
            text = [InputRed preserve:[[DevastatingRowData sharedInstance] show_nationalText]];//@"[文件]".;
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
            //: return (record.callType == NIMRtcCallTypeAudio ? [WorkLanguageManager getTextWithKey:@"Internet_call"] : [WorkLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [InputRed preserve:[[DevastatingRowData sharedInstance] showCousinName]] : [InputRed preserve:[[DevastatingRowData sharedInstance] noti_comfortablePaintValue]]);
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
+ (NSString *)messageTitle:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [WorkLanguageManager getTextWithKey:@"Internet_call"];
            return [InputRed preserve:[[DevastatingRowData sharedInstance] showCousinName]];//@"[网络通话]".;
        }
        //: return [WorkLanguageManager getTextWithKey:@"Video_chat"];
        return [InputRed preserve:[[DevastatingRowData sharedInstance] noti_comfortablePaintValue]];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [WorkLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [InputRed preserve:[[DevastatingRowData sharedInstance] dreamMothValue]];//@"[讨论组信息更新]".;
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
                                        title=[datas lastObject][[[DevastatingRowData sharedInstance] kBreastConfirmComfortName]];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][[[DevastatingRowData sharedInstance] user_earlData]];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[DevastatingRowData sharedInstance] mProgressiveName],message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[DevastatingRowData sharedInstance] mProgressiveName],message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[DevastatingRowData sharedInstance] mainMeasureSliceValue],message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",[[DevastatingRowData sharedInstance] app_unitName],message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",[[DevastatingRowData sharedInstance] userContemplateTitle],message.session.sessionId]];
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

            //: return [WorkLanguageManager getTextWithKey:@"Group_information_update"];
            return [InputRed preserve:[[DevastatingRowData sharedInstance] appRantValue]];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [WorkLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [InputRed preserve:[[DevastatingRowData sharedInstance] notiHandleTitle]];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end
