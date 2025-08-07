// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowHelper.h
// Secret
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "Secret.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol PushKitSelectCardData;
@protocol PushKitSelectCardData;

//: @interface PushTeamHelper : NSObject
@interface ShowHelper : NSObject

//验证方式
//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode;
+ (NSString *)nearTitleQuantityeract:(NIMTeamJoinMode)mode;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode;
+ (NSMutableArray<id <PushKitSelectCardData>> *)event:(NIMTeamJoinMode)mode;

//邀请模式
//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode;
+ (NSString *)messageTitle:(NIMTeamInviteMode)mode;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode;
+ (NSMutableArray<id <PushKitSelectCardData>> *)size:(NIMTeamInviteMode)mode;

//被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes;
+ (NSArray<NSDictionary *> *)panoply;

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode;
+ (NSString *)back:(NIMTeamBeInviteMode)mode;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode;
+ (NSMutableArray<id <PushKitSelectCardData>> *)empty:(NIMTeamBeInviteMode)mode;

//信息修改权限
//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode;
+ (NSString *)session:(NIMTeamUpdateInfoMode)mode;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode;
+ (NSMutableArray<id <PushKitSelectCardData>> *)title:(NIMTeamUpdateInfoMode)mode;

//消息接受状态
//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state;
+ (NSString *)tap:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <PushKitSelectCardData>> *)selecedWith:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <PushKitSelectCardData>> *)background:(NIMTeamNotifyState)state;

//成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type;
+ (NSString *)view:(NIMTeamMemberType)type;

//: + (nullable UIImage *)imageWithMemberType:(NIMTeamMemberType)type;
+ (nullable UIImage *)notSpace:(NIMTeamMemberType)type;

//群禁言
//: + (NSString *)teamMuteText:(BOOL)isMute;
+ (NSString *)action:(BOOL)isMute;

//: + (NSMutableArray<id <PushKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute;
+ (NSMutableArray<id <PushKitSelectCardData>> *)red:(BOOL)isMute;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
