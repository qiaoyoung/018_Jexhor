
#import <Foundation/Foundation.h>

NSString *StringFromCommentSessionData(Byte *data);


//: type
Byte appVideoGivingName[] = {99, 4, 92, 7, 246, 127, 10, 208, 213, 204, 193, 246};

//: custom_msg_pon
Byte notiFileRowShowText[] = {50, 14, 66, 9, 73, 71, 173, 59, 222, 165, 183, 181, 182, 177, 175, 161, 175, 181, 169, 161, 178, 177, 176, 37};

//: custom_msg_jan
Byte show_suspectData[] = {83, 14, 25, 13, 175, 201, 46, 170, 79, 32, 192, 100, 208, 124, 142, 140, 141, 136, 134, 120, 134, 140, 128, 120, 131, 122, 135, 90};

//: value
Byte mBubbleViseValueContent[] = {67, 5, 84, 10, 180, 119, 71, 15, 119, 68, 202, 181, 192, 201, 185, 94};

//: custom_msg_ken
Byte dreamViewValue[] = {75, 14, 76, 6, 197, 40, 175, 193, 191, 192, 187, 185, 171, 185, 191, 179, 171, 183, 177, 186, 88};

//: data
Byte show_seriesValue[] = {46, 4, 65, 12, 139, 103, 214, 157, 85, 18, 233, 127, 165, 162, 181, 162, 75};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageCount.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "ImageCount.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation ImageCount

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{StringFromCommentSessionData(appVideoGivingName) : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           StringFromCommentSessionData(show_seriesValue) : @{StringFromCommentSessionData(mBubbleViseValueContent):@(self.value)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)provider:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"ViewControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)key:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:StringFromCommentSessionData(show_suspectData)];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:StringFromCommentSessionData(dreamViewValue)];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:StringFromCommentSessionData(notiFileRowShowText)];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (BOOL)canBeRevoked
- (BOOL)bearOn
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)session
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)pilloried:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end

Byte * CommentSessionDataToCache(Byte *data) {
    int itemJournalist = data[0];
    int electrolyteBalance = data[1];
    Byte milkPowderEarl = data[2];
    int tagSuspect = data[3];
    if (!itemJournalist) return data + tagSuspect;
    for (int i = tagSuspect; i < tagSuspect + electrolyteBalance; i++) {
        int value = data[i] - milkPowderEarl;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tagSuspect + electrolyteBalance] = 0;
    return data + tagSuspect;
}

NSString *StringFromCommentSessionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CommentSessionDataToCache(data)];
}
