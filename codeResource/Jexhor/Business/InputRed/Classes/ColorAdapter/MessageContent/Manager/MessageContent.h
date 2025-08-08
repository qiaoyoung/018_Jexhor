// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageContent.h
// MessageContent
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//! Project version number for NIMKit.

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkLanguageManager.h"
#import "InputRed.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WorkKitInfo.h"
#import "ConfirmationInfo.h"
//: #import "WorkMediaItem.h"            //多媒体面板对象
#import "AccountAction.h"            //多媒体面板对象
//: #import "WorkMessageModel.h"         //message Wrapper
#import "ShowModel.h"         //message Wrapper
//: #import "WorkKitMessageProvider.h"
#import "SpecsText.h"
//: #import "WorkCellConfig.h"           //message cell配置协议
#import "WorkCellConfig.h"           //message cell配置协议
//: #import "WorkInputProtocol.h"        //输入框回调
#import "WorkInputProtocol.h"        //输入框回调
//: #import "WorkKitDataProvider.h"      //APP内容提供器
#import "DraftProvider.h"      //APP内容提供器
//: #import "WorkMessageCellProtocol.h"  //message cell事件回调
#import "WorkMessageCellProtocol.h"  //message cell事件回调
//: #import "WorkSessionConfig.h"        //会话页面配置
#import "LineConfig.h"        //会话页面配置
//: #import "WorkKitEvent.h"             //点击事件封装类
#import "WrittenAccountLab.h"             //点击事件封装类
//: #import "WorkCellLayoutConfig.h"
#import "TingConfig.h"
//: #import "WorkSessionMessageContentView.h"
#import "TextControl.h"
//: #import "WorkKitConfig.h"
#import "ModeConfig.h"
//: #import "WorkSessionViewController.h"
#import "AccountViewController.h"
//: #import "WorkSessionListViewController.h"
#import "DivertViewController.h"
//: #import "WorkKitIndependentModeExtraInfo.h"
#import "TitleInfo.h"
//: #import "WorkChatUIManagerProtocol.h"
#import "WorkChatUIManagerProtocol.h"
//: #import "WorkCollectionViewLeftAlignedLayout.h"
#import "ActionFlowLayout.h"
//: #import "WorkKitQuickCommentUtil.h"
#import "MessageUtil.h"

//: extern double NIMKitVersionNumber;
extern double kBorderName;

//! Project version string for NIMKit.
//: extern const unsigned char NIMKitVersionString[];
extern const unsigned char userNameValue[];

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
@interface MessageContent : NSObject

//: + (instancetype)sharedKit;
+ (instancetype)secretResolution;

/**
 *  注册自定义的排版配置，通过注册自定义排版配置来实现自定义消息的定制化排版
 */
//: - (void)registerLayoutConfig:(WorkCellLayoutConfig *)layoutConfig;
- (void)fluctuation:(TingConfig *)layoutConfig;

/**
 *  返回当前的排版配置
 */
//: - (id<WorkCellLayoutConfig>)layoutConfig;
- (id<TingConfig>)layoutConfig;

/**
 *  UI 配置器
 */
//: @property (nonatomic,strong) WorkKitConfig *config;
@property (nonatomic,strong) ModeConfig *config;

/**
 *  内容提供者，由上层开发者注入。如果没有则使用默认 provider
 */
//: @property (nonatomic,strong) id<WorkKitDataProvider> provider;
@property (nonatomic,strong) id<DraftProvider> provider;

/**
 *  由于在独立聊天室模式下, IM 部分服务不可用，需要上层注入一些额外信息供组件显示使用。 默认为 nil，上层在独立聊天室模式下注入，注入时需要创建此对象并注入对象相关字段信息。
 *
 *  此字段需要配合默认的 DraftProvider ( ColumnLine ) 使用，如果上层自己定义了 provider ， 则忽略此字段。
 */
//: @property (nonatomic,strong) WorkKitIndependentModeExtraInfo *independentModeExtraInfo;
@property (nonatomic,strong) TitleInfo *independentModeExtraInfo;

/**
 * 聊天模块常用UI方法
 */
//: @property (nonatomic, readonly) id<WorkChatUIManager> chatUIManager;
@property (nonatomic, readonly) id<WithUimanager> chatUIManager;

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
- (void)option:(NSArray *)userIds;

/**
 *  群信息变更通知接口
 *
 *  @param teamIds 群 id 集合
 */
//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)messageLength:(NSString *)teamId alongLoad:(NIMKitTeamType)type;


/**
 *  群成员变更通知接口
 *
 *  @param teamIds 群id
 */
//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)selected:(NSString *)teamId valueType:(NIMKitTeamType)type;

/**
 *  返回用户信息
 */
//: - (WorkKitInfo *)infoByUser:(NSString *)userId
- (ConfirmationInfo *)recent:(NSString *)userId
                    //: option:(WorkKitInfoFetchOption *)option;
                    blue:(RangeOption *)option;

/**
 *  返回群信息
 */
//: - (WorkKitInfo *)infoByTeam:(NSString *)teamId
- (ConfirmationInfo *)info:(NSString *)teamId
                    //: option:(WorkKitInfoFetchOption *)option;
                    comment:(RangeOption *)option;

/**
 *  返回群信息
 */
//: - (WorkKitInfo *)infoBySuperTeam:(NSString *)teamId
- (ConfirmationInfo *)item:(NSString *)teamId
                         //: option:(WorkKitInfoFetchOption *)option;
                         pit:(RangeOption *)option;

/**
 *  @param message 被回复的消息
 *
 *  @return 格式化的内容
 */
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)bared:(NIMMessage *)message;

//: @end
@end
