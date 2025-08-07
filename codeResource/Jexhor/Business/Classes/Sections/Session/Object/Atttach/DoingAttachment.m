
#import <Foundation/Foundation.h>

@interface AdviserData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AdviserData

+ (instancetype)sharedInstance {
    static AdviserData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AdviserDataToCache:(Byte *)data {
    int opposition = data[0];
    Byte may = data[1];
    int percipient = data[2];
    for (int i = percipient; i < percipient + opposition; i++) {
        int value = data[i] + may;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[percipient + opposition] = 0;
    return data + percipient;
}

- (NSString *)StringFromAdviserData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AdviserDataToCache:data]];
}

//: icon_whiteboard_session_msg
- (NSString *)showLegallyText {
    /* static */ NSString *showLegallyText = nil;
    if (!showLegallyText) {
        Byte value[] = {27, 83, 5, 168, 183, 22, 16, 28, 27, 12, 36, 21, 22, 33, 18, 15, 28, 14, 31, 17, 12, 32, 18, 32, 32, 22, 28, 27, 12, 26, 32, 20, 163};
        showLegallyText = [self StringFromAdviserData:value];
    }
    return showLegallyText;
}

//: data
- (NSString *)appPermitId {
    /* static */ NSString *appPermitId = nil;
    if (!appPermitId) {
        Byte value[] = {4, 82, 3, 18, 15, 34, 15, 155};
        appPermitId = [self StringFromAdviserData:value];
    }
    return appPermitId;
}

//: 我发起了白板演示
- (NSString *)k_povertyName {
    /* static */ NSString *k_povertyName = nil;
    if (!k_povertyName) {
        Byte value[] = {24, 68, 5, 168, 203, 162, 68, 77, 161, 75, 77, 164, 113, 115, 160, 118, 66, 163, 85, 121, 162, 89, 123, 162, 120, 80, 163, 96, 118, 78};
        k_povertyName = [self StringFromAdviserData:value];
    }
    return k_povertyName;
}

//: type
- (NSString *)kBlankUrl {
    /* static */ NSString *kBlankUrl = nil;
    if (!kBlankUrl) {
        Byte value[] = {4, 80, 12, 154, 24, 60, 197, 16, 41, 6, 128, 144, 36, 41, 32, 21, 194};
        kBlankUrl = [self StringFromAdviserData:value];
    }
    return kBlankUrl;
}

//: flag
- (NSString *)dream_termPath {
    /* static */ NSString *dream_termPath = nil;
    if (!dream_termPath) {
        Byte value[] = {4, 8, 4, 76, 94, 100, 89, 95, 204};
        dream_termPath = [self StringFromAdviserData:value];
    }
    return dream_termPath;
}

//: 白板演示已结束
- (NSString *)userMainFormat {
    /* static */ NSString *userMainFormat = nil;
    if (!userMainFormat) {
        Byte value[] = {21, 31, 11, 52, 232, 222, 116, 181, 180, 104, 67, 200, 122, 158, 199, 126, 160, 199, 157, 117, 200, 133, 155, 198, 152, 147, 200, 156, 116, 199, 126, 128, 223};
        userMainFormat = [self StringFromAdviserData:value];
    }
    return userMainFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingAttachment.m
//  NIM
//
//  Created by 高峰 on 15/7/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "M80AttributedLabel.h"
#import "InsertView.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"

//: @implementation NTESWhiteboardAttachment
@implementation DoingAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeWhiteboard),
    NSDictionary *dict = @{[[AdviserData sharedInstance] kBlankUrl] : @(CustomMessageTypeWhiteboard),
                           //: @"data" : @{@"flag":@(self.flag)}};
                           [[AdviserData sharedInstance] appPermitId] : @{[[AdviserData sharedInstance] dream_termPath]:@(self.flag)}};
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
- (NSString *)menuOn{
    //: NSString *msg = @"";
    NSString *msg = @"";
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: msg = @"我发起了白板演示".ntes_localized;
            msg = [[AdviserData sharedInstance] k_povertyName].ting;
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: msg = @"白板演示已结束".ntes_localized;
            msg = [[AdviserData sharedInstance] userMainFormat].ting;
        //: default:
        default:
            //: break;
            break;
    }
    //: return msg;
    return msg;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)chemicalElementName:(NIMMessage *)message{
    //: NSString *content;
    NSString *content;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: content = @"NTESSessionWhiteBoardContentView";
            content = @"ChangeModelControl";
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: content = @"NTESSessionTipContentView";
            content = @"CountView";
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
- (BOOL)avatar
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
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width{
    //: CGSize contentSize;
    CGSize contentSize;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:{
        case CustomWhiteboardFlagInvite:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            InsertView *label = [[InsertView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [UIFont systemFontOfSize:14];
            label.font = [UIFont systemFontOfSize:14];
            //: [label setText:self.formatedMessage];
            [label setText:self.menuOn];
            //: UIImage *image = [UIImage imageNamed:@"icon_whiteboard_session_msg"];
            UIImage *image = [UIImage imageNamed:[[AdviserData sharedInstance] showLegallyText]];
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
- (UIEdgeInsets)visualPercept:(NIMMessage *)message
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
- (BOOL)descriptionned:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeForwarded
- (BOOL)pageContent
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)section
{
    //: return NO;
    return NO;
}



//: @end
@end