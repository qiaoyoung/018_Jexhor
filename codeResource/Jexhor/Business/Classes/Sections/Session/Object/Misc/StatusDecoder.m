
#import <Foundation/Foundation.h>

@interface WorstedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WorstedData

+ (instancetype)sharedInstance {
    static WorstedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WorstedDataToCache:(Byte *)data {
    int afternoon = data[0];
    Byte pursuit = data[1];
    int threadThan = data[2];
    for (int i = threadThan; i < threadThan + afternoon; i++) {
        int value = data[i] + pursuit;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[threadThan + afternoon] = 0;
    return data + threadThan;
}

- (NSString *)StringFromWorstedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WorstedDataToCache:data]];
}

//: flag
- (NSString *)userAcceptableText {
    /* static */ NSString *userAcceptableText = nil;
    if (!userAcceptableText) {
        Byte value[] = {4, 99, 11, 159, 96, 28, 138, 36, 93, 208, 121, 3, 9, 254, 4, 220};
        userAcceptableText = [self StringFromWorstedData:value];
    }
    return userAcceptableText;
}

//: url
- (NSString *)app_yaValue {
    /* static */ NSString *app_yaValue = nil;
    if (!app_yaValue) {
        Byte value[] = {3, 6, 9, 98, 122, 169, 174, 46, 95, 111, 108, 102, 243};
        app_yaValue = [self StringFromWorstedData:value];
    }
    return app_yaValue;
}

//: sessionName
- (NSString *)showVideoText {
    /* static */ NSString *showVideoText = nil;
    if (!showVideoText) {
        Byte value[] = {11, 11, 9, 41, 72, 126, 4, 165, 86, 104, 90, 104, 104, 94, 100, 99, 67, 86, 98, 90, 182};
        showVideoText = [self StringFromWorstedData:value];
    }
    return showVideoText;
}

//: fired
- (NSString *)user_suspectYouthName {
    /* static */ NSString *user_suspectYouthName = nil;
    if (!user_suspectYouthName) {
        Byte value[] = {5, 63, 13, 221, 55, 26, 79, 114, 223, 108, 76, 35, 143, 39, 42, 51, 38, 37, 1};
        user_suspectYouthName = [self StringFromWorstedData:value];
    }
    return user_suspectYouthName;
}

//: md5
- (NSString *)show_givingValue {
    /* static */ NSString *show_givingValue = nil;
    if (!show_givingValue) {
        Byte value[] = {3, 36, 3, 73, 64, 17, 154};
        show_givingValue = [self StringFromWorstedData:value];
    }
    return show_givingValue;
}

//: sendPacketId
- (NSString *)kAmbitionValue {
    /* static */ NSString *kAmbitionValue = nil;
    if (!kAmbitionValue) {
        Byte value[] = {12, 5, 12, 6, 242, 31, 125, 240, 36, 13, 242, 212, 110, 96, 105, 95, 75, 92, 94, 102, 96, 111, 68, 95, 52};
        kAmbitionValue = [self StringFromWorstedData:value];
    }
    return kAmbitionValue;
}

//: personCardId
- (NSString *)notiMaxText {
    /* static */ NSString *notiMaxText = nil;
    if (!notiMaxText) {
        Byte value[] = {12, 85, 4, 204, 27, 16, 29, 30, 26, 25, 238, 12, 29, 15, 244, 15, 229};
        notiMaxText = [self StringFromWorstedData:value];
    }
    return notiMaxText;
}

//: openPacketId
- (NSString *)showEarlData {
    /* static */ NSString *showEarlData = nil;
    if (!showEarlData) {
        Byte value[] = {12, 15, 8, 174, 11, 211, 52, 86, 96, 97, 86, 95, 65, 82, 84, 92, 86, 101, 58, 85, 190};
        showEarlData = [self StringFromWorstedData:value];
    }
    return showEarlData;
}

