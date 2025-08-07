// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorActionClean.h
// MessageContent
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFTeamCardMemberItem.h"
#import "MessageItem.h"
//: #import "FFFMembersFetchOption.h"
#import "SameOption.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<FFFTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<MessageItem *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol FFFTeamOperation <NSObject>
@protocol ValueName <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)small:(NSArray *)userIds
            //: info:(NSDictionary *)info
            yieldShared:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      net:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)color:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       minority:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)manager:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    speckless:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)modifyInValue:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              filling:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)last:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            of:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)asChild:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            center:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)voice:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             session:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)container:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            inputCompletion:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)regionCompletion:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                joinSize:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)section:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  chromaticDataBlock:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)generateCompletion:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                optionDataBlock:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)message:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   insert:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)origin:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    shared:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)backing:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         close:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)table:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            chipAwayColorPhoneMessage:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)maxShow:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           voice:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      iconHandle:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)titleCompletion:(NSString *)userId
                  //: nick:(NSString *)nick
                  display:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            user:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)value:(NSString *)userId
                       //: mute:(BOOL)mute
                       message:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 marginCompletion:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption * _Nullable )option
- (void)ofTool:(SameOption * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        value:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)generate:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)color:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)screen:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol FFFTeamMemberListDataSource <FFFTeamOperation>
@protocol ColorActionClean <ValueName>

//: - (NIMTeam *)team;
- (NIMTeam *)show;

//: - (NIMSession *)session;
- (NIMSession *)nameScale;

//: - (NSInteger)memberNumber;
- (NSInteger)marginMessage;

//: - (NSMutableArray <FFFTeamCardMemberItem *> *)members;
- (NSMutableArray <MessageItem *> *)pressComplete;

//: - (FFFTeamCardMemberItem *)myCard;
- (MessageItem *)utilizer;

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (MessageItem *)source:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END