// __DEBUG__
// __CLOSE_PRINT__
//
//  Secret.h
// Secret
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//! Project version number for NIMKit.

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "PushLanguageManager.h"
#import "BackgroundRandomAttribute.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushKitInfo.h"
#import "DataTeam.h"
//: #import "PushMediaItem.h"            //多媒体面板对象
#import "RecordAlbumItem.h"            //多媒体面板对象
//: #import "PushMessageModel.h"         //message Wrapper
#import "PurseModel.h"         //message Wrapper
//: #import "PushKitMessageProvider.h"
#import "CountProvider.h"
//: #import "PushCellConfig.h"           //message cell配置协议
#import "PushCellConfig.h"           //message cell配置协议
//: #import "PushInputProtocol.h"        //输入框回调
#import "PushInputProtocol.h"        //输入框回调
//: #import "PushKitDataProvider.h"      //APP内容提供器
#import "BarModel.h"      //APP内容提供器
//: #import "PushMessageCellProtocol.h"  //message cell事件回调
#import "PushMessageCellProtocol.h"  //message cell事件回调
//: #import "PushSessionConfig.h"        //会话页面配置
#import "CreateTop.h"        //会话页面配置
//: #import "PushKitEvent.h"             //点击事件封装类
#import "BeforeEvent.h"             //点击事件封装类
//: #import "PushCellLayoutConfig.h"
#import "MessageImageContainer.h"
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"
//: #import "PushKitConfig.h"
#import "CoverRandomConfig.h"
//: #import "PushSessionViewController.h"
#import "CenterBuildViewController.h"
//: #import "PushSessionListViewController.h"
#import "SaveVerballyViewController.h"
//: #import "PushKitIndependentModeExtraInfo.h"
#import "OfClick.h"
//: #import "PushChatUIManagerProtocol.h"
#import "PushChatUIManagerProtocol.h"
//: #import "PushCollectionViewLeftAlignedLayout.h"
#import "ToFlowLayout.h"
//: #import "PushKitQuickCommentUtil.h"
#import "MakeUtil.h"

//: extern double NIMKitVersionNumber;
extern double appFileStr;

//! Project version string for NIMKit.
//: extern const unsigned char NIMKitVersionString[];
extern const unsigned char mTeamText[];

// In this header, you should import all the public headers of your framework using statements like #import <NIMKit/PublicHeader.h>



/**
 *  基础Model
 */




/**
 *  协议
 */
/**
 *  消息cell的视觉模板
 */


/**
 *  UI 配置器
 */


/**
 *  会话页
 */


/**
 *  会话列表页
 */


/*
 *  独立聊天室模式下需注入的信息
 */



/**
 * 聊天常用UI方法
 */


/**
 * 快捷评论
 */



//: @interface MyUserKit : NSObject
@interface Secret : NSObject

//: + (instancetype)sharedKit;
+ (instancetype)highlight;

/**
 *  注册自定义的排版配置，通过注册自定义排版配置来实现自定义消息的定制化排版
 */
//: - (void)registerLayoutConfig:(PushCellLayoutConfig *)layoutConfig;
- (void)nameTag:(MessageImageContainer *)layoutConfig;

/**
 *  返回当前的排版配置
 */
//: - (id<PushCellLayoutConfig>)layoutConfig;
- (id<MessageImageContainer>)layoutConfig;

/**
 *  UI 配置器
 */
//: @property (nonatomic,strong) PushKitConfig *config;
@property (nonatomic,strong) CoverRandomConfig *config;

/**
 *  内容提供者，由上层开发者注入。如果没有则使用默认 provider
 */
//: @property (nonatomic,strong) id<PushKitDataProvider> provider;
@property (nonatomic,strong) id<BarModel> provider;

/**
 *  由于在独立聊天室模式下, IM 部分服务不可用，需要上层注入一些额外信息供组件显示使用。 默认为 nil，上层在独立聊天室模式下注入，注入时需要创建此对象并注入对象相关字段信息。
 *
 *  此字段需要配合默认的 BarModel ( MerelyImpl ) 使用，如果上层自己定义了 provider ， 则忽略此字段。
 */
//: @property (nonatomic,strong) PushKitIndependentModeExtraInfo *independentModeExtraInfo;
@property (nonatomic,strong) OfClick *independentModeExtraInfo;

/**
 * 聊天模块常用UI方法
 */
//: @property (nonatomic, readonly) id<PushChatUIManager> chatUIManager;
@property (nonatomic, readonly) id<TeamImageUimanager> chatUIManager;

/**
 *  NIMKit表情资源所在的 bundle 名称。
 */
//: @property (nonatomic, copy) NSBundle *emoticonBundle;
@property (nonatomic, copy) NSBundle *emoticonBundle;

/**
 *  NIMKit语言所在Bundle, 启动的时候根据系统语言会选择对应的语言包，后面用户可替换
 */
//: @property (nonatomic, strong) NSBundle * languageBundle;
@property (nonatomic, strong) NSBundle * languageBundle;

/**
 *  NIMKit语言所在Table，默认 language
 */
//: @property (nonatomic, copy) NSString * languageTable;
@property (nonatomic, copy) NSString * languageTable;

/**
 *  NIMKit语言所在Table，默认 获取系统语言
 */
//: @property (nonatomic, copy) NSString * defaultLanguage;
@property (nonatomic, copy) NSString * defaultLanguage;

/**
 *  用户信息变更通知接口
 *
 *  @param userIds 用户 id 集合
 */
//: - (void)notfiyUserInfoChanged:(NSArray *)userIds;
- (void)event:(NSArray *)userIds;

/**
 *  群信息变更通知接口
 *
 *  @param teamIds 群 id 集合
 */
//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)typeSession:(NSString *)teamId on:(NIMKitTeamType)type;


/**
 *  群成员变更通知接口
 *
 *  @param teamIds 群id
 */
//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)ting:(NSString *)teamId imageTeamType:(NIMKitTeamType)type;

/**
 *  返回用户信息
 */
//: - (PushKitInfo *)infoByUser:(NSString *)userId
- (DataTeam *)infoAndStraddleOption:(NSString *)userId
                    //: option:(PushKitInfoFetchOption *)option;
                    item:(AttributeQuantityOption *)option;

/**
 *  返回群信息
 */
//: - (PushKitInfo *)infoByTeam:(NSString *)teamId
- (DataTeam *)show:(NSString *)teamId
                    //: option:(PushKitInfoFetchOption *)option;
                    corner:(AttributeQuantityOption *)option;

/**
 *  返回群信息
 */
//: - (PushKitInfo *)infoBySuperTeam:(NSString *)teamId
- (DataTeam *)of:(NSString *)teamId
                         //: option:(PushKitInfoFetchOption *)option;
                         enableence_strong:(AttributeQuantityOption *)option;

/**
 *  @param message 被回复的消息
 *
 *  @return 格式化的内容
 */
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)nameMessage:(NIMMessage *)message;

//: @end
@end
