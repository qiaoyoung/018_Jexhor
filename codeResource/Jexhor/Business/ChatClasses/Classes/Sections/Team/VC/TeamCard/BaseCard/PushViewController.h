// __DEBUG__
// __CLOSE_PRINT__
//
//  PushViewController.h
// Secret
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "PushTeamCardViewController.h"
#import "HarmViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface PushTeamCardViewControllerOption : NSObject
@interface OrientationBackground : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface PushTeamCardOperationViewController : PushTeamCardViewController
@interface PushViewController : HarmViewController

//外部配置
//: @property (nonatomic,strong) PushTeamCardViewControllerOption *option;
@property (nonatomic,strong) OrientationBackground *option;

//群组管理
//: @property (nonatomic,strong) PushTeamListDataManager *teamListManager;
@property (nonatomic,strong) MainRead *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithNumberChild:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     change:(NIMSession *)session
                      //: option:(PushTeamCardViewControllerOption * _Nullable)option;
                      at:(OrientationBackground * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable PushMembersFetchOption *)option;
- (void)rangeMember:(nullable ReminiscenceSession *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)untilRequest:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            backMode:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)date:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)holder:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)fill:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)infoGreenCountro:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)roundShow:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)letter:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)view:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)pop:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)managerSetup:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)reload:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)teamMedia:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)labelClick:(NSString *)userId view:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)context;

//解散群组
//: - (void)didDismissTeam;
- (void)visualisation;

//: - (void)reloadData;
- (void)domain;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
