// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldBackground.h
// Secret
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFTeamCardMemberItem.h"
#import "CardSession.h"
//: #import "FFFMembersFetchOption.h"
#import "ReminiscenceSession.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<FFFTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<CardSession *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol FFFTeamOperation <NSObject>
@protocol BeforeImage <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)complete:(NSArray *)userIds
            //: info:(NSDictionary *)info
            alongTing:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      net:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)monthCompletion:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       recent:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)noPin:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    date:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)distantAdd:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              app:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)reloadInfoFrom:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            should:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)checked:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            everyFile:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)size:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             labelOf:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)modifyImage:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            cameraShould:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)radiogram:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                present:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)reload:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  putUp:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)color:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                empty:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)to:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   enable:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)show:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    message:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)will:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         scaleDataBlock:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)unitBackground:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            beDataBlock:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)tabLabel:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           view:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      atDataBlock:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)userAllow:(NSString *)userId
                  //: nick:(NSString *)nick
                  flushForTitle:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            when:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)image:(NSString *)userId
                       //: mute:(BOOL)mute
                       bubblePressed:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 random:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption * _Nullable )option
- (void)at:(ReminiscenceSession * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        teamShared:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)add:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)success:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)record:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol FFFTeamMemberListDataSource <FFFTeamOperation>
@protocol ShouldBackground <BeforeImage>

//: - (NIMTeam *)team;
- (NIMTeam *)manager;

//: - (NIMSession *)session;
- (NIMSession *)birdSEyeView;

//: - (NSInteger)memberNumber;
- (NSInteger)associate;

//: - (NSMutableArray <FFFTeamCardMemberItem *> *)members;
- (NSMutableArray <CardSession *> *)popDelete;

//: - (FFFTeamCardMemberItem *)myCard;
- (CardSession *)alter;

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (CardSession *)inputTo:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END