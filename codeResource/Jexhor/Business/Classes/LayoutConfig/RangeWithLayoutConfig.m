
#import <Foundation/Foundation.h>
typedef struct {
    Byte needNovelShow;
    Byte *buttonAccounting;
    unsigned int heliogram;
    Byte confermentBubble;
	int handleUnit;
	int needVehicle;
} GazeData;

NSString *StringFromGazeData(GazeData *data);


//: type
GazeData m_controlValue = (GazeData){57, (Byte []){77, 64, 73, 92, 11}, 4, 225, 138, 137};

//: chatroom_role_master
GazeData kButtonWarnKeepName = (GazeData){224, (Byte []){131, 136, 129, 148, 146, 143, 143, 141, 191, 146, 143, 140, 133, 191, 141, 129, 147, 148, 133, 146, 195}, 20, 152, 129, 110};

//: chatroom_role_manager
GazeData showTossName = (GazeData){253, (Byte []){158, 149, 156, 137, 143, 146, 146, 144, 162, 143, 146, 145, 152, 162, 144, 156, 147, 156, 154, 152, 143, 96}, 21, 249, 121, 133};

//: NTESMessageRefusedTag
GazeData m_onName = (GazeData){1, (Byte []){79, 85, 68, 82, 76, 100, 114, 114, 96, 102, 100, 83, 100, 103, 116, 114, 100, 101, 85, 96, 102, 53}, 21, 214, 16, 136};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeWithLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "RangeWithLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "SameDisplayConfig.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "ThreadConfig.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "NameButton.h"

//: @interface NTESCellLayoutConfig ()
@interface RangeWithLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) SameDisplayConfig *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) ThreadConfig *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation RangeWithLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"ImageCount",
                   //: @"NTESSnapchatAttachment",
                   @"PassePartoutAccount",
                   //: @"NTESWhiteboardAttachment",
                   @"ClickText",
                   //: @"NTESRedPacketAttachment",
                   @"ItemViewAttachment",
                   //: @"NTESRedPacketTipAttachment",
                   @"NameButton",
                   //: @"NTESMultiRetweetAttachment",
                   @"ViewColor",
                   //: @"NTESShareCardAttachment"
                   @"InputAttachment"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[SameDisplayConfig alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[ThreadConfig alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - FFFCellLayoutConfig
#pragma mark - TingConfig
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)from:(ShowModel *)model bubble:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self range:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig refer:width componentPart:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self tipBring:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig refer:width componentPart:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super from:model
                    //: cellWidth:width];
                    bubble:width];

}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)change:(ShowModel *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self range:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig on:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self tipBring:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig on:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super change:model];
}

//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model
- (UIEdgeInsets)container:(ShowModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self range:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig team:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self tipBring:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig team:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super container:model];
}

//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)text:(ShowModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;

    //检查是不是聊天室消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellInsets:model];
    return [super text:model];
}




//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)shouldTitleImpression:(ShowModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self table:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self from:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self behindMaximumValue:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super shouldTitleImpression:model];
}

//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model{
- (BOOL)header:(ShowModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self table:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super header:model];
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)demonstrate:(ShowModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self table:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self behindMaximumValue:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super demonstrate:model];
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model{
- (CGPoint)index:(ShowModel *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self table:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromGazeData(&m_controlValue)] integerValue];
        //: switch (type) {
        switch (type) {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: return CGPointMake(50.f, -3.f);
                return CGPointMake(50.f, -3.f);
            //: default:
            default:
                //: break;
                break;
        }
        //: return CGPointMake(15.f, -3.f);;
        return CGPointMake(15.f, -3.f);;

    }
    //: return [super nickNameMargin:model];
    return [super index:model];
}

//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)with:(ShowModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self table:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromGazeData(&m_controlValue)] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = StringFromGazeData(&showTossName);
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = StringFromGazeData(&kButtonWarnKeepName);
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

        //: UIImageView *imageView;
        UIImageView *imageView;
        //: if (imageName.length) {
        if (imageName.length) {
            //: UIImage *image = [UIImage imageNamed:imageName];
            UIImage *image = [UIImage imageNamed:imageName];
            //: imageView = [[UIImageView alloc] initWithImage:image];
            imageView = [[UIImageView alloc] initWithImage:image];
            //: CGFloat leftMargin = 15.f;
            CGFloat leftMargin = 15.f;
            //: CGFloat topMatgin = 0.f;
            CGFloat topMatgin = 0.f;
            //: CGRect frame = imageView.frame;
            CGRect frame = imageView.frame;
            //: frame.origin = CGPointMake(leftMargin, topMatgin);
            frame.origin = CGPointMake(leftMargin, topMatgin);
            //: imageView.frame = frame;
            imageView.frame = frame;
        }
        //: return imageView ? @[imageView] : nil;
        return imageView ? @[imageView] : nil;
    }
    //: return [super customViews:model];
    return [super with:model];
}


//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)sessions:(ShowModel *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:StringFromGazeData(&m_onName)])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:StringFromGazeData(&m_onName)] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super sessions:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)range:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)table:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self range:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)tipBring:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)from:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[ClickText class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(ClickText *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)behindMaximumValue:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[NameButton class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)should:(ShowModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!message)
    if (!message)
    {
        //: return NO;
        return NO;
    }

    //: if ([self isSupportedCustomMessage:message])
    if ([self range:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig bubbled:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(bubbled:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig bubbled:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super should:model];
}
//: @end
@end

Byte *GazeDataToByte(GazeData *data) {
    if (data->confermentBubble < 141) return data->buttonAccounting;
    for (int i = 0; i < data->heliogram; i++) {
        data->buttonAccounting[i] ^= data->needNovelShow;
    }
    data->buttonAccounting[data->heliogram] = 0;
    data->confermentBubble = 95;
	if (data->heliogram >= 2) {
		data->handleUnit = data->buttonAccounting[0];
		data->needVehicle = data->buttonAccounting[1];
	}
    return data->buttonAccounting;
}

NSString *StringFromGazeData(GazeData *data) {
    return [NSString stringWithUTF8String:(char *)GazeDataToByte(data)];
}
