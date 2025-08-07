
#import <Foundation/Foundation.h>

@interface PickupEthnicData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PickupEthnicData

+ (instancetype)sharedInstance {
    static PickupEthnicData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PickupEthnicDataToCache:(Byte *)data {
    int sufferingKey = data[0];
    Byte alienInside = data[1];
    int vacuumConduct = data[2];
    for (int i = vacuumConduct; i < vacuumConduct + sufferingKey; i++) {
        int value = data[i] - alienInside;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[vacuumConduct + sufferingKey] = 0;
    return data + vacuumConduct;
}

- (NSString *)StringFromPickupEthnicData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PickupEthnicDataToCache:data]];
}

//: chatroom_role_manager
- (NSString *)main_belowId {
    /* static */ NSString *main_belowId = nil;
    if (!main_belowId) {
        Byte value[] = {21, 19, 4, 47, 118, 123, 116, 135, 133, 130, 130, 128, 114, 133, 130, 127, 120, 114, 128, 116, 129, 116, 122, 120, 133, 167};
        main_belowId = [self StringFromPickupEthnicData:value];
    }
    return main_belowId;
}

//: chatroom_role_master
- (NSString *)noti_itemMessage {
    /* static */ NSString *noti_itemMessage = nil;
    if (!noti_itemMessage) {
        Byte value[] = {20, 8, 4, 66, 107, 112, 105, 124, 122, 119, 119, 117, 103, 122, 119, 116, 109, 103, 117, 105, 123, 124, 109, 122, 106};
        noti_itemMessage = [self StringFromPickupEthnicData:value];
    }
    return noti_itemMessage;
}

//: type
- (NSString *)user_tingData {
    /* static */ NSString *user_tingData = nil;
    if (!user_tingData) {
        Byte value[] = {4, 59, 6, 117, 39, 72, 175, 180, 171, 160, 191};
        user_tingData = [self StringFromPickupEthnicData:value];
    }
    return user_tingData;
}

//: NTESMessageRefusedTag
- (NSString *)kButtonTitle {
    /* static */ NSString *kButtonTitle = nil;
    if (!kButtonTitle) {
        Byte value[] = {21, 37, 12, 154, 37, 131, 193, 192, 255, 150, 235, 249, 115, 121, 106, 120, 114, 138, 152, 152, 134, 140, 138, 119, 138, 139, 154, 152, 138, 137, 121, 134, 140, 195};
        kButtonTitle = [self StringFromPickupEthnicData:value];
    }
    return kButtonTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "ImageLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "ClinicConfig.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "MessageChange.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "AccumulationSecret.h"

//: @interface NTESCellLayoutConfig ()
@interface ImageLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) ClinicConfig *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) MessageChange *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation ImageLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"SizeAttachment",
                   //: @"NTESSnapchatAttachment",
                   @"NameAttachment",
                   //: @"NTESWhiteboardAttachment",
                   @"DoingAttachment",
                   //: @"NTESRedPacketAttachment",
                   @"PacketImage",
                   //: @"NTESRedPacketTipAttachment",
                   @"AccumulationSecret",
                   //: @"NTESMultiRetweetAttachment",
                   @"AttachmentOn",
                   //: @"NTESShareCardAttachment"
                   @"MaxAttachment"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[ClinicConfig alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[MessageChange alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - PushCellLayoutConfig
#pragma mark - MessageImageContainer
//: - (CGSize)contentSize:(PushMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)item:(PurseModel *)model user:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self sub:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig tap:width button:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self change:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig tap:width button:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super item:model
                    //: cellWidth:width];
                    user:width];

}

//: - (NSString *)cellContent:(PushMessageModel *)model{
- (NSString *)mark:(PurseModel *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self sub:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig session:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self change:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig session:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super mark:model];
}

//: - (UIEdgeInsets)contentViewInsets:(PushMessageModel *)model
- (UIEdgeInsets)dataCellInput:(PurseModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self sub:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig messageUser:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self change:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig messageUser:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super dataCellInput:model];
}

//: - (UIEdgeInsets)cellInsets:(PushMessageModel *)model
- (UIEdgeInsets)tap:(PurseModel *)model
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
    return [super tap:model];
}




//: - (BOOL)shouldShowAvatar:(PushMessageModel *)model
- (BOOL)buttonTitle:(PurseModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self closeBack:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self restoreIn:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self message:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super buttonTitle:model];
}

//: - (BOOL)shouldShowLeft:(PushMessageModel *)model{
- (BOOL)showOption:(PurseModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self closeBack:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super showOption:model];
}


//: - (BOOL)shouldShowNickName:(PushMessageModel *)model{
- (BOOL)show:(PurseModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self closeBack:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self message:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super show:model];
}

//: - (CGPoint)nickNameMargin:(PushMessageModel *)model{
- (CGPoint)size:(PurseModel *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self closeBack:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[[PickupEthnicData sharedInstance] user_tingData]] integerValue];
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
    return [super size:model];
}

//: - (NSArray *)customViews:(PushMessageModel *)model
- (NSArray *)electViews:(PurseModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self closeBack:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[[PickupEthnicData sharedInstance] user_tingData]] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = [[PickupEthnicData sharedInstance] main_belowId];
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = [[PickupEthnicData sharedInstance] noti_itemMessage];
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
    return [super electViews:model];
}


//: - (BOOL)disableRetryButton:(PushMessageModel *)model
- (BOOL)remotes:(PurseModel *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:[[PickupEthnicData sharedInstance] kButtonTitle]])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:[[PickupEthnicData sharedInstance] kButtonTitle]] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super remotes:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)sub:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)closeBack:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self sub:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)change:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)restoreIn:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[DoingAttachment class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(DoingAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)message:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[AccumulationSecret class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(PushMessageModel *)model
- (BOOL)extra:(PurseModel *)model
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
    if ([self sub:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig linked:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(linked:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig linked:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super extra:model];
}
//: @end
@end
