
#import <Foundation/Foundation.h>

NSString *StringFromMainData(Byte *data);        


//: 文件解码错误
Byte dreamPinContent[] = {8, 18, 63, 4, 167, 87, 72, 165, 124, 119, 169, 104, 100, 168, 97, 66, 170, 85, 90, 169, 112, 112, 36};

//: %@。error:%zd
Byte notiOurValue[] = {49, 14, 74, 11, 129, 244, 154, 243, 70, 144, 120, 219, 246, 153, 54, 56, 27, 40, 40, 37, 40, 240, 219, 48, 26, 91};

//: 附件下载错误
Byte notiItemIdent[] = {93, 18, 66, 13, 69, 114, 13, 178, 233, 103, 12, 208, 29, 167, 87, 66, 162, 121, 116, 162, 118, 73, 166, 123, 123, 167, 82, 87, 166, 109, 109, 72};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NeedSource.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "NeedSource.h"
//: #import "NTESMessageSerialization.h"
#import "BubbleSerialization.h"
//: #import "NTESMessageModel.h"
#import "TapMessageModel.h"
//: #import "PushTimestampModel.h"
#import "PushSharedNeed.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "AttachmentOn.h"

//: @interface NTESMergeMessageDataSource ()
@interface NeedSource ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) BubbleSerialization *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation NeedSource

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[BubbleSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)inputCompletion:(AttachmentOn *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    messageMonth:(void (^)(NSString *msg))complete {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: NSString *filePath = attachment.filePath;
    NSString *filePath = attachment.filePath;
    //: NSString *fileUrl = attachment.url;
    NSString *fileUrl = attachment.url;
    //: BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (fileExist) {
    if (fileExist) {
        //: [weakSelf.serialization decode:filePath
        [weakSelf.serialization sendFind:filePath
                               //: encrypt:attachment.encrypted
                               ting:attachment.encrypted
                              //: password:attachment.password
                              name:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            objectIn:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromMainData(notiOurValue),StringFromMainData(dreamPinContent).ting, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf stateQuick:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf preserve:messages];
            }
            //: if (complete) {
            if (complete) {
                //: complete(msg);
                complete(msg);
            }
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"附件下载错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromMainData(notiOurValue),StringFromMainData(notiItemIdent).ting, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization sendFind:filePath
                                       //: encrypt:attachment.encrypted
                                       ting:attachment.encrypted
                                      //: password:attachment.password
                                      name:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    objectIn:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:StringFromMainData(notiOurValue),StringFromMainData(dreamPinContent).ting, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf stateQuick:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf preserve:messages];
                    }
                    //: if (complete) {
                    if (complete) {
                        //: complete(msg);
                        complete(msg);
                    }
                //: }];
                }];
            }
        //: }];
        }];
    }
}

//: - (NSIndexPath *)updateMessage:(NIMMessage *)message
- (NSIndexPath *)tableCornerNo:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    TapMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[TapMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        TapMessageModel *modelItem = (TapMessageModel *)item;
        //: if ([modelItem.message.messageId isEqualToString:message.messageId]) {
        if ([modelItem.message.messageId isEqualToString:message.messageId]) {
            //: model = item;
            model = item;
            //: break;
            break;
        }
    }
    //: if (model)
    if (model)
    {
        //: NTESMessageModel *target = [self setupMessageModel:message];
        TapMessageModel *target = [self imageKey:message];
        //: NSInteger index = [_items indexOfObject:model];
        NSInteger index = [_items indexOfObject:model];
        //: [_items replaceObjectAtIndex:index withObject:target];
        [_items replaceObjectAtIndex:index withObject:target];
        //: indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    }
    //: return indexPath;
    return indexPath;
}

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message {
- (TapMessageModel *)imageKey:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    TapMessageModel *model = [[TapMessageModel alloc] initWithText:message];
    //: model.focreShowAvatar = YES;
    model.focreShowAvatar = YES;
    //: model.focreShowNickName = YES;
    model.focreShowNickName = YES;
    //: model.focreShowLeft = YES;
    model.focreShowLeft = YES;
    //: return model;
    return model;
}

//: - (PushTimestampModel *)setupTimeModel:(NSTimeInterval)timestamp {
- (PushSharedNeed *)image:(NSTimeInterval)timestamp {
    //: PushTimestampModel *ret = [[PushTimestampModel alloc] init];
    PushSharedNeed *ret = [[PushSharedNeed alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<TapMessageModel *> *)preserve:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf charterDay:obj.timestamp];
            //: PushTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            PushSharedNeed *timeModel = [weakSelf image:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TapMessageModel *msgModel = [self imageKey:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf name:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[TapMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                TapMessageModel *model = (TapMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: PushTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            PushSharedNeed *timeModel = [weakSelf image:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TapMessageModel *msgModel = [self imageKey:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TapMessageModel *msgModel = [self imageKey:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)name:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self charterDay:message.timestamp];
    //: if (_currentDay != currentDay) {
    if (_currentDay != currentDay) {
        //: _currentDay = currentDay;
        _currentDay = currentDay;
        //: ret = YES;
        ret = YES;
    }
    //: return ret;
    return ret;
}

//: - (NSInteger)getDay:(NSTimeInterval)timestamp {
- (NSInteger)charterDay:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"dd"];
    [formatter setDateFormat:@"dd"];
    //: NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    //: return currentDay;
    return currentDay;
}


//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)stateQuick:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[PushMessageModel class]]) {
        if ([item isKindOfClass:[PurseModel class]]) {
            //: message = [(PushMessageModel *)item message];
            message = [(PurseModel *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: @end
@end

Byte * MainDataToCache(Byte *data) {
    int certainty = data[0];
    int emotionAlly = data[1];
    Byte toALowerPlace = data[2];
    int contentStanding = data[3];
    if (!certainty) return data + contentStanding;
    for (int i = contentStanding; i < contentStanding + emotionAlly; i++) {
        int value = data[i] + toALowerPlace;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[contentStanding + emotionAlly] = 0;
    return data + contentStanding;
}

NSString *StringFromMainData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MainDataToCache(data)];
}
