// __DEBUG__
// __CLOSE_PRINT__
//
//  ToTapDatasource.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionMsgDatasource.h"
#import "ToTapDatasource.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "PushMessageModel.h"
#import "PurseModel.h"
//: #import "PushTimestampModel.h"
#import "PushSharedNeed.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"

//: @interface PushSessionMsgDatasource()
@interface ToTapDatasource()

//: @property (nonatomic,strong) id<PushKitMessageProvider> dataProvider;
@property (nonatomic,strong) id<CountProvider> dataProvider;

//: @property (nonatomic,strong) NSMutableDictionary *msgIdDict;
@property (nonatomic,strong) NSMutableDictionary *msgIdDict;

//: @property (nonatomic,assign) BOOL messageModelShowSelect;
@property (nonatomic,assign) BOOL messageModelShowSelect;

//: @end
@end

//: @implementation PushSessionMsgDatasource
@implementation ToTapDatasource
{
    //: NIMSession *_currentSession;
    NIMSession *_currentSession;
    //: dispatch_queue_t _messageQueue;
    dispatch_queue_t _messageQueue;
}

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithComment:(NIMSession*)session
                         //: config:(id<PushSessionConfig>)sessionConfig
                         find:(id<CreateTop>)sessionConfig
{
    //: if (self = [self init]) {
    if (self = [self init]) {
        //: _currentSession = session;
        _currentSession = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: id<PushKitMessageProvider> dataProvider = [_sessionConfig respondsToSelector:@selector(messageDataProvider)] ? [_sessionConfig messageDataProvider] : nil;
        id<CountProvider> dataProvider = [_sessionConfig respondsToSelector:@selector(sizeProvider)] ? [_sessionConfig sizeProvider] : nil;

        //: NSInteger limit = [MyUserKit sharedKit].config.messageLimit;
        NSInteger limit = [Secret highlight].config.messageLimit;
        //: NSTimeInterval showTimestampInterval = [MyUserKit sharedKit].config.messageInterval;
        NSTimeInterval showTimestampInterval = [Secret highlight].config.messageInterval;

        //: _dataProvider = dataProvider;
        _dataProvider = dataProvider;
        //: _messageLimit = limit;
        _messageLimit = limit;
        //: _showTimeInterval = showTimestampInterval;
        _showTimeInterval = showTimestampInterval;
        //: _items = [NSMutableArray array];
        _items = [NSMutableArray array];
        //: _msgIdDict = [NSMutableDictionary dictionary];
        _msgIdDict = [NSMutableDictionary dictionary];
        //: _pinUsers = [NSMutableDictionary dictionary];
        _pinUsers = [NSMutableDictionary dictionary];
    }
    //: return self;
    return self;
}


