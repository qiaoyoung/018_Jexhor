
#import <Foundation/Foundation.h>

@interface LiabilityData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LiabilityData

+ (instancetype)sharedInstance {
    static LiabilityData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LiabilityDataToCache:(Byte *)data {
    int kickIn = data[0];
    Byte simple = data[1];
    int norButton = data[2];
    for (int i = norButton; i < norButton + kickIn; i++) {
        int value = data[i] + simple;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[norButton + kickIn] = 0;
    return data + norButton;
}

- (NSString *)StringFromLiabilityData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LiabilityDataToCache:data]];
}

//: class should be subclass of NIMLayoutConfig
- (NSString *)mainRollingContent {
    /* static */ NSString *mainRollingContent = nil;
    if (!mainRollingContent) {
        Byte value[] = {43, 37, 3, 62, 71, 60, 78, 78, 251, 78, 67, 74, 80, 71, 63, 251, 61, 64, 251, 78, 80, 61, 62, 71, 60, 78, 78, 251, 74, 65, 251, 41, 36, 40, 39, 60, 84, 74, 80, 79, 30, 74, 73, 65, 68, 66, 156};
        mainRollingContent = [self StringFromLiabilityData:value];
    }
    return mainRollingContent;
}

//: \"未知消息\"
- (NSString *)userOlaTargetName {
    /* static */ NSString *userOlaTargetName = nil;
    if (!userOlaTargetName) {
        Byte value[] = {14, 86, 7, 34, 248, 147, 138, 204, 144, 70, 84, 145, 73, 79, 144, 96, 50, 144, 43, 89, 204, 198};
        userOlaTargetName = [self StringFromLiabilityData:value];
    }
    return userOlaTargetName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
// MessageContent.m
// MessageContent
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "FFFKitTimerHolder.h"
#import "ChangeHolder.h"
//: #import "FFFKitNotificationFirer.h"
#import "SessionFirer.h"
//: #import "FFFKitDataProviderImpl.h"
#import "ColumnLine.h"
//: #import "FFFCellLayoutConfig.h"
#import "TingConfig.h"
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+MessageContent.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "FFFChatUIManager.h"
#import "WithUimanager.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const dream_versionData;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const userFrameContent;


//: @interface MyUserKit(){
@interface MessageContent(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) SessionFirer *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<TingConfig> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation MessageContent
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[SessionFirer alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[ColumnLine alloc] init]; //默认使用 MessageContent 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[TingConfig alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self tap];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)secretResolution
{
    //: static MyUserKit *instance = nil;
    static MessageContent *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[MessageContent alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)fluctuation:(TingConfig *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[TingConfig class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, [[LiabilityData sharedInstance] mainRollingContent]);
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle showRobot];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle file];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<WithUimanager>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return WithUimanager.ting;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<TingConfig>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (FFFKitConfig *)config
- (ModeConfig *)config
{
    //不要放在 MessageContent 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[ModeConfig alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)option:(NSArray *)userIds{
    //: if (!userIds.count) {
    if (!userIds.count) {
        //: return;
        return;
    }
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        ColorInfo *info = [[ColorInfo alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = dream_versionData;
        //: [self.firer addFireInfo:info];
        [self.firer imageTemp:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)messageLength:(NSString *)teamId alongLoad:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    ColorInfo *info = [[ColorInfo alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    info.notificationName = userFrameContent;
    //: [self.firer addFireInfo:info];
    [self.firer imageTemp:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)selected:(NSString *)teamId valueType:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    ColorInfo *info = [[ColorInfo alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    //: info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    //: [self.firer addFireInfo:info];
    [self.firer imageTemp:info];
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (ConfirmationInfo *)recent:(NSString *)userId blue:(RangeOption *)option
{
    //: FFFKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(recent:blue:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider recent:userId blue:option];
    }
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (ConfirmationInfo *)info:(NSString *)teamId comment:(RangeOption *)option
{
    //: FFFKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(info:comment:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider info:teamId comment:option];
    }
    //: return info;
    return info;

}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (ConfirmationInfo *)item:(NSString *)teamId pit:(RangeOption *)option
{
    //: FFFKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(item:pit:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider item:teamId pit:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)tap {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[RedManager session] clean];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)bared:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return [[LiabilityData sharedInstance] userOlaTargetName].titleBy;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(bared:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider bared:message];
    }
    //: return info;
    return info;
}

//: @end
@end