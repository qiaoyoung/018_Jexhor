
#import <Foundation/Foundation.h>

@interface RipDisableData : NSObject

+ (instancetype)sharedInstance;

//: not supported notification type %zd
@property (nonatomic, copy) NSString *showAssaultData;

//: message should be notification
@property (nonatomic, copy) NSString *userLoyalSolidData;

@end

@implementation RipDisableData

+ (instancetype)sharedInstance {
    static RipDisableData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RipDisableDataToCache:(Byte *)data {
    int quantityLopingEffect = data[0];
    int suspectPerception = data[1];
    for (int i = 0; i < quantityLopingEffect / 2; i++) {
        int begin = suspectPerception + i;
        int end = suspectPerception + quantityLopingEffect - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[suspectPerception + quantityLopingEffect] = 0;
    return data + suspectPerception;
}

- (NSString *)StringFromRipDisableData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RipDisableDataToCache:data]];
}  

//: message should be notification
- (NSString *)userLoyalSolidData {
    if (!_userLoyalSolidData) {
        Byte value[] = {30, 6, 111, 32, 12, 123, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 101, 103, 97, 115, 115, 101, 109, 237};
        _userLoyalSolidData = [self StringFromRipDisableData:value];
    }
    return _userLoyalSolidData;
}

//: not supported notification type %zd
- (NSString *)showAssaultData {
    if (!_showAssaultData) {
        Byte value[] = {35, 6, 169, 12, 17, 211, 100, 122, 37, 32, 101, 112, 121, 116, 32, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 100, 101, 116, 114, 111, 112, 112, 117, 115, 32, 116, 111, 110, 10};
        _showAssaultData = [self StringFromRipDisableData:value];
    }
    return _showAssaultData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SoundQuantity.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkNotificationContentConfig.h"
#import "SoundQuantity.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"
//: #import "WorkUnsupportContentConfig.h"
#import "ContentBottomConfig.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation WorkNotificationContentConfig
@implementation SoundQuantity
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [RipDisableData sharedInstance].userLoyalSolidData);

    //: CGSize contentSize = CGSizeZero;
    CGSize contentSize = CGSizeZero;

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
        {
            //: CGFloat TeamNotificationMessageWidth = cellWidth;
            CGFloat TeamNotificationMessageWidth = cellWidth;
            //: UILabel *label = [[UILabel alloc] init];
            UILabel *label = [[UILabel alloc] init];
            //: label.text = [WorkKitUtil messageTipContent:message];
            label.text = [WantUtil tingAcross:message];
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[MessageContent secretResolution].config ofSetting:message].font;
            //: label.numberOfLines = 0;
            label.numberOfLines = 0;
            //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
            CGFloat padding = [MessageContent secretResolution].config.close;
            //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
            CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
            //: CGFloat cellPadding = 11.f;
            CGFloat cellPadding = 11.f;
            //: contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            //: break;
            break;
        }
        //: case NIMNotificationTypeNetCall:{
        case NIMNotificationTypeNetCall:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            VideoTextView *label = [[VideoTextView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[MessageContent secretResolution].config ofSetting:message].font;
            //: NSString *text = [WorkKitUtil messageTipContent:message];
            NSString *text = [WantUtil tingAcross:message];
            //: [label nim_setText:text];
            [label infoCookie:text];

            //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: WorkUnsupportContentConfig *config = [[WorkUnsupportContentConfig alloc] init];
            ContentBottomConfig *config = [[ContentBottomConfig alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config refer:cellWidth componentPart:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, [RipDisableData sharedInstance].showAssaultData,object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [RipDisableData sharedInstance].userLoyalSolidData);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"WorkSessionNotificationContentView";
            return @"SoundView";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"WorkSessionNetChatNotifyContentView";
            return @"MessageFactorView";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"WorkSessionUnknowContentView";
            return @"ManagingDirectorContentView";
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)bubbled:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [RipDisableData sharedInstance].userLoyalSolidData);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return NO;
            return NO;
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return YES;
            return YES;
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return YES;
    return YES;
}

//: @end
@end
