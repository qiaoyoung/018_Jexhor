
#import <Foundation/Foundation.h>
typedef struct {
    Byte emulation;
    Byte *rowView;
    unsigned int shouldTarget;
    Byte placeAccelerate;
	int infoTag;
	int dogTag;
	int placeView;
} DrugSeriesData;

NSString *StringFromDrugSeriesData(DrugSeriesData *data);


//: 回复详情
DrugSeriesData show_severData = (DrugSeriesData){6, (Byte []){227, 157, 152, 227, 162, 139, 238, 169, 160, 224, 133, 131, 244}, 12, 221, 245, 33, 197};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamThreadViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadTalkSessionViewController.h"
#import "TeamThreadViewController.h"
//: #import "NTESThreadSessionConfig.h"
#import "FrameSessionConfig.h"

//: @interface NTESThreadTalkSessionViewController ()
@interface TeamThreadViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) NTESThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) FrameSessionConfig *sessionConfig;
//: @end
@end

//: @implementation NTESThreadTalkSessionViewController
@implementation TeamThreadViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWith:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithLastTitleCell:message.session];
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
- (void)houseImage
{
}

//: - (NSString *)sessionTitle
- (NSString *)pathRemove
{
    //: return @"回复详情".ntes_localized;
    return StringFromDrugSeriesData(&show_severData).shouldLocalized;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self label:message])
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
    if (![self label:message])
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
     if (![self label:message])
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
        if ([self label:message])
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
    if (![self label:message])
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
    if (![self label:message])
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
- (BOOL)label:(NIMMessage *)message
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

//: - (id<WorkSessionConfig>)sessionConfig
- (id<LineConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[FrameSessionConfig alloc] initWithCommunicationManager:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)dated:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)tingCompartment:(NIMMessage *)message
                 //: inView:(UIView *)view
                 dismiss:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end

Byte *DrugSeriesDataToByte(DrugSeriesData *data) {
    if (data->placeAccelerate < 117) return data->rowView;
    for (int i = 0; i < data->shouldTarget; i++) {
        data->rowView[i] ^= data->emulation;
    }
    data->rowView[data->shouldTarget] = 0;
    data->placeAccelerate = 98;
	if (data->shouldTarget >= 3) {
		data->infoTag = data->rowView[0];
		data->dogTag = data->rowView[1];
		data->placeView = data->rowView[2];
	}
    return data->rowView;
}

NSString *StringFromDrugSeriesData(DrugSeriesData *data) {
    return [NSString stringWithUTF8String:(char *)DrugSeriesDataToByte(data)];
}