//: - (void)resetMessages:(void(^)(NSError *error)) handler
- (void)allow:(void(^)(NSError *error)) handler
{
    //: [self enhancedResetMessages:^(NSError *error, NSArray *models) {
    [self morrowMessages:^(NSError *error, NSArray *models) {
       //: if (handler)
       if (handler)
       {
           //: handler(error);
           handler(error);
       }
    //: }];
    }];
}

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler
- (void)morrowMessages:(void(^)(NSError *error, NSArray *))handler
{
    //: self.items = [NSMutableArray array];
    self.items = [NSMutableArray array];
    //: self.msgIdDict = [NSMutableDictionary dictionary];
    self.msgIdDict = [NSMutableDictionary dictionary];
    //: if ([self.dataProvider respondsToSelector:@selector(pullDown:handler:)])
    if ([self.dataProvider respondsToSelector:@selector(imaginationImage:drawPath:)])
    {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [self.dataProvider pullDown:nil handler:^(NSError *error, NSArray<NIMMessage *> *messages) {
        [self.dataProvider imaginationImage:nil drawPath:^(NSError *error, NSArray<NIMMessage *> *messages) {
            //: if ([NSThread isMainThread]) {^{ NSArray *models = [self modelsWithMessages:messages]; [wself appendMessageModels:models]; if (handler) { handler(error, models); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ NSArray *models = [self modelsWithMessages:messages]; [wself appendMessageModels:models]; if (handler) { handler(error, models); } });};
            if ([NSThread isMainThread]) {^{ NSArray *models = [self messages:messages]; [wself shouldModels:models]; if (handler) { handler(error, models); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ NSArray *models = [self messages:messages]; [wself shouldModels:models]; if (handler) { handler(error, models); } });};






        //: }];
        }];
    }
    //: else
    else
    {
//        [SVProgressHUD show];
        //: NSArray<NIMMessage *> *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
        NSArray<NIMMessage *> *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
                                                                                   //: message:nil
                                                                                   message:nil
                                                                                     //: limit:_messageLimit];
                                                                                     limit:_messageLimit];

//        [SVProgressHUD dismiss];
        //: if (messages.count == 0){
        if (messages.count == 0){
            //: [self pullDown:nil handler:^(NSError *error, NSArray<NIMMessage *> *messages) {
            [self imaginationImage:nil drawPath:^(NSError *error, NSArray<NIMMessage *> *messages) {
                //: NSArray *models = [self modelsWithMessages:messages];
                NSArray *models = [self messages:messages];
                //: [self appendMessageModels:models];
                [self shouldModels:models];
                //: if (handler) {
                if (handler) {
                    //: handler(nil,models);
                    handler(nil,models);
                }
            //: }];
            }];
            //: return;
            return;
        }

        //: NSArray *models = [self modelsWithMessages:messages];
        NSArray *models = [self messages:messages];
        //: [self appendMessageModels:models];
        [self shouldModels:models];
        //: if (handler) {
        if (handler) {
            //: handler(nil,models);
            handler(nil,models);
        }
    }
}


/**
 *  从头插入消息
 *
 *  @param messages 消息
 *
 *  @return 插入后table要滑动到的位置
 */
//: - (NSInteger)insertMessages:(NSArray *)messages{
- (NSInteger)beyondName:(NSArray *)messages{
    //: NSInteger count = self.items.count;
    NSInteger count = self.items.count;
    //: for (NIMMessage *message in messages.reverseObjectEnumerator.allObjects) {
    for (NIMMessage *message in messages.reverseObjectEnumerator.allObjects) {
        //: [self insertMessage:message];
        [self communicationSave:message];
    }
    //: NSInteger currentIndex = self.items.count - 1;
    NSInteger currentIndex = self.items.count - 1;
    //: return currentIndex - count;
    return currentIndex - count;
}

/**
 *  从后插入消息
 *
 *  @param models 消息集合
 *
 *  @return 插入的消息的index
 */
//: - (NSArray *)appendMessageModels:(NSArray *)models{
- (NSArray *)shouldModels:(NSArray *)models{
    //: if (!models.count) {
    if (!models.count) {
        //: return @[];
        return @[];
    }
    //: NSMutableArray *append = [[NSMutableArray alloc] init];
    NSMutableArray *append = [[NSMutableArray alloc] init];
    //: for (PushMessageModel *model in models) {
    for (PurseModel *model in models) {
        //: if ([self modelIsExist:model]) {
        if ([self ptolemaicSystem:model]) {
            //: continue;
            continue;
        }
        //: NSArray *result = [self insertMessageModel:model index:self.items.count];
        NSArray *result = [self location:model margin:self.items.count];
        //: [append addObjectsFromArray:result];
        [append addObjectsFromArray:result];
    }
    //: return append;
    return append;
}


/**
 *  从中间插入消息
 *
 *  @param models 消息集合
 *
 *  @return 插入消息的index
 */
//: - (NSArray *)insertMessageModels:(NSArray *)models{
- (NSArray *)error:(NSArray *)models{
    //: if (!models.count) {
    if (!models.count) {
        //: return @[];
        return @[];
    }
    //: NSMutableArray *insert = [[NSMutableArray alloc] init];
    NSMutableArray *insert = [[NSMutableArray alloc] init];
    //由于找到插入位置后会直接插入，所以这里按时间戳大小先排个序，避免造成先插了时间大的，再插了时间小的，导致之前时间大的消息的位置还需要后移的情况.
    //: NSArray *sortModels = [models sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
    NSArray *sortModels = [models sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
        //: PushMessageModel *first = obj1;
        PurseModel *first = obj1;
        //: PushMessageModel *second = obj2;
        PurseModel *second = obj2;
        //: return first.messageTime < second.messageTime ? NSOrderedAscending : NSOrderedDescending;
        return first.messageTime < second.messageTime ? NSOrderedAscending : NSOrderedDescending;
    //: }];
    }];
    //: for (PushMessageModel *model in sortModels) {
    for (PurseModel *model in sortModels) {
        //: if ([self modelIsExist:model]) {
        if ([self ptolemaicSystem:model]) {
            //: continue;
            continue;
        }

        //: NSInteger i = [self findInsertPosistion:model];
        NSInteger i = [self dispenser:model];
        //: NSArray *result = [self insertMessageModel:model index:i];
        NSArray *result = [self location:model margin:i];
        //: [insert addObjectsFromArray:result];
        [insert addObjectsFromArray:result];
    }
    //: return insert;
    return insert;
}


