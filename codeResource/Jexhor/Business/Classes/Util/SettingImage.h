// __DEBUG__
// __CLOSE_PRINT__
//
//  SettingImage.h
//  NIM
//
//  Created by chris on 15/7/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//部分API提供了额外的选项，如删除消息会有是否删除会话的选项,为了测试方便提供配置参数
//上层开发只需要按照策划需求选择一种适合自己项目的选项即可，这个设置只是为了方便测试不同的case下API的正确性

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESBundleSetting : NSObject
@interface SettingImage : NSObject

//: + (instancetype)sharedConfig;
+ (instancetype)name;

//: - (BOOL)removeSessionWhenDeleteMessages; 
- (BOOL)off; //删除消息时是否同时删除会话项

//: - (BOOL)dropTableWhenDeleteMessages; 
- (BOOL)layer; //删除消息的同时是否删除消息表

//: - (BOOL)localSearchOrderByTimeDesc; 
- (BOOL)cell; //本地搜索消息顺序 YES表示按时间戳逆序搜索,NO表示按照时间戳顺序搜索

//: - (BOOL)autoRemoveRemoteSession; 
- (BOOL)autoKind; //删除会话时是不是也同时删除服务器会话 (防止漫游)
//: - (BOOL)autoRemoveAlias; 
- (BOOL)trunkOld; //删除好友的同时删除备注

//: - (BOOL)autoRemoveSnapMessage; 
- (BOOL)questionWith; //阅后即焚消息在看完后是否删除

//: - (BOOL)needVerifyForFriend; 
- (BOOL)contentButton; //添加好友是否需要验证

//: - (BOOL)showFps; 
- (BOOL)success; //是否显示Fps

//: - (BOOL)disableProximityMonitor; 
- (BOOL)doingSelected; //贴耳的时候是否需要自动切换成听筒模式

//: - (BOOL)enableRotate; 
- (BOOL)relapseRotate; //支持旋转(仅组件部分，其他部分可能会显示不正常，谨慎开启)

//: - (BOOL)usingAmr; 
- (BOOL)nim; //使用amr作为录音

//: - (BOOL)fileQuickTransferEnabled; 
- (BOOL)request; //文件快传开关

//: - (BOOL)enableAPNsPrefix; 
- (BOOL)holder; //推送允许带昵称

//: - (BOOL)enableTeamAPNsForce; 
- (BOOL)invest; //群消息强制推送

//: - (BOOL)enableAudioSessionReset; 
- (BOOL)ting; //允许MediaManager内部重置

//: - (BOOL)exceptionLogUploadEnabled; 
- (BOOL)userOnd; //允许异常错误码下日志上吧

//: - (BOOL)enableLocalAnti; 
- (BOOL)textSession; //本地反垃圾开关

//: - (BOOL)enableSdkRemoteRender; 
- (BOOL)house; //内部渲染开关

//: - (NSArray *)ignoreTeamNotificationTypes; 
- (NSArray *)maxImage; //需要忽略的群通知类型

//: - (BOOL)enableSyncWhenFetchRemoteMessages; 
- (BOOL)contentTo; //拉取云消息时是否需要存储到本地

//: - (BOOL)enableCreateRecentSessionsWhenSyncRemoteMessages; 
- (BOOL)sendEndue; //同步云消息到本地时是否创建最近会话

//: - (BOOL)countTeamNotification; 
- (BOOL)upwardly; //是否将群通知计入未读

//: - (NSInteger)maximumLogDays; 
- (NSInteger)canMessage; //日志最大存在天数

//: - (BOOL)animatedImageThumbnailEnabled; 
- (BOOL)session; //支持动图缩略图

//: #pragma mark - 网络通话和白板
#pragma mark - 网络通话和白板
//: - (BOOL)serverRecordAudio; 
- (BOOL)media; //服务器录制语音

//: - (BOOL)serverRecordVideo; 
- (BOOL)directorVideo; //服务器录制视频

//: - (BOOL)serverRecordWhiteboardData; 
- (BOOL)addAcross; //服务器录制白板数据

//: - (BOOL)serverRecordHost; 
- (BOOL)writtenAccountShould; //服务端录制主讲人

//: - (int)serverRecordMode; 
- (int)magnitude; //服务端录制模式

//: - (BOOL)useSocks; 
- (BOOL)statusOf; //是否使用socks5代理

