
#import <Foundation/Foundation.h>

@interface TwentyFourHourPeriodData : NSObject

+ (instancetype)sharedInstance;

//: teamId
@property (nonatomic, copy) NSString *mainViewKey;

//: content
@property (nonatomic, copy) NSString *dream_positionMsg;

//: teamType
@property (nonatomic, copy) NSString *kCropText;

//: Group
@property (nonatomic, copy) NSString *mainBlueUrl;

//: teamName
@property (nonatomic, copy) NSString *k_colorFormat;

//: room
@property (nonatomic, copy) NSString *k_collectionIdent;

//: 正在呼叫您
@property (nonatomic, copy) NSString *userButtonMsg;

//: members
@property (nonatomic, copy) NSString *mainPathIdent;

@end

@implementation TwentyFourHourPeriodData

+ (instancetype)sharedInstance {
    static TwentyFourHourPeriodData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TwentyFourHourPeriodDataToCache:(Byte *)data {
    int inputSession = data[0];
    int courseOfAction = data[1];
    for (int i = 0; i < inputSession / 2; i++) {
        int begin = courseOfAction + i;
        int end = courseOfAction + inputSession - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[courseOfAction + inputSession] = 0;
    return data + courseOfAction;
}

- (NSString *)StringFromTwentyFourHourPeriodData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TwentyFourHourPeriodDataToCache:data]];
}  