//: - (NSInteger)indexAtModelArray:(PushMessageModel *)model
- (NSInteger)colorDoing:(PurseModel *)model
{
    //: __block NSInteger index = -1;
    __block NSInteger index = -1;
    //: if (![_msgIdDict objectForKey:model.message.messageId]) {
    if (![_msgIdDict objectForKey:model.message.messageId]) {
        //: return index;
        return index;
    }
    //: [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: if ([obj isKindOfClass:[PushMessageModel class]]) {
        if ([obj isKindOfClass:[PurseModel class]]) {
            //: if ([model isEqual:obj]) {
            if ([model isEqual:obj]) {
                //: index = idx;
                index = idx;
                //: *stop = YES;
                *stop = YES;
            }
        }
    //: }];
    }];
    //: return index;
    return index;
}

//: #pragma mark - msg
#pragma mark - msg

//: - (BOOL)modelIsExist:(PushMessageModel *)model
- (BOOL)ptolemaicSystem:(PurseModel *)model
{
    //: return [_msgIdDict objectForKey:model.message.messageId] != nil;
    return [_msgIdDict objectForKey:model.message.messageId] != nil;
}


//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler
- (void)text:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler
{
    //: __block PushMessageModel *currentOldestMsg = nil;
    __block PurseModel *currentOldestMsg = nil;
    //: [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: if ([obj isKindOfClass:[PushMessageModel class]]) {
        if ([obj isKindOfClass:[PurseModel class]]) {
            //: currentOldestMsg = (PushMessageModel*)obj;
            currentOldestMsg = (PurseModel*)obj;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: if ([self.dataProvider respondsToSelector:@selector(pullDown:handler:)])
    if ([self.dataProvider respondsToSelector:@selector(imaginationImage:drawPath:)])
    {
        //: [self.dataProvider pullDown:currentOldestMsg.message handler:^(NSError *error, NSArray *messages) {
        [self.dataProvider imaginationImage:currentOldestMsg.message drawPath:^(NSError *error, NSArray *messages) {
            //: if ([NSThread isMainThread]) {^{ if (handler) { handler(index,messages,error); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ if (handler) { handler(index,messages,error); } });};
            if ([NSThread isMainThread]) {^{ if (handler) { handler(index,messages,error); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ if (handler) { handler(index,messages,error); } });};




        //: }];
        }];
        //: return;
        return;
    }
    //: else
    else
    {
        //: NSArray *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
        NSArray *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
                                                                                //: message:currentOldestMsg.message
                                                                                message:currentOldestMsg.message
                                                                                  //: limit:self.messageLimit];
                                                                                  limit:self.messageLimit];

        //: if (messages.count == 0){
        if (messages.count == 0){
            /// 如果本地db 消息为空，读服务端会话
            //: [self pullDown:currentOldestMsg.message handler:^(NSError *error, NSArray<NIMMessage *> *messages) {
            [self imaginationImage:currentOldestMsg.message drawPath:^(NSError *error, NSArray<NIMMessage *> *messages) {
                //: index = [self insertMessages:messages];
                index = [self beyondName:messages];
                //: if (handler) {
                if (handler) {
                    //: handler(index,messages,nil);
                    handler(index,messages,nil);
                }
            //: }];
            }];
            //: return;
            return;
        }

        //: index = [self insertMessages:messages];
        index = [self beyondName:messages];
        //: if (handler) {
        if (handler) {
            //: if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};
            if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};


        }
    }
}

//: - (void)pullDown:(NIMMessage *)firstMessage handler:(NIMKitDataProvideHandler)handler{
- (void)imaginationImage:(NIMMessage *)firstMessage drawPath:(NIMKitDataProvideHandler)handler{
    //: [self remoteFetchMessage:firstMessage handler:handler];
    [self novation:firstMessage tap:handler];
}

