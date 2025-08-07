
#import <Foundation/Foundation.h>

NSString *StringFromRefreshData(Byte *data);        


//: info must be fired in main thread
Byte dreamSeizeFormat[] = {50, 33, 54, 11, 165, 243, 214, 61, 9, 179, 224, 51, 56, 48, 57, 234, 55, 63, 61, 62, 234, 44, 47, 234, 48, 51, 60, 47, 46, 234, 51, 56, 234, 55, 43, 51, 56, 234, 62, 50, 60, 47, 43, 46, 149};

// __DEBUG__
// __CLOSE_PRINT__
//
//  Firer.m
// Secret
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitNotificationFirer.h"
#import "Firer.h"

//: NSString *const NIMKitUserInfoHasUpdatedNotification = @"NIMKitUserInfoHasUpdatedNotification";
NSString *const k_contactPath = @"NIMKitUserInfoHasUpdatedNotification";
//: NSString *const NIMKitTeamInfoHasUpdatedNotification = @"NIMKitTeamInfoHasUpdatedNotification";
NSString *const k_frameStr = @"NIMKitTeamInfoHasUpdatedNotification";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const dream_contentName = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const kSubPath = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const NIMKitTeamMembersHasUpdatedNotification = @"NIMKitTeamMembersHasUpdatedNotification";
NSString *const main_buttonValueMsg = @"NIMKitTeamMembersHasUpdatedNotification";

//: NSString *const FFFKitInfoKey = @"InfoId";
NSString *const show_resultTouchCustomContent = @"InfoId";

//: @implementation FFFKitNotificationFirer
@implementation Firer

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[TouchMax alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)textOf:(JointMax *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, StringFromRefreshData(dreamSeizeFormat));
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer repeats:self.timeInterval eigenvalueOfASquareMatrix:self size:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.team];
}

//: #pragma mark - FFFKitTimerHolderDelegate
#pragma mark - TempDelegate

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder{
- (void)alongAndEnable:(TouchMax *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (JointMax *info in self.cachedInfo.allValues) {
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
        if (info.media) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.media];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ FFFKitInfoKey:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ show_resultTouchCustomContent:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation JointMax

//: - (NSObject *)fireObject
- (NSObject *)media
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
- (NSString *)team
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

Byte * RefreshDataToCache(Byte *data) {
    int negativeMeal = data[0];
    int jumpTap = data[1];
    Byte dogTeam = data[2];
    int cool = data[3];
    if (!negativeMeal) return data + cool;
    for (int i = cool; i < cool + jumpTap; i++) {
        int value = data[i] + dogTeam;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[cool + jumpTap] = 0;
    return data + cool;
}

NSString *StringFromRefreshData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RefreshDataToCache(data)];
}
