
#import <Foundation/Foundation.h>

@interface CommissionData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CommissionData

+ (instancetype)sharedInstance {
    static CommissionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CommissionDataToCache:(Byte *)data {
    int villageWhich = data[0];
    Byte strangeDead = data[1];
    int itselfButton = data[2];
    for (int i = itselfButton; i < itselfButton + villageWhich; i++) {
        int value = data[i] + strangeDead;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[itselfButton + villageWhich] = 0;
    return data + itselfButton;
}

- (NSString *)StringFromCommissionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CommissionDataToCache:data]];
}

//: nim.demo.mergeforward.task
- (NSString *)app_nuclearFormat {
    /* static */ NSString *app_nuclearFormat = nil;
    if (!app_nuclearFormat) {
        Byte value[] = {26, 24, 7, 122, 68, 31, 226, 86, 81, 85, 22, 76, 77, 85, 87, 22, 85, 77, 90, 79, 77, 78, 87, 90, 95, 73, 90, 76, 22, 92, 73, 91, 83, 8};
        app_nuclearFormat = [self StringFromCommissionData:value];
    }
    return app_nuclearFormat;
}

//: null
- (NSString *)show_messageInputTingIdent {
    /* static */ NSString *show_messageInputTingIdent = nil;
    if (!show_messageInputTingIdent) {
        Byte value[] = {4, 24, 7, 210, 89, 236, 137, 86, 93, 84, 84, 236};
        show_messageInputTingIdent = [self StringFromCommissionData:value];
    }
    return show_messageInputTingIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EarlierIndex.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeForwardSession.h"
#import "EarlierIndex.h"
//: #import "NTESMessageSerialization.h"
#import "BubbleSerialization.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "AttachmentOn.h"
//: #import "NTESSessionMsgConverter.h"
#import "SessionDevice.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"

//: typedef void(^NTESMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);
typedef void(^NTESMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);

//: @interface NTESMergeForwardSession ()
@interface EarlierIndex ()

//: @property (nonatomic, strong) NSMutableDictionary <NSNumber *, NTESMergeForwardTask *> *tasks;
@property (nonatomic, strong) NSMutableDictionary <NSNumber *, ArtifactAttribute *> *tasks;

//: @end
@end

//: @interface NTESMergeForwardTask ()
@interface ArtifactAttribute ()

//: @property (nonatomic, assign) uint64_t identifier;
@property (nonatomic, assign) uint64_t identifier;
//: @property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
@property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
//: @property (nonatomic, strong) NTESMergeForwardProcess process;
@property (nonatomic, strong) NTESMergeForwardProcess process;
//: @property (nonatomic, strong) NTESMergeForwardTaskResult completion;
@property (nonatomic, strong) NTESMergeForwardTaskResult completion;
//: @property (nonatomic, strong) NTESMessageSerialization *serialize;
@property (nonatomic, strong) BubbleSerialization *serialize;

//: @end
@end

//: @implementation NTESMergeForwardSession
@implementation EarlierIndex
//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _tasks = [NSMutableDictionary dictionary];
        _tasks = [NSMutableDictionary dictionary];
    }
    //: return self;
    return self;
}