//: - (void)remoteFetchMessage:(NIMMessage *)message
- (void)novation:(NIMMessage *)message
                   //: handler:(NIMKitDataProvideHandler)handler
                   tap:(NIMKitDataProvideHandler)handler
{
    //: NIMHistoryMessageSearchOption *searchOpt = [[NIMHistoryMessageSearchOption alloc] init];
    NIMHistoryMessageSearchOption *searchOpt = [[NIMHistoryMessageSearchOption alloc] init];
    //: searchOpt.startTime = 0;
    searchOpt.startTime = 0;
    //: searchOpt.endTime = message.timestamp;
    searchOpt.endTime = message.timestamp;
    //: searchOpt.currentMessage = message;
    searchOpt.currentMessage = message;
    //: searchOpt.limit = 20;
    searchOpt.limit = 20;
    //: [[NIMSDK sharedSDK].conversationManager fetchMessageHistory:_currentSession option:searchOpt result:^(NSError *error, NSArray *messages) {
    [[NIMSDK sharedSDK].conversationManager fetchMessageHistory:_currentSession option:searchOpt result:^(NSError *error, NSArray *messages) {
        //: if (handler) {
        if (handler) {
            //: handler(error,messages.reverseObjectEnumerator.allObjects);
            handler(error,messages.reverseObjectEnumerator.allObjects);
        //: };
        };
    //: }];
    }];
}

//: - (void)loadPullUpMessagesWithComplete:(void (^)(NSInteger, NSArray *, NSError *))handler {
- (void)pull:(void (^)(NSInteger, NSArray *, NSError *))handler {
    //: __block PushMessageModel *currentNewestMsg = self.items.lastObject;
    __block PurseModel *currentNewestMsg = self.items.lastObject;
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: NIMMessageSearchOption *option = [NIMMessageSearchOption new];
    NIMMessageSearchOption *option = [NIMMessageSearchOption new];
    //: option.startTime = currentNewestMsg.messageTime - 0.1;
    option.startTime = currentNewestMsg.messageTime - 0.1;
    //: option.limit = [MyUserKit sharedKit].config.messageLimit;
    option.limit = [Secret highlight].config.messageLimit;
    //: option.allMessageTypes = YES;
    option.allMessageTypes = YES;
    //: option.order = NIMMessageSearchOrderAsc;
    option.order = NIMMessageSearchOrderAsc;
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].conversationManager searchMessages:_currentSession
    [[NIMSDK sharedSDK].conversationManager searchMessages:_currentSession
                                                    //: option:option
                                                    option:option
                                                    //: result:^(NSError * _Nullable error, NSArray<NIMMessage *> * _Nullable messages) {
                                                    result:^(NSError * _Nullable error, NSArray<NIMMessage *> * _Nullable messages) {
                                                        //: index = [wself appendMessageModels:[self modelsWithMessages:messages]].count;
                                                        index = [wself shouldModels:[self messages:messages]].count;
                                                        //: if (handler) {
                                                        if (handler) {
                                                            //: if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};
                                                            if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};


                                                        }
                                                    //: }];
                                                    }];
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)max:(void (^)(NSError *))handler
{
    //: [NIMSDK.sharedSDK.chatExtendManager loadMessagePinsForSession:_currentSession completion:^(NSError * _Nonnull error, NSArray<NIMMessagePinItem *> * _Nullable items) {
    [NIMSDK.sharedSDK.chatExtendManager loadMessagePinsForSession:_currentSession completion:^(NSError * _Nonnull error, NSArray<NIMMessagePinItem *> * _Nullable items) {
        //: [items enumerateObjectsUsingBlock:^(NIMMessagePinItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [items enumerateObjectsUsingBlock:^(NIMMessagePinItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: NSString *pinUserID = obj.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
            NSString *pinUserID = obj.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
            //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
            AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
            //: option.session = _currentSession;
            option.session = _currentSession;
            //: self.pinUsers[obj.messageId] = [MyUserKit.sharedKit infoByUser:pinUserID option:option].showName;
            self.pinUsers[obj.messageId] = [Secret.highlight infoAndStraddleOption:pinUserID item:option].showName;
        //: }];
        }];
        //: if (handler) {
        if (handler) {
            //: handler(nil);
            handler(nil);
        }
    //: }];
    }];
}