//: teamId
- (NSString *)mainViewKey {
    if (!_mainViewKey) {
        Byte value[] = {6, 11, 157, 224, 112, 102, 224, 172, 25, 220, 1, 100, 73, 109, 97, 101, 116, 250};
        _mainViewKey = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _mainViewKey;
}

//: teamType
- (NSString *)kCropText {
    if (!_kCropText) {
        Byte value[] = {8, 8, 54, 190, 141, 191, 168, 255, 101, 112, 121, 84, 109, 97, 101, 116, 205};
        _kCropText = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _kCropText;
}

//: teamName
- (NSString *)k_colorFormat {
    if (!_k_colorFormat) {
        Byte value[] = {8, 2, 101, 109, 97, 78, 109, 97, 101, 116, 155};
        _k_colorFormat = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _k_colorFormat;
}

//: Group
- (NSString *)mainBlueUrl {
    if (!_mainBlueUrl) {
        Byte value[] = {5, 9, 10, 197, 36, 22, 188, 70, 254, 112, 117, 111, 114, 71, 255};
        _mainBlueUrl = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _mainBlueUrl;
}

//: members
- (NSString *)mainPathIdent {
    if (!_mainPathIdent) {
        Byte value[] = {7, 12, 83, 45, 129, 183, 40, 8, 113, 246, 33, 73, 115, 114, 101, 98, 109, 101, 109, 113};
        _mainPathIdent = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _mainPathIdent;
}

//: room
- (NSString *)k_collectionIdent {
    if (!_k_collectionIdent) {
        Byte value[] = {4, 7, 19, 137, 126, 140, 52, 109, 111, 111, 114, 17};
        _k_collectionIdent = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _k_collectionIdent;
}

//: content
- (NSString *)dream_positionMsg {
    if (!_dream_positionMsg) {
        Byte value[] = {7, 6, 34, 120, 123, 80, 116, 110, 101, 116, 110, 111, 99, 190};
        _dream_positionMsg = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _dream_positionMsg;
}

//: 正在呼叫您
- (NSString *)userButtonMsg {
    if (!_userButtonMsg) {
        Byte value[] = {15, 3, 54, 168, 130, 230, 171, 143, 229, 188, 145, 229, 168, 156, 229, 163, 173, 230, 69};
        _userButtonMsg = [self StringFromTwentyFourHourPeriodData:value];
    }
    return _userButtonMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomSysNotificationSender.h"
#import "PanoramicViewSender.h"
//: #import "FFFKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"

//: @interface NTESCustomSysNotificationSender ()
@interface PanoramicViewSender ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation NTESCustomSysNotificationSender
@implementation PanoramicViewSender

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)domain:(NSString *)content change:(NIMSession *)session{
    //: if (!content) {
    if (!content) {
        //: return;
        return;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((2)),
                           @"id" : @((2)),
                           //: @"content" : content,
                           [TwentyFourHourPeriodData sharedInstance].dream_positionMsg : content,
                           //: };
                           };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *json = [[NSString alloc] initWithData:data
    NSString *json = [[NSString alloc] initWithData:data
                                              //: encoding:NSUTF8StringEncoding];
                                              encoding:NSUTF8StringEncoding];

    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    //: notification.apnsContent = content;
    notification.apnsContent = content;
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[SettingImage name] module];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;
    //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
    [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                 //: toSession:session
                                                                 toSession:session
                                                                //: completion:nil];
                                                                completion:nil];
}


//: - (void)sendTypingState:(NIMSession *)session
- (void)path:(NIMSession *)session
{
    //: NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    //: if (session.sessionType != NIMSessionTypeP2P ||
    if (session.sessionType != NIMSessionTypeP2P ||
        //: [session.sessionId isEqualToString:currentAccount])
        [session.sessionId isEqualToString:currentAccount])
    {
        //: return;
        return;
    }

    //: NSDate *now = [NSDate date];
    NSDate *now = [NSDate date];
    //: if (_lastTime == nil ||
    if (_lastTime == nil ||
        //: [now timeIntervalSinceDate:_lastTime] > 3)
        [now timeIntervalSinceDate:_lastTime] > 3)
    {
        //: _lastTime = now;
        _lastTime = now;

        //: NSDictionary *dict = @{@"id" : @((1))};
        NSDictionary *dict = @{@"id" : @((1))};
        //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
        NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
        //: NSString *content = [[NSString alloc] initWithData:data
        NSString *content = [[NSString alloc] initWithData:data
                                                  //: encoding:NSUTF8StringEncoding];
                                                  encoding:NSUTF8StringEncoding];

        //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        //: notification.sendToOnlineUsersOnly = YES;
        notification.sendToOnlineUsersOnly = YES;
        //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
        notification.env = [[SettingImage name] module];
        //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        //: setting.apnsEnabled = NO;
        setting.apnsEnabled = NO;
        //: notification.setting = setting;
        notification.setting = setting;
        //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
        [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                     //: toSession:session
                                                                     toSession:session
                                                                    //: completion:nil];
                                                                    completion:nil];
    }

}


//: - (void)sendCallNotification:(NIMTeam *)team
- (void)item:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    end:(NSString *)roomName
                     //: members:(NSArray *)members
                     option:(NSArray *)members
{
    //: if (!team || !team.teamId || !members) {
    if (!team || !team.teamId || !members) {
        //: return;
        return;
    }

    //: NSString *teamId = team.teamId;
    NSString *teamId = team.teamId;
    //: NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    //: if (team.type == NIMTeamTypeSuper) {
    if (team.type == NIMTeamTypeSuper) {
        //: teamType = NIMKitTeamTypeSuper;
        teamType = NIMKitTeamTypeSuper;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((3)),
                           @"id" : @((3)),
                           //: @"members" : members,
                           [TwentyFourHourPeriodData sharedInstance].mainPathIdent : members,
                           //: @"teamId" : teamId,
                           [TwentyFourHourPeriodData sharedInstance].mainViewKey : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           [TwentyFourHourPeriodData sharedInstance].k_colorFormat : team.teamName? team.teamName : [TwentyFourHourPeriodData sharedInstance].mainBlueUrl,
                           //: @"room" : roomName,
                           [TwentyFourHourPeriodData sharedInstance].k_collectionIdent : roomName,
                           //: @"teamType" : @(teamType)
                           [TwentyFourHourPeriodData sharedInstance].kCropText : @(teamType)
                          //: };
                          };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = [[NSString alloc] initWithData:data
    NSString *content = [[NSString alloc] initWithData:data
                                           //: encoding:NSUTF8StringEncoding];
                                           encoding:NSUTF8StringEncoding];
    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[SettingImage name] module];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: FFFKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    DataTeam *me = [[Secret highlight] infoAndStraddleOption:[NIMSDK sharedSDK].loginManager.currentAccount item:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".ntes_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,[TwentyFourHourPeriodData sharedInstance].userButtonMsg.ting];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;


    //: for (NSString *userId in members) {
    for (NSString *userId in members) {
        //: if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        {
            //: continue;
            continue;
        }
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
        [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
    }

}




//: @end
@end