//: messageAbstract
- (NSString *)mainColorValue {
    /* static */ NSString *mainColorValue = nil;
    if (!mainColorValue) {
        Byte value[] = {15, 39, 9, 165, 45, 27, 255, 29, 69, 70, 62, 76, 76, 58, 64, 62, 26, 59, 76, 77, 75, 58, 60, 77, 50};
        mainColorValue = [self StringFromWorstedData:value];
    }
    return mainColorValue;
}

//: encrypted
- (NSString *)main_mustCousinContent {
    /* static */ NSString *main_mustCousinContent = nil;
    if (!main_mustCousinContent) {
        Byte value[] = {9, 34, 7, 154, 40, 7, 88, 67, 76, 65, 80, 87, 78, 82, 67, 66, 221};
        main_mustCousinContent = [self StringFromWorstedData:value];
    }
    return main_mustCousinContent;
}

//: redPacketId
- (NSString *)mainViewAccountPursuitValue {
    /* static */ NSString *mainViewAccountPursuitValue = nil;
    if (!mainViewAccountPursuitValue) {
        Byte value[] = {11, 19, 4, 216, 95, 82, 81, 61, 78, 80, 88, 82, 97, 54, 81, 242};
        mainViewAccountPursuitValue = [self StringFromWorstedData:value];
    }
    return mainViewAccountPursuitValue;
}

//: fileName
- (NSString *)k_scaleName {
    /* static */ NSString *k_scaleName = nil;
    if (!k_scaleName) {
        Byte value[] = {8, 66, 12, 93, 207, 153, 212, 207, 145, 128, 60, 159, 36, 39, 42, 35, 12, 31, 43, 35, 121};
        k_scaleName = [self StringFromWorstedData:value];
    }
    return k_scaleName;
}

//: data
- (NSString *)main_illegalViewTitle {
    /* static */ NSString *main_illegalViewTitle = nil;
    if (!main_illegalViewTitle) {
        Byte value[] = {4, 28, 8, 77, 32, 7, 141, 165, 72, 69, 88, 69, 212};
        main_illegalViewTitle = [self StringFromWorstedData:value];
    }
    return main_illegalViewTitle;
}

//: password
- (NSString *)mainKeepValue {
    /* static */ NSString *mainKeepValue = nil;
    if (!mainKeepValue) {
        Byte value[] = {8, 13, 9, 104, 82, 196, 142, 80, 69, 99, 84, 102, 102, 106, 98, 101, 87, 140};
        mainKeepValue = [self StringFromWorstedData:value];
    }
    return mainKeepValue;
}

//: redPacketSendID
- (NSString *)kSendData {
    /* static */ NSString *kSendData = nil;
    if (!kSendData) {
        Byte value[] = {15, 96, 9, 83, 243, 255, 141, 168, 190, 18, 5, 4, 240, 1, 3, 11, 5, 20, 243, 5, 14, 4, 233, 228, 23};
        kSendData = [self StringFromWorstedData:value];
    }
    return kSendData;
}

//: compressed
- (NSString *)dream_viewName {
    /* static */ NSString *dream_viewName = nil;
    if (!dream_viewName) {
        Byte value[] = {10, 10, 6, 59, 154, 187, 89, 101, 99, 102, 104, 91, 105, 105, 91, 90, 25};
        dream_viewName = [self StringFromWorstedData:value];
    }
    return dream_viewName;
}

//: value
- (NSString *)showLengthData {
    /* static */ NSString *showLengthData = nil;
    if (!showLengthData) {
        Byte value[] = {5, 6, 7, 67, 40, 11, 196, 112, 91, 102, 111, 95, 131};
        showLengthData = [self StringFromWorstedData:value];
    }
    return showLengthData;
}

//: content
- (NSString *)showLengthName {
    /* static */ NSString *showLengthName = nil;
    if (!showLengthName) {
        Byte value[] = {7, 50, 3, 49, 61, 60, 66, 51, 60, 66, 144};
        showLengthName = [self StringFromWorstedData:value];
    }
    return showLengthName;
}

