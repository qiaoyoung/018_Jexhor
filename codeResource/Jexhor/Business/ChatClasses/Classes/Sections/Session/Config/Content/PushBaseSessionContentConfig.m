// __DEBUG__
// __CLOSE_PRINT__
//
//  PushBaseSessionContentConfig.m
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushBaseSessionContentConfig.h"
#import "PushBaseSessionContentConfig.h"
//: #import "PushTextContentConfig.h"
#import "EliteCross.h"
//: #import "PushImageContentConfig.h"
#import "CypherConfig.h"
//: #import "PushAudioContentConfig.h"
#import "NameConfig.h"
//: #import "PushVideoContentConfig.h"
#import "TextMake.h"
//: #import "PushFileContentConfig.h"
#import "CreateConfig.h"
//: #import "PushNotificationContentConfig.h"
#import "EarlierData.h"
//: #import "PushLocationContentConfig.h"
#import "VoiceConfig.h"
//: #import "PushUnsupportContentConfig.h"
#import "ViewRandom.h"
//: #import "PushTipContentConfig.h"
#import "AssemblageConfig.h"
//: #import "PushReplyedTextContentConfig.h"
#import "ShowAttribute.h"
//: #import "PushRtcCallRecordContentConfig.h"
#import "MaxConfig.h"

//: @interface PushSessionContentConfigFactory ()
@interface OffdSessionFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) PushUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) ViewRandom *unsupportConfig;
//: @end
@end

//: @implementation PushSessionContentConfigFactory
@implementation OffdSessionFactory

//: + (instancetype)sharedFacotry
+ (instancetype)nearContent
{
    //: static PushSessionContentConfigFactory *instance = nil;
    static OffdSessionFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[PushSessionContentConfigFactory alloc] init];
        instance = [[OffdSessionFactory alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _dict = @{@(NIMMessageTypeText) : [PushTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [EliteCross new],
                  //: @(NIMMessageTypeImage) : [PushImageContentConfig new],
                  @(NIMMessageTypeImage) : [CypherConfig new],
                  //: @(NIMMessageTypeAudio) : [PushAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [NameConfig new],
                  //: @(NIMMessageTypeVideo) : [PushVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [TextMake new],
                  //: @(NIMMessageTypeFile) : [PushFileContentConfig new],
                  @(NIMMessageTypeFile) : [CreateConfig new],
                  //: @(NIMMessageTypeLocation) : [PushLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [VoiceConfig new],
                  //: @(NIMMessageTypeNotification) : [PushNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [EarlierData new],
                  //: @(NIMMessageTypeTip) : [PushTipContentConfig new],
                  @(NIMMessageTypeTip) : [AssemblageConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [PushRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [MaxConfig new],
        //: };
        };

        //: PushReplyedTextContentConfig *replyedTextConfig = [PushReplyedTextContentConfig new];
        ShowAttribute *replyedTextConfig = [ShowAttribute new];
        //: _replyDict = @{
        _replyDict = @{
            //: @(NIMMessageTypeText) : replyedTextConfig,
            @(NIMMessageTypeText) : replyedTextConfig,
            //: @(NIMMessageTypeAudio) : replyedTextConfig,
            @(NIMMessageTypeAudio) : replyedTextConfig,
            //: @(NIMMessageTypeVideo) : replyedTextConfig,
            @(NIMMessageTypeVideo) : replyedTextConfig,
            //: @(NIMMessageTypeFile) : replyedTextConfig,
            @(NIMMessageTypeFile) : replyedTextConfig,
            //: @(NIMMessageTypeTip) : replyedTextConfig,
            @(NIMMessageTypeTip) : replyedTextConfig,
            //: @(NIMMessageTypeRobot) : replyedTextConfig,
            @(NIMMessageTypeRobot) : replyedTextConfig,
            //: @(NIMMessageTypeNotification) : replyedTextConfig,
            @(NIMMessageTypeNotification) : replyedTextConfig,
            //: @(NIMMessageTypeLocation) : replyedTextConfig,
            @(NIMMessageTypeLocation) : replyedTextConfig,
            //: @(NIMMessageTypeCustom) : replyedTextConfig,
            @(NIMMessageTypeCustom) : replyedTextConfig,
            //: @(NIMMessageTypeImage) : replyedTextConfig,
            @(NIMMessageTypeImage) : replyedTextConfig,
            //: @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
        //: };
        };
        //: _unsupportConfig = [[PushUnsupportContentConfig alloc] init];
        _unsupportConfig = [[ViewRandom alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<RawDataVoice>)shouldBy:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<RawDataVoice>config = [_replyDict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
- (id<RawDataVoice>)end:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<RawDataVoice>config = [_dict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: @end
@end