//: - (NTESMergeForwardTask *)forwardTaskWithMessages:(NSMutableArray <NIMMessage *> *)messages
- (ArtifactAttribute *)messagesCompletion:(NSMutableArray <NIMMessage *> *)messages
                                          //: process:(NTESMergeForwardProcess)process
                                          shouldObjectTap:(NTESMergeForwardProcess)process
                                       //: completion:(NTESMergeForwardResult)completion {
                                       elect:(NTESMergeForwardResult)completion {
    //: NTESMergeForwardTask *task = [[NTESMergeForwardTask alloc] init];
    ArtifactAttribute *task = [[ArtifactAttribute alloc] init];
    //: task.messages = messages;
    task.messages = messages;
    //: task.process = process;
    task.process = process;

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: task.completion = ^(uint64_t identifier, NSError *error, NIMMessage *message) {
    task.completion = ^(uint64_t identifier, NSError *error, NIMMessage *message) {
        //: if (completion) {
        if (completion) {
            //: completion(error, message);
            completion(error, message);
        }
        //: weakSelf.tasks[@(identifier)] = nil;
        weakSelf.tasks[@(identifier)] = nil;
    //: };
    };
    //: _tasks[@(task.identifier)] = task;
    _tasks[@(task.identifier)] = task;
    //: return task;
    return task;
}

//: @end
@end


//: @implementation NTESMergeForwardTask
@implementation ArtifactAttribute

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _identifier = (uint64_t)self;
        _identifier = (uint64_t)self;
        //: _serialize = [[NTESMessageSerialization alloc] init];
        _serialize = [[BubbleSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)resume {
- (void)pin {
    //: NSError *error = nil;
    NSError *error = nil;
    //: __block NIMMessage *message = nil;
    __block NIMMessage *message = nil;
    //: if (_messages.count == 0) {
    if (_messages.count == 0) {
        //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1000 userInfo:nil];
        error = [NSError errorWithDomain:[[CommissionData sharedInstance] app_nuclearFormat] code:1000 userInfo:nil];
        //: if (_completion) {
        if (_completion) {
            //: _completion(_identifier, error, message);
            _completion(_identifier, error, message);
        }
        //: return;
        return;
    }

    //时间戳排序
    //: [_messages sortUsingComparator:^NSComparisonResult(NIMMessage *_Nonnull obj1, NIMMessage * _Nonnull obj2) {
    [_messages sortUsingComparator:^NSComparisonResult(NIMMessage *_Nonnull obj1, NIMMessage * _Nonnull obj2) {
        //: if (obj1.timestamp < obj2.timestamp) {
        if (obj1.timestamp < obj2.timestamp) {
            //: return NSOrderedAscending;
            return NSOrderedAscending;
        //: } else {
        } else {
            //: return NSOrderedDescending;
            return NSOrderedDescending;
        }
    //: }];
    }];

    //序列化
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *password = [self getRandomRCKey];
    NSString *password = [self masterKey];
    //: [_serialize encode:_messages encrypt:YES password:password completion:^(NSError * _Nullable error, NTESMessageSerializationInfo * _Nullable info) {
    [_serialize pickOver:_messages pathWillEnable:YES disable_strong:password team:^(NSError * _Nullable error, BlockTitleInfo * _Nullable info) {
        //: if (error) {
        if (error) {
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        //: } else {
        } else {
            //: NTESMultiRetweetAttachment *attach = [[NTESMultiRetweetAttachment alloc] init];
            AttachmentOn *attach = [[AttachmentOn alloc] init];
            //: attach.fileName = info.filePath.lastPathComponent;
            attach.fileName = info.filePath.lastPathComponent;
            //: attach.md5 = info.md5;
            attach.md5 = info.md5;
            //: attach.compressed = info.compressed;
            attach.compressed = info.compressed;
            //: attach.encrypted = info.encrypted;
            attach.encrypted = info.encrypted;
            //: attach.password = info.password;
            attach.password = info.password;
            //: attach.abstracts = [weakSelf messageAbstract:weakSelf.messages];
            attach.abstracts = [weakSelf praise:weakSelf.messages];
            //: if (attach.messageAbstract.count == 0) {
            if (attach.messageAbstract.count == 0) {
                //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:[[CommissionData sharedInstance] app_nuclearFormat] code:1001 userInfo:nil];
            //: } else {;
            } else {;
                //show name
                //: NIMSession *fromSession = [weakSelf.messages firstObject].session;
                NIMSession *fromSession = [weakSelf.messages firstObject].session;
                //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
                AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
                //: option.session = fromSession;
                option.session = fromSession;
                //: PushKitInfo *info = nil;
                DataTeam *info = nil;
                //: if (fromSession.sessionType == NIMSessionTypeP2P) {
                if (fromSession.sessionType == NIMSessionTypeP2P) {
                    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    //: info = [[MyUserKit sharedKit].provider infoByUser:userId option:option];
                    info = [[Secret highlight].provider infoAndStraddleOption:userId item:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeTeam){
                } else if (fromSession.sessionType == NIMSessionTypeTeam){
                    //: info = [[MyUserKit sharedKit].provider infoByTeam:fromSession.sessionId option:option];
                    info = [[Secret highlight].provider show:fromSession.sessionId corner:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                    //: info = [[MyUserKit sharedKit].provider infoBySuperTeam:fromSession.sessionId option:option];
                    info = [[Secret highlight].provider of:fromSession.sessionId enableence_strong:option];
                }
                //: attach.sessionName = info.showName ?: @"null";
                attach.sessionName = info.showName ?: [[CommissionData sharedInstance] show_messageInputTingIdent];
                //: attach.sessionId = fromSession.sessionId;
                attach.sessionId = fromSession.sessionId;

                //message
                //: message = [NTESSessionMsgConverter msgWithMultiRetweetAttachment:attach];
                message = [SessionDevice asFormatInstance:attach];
            }
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        }
    //: }];
    }];
}

//: - (NSMutableArray <NTESMessageAbstract *> *)messageAbstract:(NSArray <NIMMessage *> *)messages {
- (NSMutableArray <MessageAdd *> *)praise:(NSArray <NIMMessage *> *)messages {
    //: NSMutableArray <NTESMessageAbstract *> *abstracts = [NSMutableArray array];
    NSMutableArray <MessageAdd *> *abstracts = [NSMutableArray array];
    //: for (NIMMessage *message in _messages) {
    for (NIMMessage *message in _messages) {
        //: if (abstracts.count == (2)) {
        if (abstracts.count == (2)) {
            //: break;
            break;
        }
        //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithMessage:message];
        MessageAdd *abstract = [MessageAdd abstract:message];



        //: if (abstract) {
        if (abstract) {
            //: [abstracts addObject:abstract];
            [abstracts addObject:abstract];
        }
    }
    //: return abstracts;
    return abstracts;
}

//: -(NSString *)getRandomRCKey
-(NSString *)masterKey
{
    //: char data[16] = {0};
    char data[16] = {0};
    //: for (int x=0; x < sizeof(data); data[x++] = (char)('a' + (arc4random_uniform(26))));
    for (int x=0; x < sizeof(data); data[x++] = (char)('a' + (arc4random_uniform(26))));
    //: NSString *randomStr = [[NSString alloc] initWithBytes:data length:sizeof(data) encoding:NSUTF8StringEncoding];
    NSString *randomStr = [[NSString alloc] initWithBytes:data length:sizeof(data) encoding:NSUTF8StringEncoding];
    //: NSString *string = [NSString stringWithFormat:@"%@",randomStr];
    NSString *string = [NSString stringWithFormat:@"%@",randomStr];
    //: return string;
    return string;
}



//: @end
@end
