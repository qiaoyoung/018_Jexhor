
#import <Foundation/Foundation.h>

typedef struct {
    Byte pickMessage;
    Byte *constantHeavilyRailroad;
    unsigned int tingCess;
	int contentShow;
	int border;
} StructFrightData;

@interface FrightData : NSObject

+ (instancetype)sharedInstance;

//: message should be notification
@property (nonatomic, copy) NSString *main_participateData;

//: not supported notification type %zd
@property (nonatomic, copy) NSString *userApproveValue;

@end

@implementation FrightData

+ (instancetype)sharedInstance {
    static FrightData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FrightDataToByte:(StructFrightData *)data {
    for (int i = 0; i < data->tingCess; i++) {
        data->constantHeavilyRailroad[i] ^= data->pickMessage;
    }
    data->constantHeavilyRailroad[data->tingCess] = 0;
	if (data->tingCess >= 2) {
		data->contentShow = data->constantHeavilyRailroad[0];
		data->border = data->constantHeavilyRailroad[1];
	}
    return data->constantHeavilyRailroad;
}

- (NSString *)StringFromFrightData:(StructFrightData *)data {
    return [NSString stringWithUTF8String:(char *)[self FrightDataToByte:data]];
}

//: not supported notification type %zd
- (NSString *)userApproveValue {
    if (!_userApproveValue) {
        StructFrightData value = (StructFrightData){103, (Byte []){9, 8, 19, 71, 20, 18, 23, 23, 8, 21, 19, 2, 3, 71, 9, 8, 19, 14, 1, 14, 4, 6, 19, 14, 8, 9, 71, 19, 30, 23, 2, 71, 66, 29, 3, 113}, 35, 162, 205};
        _userApproveValue = [self StringFromFrightData:&value];
    }
    return _userApproveValue;
}

//: message should be notification
- (NSString *)main_participateData {
    if (!_main_participateData) {
        StructFrightData value = (StructFrightData){103, (Byte []){10, 2, 20, 20, 6, 0, 2, 71, 20, 15, 8, 18, 11, 3, 71, 5, 2, 71, 9, 8, 19, 14, 1, 14, 4, 6, 19, 14, 8, 9, 149}, 30, 30, 99};
        _main_participateData = [self StringFromFrightData:&value];
    }
    return _main_participateData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EarlierData.m
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushNotificationContentConfig.h"
#import "EarlierData.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"
//: #import "PushUnsupportContentConfig.h"
#import "ViewRandom.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @implementation PushNotificationContentConfig
@implementation EarlierData
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [FrightData sharedInstance].main_participateData);

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
            //: label.text = [PushKitUtil messageTipContent:message];
            label.text = [KitUtil with:message];
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Secret highlight].config click:message].font;
            //: label.numberOfLines = 0;
            label.numberOfLines = 0;
            //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
            CGFloat padding = [Secret highlight].config.family;
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
            InsertView *label = [[InsertView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Secret highlight].config click:message].font;
            //: NSString *text = [PushKitUtil messageTipContent:message];
            NSString *text = [KitUtil with:message];
            //: [label nim_setText:text];
            [label viewTap:text];

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
            //: PushUnsupportContentConfig *config = [[PushUnsupportContentConfig alloc] init];
            ViewRandom *config = [[ViewRandom alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config tap:cellWidth button:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, [FrightData sharedInstance].userApproveValue,object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [FrightData sharedInstance].main_participateData);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"PushSessionNotificationContentView";
            return @"OrientationClickContentView";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"PushSessionNetChatNotifyContentView";
            return @"ControlView";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"PushSessionUnknowContentView";
            return @"ShouldControl";
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Secret highlight].config click:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)linked:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [FrightData sharedInstance].main_participateData);

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
