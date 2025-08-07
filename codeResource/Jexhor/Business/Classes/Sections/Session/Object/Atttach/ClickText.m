
#import <Foundation/Foundation.h>

@interface DrawDoingData : NSObject

@end

@implementation DrawDoingData

+ (Byte *)DrawDoingDataToCache:(Byte *)data {
    int recordAlbum = data[0];
    int appearTarget = data[1];
    for (int i = 0; i < recordAlbum / 2; i++) {
        int begin = appearTarget + i;
        int end = appearTarget + recordAlbum - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[appearTarget + recordAlbum] = 0;
    return data + appearTarget;
}

+ (NSString *)StringFromDrawDoingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DrawDoingDataToCache:data]];
}  

//: icon_whiteboard_session_msg
+ (NSString *)user_oldButtonName {
    /* static */ NSString *user_oldButtonName = nil;
    if (!user_oldButtonName) {
        Byte value[] = {27, 6, 108, 229, 173, 203, 103, 115, 109, 95, 110, 111, 105, 115, 115, 101, 115, 95, 100, 114, 97, 111, 98, 101, 116, 105, 104, 119, 95, 110, 111, 99, 105, 232};
        user_oldButtonName = [self StringFromDrawDoingData:value];
    }
    return user_oldButtonName;
}

//: type
+ (NSString *)showSendValue {
    /* static */ NSString *showSendValue = nil;
    if (!showSendValue) {
        Byte value[] = {4, 5, 198, 131, 209, 101, 112, 121, 116, 213};
        showSendValue = [self StringFromDrawDoingData:value];
    }
    return showSendValue;
}

//: data
+ (NSString *)m_viewWithName {
    /* static */ NSString *m_viewWithName = nil;
    if (!m_viewWithName) {
        Byte value[] = {4, 7, 139, 86, 48, 212, 226, 97, 116, 97, 100, 161};
        m_viewWithName = [self StringFromDrawDoingData:value];
    }
    return m_viewWithName;
}

//: 我发起了白板演示
+ (NSString *)dream_yaValue {
    /* static */ NSString *dream_yaValue = nil;
    if (!dream_yaValue) {
        Byte value[] = {24, 11, 46, 34, 233, 101, 54, 30, 14, 41, 151, 186, 164, 231, 148, 188, 230, 191, 157, 230, 189, 153, 231, 134, 186, 228, 183, 181, 232, 145, 143, 229, 145, 136, 230, 224};
        dream_yaValue = [self StringFromDrawDoingData:value];
    }
    return dream_yaValue;
}

//: 白板演示已结束
+ (NSString *)mainShouldValue {
    /* static */ NSString *mainShouldValue = nil;
    if (!mainShouldValue) {
        Byte value[] = {21, 4, 151, 108, 159, 157, 230, 147, 187, 231, 178, 183, 229, 186, 164, 231, 148, 188, 230, 191, 157, 230, 189, 153, 231, 111};
        mainShouldValue = [self StringFromDrawDoingData:value];
    }
    return mainShouldValue;
}

//: flag
+ (NSString *)m_givingCongressionalValue {
    /* static */ NSString *m_givingCongressionalValue = nil;
    if (!m_givingCongressionalValue) {
        Byte value[] = {4, 3, 59, 103, 97, 108, 102, 3};
        m_givingCongressionalValue = [self StringFromDrawDoingData:value];
    }
    return m_givingCongressionalValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickText.m
//  NIM
//
//  Created by 高峰 on 15/7/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"

//: @implementation NTESWhiteboardAttachment
@implementation ClickText

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeWhiteboard),
    NSDictionary *dict = @{[DrawDoingData showSendValue] : @(CustomMessageTypeWhiteboard),
                           //: @"data" : @{@"flag":@(self.flag)}};
                           [DrawDoingData m_viewWithName] : @{[DrawDoingData m_givingCongressionalValue]:@(self.flag)}};
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

