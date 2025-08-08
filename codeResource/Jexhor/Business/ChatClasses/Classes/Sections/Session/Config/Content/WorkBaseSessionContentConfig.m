// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkBaseSessionContentConfig.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkBaseSessionContentConfig.h"
#import "WorkBaseSessionContentConfig.h"
//: #import "WorkTextContentConfig.h"
#import "RecentConfig.h"
//: #import "WorkImageContentConfig.h"
#import "RedSystemView.h"
//: #import "WorkAudioContentConfig.h"
#import "AccountConfig.h"
//: #import "WorkVideoContentConfig.h"
#import "NeedCircle.h"
//: #import "WorkFileContentConfig.h"
#import "ImageSumRange.h"
//: #import "WorkNotificationContentConfig.h"
#import "SoundQuantity.h"
//: #import "WorkLocationContentConfig.h"
#import "TeamTextDisplay.h"
//: #import "WorkUnsupportContentConfig.h"
#import "ContentBottomConfig.h"
//: #import "WorkTipContentConfig.h"
#import "PacketConfig.h"
//: #import "WorkReplyedTextContentConfig.h"
#import "ContentThreadTeam.h"
//: #import "WorkRtcCallRecordContentConfig.h"
#import "ForwardNameConfig.h"

//: @interface WorkSessionContentConfigFactory ()
@interface SameModeFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) WorkUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) ContentBottomConfig *unsupportConfig;
//: @end
@end

//: @implementation WorkSessionContentConfigFactory
@implementation SameModeFactory

//: + (instancetype)sharedFacotry
+ (instancetype)letter
{
    //: static WorkSessionContentConfigFactory *instance = nil;
    static SameModeFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[WorkSessionContentConfigFactory alloc] init];
        instance = [[SameModeFactory alloc] init];
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
        //: _dict = @{@(NIMMessageTypeText) : [WorkTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [RecentConfig new],
                  //: @(NIMMessageTypeImage) : [WorkImageContentConfig new],
                  @(NIMMessageTypeImage) : [RedSystemView new],
                  //: @(NIMMessageTypeAudio) : [WorkAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [AccountConfig new],
                  //: @(NIMMessageTypeVideo) : [WorkVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [NeedCircle new],
                  //: @(NIMMessageTypeFile) : [WorkFileContentConfig new],
                  @(NIMMessageTypeFile) : [ImageSumRange new],
                  //: @(NIMMessageTypeLocation) : [WorkLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [TeamTextDisplay new],
                  //: @(NIMMessageTypeNotification) : [WorkNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [SoundQuantity new],
                  //: @(NIMMessageTypeTip) : [WorkTipContentConfig new],
                  @(NIMMessageTypeTip) : [PacketConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [WorkRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [ForwardNameConfig new],
        //: };
        };

        //: WorkReplyedTextContentConfig *replyedTextConfig = [WorkReplyedTextContentConfig new];
        ContentThreadTeam *replyedTextConfig = [ContentThreadTeam new];
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
        //: _unsupportConfig = [[WorkUnsupportContentConfig alloc] init];
        _unsupportConfig = [[ContentBottomConfig alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<CellTitleConfig>)towardView:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<CellTitleConfig>config = [_replyDict objectForKey:@(type)];
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
- (id<CellTitleConfig>)independent:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<CellTitleConfig>config = [_dict objectForKey:@(type)];
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