//: - (NSArray*)deleteMessageModel:(PushMessageModel *)msgModel
- (NSArray*)area:(PurseModel *)msgModel
{
    //: NSMutableArray *dels = [NSMutableArray array];
    NSMutableArray *dels = [NSMutableArray array];
    //: NSInteger delTimeIndex = -1;
    NSInteger delTimeIndex = -1;
    //: NSInteger delMsgIndex = [self.items indexOfObject:msgModel];
    NSInteger delMsgIndex = [self.items indexOfObject:msgModel];
    //: if (delMsgIndex > 0) {
    if (delMsgIndex > 0) {
        //: BOOL delMsgIsSingle = (delMsgIndex == self.items.count-1 || [self.items[delMsgIndex+1] isKindOfClass:[PushTimestampModel class]]);
        BOOL delMsgIsSingle = (delMsgIndex == self.items.count-1 || [self.items[delMsgIndex+1] isKindOfClass:[PushSharedNeed class]]);
        //: if ([self.items[delMsgIndex-1] isKindOfClass:[PushTimestampModel class]] && delMsgIsSingle) {
        if ([self.items[delMsgIndex-1] isKindOfClass:[PushSharedNeed class]] && delMsgIsSingle) {
            //: delTimeIndex = delMsgIndex-1;
            delTimeIndex = delMsgIndex-1;
            //: [self.items removeObjectAtIndex:delTimeIndex];
            [self.items removeObjectAtIndex:delTimeIndex];
            //: [dels addObject:@(delTimeIndex)];
            [dels addObject:@(delTimeIndex)];
        }
    }
    //: if (delMsgIndex > -1) {
    if (delMsgIndex > -1) {
        //: [self.items removeObject:msgModel];
        [self.items removeObject:msgModel];
        //: [_msgIdDict removeObjectForKey:msgModel.message.messageId];
        [_msgIdDict removeObjectForKey:msgModel.message.messageId];
        //: [dels addObject:@(delMsgIndex)];
        [dels addObject:@(delMsgIndex)];
    }
    //: return dels;
    return dels;
}

//: - (NSArray<NSIndexPath *> *)deleteModels:(NSRange)range
- (NSArray<NSIndexPath *> *)provider:(NSRange)range
{
    //: NSArray *models = [self.items subarrayWithRange:range];
    NSArray *models = [self.items subarrayWithRange:range];
    //: NSMutableArray *dels = [NSMutableArray array];
    NSMutableArray *dels = [NSMutableArray array];
    //: NSMutableArray *all = [NSMutableArray arrayWithArray:self.items];
    NSMutableArray *all = [NSMutableArray arrayWithArray:self.items];
    //: for (PushMessageModel *model in models) {
    for (PurseModel *model in models) {
        //: if ([model isKindOfClass:[PushTimestampModel class]]) {
        if ([model isKindOfClass:[PushSharedNeed class]]) {
            //: continue;
            continue;
        }
        //: NSInteger delTimeIndex = -1;
        NSInteger delTimeIndex = -1;
        //: NSInteger delMsgIndex = [all indexOfObject:model];
        NSInteger delMsgIndex = [all indexOfObject:model];
        //: if (delMsgIndex > 0) {
        if (delMsgIndex > 0) {
            //: BOOL delMsgIsSingle = (delMsgIndex == all.count-1 || [all[delMsgIndex+1] isKindOfClass:[PushTimestampModel class]]);
            BOOL delMsgIsSingle = (delMsgIndex == all.count-1 || [all[delMsgIndex+1] isKindOfClass:[PushSharedNeed class]]);
            //: if ([all[delMsgIndex-1] isKindOfClass:[PushTimestampModel class]] && delMsgIsSingle) {
            if ([all[delMsgIndex-1] isKindOfClass:[PushSharedNeed class]] && delMsgIsSingle) {
                //: delTimeIndex = delMsgIndex-1;
                delTimeIndex = delMsgIndex-1;
                //: [self.items removeObjectAtIndex:delTimeIndex];
                [self.items removeObjectAtIndex:delTimeIndex];
                //: NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delTimeIndex inSection:0];
                NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delTimeIndex inSection:0];
                //: [dels addObject:indexpath];
                [dels addObject:indexpath];
            }
        }
        //: if (delMsgIndex > -1) {
        if (delMsgIndex > -1) {
            //: [self.items removeObject:model];
            [self.items removeObject:model];
            //: [_msgIdDict removeObjectForKey:model.message.messageId];
            [_msgIdDict removeObjectForKey:model.message.messageId];
            //: NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delMsgIndex inSection:0];
            NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delMsgIndex inSection:0];
            //: [dels addObject:indexpath];
            [dels addObject:indexpath];
        }
    }
    //: return dels;
    return dels;
}

