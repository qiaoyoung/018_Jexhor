
#import <Foundation/Foundation.h>

NSString *StringFromUserIconData(Byte *data);        


//: url
Byte dreamDirectHorrorData[] = {84, 3, 73, 14, 152, 210, 77, 228, 96, 216, 235, 138, 149, 218, 44, 41, 35, 6};

//: password
Byte noti_wakeName[] = {86, 8, 71, 11, 225, 134, 107, 194, 127, 189, 221, 41, 26, 44, 44, 48, 40, 43, 29, 108};

//: data
Byte userBornContent[] = {50, 4, 28, 6, 20, 199, 72, 69, 88, 69, 106};

//: isGetDone
Byte k_tickData[] = {77, 9, 21, 8, 77, 203, 202, 68, 84, 94, 50, 80, 95, 47, 90, 89, 80, 43};

//: encrypted
Byte showAspectPath[] = {29, 9, 19, 5, 174, 82, 91, 80, 95, 102, 93, 97, 82, 81, 25};

//: sendPacketId
Byte appStyleFormat[] = {51, 12, 44, 8, 165, 53, 83, 18, 71, 57, 66, 56, 36, 53, 55, 63, 57, 72, 29, 56, 183};

//: title
Byte user_influentialValue[] = {75, 5, 69, 4, 47, 36, 47, 39, 32, 83};

//: fired
Byte userDelicateData[] = {8, 5, 73, 8, 191, 22, 247, 63, 29, 32, 41, 28, 27, 29};

//: openPacketId
Byte mTingKey[] = {77, 12, 95, 8, 18, 152, 3, 48, 16, 17, 6, 15, 241, 2, 4, 12, 6, 21, 234, 5, 54};

//: fileName
Byte show_venueViewActorUrl[] = {42, 8, 59, 12, 101, 106, 134, 104, 195, 181, 70, 43, 43, 46, 49, 42, 19, 38, 50, 42, 23};

//: sessionId
Byte dream_economicIdent[] = {95, 9, 29, 11, 109, 17, 25, 98, 66, 66, 29, 86, 72, 86, 86, 76, 82, 81, 44, 71, 82};

//: md5
Byte show_toMageViewIdent[] = {35, 3, 98, 13, 206, 47, 126, 195, 33, 144, 203, 53, 238, 11, 2, 211, 120};

//: compressed
Byte m_cellValue[] = {82, 10, 47, 11, 188, 193, 100, 10, 233, 105, 105, 52, 64, 62, 65, 67, 54, 68, 68, 54, 53, 6};

//: redPacketSendID
Byte kUserValue[] = {9, 15, 17, 11, 98, 134, 245, 179, 179, 1, 198, 97, 84, 83, 63, 80, 82, 90, 84, 99, 66, 84, 93, 83, 56, 51, 237};

//: messageAbstract
Byte dream_motMessage[] = {72, 15, 80, 9, 207, 80, 220, 207, 78, 29, 21, 35, 35, 17, 23, 21, 241, 18, 35, 36, 34, 17, 19, 36, 114};

//: sessionName
Byte mainTingPath[] = {37, 11, 47, 14, 105, 99, 44, 50, 30, 128, 15, 124, 130, 25, 68, 54, 68, 68, 58, 64, 63, 31, 50, 62, 54, 50};

//: content
Byte main_threadMsg[] = {18, 7, 91, 7, 136, 237, 100, 8, 20, 19, 25, 10, 19, 25, 46};

//: type
Byte dream_cellValue[] = {69, 4, 46, 9, 129, 59, 82, 210, 118, 70, 75, 66, 55, 18};

//: redPacketId
Byte dreamWakeUrl[] = {72, 11, 56, 12, 198, 20, 185, 129, 214, 168, 164, 137, 58, 45, 44, 24, 41, 43, 51, 45, 60, 17, 44, 122};

//: flag
Byte showFrankMsg[] = {68, 4, 75, 14, 94, 25, 248, 204, 107, 183, 56, 6, 59, 82, 27, 33, 22, 28, 158};

//: personCardId
Byte appStatTitleName[] = {59, 12, 25, 7, 149, 65, 115, 87, 76, 89, 90, 86, 85, 42, 72, 89, 75, 48, 75, 229};

//: value
Byte notiButtStr[] = {9, 5, 60, 10, 18, 183, 111, 182, 164, 118, 58, 37, 48, 57, 41, 64};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CrossCover.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomAttachmentDecoder.h"
#import "CrossCover.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "NTESJanKenPonAttachment.h"
#import "SizeAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "NameAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "PacketImage.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "AccumulationSecret.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "AttachmentOn.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Bar.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "MaxAttachment.h"

