// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageTing.h
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
@interface ImageTing : NSObject

//: + (instancetype)sharedConfig;
+ (instancetype)configRefresh;

//: - (BOOL)removeSessionWhenDeleteMessages; 
- (BOOL)pastLength; //删除消息时是否同时删除会话项

//: - (BOOL)dropTableWhenDeleteMessages; 
- (BOOL)tab; //删除消息的同时是否删除消息表

//: - (BOOL)localSearchOrderByTimeDesc; 
- (BOOL)example; //本地搜索消息顺序 YES表示按时间戳逆序搜索,NO表示按照时间戳顺序搜索

//: - (BOOL)autoRemoveRemoteSession; 
- (BOOL)button; //删除会话时是不是也同时删除服务器会话 (防止漫游)
//: - (BOOL)autoRemoveAlias; 
- (BOOL)size; //删除好友的同时删除备注

//: - (BOOL)autoRemoveSnapMessage; 
- (BOOL)tapMessage; //阅后即焚消息在看完后是否删除

//: - (BOOL)needVerifyForFriend; 
- (BOOL)source; //添加好友是否需要验证

//: - (BOOL)showFps; 
- (BOOL)scaleValueFps; //是否显示Fps

//: - (BOOL)disableProximityMonitor; 
- (BOOL)proximityName; //贴耳的时候是否需要自动切换成听筒模式

//: - (BOOL)enableRotate; 
- (BOOL)pinLocation; //支持旋转(仅组件部分，其他部分可能会显示不正常，谨慎开启)

//: - (BOOL)usingAmr; 
- (BOOL)input; //使用amr作为录音

//: - (BOOL)fileQuickTransferEnabled; 
- (BOOL)indexInOffd; //文件快传开关

//: - (BOOL)enableAPNsPrefix; 
- (BOOL)with; //推送允许带昵称

//: - (BOOL)enableTeamAPNsForce; 
- (BOOL)actionView; //群消息强制推送

//: - (BOOL)enableAudioSessionReset; 
- (BOOL)my; //允许MediaManager内部重置

//: - (BOOL)exceptionLogUploadEnabled; 
- (BOOL)valueDate; //允许异常错误码下日志上吧

//: - (BOOL)enableLocalAnti; 
- (BOOL)sound; //本地反垃圾开关

//: - (BOOL)enableSdkRemoteRender; 
- (BOOL)name; //内部渲染开关

//: - (NSArray *)ignoreTeamNotificationTypes; 
- (NSArray *)thread; //需要忽略的群通知类型

//: - (BOOL)enableSyncWhenFetchRemoteMessages; 
- (BOOL)message; //拉取云消息时是否需要存储到本地

//: - (BOOL)enableCreateRecentSessionsWhenSyncRemoteMessages; 
- (BOOL)recording; //同步云消息到本地时是否创建最近会话

//: - (BOOL)countTeamNotification; 
- (BOOL)characteristicRootOfASquareMatrix; //是否将群通知计入未读

//: - (NSInteger)maximumLogDays; 
- (NSInteger)value; //日志最大存在天数

//: - (BOOL)animatedImageThumbnailEnabled; 
- (BOOL)find; //支持动图缩略图

//: #pragma mark - 网络通话和白板
#pragma mark - 网络通话和白板
//: - (BOOL)serverRecordAudio; 
- (BOOL)tingRestaurantAttendantAudio; //服务器录制语音

//: - (BOOL)serverRecordVideo; 
- (BOOL)than; //服务器录制视频

//: - (BOOL)serverRecordWhiteboardData; 
- (BOOL)bar; //服务器录制白板数据

//: - (BOOL)serverRecordHost; 
- (BOOL)controlHost; //服务端录制主讲人

//: - (int)serverRecordMode; 
- (int)ting; //服务端录制模式

//: - (BOOL)useSocks; 
- (BOOL)misapply; //是否使用socks5代理

//: - (NSString *)customAPNsType; 
- (NSString *)cranch; // 自定义推送类型

//: - (NSUInteger )socks5Type; 
- (NSUInteger )empty; //socks5类型

//: - (NSString *)socks5Addr; 
- (NSString *)viewMy; //socks5地址