//: - (void)cleanCache
- (void)addRed
{
    //: for (id item in self.items)
    for (id item in self.items)
    {
        //: if ([item isKindOfClass:[PushMessageModel class]])
        if ([item isKindOfClass:[PurseModel class]])
        {
            //: PushMessageModel *model = (PushMessageModel *)item;
            PurseModel *model = (PurseModel *)item;
            //: [model cleanCache];
            [model bar];
        }
    }
}

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow {
- (void)summateSearch:(BOOL)isShow {
    //: _messageModelShowSelect = isShow;
    _messageModelShowSelect = isShow;

    //: for (id item in self.items)
    for (id item in self.items)
    {
        //: if ([item isKindOfClass:[PushMessageModel class]])
        if ([item isKindOfClass:[PurseModel class]])
        {
            //: PushMessageModel *model = (PushMessageModel *)item;
            PurseModel *model = (PurseModel *)item;
            //: model.shouldShowSelect = isShow;
            model.shouldShowSelect = isShow;
            //: model.selected = NO;
            model.selected = NO;
            //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
            if ([_sessionConfig respondsToSelector:@selector(reportMessage:)]) {
                //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
                model.disableSelected = [_sessionConfig reportMessage:model.message];;
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
            if ([_sessionConfig respondsToSelector:@selector(showWith)]) {
                //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
                model.enableRepliedContent = [_sessionConfig showWith];
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
            if ([_sessionConfig respondsToSelector:@selector(highGreen)]) {
                //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
                model.enableQuickComments = [_sessionConfig highGreen];
            }
        }
    }
}

//: - (void)willDisplayMessageModel:(PushMessageModel *)model
- (void)length:(PurseModel *)model
{
    //: if ([_sessionConfig respondsToSelector:@selector(shouldShowPinContent)]) {
    if ([_sessionConfig respondsToSelector:@selector(cleanRefresh)]) {
        //: model.shouldShowPinContent = [_sessionConfig shouldShowPinContent];
        model.shouldShowPinContent = [_sessionConfig cleanRefresh];
    }
    //: model.pinUserName = self.pinUsers[model.message.messageId];
    model.pinUserName = self.pinUsers[model.message.messageId];
}

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
- (void)titleEnable:(NIMMessage *)message tvCallback:(void (^)(NSError *))handler
{
    //: if (!message) {
    if (!message) {
        //: !handler ?: handler(nil);
        !handler ?: handler(nil);
        //: return;
        return;
    }
    //: NIMMessagePinItem *item = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *item = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    //: NSString *accountID = item.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
    NSString *accountID = item.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
    //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: NSString *pinUserName = [MyUserKit.sharedKit infoByUser:accountID option:option].showName;
    NSString *pinUserName = [Secret.highlight infoAndStraddleOption:accountID item:option].showName;
    //: self.pinUsers[message.messageId] = pinUserName;
    self.pinUsers[message.messageId] = pinUserName;
    //: !handler ?: handler(nil);
    !handler ?: handler(nil);
}

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
- (void)eviscerateControl:(NIMMessage *)message bubble:(void (^)(NSError *))handler
{
    //: if (message) {
    if (message) {
        //: self.pinUsers[message.messageId] = nil;
        self.pinUsers[message.messageId] = nil;
    }
    //: !handler ?: handler(nil);
    !handler ?: handler(nil);
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)insertMessage:(NIMMessage *)message{
- (void)communicationSave:(NIMMessage *)message{
    //: PushMessageModel *model = [[PushMessageModel alloc] initWithMessage:message];
    PurseModel *model = [[PurseModel alloc] initWithText:message];
    //: model.shouldShowSelect = _messageModelShowSelect;
    model.shouldShowSelect = _messageModelShowSelect;
    //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
    if ([_sessionConfig respondsToSelector:@selector(reportMessage:)]) {
        //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
        model.disableSelected = [_sessionConfig reportMessage:model.message];;
    }
    //: if ([_sessionConfig respondsToSelector:@selector(enableRepliedContent)]) {
    if ([_sessionConfig respondsToSelector:@selector(enableRepliedContent)]) {
        //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
        model.enableRepliedContent = [_sessionConfig showWith];
    }
    //: if ([_sessionConfig respondsToSelector:@selector(shouldShowPinContent)]) {
    if ([_sessionConfig respondsToSelector:@selector(cleanRefresh)]) {
        //: model.shouldShowPinContent = [_sessionConfig shouldShowPinContent];
        model.shouldShowPinContent = [_sessionConfig cleanRefresh];
    }
    //: model.pinUserName = self.pinUsers[model.message.messageId];
    model.pinUserName = self.pinUsers[model.message.messageId];
    //: if ([self modelIsExist:model]) {
    if ([self ptolemaicSystem:model]) {
        //: return;
        return;
    }


    //: NSTimeInterval firstTimeInterval = [self firstTimeInterval];
    NSTimeInterval firstTimeInterval = [self hideTotalervalSum];
    //: if (firstTimeInterval && firstTimeInterval - model.messageTime < self.showTimeInterval) {
    if (firstTimeInterval && firstTimeInterval - model.messageTime < self.showTimeInterval) {
        //此时至少有一条消息和时间戳（如果有的话）
        //干掉时间戳（如果有的话）
        //: if ([self.items.firstObject isKindOfClass:[PushTimestampModel class]]) {
        if ([self.items.firstObject isKindOfClass:[PushSharedNeed class]]) {
            //: [self.items removeObjectAtIndex:0];
            [self.items removeObjectAtIndex:0];
        }
    }
    //: [self.items insertObject:model atIndex:0];
    [self.items insertObject:model atIndex:0];
    //: if ((![self.dataProvider respondsToSelector:@selector(needTimetag)] || self.dataProvider.needTimetag) && self.dataProvider) {
    if ((![self.dataProvider respondsToSelector:@selector(informationFor)] || self.dataProvider.informationFor) && self.dataProvider) {
        //这种情况下必须要插入时间戳
        //: PushTimestampModel *timeModel = [[PushTimestampModel alloc] init];
        PushSharedNeed *timeModel = [[PushSharedNeed alloc] init];
        //: timeModel.messageTime = model.messageTime;
        timeModel.messageTime = model.messageTime;
        //: [self.items insertObject:timeModel atIndex:0];
        [self.items insertObject:timeModel atIndex:0];
    }
    //: [self.msgIdDict setObject:model forKey:model.message.messageId];
    [self.msgIdDict setObject:model forKey:model.message.messageId];
}


//: - (NSArray *)insertMessageModel:(PushMessageModel *)model index:(NSInteger)index{
- (NSArray *)location:(PurseModel *)model margin:(NSInteger)index{
    //: NSMutableArray *inserts = [[NSMutableArray alloc] init];
    NSMutableArray *inserts = [[NSMutableArray alloc] init];
    //: if (![self.dataProvider respondsToSelector:@selector(needTimetag)] || self.dataProvider.needTimetag)
    if (![self.dataProvider respondsToSelector:@selector(informationFor)] || self.dataProvider.informationFor)
    {
        //: if ([self shouldInsertTimestamp:model]) {
        if ([self onRange:model]) {
            //: PushTimestampModel *timeModel = [[PushTimestampModel alloc] init];
            PushSharedNeed *timeModel = [[PushSharedNeed alloc] init];
            //: timeModel.messageTime = model.messageTime;
            timeModel.messageTime = model.messageTime;
            //: [self.items insertObject:timeModel atIndex:index];
            [self.items insertObject:timeModel atIndex:index];
            //: [inserts addObject:@(index)];
            [inserts addObject:@(index)];
            //: index++;
            index++;
        }
    }
    //: [self.items insertObject:model atIndex:index];
    [self.items insertObject:model atIndex:index];
    //: [self.msgIdDict setObject:model forKey:model.message.messageId];
    [self.msgIdDict setObject:model forKey:model.message.messageId];
    //: [inserts addObject:@(index)];
    [inserts addObject:@(index)];
    //: return inserts;
    return inserts;
}

//: - (void)subHeadMessages:(NSInteger)count
- (void)circleTitle:(NSInteger)count
{
    //: NSInteger catch = 0;
    NSInteger catch = 0;
    //: NSArray *modelArray = [NSArray arrayWithArray:self.items];
    NSArray *modelArray = [NSArray arrayWithArray:self.items];
    //: for (PushMessageModel *model in modelArray) {
    for (PurseModel *model in modelArray) {
        //: if ([model isKindOfClass:[PushMessageModel class]]) {
        if ([model isKindOfClass:[PurseModel class]]) {
            //: catch++;
            catch++;
            //: [self deleteMessageModel:model];
            [self area:model];
        }
        //: if (catch == count) {
        if (catch == count) {
            //: break;
            break;
        }
    }
}

//: - (NSArray<PushMessageModel *> *)modelsWithMessages:(NSArray<NIMMessage *> *)messages
- (NSArray<PurseModel *> *)messages:(NSArray<NIMMessage *> *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: PushMessageModel *model = [[PushMessageModel alloc] initWithMessage:message];
        PurseModel *model = [[PurseModel alloc] initWithText:message];
        //: model.shouldShowSelect = _messageModelShowSelect;
        model.shouldShowSelect = _messageModelShowSelect;
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(reportMessage:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig reportMessage:model.message];;
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(showWith)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig showWith];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(highGreen)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig highGreen];
        }
        //: if ([_sessionConfig respondsToSelector:@selector(shouldShowPinContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(cleanRefresh)]) {
            //: model.shouldShowPinContent = [_sessionConfig shouldShowPinContent];
            model.shouldShowPinContent = [_sessionConfig cleanRefresh];
        }
        //: model.pinUserName = self.pinUsers[model.message.messageId];
        model.pinUserName = self.pinUsers[model.message.messageId];
        //: [array addObject:model];
        [array addObject:model];
    }
    //: return array;
    return array;
}