//: @implementation NTESCustomAttachmentDecoder
@implementation CrossCover
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
            NSInteger type = [dict successSelect:StringFromUserIconData(dream_cellValue)];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict providerView:StringFromUserIconData(userBornContent)];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[NTESJanKenPonAttachment alloc] init];
                    attachment = [[SizeAttachment alloc] init];
                    //: ((NTESJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((SizeAttachment *)attachment).value = [data successSelect:StringFromUserIconData(notiButtStr)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[NTESSnapchatAttachment alloc] init];
                    attachment = [[NameAttachment alloc] init];
                    //: ((NTESSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((NameAttachment *)attachment).md5 = [data image:StringFromUserIconData(show_toMageViewIdent)];
                    //: ((NTESSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((NameAttachment *)attachment).url = [data image:StringFromUserIconData(dreamDirectHorrorData)];
                    //: ((NTESSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((NameAttachment *)attachment).isFired = [data everyTitle:StringFromUserIconData(userDelicateData)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[NTESWhiteboardAttachment alloc] init];
                    attachment = [[DoingAttachment alloc] init];
                    //: ((NTESWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((DoingAttachment *)attachment).flag = [data successSelect:StringFromUserIconData(showFrankMsg)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[NTESRedPacketAttachment alloc] init];
                    attachment = [[PacketImage alloc] init];
                    //: ((NTESRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((PacketImage *)attachment).title = [data image:StringFromUserIconData(user_influentialValue)];
                    //: ((NTESRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((PacketImage *)attachment).content = [data image:StringFromUserIconData(main_threadMsg)];
                    //: ((NTESRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((PacketImage *)attachment).redPacketId = [data image:StringFromUserIconData(dreamWakeUrl)];
                    //: ((NTESRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((PacketImage *)attachment).sendID = [data image:StringFromUserIconData(kUserValue)];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[NTESRedPacketTipAttachment alloc] init];
                    attachment = [[AccumulationSecret alloc] init];
                    //: ((NTESRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((AccumulationSecret *)attachment).sendPacketId = [data image:StringFromUserIconData(appStyleFormat)];
                    //: ((NTESRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((AccumulationSecret *)attachment).packetId = [data image:StringFromUserIconData(dreamWakeUrl)];
                    //: ((NTESRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((AccumulationSecret *)attachment).isGetDone = [data image:StringFromUserIconData(k_tickData)];
                    //: ((NTESRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((AccumulationSecret *)attachment).openPacketId = [data image:StringFromUserIconData(mTingKey)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[NTESMultiRetweetAttachment alloc] init];
                    attachment = [[AttachmentOn alloc] init];
                    //: ((NTESMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((AttachmentOn *)attachment).url = [data image:StringFromUserIconData(dreamDirectHorrorData)];
                    //: ((NTESMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((AttachmentOn *)attachment).md5 = [data image:StringFromUserIconData(show_toMageViewIdent)];
                    //: ((NTESMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((AttachmentOn *)attachment).fileName = [data image:StringFromUserIconData(show_venueViewActorUrl)];
                    //: ((NTESMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((AttachmentOn *)attachment).compressed = [data everyTitle:StringFromUserIconData(m_cellValue)];
                    //: ((NTESMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((AttachmentOn *)attachment).encrypted = [data everyTitle:StringFromUserIconData(showAspectPath)];
                    //: ((NTESMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((AttachmentOn *)attachment).password = [data image:StringFromUserIconData(noti_wakeName)];
                    //: ((NTESMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((AttachmentOn *)attachment).messageAbstract = [data bluish:StringFromUserIconData(dream_motMessage)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((AttachmentOn *)attachment).sessionName = [data image:StringFromUserIconData(mainTingPath)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((AttachmentOn *)attachment).sessionId = [data image:StringFromUserIconData(dream_economicIdent)];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[NTESShareCardAttachment alloc] init];
                    attachment = [[MaxAttachment alloc] init];
                    //: ((NTESShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((MaxAttachment *)attachment).title = [data image:StringFromUserIconData(user_influentialValue)];
                    //: ((NTESShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((MaxAttachment *)attachment).type = [data image:StringFromUserIconData(dream_cellValue)];
                    //: ((NTESShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((MaxAttachment *)attachment).content = [data image:StringFromUserIconData(main_threadMsg)];
                    //: ((NTESShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((MaxAttachment *)attachment).personCardId = [data image:StringFromUserIconData(appStatTitleName)];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self tag:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}


//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)tag:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[SizeAttachment class]])
    {
        //: NSInteger value = [((NTESJanKenPonAttachment *)attachment) value];
        NSInteger value = [((SizeAttachment *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[NTESSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[NameAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([attachment isKindOfClass:[MaxAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[DoingAttachment class]])
    {
        //: NSInteger flag = [((NTESWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((DoingAttachment *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[NTESRedPacketAttachment class]] || [attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[PacketImage class]] || [attachment isKindOfClass:[AccumulationSecret class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[AttachmentOn class]])
    {
        //: NTESMultiRetweetAttachment *target = (NTESMultiRetweetAttachment *)attachment;
        AttachmentOn *target = (AttachmentOn *)attachment;
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

Byte * UserIconDataToCache(Byte *data) {
    int birdSEyeView = data[0];
    int fabric = data[1];
    Byte heatless = data[2];
    int nether = data[3];
    if (!birdSEyeView) return data + nether;
    for (int i = nether; i < nether + fabric; i++) {
        int value = data[i] + heatless;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[nether + fabric] = 0;
    return data + nether;
}

NSString *StringFromUserIconData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UserIconDataToCache(data)];
}
