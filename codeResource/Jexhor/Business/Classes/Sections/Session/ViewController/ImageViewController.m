
#import <Foundation/Foundation.h>

@interface HospitalWithPromotionData : NSObject

+ (instancetype)sharedInstance;

//: 回复详情
@property (nonatomic, copy) NSString *m_subMessage;

@end

@implementation HospitalWithPromotionData

+ (instancetype)sharedInstance {
    static HospitalWithPromotionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HospitalWithPromotionDataToCache:(Byte *)data {
    int seasoned = data[0];
    int itemTingTerritory = data[1];
    for (int i = 0; i < seasoned / 2; i++) {
        int begin = itemTingTerritory + i;
        int end = itemTingTerritory + seasoned - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[itemTingTerritory + seasoned] = 0;
    return data + itemTingTerritory;
}

- (NSString *)StringFromHospitalWithPromotionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HospitalWithPromotionDataToCache:data]];
}  

//: 回复详情
- (NSString *)m_subMessage {
    if (!_m_subMessage) {
        Byte value[] = {12, 12, 64, 87, 19, 196, 32, 19, 121, 147, 61, 243, 133, 131, 230, 166, 175, 232, 141, 164, 229, 158, 155, 229, 52};
        _m_subMessage = [self StringFromHospitalWithPromotionData:value];
    }
    return _m_subMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadTalkSessionViewController.h"
#import "ImageViewController.h"
//: #import "NTESThreadSessionConfig.h"
#import "BarSessionConfig.h"

//: @interface NTESThreadTalkSessionViewController ()
@interface ImageViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) NTESThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) BarSessionConfig *sessionConfig;
//: @end
@end

//: @implementation NTESThreadTalkSessionViewController
@implementation ImageViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithBelowName:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithButton:message.session];
    //: if (self)
    if (self)
    {
        //: _threadMesssage = message;
        _threadMesssage = message;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)setupNormalNav
- (void)secret
{
}

//: - (NSString *)sessionTitle
- (NSString *)colorTo
{
    //: return @"回复详情".ntes_localized;
    return [HospitalWithPromotionData sharedInstance].m_subMessage.ting;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self shouldReceive:message])
    {
        //: return;
        return;
    }
    //: [super willSendMessage:message];
    [super willSendMessage:message];
}

//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self shouldReceive:message])
    {
       //: return;
       return;
    }

    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
     //: if (![self shouldReceive:message])
     if (![self shouldReceive:message])
     {
         //: return;
         return;
     }

    //: [super sendMessage:message progress:progress];
    [super sendMessage:message progress:progress];
}

//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: NSMutableArray *subMessages = [NSMutableArray array];
    NSMutableArray *subMessages = [NSMutableArray array];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self shouldReceive:message])
        if ([self shouldReceive:message])
        {
            //: [subMessages addObject:message];
            [subMessages addObject:message];
        }
    }
    //: if (subMessages.count == 0)
    if (subMessages.count == 0)
    {
        //: return;
        return;
    }
    //: [super onRecvMessages:messages];
    [super onRecvMessages:messages];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if (![self shouldReceive:message])
    if (![self shouldReceive:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message progress:progress];
    [super fetchMessageAttachment:message progress:progress];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self shouldReceive:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message didCompleteWithError:error];
    [super fetchMessageAttachment:message didCompleteWithError:error];
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
}


//: - (BOOL)shouldReceive:(NIMMessage *)message
- (BOOL)shouldReceive:(NIMMessage *)message
{
    //: BOOL should = [message.session isEqual:self.session] &&
    BOOL should = [message.session isEqual:self.session] &&
    //: [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    //: should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];
    should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];

    //: return should;
    return should;
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<CreateTop>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[BarSessionConfig alloc] initWithTable:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)edges:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)longFrom:(NIMMessage *)message
                 //: inView:(UIView *)view
                 activityView:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end