//: - (NSInteger)findInsertPosistion:(PushMessageModel *)model
- (NSInteger)dispenser:(PurseModel *)model
{
    //: return [self findInsertPosistion:self.items model:model];
    return [self member:self.items recoilImageSimulation:model];
}

//: - (NSInteger)findInsertPosistion:(NSArray *)array model:(PushMessageModel *)model
- (NSInteger)member:(NSArray *)array recoilImageSimulation:(PurseModel *)model
{
    //: if (array.count == 0) {
    if (array.count == 0) {
        //即初始什么消息都没的情况下，调用了插入消息，放在第一个就好了。
        //: return 0;
        return 0;
    }
    //: if (array.count == 1) {
    if (array.count == 1) {
        //递归出口
        //: PushMessageModel *obj = array.firstObject;
        PurseModel *obj = array.firstObject;
        //: NSInteger index = [self.items indexOfObject:obj];
        NSInteger index = [self.items indexOfObject:obj];
        //: return obj.messageTime > model.messageTime? index : index+1;
        return obj.messageTime > model.messageTime? index : index+1;
    }
    //: NSInteger sep = (array.count+1) / 2;
    NSInteger sep = (array.count+1) / 2;
    //: PushMessageModel *center = array[sep];
    PurseModel *center = array[sep];
    //: NSTimeInterval timestamp = [center messageTime];
    NSTimeInterval timestamp = [center messageTime];
    //: NSArray *half;
    NSArray *half;
    //: if (timestamp <= [model messageTime]) {
    if (timestamp <= [model messageTime]) {
        //: half = [array subarrayWithRange:NSMakeRange(sep, array.count - sep)];
        half = [array subarrayWithRange:NSMakeRange(sep, array.count - sep)];
    //: }else{
    }else{
        //: half = [array subarrayWithRange:NSMakeRange(0, sep)];
        half = [array subarrayWithRange:NSMakeRange(0, sep)];
    }
    //: return [self findInsertPosistion:half model:model];
    return [self member:half recoilImageSimulation:model];
}