//: - (NSString *)formatedMessage{
- (NSString *)incandescenceLine{
    //: NSString *msg = @"";
    NSString *msg = @"";
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: msg = @"我发起了白板演示".ntes_localized;
            msg = [DrawDoingData dream_yaValue].shouldLocalized;
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: msg = @"白板演示已结束".ntes_localized;
            msg = [DrawDoingData mainShouldValue].shouldLocalized;
        //: default:
        default:
            //: break;
            break;
    }
    //: return msg;
    return msg;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)provider:(NIMMessage *)message{
    //: NSString *content;
    NSString *content;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: content = @"NTESSessionWhiteBoardContentView";
            content = @"BoardMemberView";
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: content = @"NTESSessionTipContentView";
            content = @"EnableControl";
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: return content;
    return content;
}

//: - (BOOL)shouldShowAvatar
- (BOOL)stateShared
{
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: return YES;
            return YES;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return NO;
    return NO;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width{
    //: CGSize contentSize;
    CGSize contentSize;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:{
        case CustomWhiteboardFlagInvite:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            VideoTextView *label = [[VideoTextView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [UIFont systemFontOfSize:14];
            label.font = [UIFont systemFontOfSize:14];
            //: [label setText:self.formatedMessage];
            [label setText:self.incandescenceLine];
            //: UIImage *image = [UIImage imageNamed:@"icon_whiteboard_session_msg"];
            UIImage *image = [UIImage imageNamed:[DrawDoingData user_oldButtonName]];
            //: CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            //: CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            //: break;
            break;
        }
        //: case CustomWhiteboardFlagClose:{
        case CustomWhiteboardFlagClose:{
            //: CGFloat messageWidth = width;
            CGFloat messageWidth = width;
            //: CGFloat messageHeight = 40;
            CGFloat messageHeight = 40;
            //: contentSize = CGSizeMake(messageWidth, messageHeight);
            contentSize = CGSizeMake(messageWidth, messageHeight);
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)key:(NIMMessage *)message
{
    //: if (self.flag == CustomWhiteboardFlagClose) {
    if (self.flag == CustomWhiteboardFlagClose) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    //: } else {
    } else {
        //: CGFloat selfBubbleTopToContentForBoard = 11.f;
        CGFloat selfBubbleTopToContentForBoard = 11.f;
        //: CGFloat selfBubbleLeftToContentForBoard = 11.f;
        CGFloat selfBubbleLeftToContentForBoard = 11.f;
        //: CGFloat selfContentButtomToBubbleForBoard = 9.f;
        CGFloat selfContentButtomToBubbleForBoard = 9.f;
        //: CGFloat selfBubbleRightToContentForBoard = 15.f;
        CGFloat selfBubbleRightToContentForBoard = 15.f;

        //: CGFloat otherBubbleTopToContentForBoard = 11.f;
        CGFloat otherBubbleTopToContentForBoard = 11.f;
        //: CGFloat otherBubbleLeftToContentForBoard = 15.f;
        CGFloat otherBubbleLeftToContentForBoard = 15.f;
        //: CGFloat otherContentButtomToBubbleForBoard = 9.f;
        CGFloat otherContentButtomToBubbleForBoard = 9.f;
        //: CGFloat otherContentRightToBubbleForBoard = 9.f;
        CGFloat otherContentRightToBubbleForBoard = 9.f;


        //: return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
        return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
                                                        //: selfBubbleLeftToContentForBoard,
                                                        selfBubbleLeftToContentForBoard,
                                                        //: selfContentButtomToBubbleForBoard,
                                                        selfContentButtomToBubbleForBoard,
                                                        //: selfBubbleRightToContentForBoard):
                                                        selfBubbleRightToContentForBoard):
        //: UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
        UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
                         //: otherBubbleLeftToContentForBoard,
                         otherBubbleLeftToContentForBoard,
                         //: otherContentButtomToBubbleForBoard,
                         otherContentButtomToBubbleForBoard,
                         //: otherContentRightToBubbleForBoard);
                         otherContentRightToBubbleForBoard);
    }
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)pilloried:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeForwarded
- (BOOL)session
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)bearOn
{
    //: return NO;
    return NO;
}



//: @end
@end