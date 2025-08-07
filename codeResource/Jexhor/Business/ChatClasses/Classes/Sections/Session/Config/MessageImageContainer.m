// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushCellLayoutConfig.h"
#import "MessageImageContainer.h"
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"
//: #import "PushSessionUnknowContentView.h"
#import "ShouldControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushMessageModel.h"
#import "PurseModel.h"
//: #import "PushBaseSessionContentConfig.h"
#import "PushBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @interface PushCellLayoutConfig()
@interface MessageImageContainer()

//: @end
@end

//: @implementation PushCellLayoutConfig
@implementation MessageImageContainer

//: - (CGSize)contentSize:(PushMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)item:(PurseModel *)model user:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[PushSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<RawDataVoice>config = [[OffdSessionFactory nearContent] end:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config tap:cellWidth button:model.message];
}

//: - (NSString *)cellContent:(PushMessageModel *)model{
- (NSString *)mark:(PurseModel *)model{
    //: id<CCCSessionContentConfig>config = [[PushSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<RawDataVoice>config = [[OffdSessionFactory nearContent] end:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config session:model.message];
    //: return cellContent.length ? cellContent : @"PushSessionUnknowContentView";
    return cellContent.length ? cellContent : @"ShouldControl";
}


//: - (UIEdgeInsets)contentViewInsets:(PushMessageModel *)model{
- (UIEdgeInsets)dataCellInput:(PurseModel *)model{
    //: id<CCCSessionContentConfig>config = [[PushSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<RawDataVoice>config = [[OffdSessionFactory nearContent] end:model.message];
    //: return [config contentViewInsets:model.message];
    return [config messageUser:model.message];
}


//: - (UIEdgeInsets)cellInsets:(PushMessageModel *)model
- (UIEdgeInsets)tap:(PurseModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"PushSessionNotificationContentView"]) {
    if ([[self mark:model] isEqualToString:@"OrientationClickContentView"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self buttonTitle:model] ? [self gray:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self show:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (UIEdgeInsets)replyContentViewInsets:(PushMessageModel *)model{
- (UIEdgeInsets)item:(PurseModel *)model{
    //: id<CCCSessionContentConfig>config = [[PushSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<RawDataVoice>config = [[OffdSessionFactory nearContent] shouldBy:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config messageUser:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(PushMessageModel *)model
- (UIEdgeInsets)ting:(PurseModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"PushSessionNotificationContentView"]) {
    if ([[self mark:model] isEqualToString:@"OrientationClickContentView"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self buttonTitle:model] ? [self gray:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self show:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (CGSize)replyContentSize:(PushMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)temp:(PurseModel *)model length:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[PushSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<RawDataVoice>config = [[OffdSessionFactory nearContent] shouldBy:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config tap:cellWidth button:model.repliedMessage];
}

//: - (NSString *)replyContent:(PushMessageModel *)model {
- (NSString *)atDisable:(PurseModel *)model {
    //: id<CCCSessionContentConfig>config = [[PushSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<RawDataVoice>config = [[OffdSessionFactory nearContent] shouldBy:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config session:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"PushSessionUnknowContentView";
    return cellContent.length ? cellContent : @"ShouldControl";
}

//: - (BOOL)shouldShowAvatar:(PushMessageModel *)model
- (BOOL)buttonTitle:(PurseModel *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[Secret highlight].config click:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(PushMessageModel *)model{
- (BOOL)show:(PurseModel *)model{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (message.messageType == NIMMessageTypeNotification)
    if (message.messageType == NIMMessageTypeNotification)
    {
        //: NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        //: if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
        if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
            //: return NO;
            return NO;
        }
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return NO;
        return NO;
    }

    //: BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
    BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
                          //: || message.session.sessionType == NIMSessionTypeSuperTeam);
                          || message.session.sessionType == NIMSessionTypeSuperTeam);
    //: return (!message.isOutgoingMsg && isTeamMessage);
    return (!message.isOutgoingMsg && isTeamMessage);
}


//: - (BOOL)shouldShowLeft:(PushMessageModel *)model
- (BOOL)showOption:(PurseModel *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(PushMessageModel *)model
- (CGPoint)progressOf:(PurseModel *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(PushMessageModel *)model
- (CGSize)gray:(PurseModel *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(PushMessageModel *)model
- (CGPoint)size:(PurseModel *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self buttonTitle:model] ? CGPointMake([self gray:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(PushMessageModel *)model
- (NSArray *)electViews:(PurseModel *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(PushMessageModel *)model
- (BOOL)remotes:(PurseModel *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<PushCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MessageImageContainer> layoutConfig = [[Secret highlight] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig showOption:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }
    //: else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: id<PushCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<MessageImageContainer> layoutConfig = [[Secret highlight] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig showOption:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }

    //: if (!model.message.isReceivedMsg)
    if (!model.message.isReceivedMsg)
    {
        //: return model.message.deliveryState != NIMMessageDeliveryStateFailed;
        return model.message.deliveryState != NIMMessageDeliveryStateFailed;
    }
    //: else
    else
    {
//        return model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateFailed;
        //: return YES;
        return YES;
    }
}

//: - (BOOL)shouldDisplayBubbleBackground:(PushMessageModel *)model
- (BOOL)extra:(PurseModel *)model
{
    //: id<CCCSessionContentConfig> config = [[PushSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<RawDataVoice> config = [[OffdSessionFactory nearContent] end:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(linked:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config linked:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end
