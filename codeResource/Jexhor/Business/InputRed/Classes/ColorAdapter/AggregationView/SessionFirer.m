
#import <Foundation/Foundation.h>

typedef struct {
    Byte elementary;
    Byte *potentiallyItem;
    unsigned int plungeNegotiation;
	int tagCrowded;
	int primaryElection;
} StructSuspectData;

@interface SuspectData : NSObject

+ (instancetype)sharedInstance;

//: info must be fired in main thread
@property (nonatomic, copy) NSString *m_careName;

@end

@implementation SuspectData

+ (instancetype)sharedInstance {
    static SuspectData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SuspectDataToByte:(StructSuspectData *)data {
    for (int i = 0; i < data->plungeNegotiation; i++) {
        data->potentiallyItem[i] ^= data->elementary;
    }
    data->potentiallyItem[data->plungeNegotiation] = 0;
	if (data->plungeNegotiation >= 2) {
		data->tagCrowded = data->potentiallyItem[0];
		data->primaryElection = data->potentiallyItem[1];
	}
    return data->potentiallyItem;
}

- (NSString *)StringFromSuspectData:(StructSuspectData *)data {
    return [NSString stringWithUTF8String:(char *)[self SuspectDataToByte:data]];
}

//: info must be fired in main thread
- (NSString *)m_careName {
    if (!_m_careName) {
        StructSuspectData value = (StructSuspectData){76, (Byte []){37, 34, 42, 35, 108, 33, 57, 63, 56, 108, 46, 41, 108, 42, 37, 62, 41, 40, 108, 37, 34, 108, 33, 45, 37, 34, 108, 56, 36, 62, 41, 45, 40, 113}, 33, 125, 57};
        _m_careName = [self StringFromSuspectData:&value];
    }
    return _m_careName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionFirer.m
// MessageContent
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkKitNotificationFirer.h"
#import "SessionFirer.h"

//: NSString *const dream_versionData = @"dream_versionData";
NSString *const dream_versionData = @"dream_versionData";
//: NSString *const userFrameContent = @"userFrameContent";
NSString *const userFrameContent = @"userFrameContent";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const mContentData = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const app_imageValue = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const mMessageData = @"mMessageData";
NSString *const mMessageData = @"mMessageData";

//: NSString *const main_memberName = @"InfoId";
NSString *const main_memberName = @"InfoId";

//: @implementation WorkKitNotificationFirer
@implementation SessionFirer

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[WorkKitTimerHolder alloc] init];
        _timer = [[ChangeHolder alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)imageTemp:(ColorInfo *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, [SuspectData sharedInstance].m_careName);
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer limit:self.timeInterval byRepeatsHolderDelegate:self data:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.userShow];
}

//: #pragma mark - WorkKitTimerHolderDelegate
#pragma mark - KitWith

//: - (void)onNIMKitTimerFired:(WorkKitTimerHolder *)holder{
- (void)alonging:(ChangeHolder *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (ColorInfo *info in self.cachedInfo.allValues) {
        //: NSMutableArray *fireInfos = dict[info.notificationName];
        NSMutableArray *fireInfos = dict[info.notificationName];
        //: if (!fireInfos) {
        if (!fireInfos) {
            //: fireInfos = [[NSMutableArray alloc] init];
            fireInfos = [[NSMutableArray alloc] init];
            //: dict[info.notificationName] = fireInfos;
            dict[info.notificationName] = fireInfos;
        }
        //: if (info.fireObject) {
        if (info.view) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.view];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ main_memberName:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ main_memberName:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation ColorInfo

//: - (NSObject *)fireObject
- (NSObject *)view
{
    //: if (self.session) {
    if (self.session) {
        //: return self.session.sessionId;
        return self.session.sessionId;
    }
    //: return [NSNull null];
    return [NSNull null];
}

//: - (NSString *)saveIdentity
- (NSString *)userShow
{
    //: if (self.session) {
    if (self.session) {
        //: return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
        return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
    }
    //: return self.notificationName;
    return self.notificationName;
}

//: @end
@end