//: - (BOOL)shouldInsertTimestamp:(PushMessageModel *)model
- (BOOL)onRange:(PurseModel *)model
{
    //: PushMessageModel *lastmodel = self.items.lastObject;
    PurseModel *lastmodel = self.items.lastObject;
    //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
    if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        //: return NO;
        return NO;
    }

    //: NIMNotificationObject *object = lastmodel.message.messageObject;
    NIMNotificationObject *object = lastmodel.message.messageObject;
    //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    {
        //: return NO;
        return NO;
    }

    //: NSTimeInterval lastTimeInterval = lastmodel.messageTime;
    NSTimeInterval lastTimeInterval = lastmodel.messageTime;
    //: return model.messageTime - lastTimeInterval > self.showTimeInterval;
    return model.messageTime - lastTimeInterval > self.showTimeInterval;
}

//: - (NSTimeInterval)firstTimeInterval
- (NSTimeInterval)hideTotalervalSum
{
    //: if (!self.items.count) {
    if (!self.items.count) {
        //: return 0;
        return 0;
    }
    //: PushMessageModel *model;
    PurseModel *model;
    //: if (![self.dataProvider respondsToSelector:@selector(needTimetag)] || self.dataProvider.needTimetag) {
    if (![self.dataProvider respondsToSelector:@selector(informationFor)] || self.dataProvider.informationFor) {
        //: model = self.items[1];
        model = self.items[1];
    //: }else
    }else
    {
        //: model = self.items[0];
        model = self.items[0];
    }
    //: return model.messageTime;
    return model.messageTime;
}

//: @end
@end