//: - (NSString *)socksUsername; 
- (NSString *)occurrent; //用户名

//: - (NSString *)socksPassword; 
- (NSString *)up; //密码

//: - (BOOL)useRTSSocks; 
- (BOOL)viewMember; //白板是否使用socks5代理

//: - (NSUInteger)socks5RTSType; 
- (NSUInteger)origin; //白板socks5类型

//: - (NSString *)socks5RTSAddr; 
- (NSString *)by; //白板socks5地址

//: - (NSString *)socksRTSUsername; 
- (NSString *)doingBackground; //白板用户名

//: - (NSString *)socksRTSPassword; 
- (NSString *)password; //白板密码

//: - (BOOL)videochatAutoRotateRemoteVideo; 
- (BOOL)state; //自动旋转视频聊天远端画面

//: - (UIViewContentMode)videochatRemoteVideoContentMode; 
- (UIViewContentMode)show; //对端画面的填充模式

//: - (BOOL)startWithBackCamera; 
- (BOOL)key; //使用后置摄像头开始视频通话

//: - (NSUInteger)videoMaxEncodeKbps; 
- (NSUInteger)modifySize; //最大发送视频编码码率

//: - (NSUInteger)localRecordVideoKbps; 
- (NSUInteger)cover; //本地录制视频码率

//: - (NSUInteger)localRecordVideoQuality; 
- (NSUInteger)disableTv; //本地录制视频分辨率

//: - (BOOL)autoDeactivateAudioSession; 
- (BOOL)designate; //自动结束AudioSession

//: - (BOOL)audioDenoise; 
- (BOOL)needView; //降噪开关

//: - (BOOL)voiceDetect; 
- (BOOL)scale; //语音检测开关

//: - (BOOL)preferHDAudio; 
- (BOOL)orientation; //期望高清语音

//: - (NSInteger)chatroomRetryCount; 
- (NSInteger)objectMessage; //进聊天室重试次数

//: - (BOOL)fileDownloadTokenEnabled; 
- (BOOL)trademarkWillColorLength; //文件下载权限控制

//: - (BOOL)autoFetchAttachment; 
- (BOOL)shootImage; //自动下载附件。（接收消息，刷新消息，自动拿历史消息时）

//: - (NIMAsymEncryptionType)AsymEncryptionType; 
- (NIMAsymEncryptionType)userBy; //非对称加密类型

//: - (NIMRSAPaddingMode)rsaPaddingMode; 
- (NIMRSAPaddingMode)content; // RSA Padding算法

//: - (NIMSymEncryptionType)SymEncryptionType; 
- (NIMSymEncryptionType)kind; //非对称加密类型

//: - (NIMLinkAddressType)LbsLinkAddressType; 
- (NIMLinkAddressType)info; //lbs返回的link地址类型

//: - (NSString *)ipv4DefaultLink; 
- (NSString *)disable; // IPv4默认Link地址

//: - (NSString *)ipv6DefaultLink; 
- (NSString *)can; // IPv6默认Link地址

//: - (BOOL)asyncLoadRecentSessionEnabled; 
- (BOOL)tap; //是否开启异步读取最近会话

//: - (NSInteger)ignoreMessageType;
- (NSInteger)ignore;

//: - (BOOL)isDeleteMsgFromServer;
- (BOOL)background;

//: - (BOOL)isIgnoreRevokeMessageCount;
- (BOOL)custom;

//: - (BOOL)enablePullSubMessagesFromServer;
- (BOOL)to;

//: - (BOOL)enableSyncStickTopSessionInfos;
- (BOOL)off;

//: - (NSInteger)customClientType;
- (NSInteger)sinceColor;

//: - (BOOL)isDeleteMsgFromDB;
- (BOOL)chromosomalMutation;

//: - (BOOL)enableRevokeMsgPostscript;
- (BOOL)addRecordPostscript;

//: - (NSString *)messageEnv; 
- (NSString *)send; //环境变量，用于指向不同的抄送、第三方回调等配置

/// 禁用 traceroute
//: - (BOOL)disableTraceroute;
- (BOOL)infoShould;

//: @end
@end