//: - (NSString *)customAPNsType; 
- (NSString *)button; // 自定义推送类型

//: - (NSUInteger )socks5Type; 
- (NSUInteger )blockClean; //socks5类型

//: - (NSString *)socks5Addr; 
- (NSString *)way; //socks5地址

//: - (NSString *)socksUsername; 
- (NSString *)titleSocks; //用户名

//: - (NSString *)socksPassword; 
- (NSString *)socks; //密码

//: - (BOOL)useRTSSocks; 
- (BOOL)team; //白板是否使用socks5代理

//: - (NSUInteger)socks5RTSType; 
- (NSUInteger)userComplete; //白板socks5类型

//: - (NSString *)socks5RTSAddr; 
- (NSString *)on; //白板socks5地址

//: - (NSString *)socksRTSUsername; 
- (NSString *)reply; //白板用户名

//: - (NSString *)socksRTSPassword; 
- (NSString *)placePassword; //白板密码

//: - (BOOL)videochatAutoRotateRemoteVideo; 
- (BOOL)gray; //自动旋转视频聊天远端画面

//: - (UIViewContentMode)videochatRemoteVideoContentMode; 
- (UIViewContentMode)showEvaluate; //对端画面的填充模式

//: - (BOOL)startWithBackCamera; 
- (BOOL)thoracicVertebra; //使用后置摄像头开始视频通话

//: - (NSUInteger)videoMaxEncodeKbps; 
- (NSUInteger)will; //最大发送视频编码码率

//: - (NSUInteger)localRecordVideoKbps; 
- (NSUInteger)present; //本地录制视频码率

//: - (NSUInteger)localRecordVideoQuality; 
- (NSUInteger)image; //本地录制视频分辨率

//: - (BOOL)autoDeactivateAudioSession; 
- (BOOL)along; //自动结束AudioSession

//: - (BOOL)audioDenoise; 
- (BOOL)of; //降噪开关

//: - (BOOL)voiceDetect; 
- (BOOL)status; //语音检测开关

//: - (BOOL)preferHDAudio; 
- (BOOL)selected; //期望高清语音

//: - (NSInteger)chatroomRetryCount; 
- (NSInteger)tab; //进聊天室重试次数

//: - (BOOL)fileDownloadTokenEnabled; 
- (BOOL)index; //文件下载权限控制

//: - (BOOL)autoFetchAttachment; 
- (BOOL)whenOn; //自动下载附件。（接收消息，刷新消息，自动拿历史消息时）

//: - (NIMAsymEncryptionType)AsymEncryptionType; 
- (NIMAsymEncryptionType)message; //非对称加密类型

//: - (NIMRSAPaddingMode)rsaPaddingMode; 
- (NIMRSAPaddingMode)copernicanSystem; // RSA Padding算法

//: - (NIMSymEncryptionType)SymEncryptionType; 
- (NIMSymEncryptionType)range; //非对称加密类型

//: - (NIMLinkAddressType)LbsLinkAddressType; 
- (NIMLinkAddressType)colorType; //lbs返回的link地址类型

//: - (NSString *)ipv4DefaultLink; 
- (NSString *)netShare; // IPv4默认Link地址

//: - (NSString *)ipv6DefaultLink; 
- (NSString *)post; // IPv6默认Link地址

//: - (BOOL)asyncLoadRecentSessionEnabled; 
- (BOOL)searchTip; //是否开启异步读取最近会话

//: - (NSInteger)ignoreMessageType;
- (NSInteger)activity;

//: - (BOOL)isDeleteMsgFromServer;
- (BOOL)betweenView;

//: - (BOOL)isIgnoreRevokeMessageCount;
- (BOOL)quantity;

//: - (BOOL)enablePullSubMessagesFromServer;
- (BOOL)sub;

//: - (BOOL)enableSyncStickTopSessionInfos;
- (BOOL)to;

//: - (NSInteger)customClientType;
- (NSInteger)indue;

//: - (BOOL)isDeleteMsgFromDB;
- (BOOL)bubble;

//: - (BOOL)enableRevokeMsgPostscript;
- (BOOL)revokeBy;

//: - (NSString *)messageEnv; 
- (NSString *)module; //环境变量，用于指向不同的抄送、第三方回调等配置

/// 禁用 traceroute
//: - (BOOL)disableTraceroute;
- (BOOL)tag;

//: @end
@end