//: sessionId
- (NSString *)kSeriesData {
    /* static */ NSString *kSeriesData = nil;
    if (!kSeriesData) {
        Byte value[] = {9, 86, 4, 241, 29, 15, 29, 29, 19, 25, 24, 243, 14, 172};
        kSeriesData = [self StringFromWorstedData:value];
    }
    return kSeriesData;
}

//: title
- (NSString *)user_olaText {
    /* static */ NSString *user_olaText = nil;
    if (!user_olaText) {
        Byte value[] = {5, 44, 6, 132, 210, 132, 72, 61, 72, 64, 57, 146};
        user_olaText = [self StringFromWorstedData:value];
    }
    return user_olaText;
}

//: isGetDone
- (NSString *)notiKeepCongressionalName {
    /* static */ NSString *notiKeepCongressionalName = nil;
    if (!notiKeepCongressionalName) {
        Byte value[] = {9, 59, 13, 130, 36, 121, 221, 174, 181, 99, 132, 96, 146, 46, 56, 12, 42, 57, 9, 52, 51, 42, 146};
        notiKeepCongressionalName = [self StringFromWorstedData:value];
    }
    return notiKeepCongressionalName;
}

//: type
- (NSString *)userDrinkingYaParentValue {
    /* static */ NSString *userDrinkingYaParentValue = nil;
    if (!userDrinkingYaParentValue) {
        Byte value[] = {4, 43, 9, 166, 134, 161, 80, 15, 103, 73, 78, 69, 58, 213};
        userDrinkingYaParentValue = [self StringFromWorstedData:value];
    }
    return userDrinkingYaParentValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusDecoder.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomAttachmentDecoder.h"
#import "StatusDecoder.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ImageCount.h"
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "NTESRedPacketAttachment.h"
#import "ItemViewAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "NameButton.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ViewColor.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+SubjectMatterJson.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "InputAttachment.h"

//: @implementation NTESCustomAttachmentDecoder
@implementation StatusDecoder
//: - (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
- (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
{
    //: id<NIMCustomAttachment> attachment = nil;
    id<NIMCustomAttachment> attachment = nil;

    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [dict jsonInteger:@"type"];
            NSInteger type = [dict cell:[[WorstedData sharedInstance] userDrinkingYaParentValue]];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict format:[[WorstedData sharedInstance] main_illegalViewTitle]];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[NTESJanKenPonAttachment alloc] init];
                    attachment = [[ImageCount alloc] init];
                    //: ((NTESJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((ImageCount *)attachment).value = [data cell:[[WorstedData sharedInstance] showLengthData]];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[NTESSnapchatAttachment alloc] init];
                    attachment = [[PassePartoutAccount alloc] init];
                    //: ((NTESSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((PassePartoutAccount *)attachment).md5 = [data table:[[WorstedData sharedInstance] show_givingValue]];
                    //: ((NTESSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((PassePartoutAccount *)attachment).url = [data table:[[WorstedData sharedInstance] app_yaValue]];
                    //: ((NTESSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((PassePartoutAccount *)attachment).isFired = [data light:[[WorstedData sharedInstance] user_suspectYouthName]];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[NTESWhiteboardAttachment alloc] init];
                    attachment = [[ClickText alloc] init];
                    //: ((NTESWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((ClickText *)attachment).flag = [data cell:[[WorstedData sharedInstance] userAcceptableText]];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[NTESRedPacketAttachment alloc] init];
                    attachment = [[ItemViewAttachment alloc] init];
                    //: ((NTESRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((ItemViewAttachment *)attachment).title = [data table:[[WorstedData sharedInstance] user_olaText]];
                    //: ((NTESRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((ItemViewAttachment *)attachment).content = [data table:[[WorstedData sharedInstance] showLengthName]];
                    //: ((NTESRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((ItemViewAttachment *)attachment).redPacketId = [data table:[[WorstedData sharedInstance] mainViewAccountPursuitValue]];
                    //: ((NTESRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((ItemViewAttachment *)attachment).sendID = [data table:[[WorstedData sharedInstance] kSendData]];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[NTESRedPacketTipAttachment alloc] init];
                    attachment = [[NameButton alloc] init];
                    //: ((NTESRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((NameButton *)attachment).sendPacketId = [data table:[[WorstedData sharedInstance] kAmbitionValue]];
                    //: ((NTESRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((NameButton *)attachment).packetId = [data table:[[WorstedData sharedInstance] mainViewAccountPursuitValue]];
                    //: ((NTESRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((NameButton *)attachment).isGetDone = [data table:[[WorstedData sharedInstance] notiKeepCongressionalName]];
                    //: ((NTESRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((NameButton *)attachment).openPacketId = [data table:[[WorstedData sharedInstance] showEarlData]];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[NTESMultiRetweetAttachment alloc] init];
                    attachment = [[ViewColor alloc] init];
                    //: ((NTESMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((ViewColor *)attachment).url = [data table:[[WorstedData sharedInstance] app_yaValue]];
                    //: ((NTESMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((ViewColor *)attachment).md5 = [data table:[[WorstedData sharedInstance] show_givingValue]];
                    //: ((NTESMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((ViewColor *)attachment).fileName = [data table:[[WorstedData sharedInstance] k_scaleName]];
                    //: ((NTESMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((ViewColor *)attachment).compressed = [data light:[[WorstedData sharedInstance] dream_viewName]];
                    //: ((NTESMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((ViewColor *)attachment).encrypted = [data light:[[WorstedData sharedInstance] main_mustCousinContent]];
                    //: ((NTESMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((ViewColor *)attachment).password = [data table:[[WorstedData sharedInstance] mainKeepValue]];
                    //: ((NTESMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((ViewColor *)attachment).messageAbstract = [data dataFormat:[[WorstedData sharedInstance] mainColorValue]];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((ViewColor *)attachment).sessionName = [data table:[[WorstedData sharedInstance] showVideoText]];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((ViewColor *)attachment).sessionId = [data table:[[WorstedData sharedInstance] kSeriesData]];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[NTESShareCardAttachment alloc] init];
                    attachment = [[InputAttachment alloc] init];
                    //: ((NTESShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((InputAttachment *)attachment).title = [data table:[[WorstedData sharedInstance] user_olaText]];
                    //: ((NTESShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((InputAttachment *)attachment).type = [data table:[[WorstedData sharedInstance] userDrinkingYaParentValue]];
                    //: ((NTESShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((InputAttachment *)attachment).content = [data table:[[WorstedData sharedInstance] showLengthName]];
                    //: ((NTESShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((InputAttachment *)attachment).personCardId = [data table:[[WorstedData sharedInstance] notiMaxText]];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self label:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}


//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)label:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[ImageCount class]])
    {
        //: NSInteger value = [((NTESJanKenPonAttachment *)attachment) value];
        NSInteger value = [((ImageCount *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[NTESSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[PassePartoutAccount class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([attachment isKindOfClass:[InputAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[ClickText class]])
    {
        //: NSInteger flag = [((NTESWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((ClickText *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[NTESRedPacketAttachment class]] || [attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[ItemViewAttachment class]] || [attachment isKindOfClass:[NameButton class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[ViewColor class]])
    {
        //: NTESMultiRetweetAttachment *target = (NTESMultiRetweetAttachment *)attachment;
        ViewColor *target = (ViewColor *)attachment;
        //: if (target.messageAbstract.count == 0) {
        if (target.messageAbstract.count == 0) {
            //: check = NO;
            check = NO;
        //: } else if (target.encrypted && target.password.length == 0) {
        } else if (target.encrypted && target.password.length == 0) {
            //: check = NO;
            check = NO;
        //: } else {
        } else {
            //: check = YES;
            check = YES;
        }
    }
    //: return check;
    return check;
}
//: @end
@end