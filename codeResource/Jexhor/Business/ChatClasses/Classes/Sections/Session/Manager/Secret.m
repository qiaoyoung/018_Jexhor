
#import <Foundation/Foundation.h>

typedef struct {
    Byte rumConstant;
    Byte *allOver;
    unsigned int rear;
} StructIncommunicativeData;

@interface IncommunicativeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation IncommunicativeData

+ (instancetype)sharedInstance {
    static IncommunicativeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)IncommunicativeDataToByte:(StructIncommunicativeData *)data {
    for (int i = 0; i < data->rear; i++) {
        data->allOver[i] ^= data->rumConstant;
    }
    data->allOver[data->rear] = 0;
    return data->allOver;
}

- (NSString *)StringFromIncommunicativeData:(StructIncommunicativeData *)data {
    return [NSString stringWithUTF8String:(char *)[self IncommunicativeDataToByte:data]];
}

//: class should be subclass of NIMLayoutConfig
- (NSString *)kPathNorthernStr {
    /* static */ NSString *kPathNorthernStr = nil;
    if (!kPathNorthernStr) {
        StructIncommunicativeData value = (StructIncommunicativeData){30, (Byte []){125, 114, 127, 109, 109, 62, 109, 118, 113, 107, 114, 122, 62, 124, 123, 62, 109, 107, 124, 125, 114, 127, 109, 109, 62, 113, 120, 62, 80, 87, 83, 82, 127, 103, 113, 107, 106, 93, 113, 112, 120, 119, 121, 181}, 43};
        kPathNorthernStr = [self StringFromIncommunicativeData:&value];
    }
    return kPathNorthernStr;
}

//: \"未知消息\"
- (NSString *)app_stereoAffairId {
    /* static */ NSString *app_stereoAffairId = nil;
    if (!app_stereoAffairId) {
        StructIncommunicativeData value = (StructIncommunicativeData){170, (Byte []){136, 76, 54, 0, 77, 53, 15, 76, 28, 34, 76, 43, 5, 136, 82}, 14};
        app_stereoAffairId = [self StringFromIncommunicativeData:&value];
    }
    return app_stereoAffairId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
// Secret.m
// Secret
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "PushKitTimerHolder.h"
#import "TouchMax.h"
//: #import "PushKitNotificationFirer.h"
#import "Firer.h"
//: #import "PushKitDataProviderImpl.h"
#import "MerelyImpl.h"
//: #import "PushCellLayoutConfig.h"
#import "MessageImageContainer.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Secret.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "PushChatUIManager.h"
#import "TeamImageUimanager.h"

//: extern NSString *const k_contactPath;
extern NSString *const k_contactPath;
//: extern NSString *const k_frameStr;
extern NSString *const k_frameStr;


//: @interface MyUserKit(){
@interface Secret(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) PushKitNotificationFirer *firer;
@property (nonatomic,strong) Firer *firer;
//: @property (nonatomic,strong) id<PushCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<MessageImageContainer> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation Secret
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[PushKitNotificationFirer alloc] init];
        _firer = [[Firer alloc] init];
        //: _provider = [[PushKitDataProviderImpl alloc] init]; 
        _provider = [[MerelyImpl alloc] init]; //默认使用 Secret 的实现
        //: _layoutConfig = [[PushCellLayoutConfig alloc] init];
        _layoutConfig = [[MessageImageContainer alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self redImage];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)highlight
{
    //: static MyUserKit *instance = nil;
    static Secret *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[Secret alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(PushCellLayoutConfig *)layoutConfig
- (void)nameTag:(MessageImageContainer *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[PushCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[MessageImageContainer class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, [[IncommunicativeData sharedInstance] kPathNorthernStr]);
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle titleBundle];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle systemBundle];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<PushChatUIManager>)chatUIManager
- (id<TeamImageUimanager>)chatUIManager
{
    //: return PushChatUIManager.sharedManager;
    return TeamImageUimanager.cell;
}

//: - (id<PushCellLayoutConfig>)layoutConfig
- (id<MessageImageContainer>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (PushKitConfig *)config
- (CoverRandomConfig *)config
{
    //不要放在 Secret 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[PushKitConfig alloc] init];
        _config = [[CoverRandomConfig alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)event:(NSArray *)userIds{
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
        JointMax *info = [[JointMax alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = k_contactPath;
        info.notificationName = k_contactPath;
        //: [self.firer addFireInfo:info];
        [self.firer textOf:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)typeSession:(NSString *)teamId on:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    JointMax *info = [[JointMax alloc] init];
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
    //: info.notificationName = k_frameStr;
    info.notificationName = k_frameStr;
    //: [self.firer addFireInfo:info];
    [self.firer textOf:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)ting:(NSString *)teamId imageTeamType:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    JointMax *info = [[JointMax alloc] init];
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
    //: extern NSString *main_buttonValueMsg;
    extern NSString *main_buttonValueMsg;
    //: info.notificationName = main_buttonValueMsg;
    info.notificationName = main_buttonValueMsg;
    //: [self.firer addFireInfo:info];
    [self.firer textOf:info];
}

//: - (PushKitInfo *)infoByUser:(NSString *)userId option:(PushKitInfoFetchOption *)option
- (DataTeam *)infoAndStraddleOption:(NSString *)userId item:(AttributeQuantityOption *)option
{
    //: PushKitInfo *info = nil;
    DataTeam *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(infoAndStraddleOption:item:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider infoAndStraddleOption:userId item:option];
    }
    //: return info;
    return info;
}

//: - (PushKitInfo *)infoByTeam:(NSString *)teamId option:(PushKitInfoFetchOption *)option
- (DataTeam *)show:(NSString *)teamId corner:(AttributeQuantityOption *)option
{
    //: PushKitInfo *info = nil;
    DataTeam *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(show:corner:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider show:teamId corner:option];
    }
    //: return info;
    return info;

}

//: - (PushKitInfo *)infoBySuperTeam:(NSString *)teamId option:(PushKitInfoFetchOption *)option
- (DataTeam *)of:(NSString *)teamId enableence_strong:(AttributeQuantityOption *)option
{
    //: PushKitInfo *info = nil;
    DataTeam *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(of:enableence_strong:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider of:teamId enableence_strong:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)redImage {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[PushInputEmoticonManager sharedManager] start];
        [[DirectorManager statusFor] holderRed];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)nameMessage:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return [[IncommunicativeData sharedInstance] app_stereoAffairId].minIn;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(nameMessage:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider nameMessage:message];
    }
    //: return info;
    return info;
}

//: @end
@end
