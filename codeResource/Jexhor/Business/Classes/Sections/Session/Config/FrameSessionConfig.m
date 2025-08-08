// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameSessionConfig.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadSessionConfig.h"
#import "FrameSessionConfig.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"

//: @interface NTESThreadSessionConfig ()
@interface FrameSessionConfig ()

//: @property (nonatomic,strong) NTESThreadDataSourceProvider *provider;
@property (nonatomic,strong) QueryRange *provider;

//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;

//: @end
@end

//: @implementation NTESThreadSessionConfig
@implementation FrameSessionConfig

//: - (instancetype)initWithMessage:(NIMMessage *)message
- (instancetype)initWithCommunicationManager:(NIMMessage *)message
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _threadMessage = message;
        _threadMessage = message;
        //: _provider = [[NTESThreadDataSourceProvider alloc] init];
        _provider = [[QueryRange alloc] init];
        //: _provider.threadMessage = message;
        _provider.threadMessage = message;
    }
    //: return self;
    return self;
}

//: - (id<WorkKitMessageProvider>)messageDataProvider
- (id<SpecsText>)imageCover
{
    //: return self.provider;
    return self.provider;
}

//: - (BOOL)needShowReplyContent
- (BOOL)addSuccess
{
    //: return NO;
    return NO;
}

//: - (BOOL)shouldShowPinContent
- (BOOL)tinkleLabel
{
    //: return NO;
    return NO;
}

//: - (BOOL)needShowQuickComments
- (BOOL)textTitle
{
    //: return NO;
    return NO;
}

//: - (void)cleanThreadMessage
- (void)size
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (NIMMessage *)threadMessage
- (NIMMessage *)threadMessage
{
    //: return _threadMessage;
    return _threadMessage;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)formatEndSent
{
    //: return NO;
    return NO;
}

//: @end
@end

//: @interface NTESThreadDataSourceProvider ()
@interface QueryRange ()

//: @property (nonatomic,assign) BOOL didInsertThreadMessage;
@property (nonatomic,assign) BOOL didInsertThreadMessage;

//: @end
@end

//: @implementation NTESThreadDataSourceProvider
@implementation QueryRange

//: - (void)pullDown:(NIMMessage *)firstMessage handler:(NIMKitDataProvideHandler)handler
- (void)language:(NIMMessage *)firstMessage stepHandler:(NIMKitDataProvideHandler)handler
{
    //: BOOL enablePullCloudMessages = [[NTESBundleSetting sharedConfig] enablePullSubMessagesFromServer];
    BOOL enablePullCloudMessages = [[ImageTing configRefresh] to];
    //: if (!enablePullCloudMessages)
    if (!enablePullCloudMessages)
    {
        //: NSArray *array = [[NIMSDK sharedSDK].chatExtendManager subMessages:self.threadMessage];
        NSArray *array = [[NIMSDK sharedSDK].chatExtendManager subMessages:self.threadMessage];
        //: if (!self.didInsertThreadMessage && self.threadMessage)
        if (!self.didInsertThreadMessage && self.threadMessage)
        {
            //: NSMutableArray *tmp = [NSMutableArray arrayWithArray:array];
            NSMutableArray *tmp = [NSMutableArray arrayWithArray:array];
            //: [tmp insertObject:self.threadMessage atIndex:0];
            [tmp insertObject:self.threadMessage atIndex:0];
            //: array = tmp;
            array = tmp;
            //: self.didInsertThreadMessage = YES;
            self.didInsertThreadMessage = YES;
        }

        //: if (handler)
        if (handler)
        {
            //: handler(nil, array);
            handler(nil, array);
        }
    }
    //: else
    else
    {
        //: NIMThreadTalkFetchOption *option = [[NIMThreadTalkFetchOption alloc] init];
        NIMThreadTalkFetchOption *option = [[NIMThreadTalkFetchOption alloc] init];
        //: option.limit = 100;
        option.limit = 100;
        //: option.excludeMessage = firstMessage;
        option.excludeMessage = firstMessage;
        //: option.end = firstMessage.timestamp;
        option.end = firstMessage.timestamp;
        //: option.sync = YES;
        option.sync = YES;
        //: option.reverse = NO;
        option.reverse = NO;

         //: [[NIMSDK sharedSDK].chatExtendManager fetchSubMessagesFrom:self.threadMessage option:option completion:^(NSError * error, NIMThreadTalkFetchResult * result)
         [[NIMSDK sharedSDK].chatExtendManager fetchSubMessagesFrom:self.threadMessage option:option completion:^(NSError * error, NIMThreadTalkFetchResult * result)
         {
             //: if (!self.didInsertThreadMessage && self.threadMessage)
             if (!self.didInsertThreadMessage && self.threadMessage)
             {
                 //: NSMutableArray *tmp = [NSMutableArray arrayWithArray:result.subMessages];
                 NSMutableArray *tmp = [NSMutableArray arrayWithArray:result.subMessages];
                 //: [tmp insertObject:self.threadMessage atIndex:0];
                 [tmp insertObject:self.threadMessage atIndex:0];
                 //: result.subMessages = tmp;
                 result.subMessages = tmp;
                 //: self.didInsertThreadMessage = YES;
                 self.didInsertThreadMessage = YES;
             }

            //: result.subMessages = [result.subMessages sortedArrayUsingComparator:^NSComparisonResult(NIMMessage * obj1, NIMMessage * obj2) {
            result.subMessages = [result.subMessages sortedArrayUsingComparator:^NSComparisonResult(NIMMessage * obj1, NIMMessage * obj2) {
                //: return obj1.timestamp < obj2.timestamp ? NSOrderedAscending : NSOrderedDescending;
                return obj1.timestamp < obj2.timestamp ? NSOrderedAscending : NSOrderedDescending;

             //: }];
             }];

             //: if (handler)
             if (handler)
             {
                 //: handler(error, result.subMessages);
                 handler(error, result.subMessages);
             }
         //: }];
         }];
    }
}

//: @end
@end
