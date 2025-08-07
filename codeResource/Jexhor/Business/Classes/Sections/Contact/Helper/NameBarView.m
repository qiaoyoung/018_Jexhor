
#import <Foundation/Foundation.h>

@interface ThanData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ThanData

+ (instancetype)sharedInstance {
    static ThanData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ThanDataToCache:(Byte *)data {
    int shouldBubble = data[0];
    int showDrop = data[1];
    for (int i = 0; i < shouldBubble / 2; i++) {
        int begin = showDrop + i;
        int end = showDrop + shouldBubble - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[showDrop + shouldBubble] = 0;
    return data + showDrop;
}

- (NSString *)StringFromThanData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ThanDataToCache:data]];
}  

//: members
- (NSString *)showPlaceName {
    /* static */ NSString *showPlaceName = nil;
    if (!showPlaceName) {
        Byte value[] = {7, 12, 83, 13, 118, 44, 57, 163, 99, 24, 66, 218, 115, 114, 101, 98, 109, 101, 109, 16};
        showPlaceName = [self StringFromThanData:value];
    }
    return showPlaceName;
}

//: teamId
- (NSString *)appItemText {
    /* static */ NSString *appItemText = nil;
    if (!appItemText) {
        Byte value[] = {6, 3, 84, 100, 73, 109, 97, 101, 116, 131};
        appItemText = [self StringFromThanData:value];
    }
    return appItemText;
}

//: 正在呼叫您
- (NSString *)userCommentName {
    /* static */ NSString *userCommentName = nil;
    if (!userCommentName) {
        Byte value[] = {15, 5, 10, 185, 45, 168, 130, 230, 171, 143, 229, 188, 145, 229, 168, 156, 229, 163, 173, 230, 62};
        userCommentName = [self StringFromThanData:value];
    }
    return userCommentName;
}

//: content
- (NSString *)m_needData {
    /* static */ NSString *m_needData = nil;
    if (!m_needData) {
        Byte value[] = {7, 3, 69, 116, 110, 101, 116, 110, 111, 99, 222};
        m_needData = [self StringFromThanData:value];
    }
    return m_needData;
}

//: teamType
- (NSString *)user_imageButtonTitle {
    /* static */ NSString *user_imageButtonTitle = nil;
    if (!user_imageButtonTitle) {
        Byte value[] = {8, 3, 164, 101, 112, 121, 84, 109, 97, 101, 116, 119};
        user_imageButtonTitle = [self StringFromThanData:value];
    }
    return user_imageButtonTitle;
}

//: teamName
- (NSString *)m_onAtText {
    /* static */ NSString *m_onAtText = nil;
    if (!m_onAtText) {
        Byte value[] = {8, 5, 190, 23, 53, 101, 109, 97, 78, 109, 97, 101, 116, 124};
        m_onAtText = [self StringFromThanData:value];
    }
    return m_onAtText;
}

//: Group
- (NSString *)user_endContent {
    /* static */ NSString *user_endContent = nil;
    if (!user_endContent) {
        Byte value[] = {5, 6, 164, 63, 56, 194, 112, 117, 111, 114, 71, 114};
        user_endContent = [self StringFromThanData:value];
    }
    return user_endContent;
}

//: room
- (NSString *)dreamMessageData {
    /* static */ NSString *dreamMessageData = nil;
    if (!dreamMessageData) {
        Byte value[] = {4, 5, 38, 246, 242, 109, 111, 111, 114, 56};
        dreamMessageData = [self StringFromThanData:value];
    }
    return dreamMessageData;
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
#import "NameBarView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"

//: @interface NTESCustomSysNotificationSender ()
@interface NameBarView ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation NTESCustomSysNotificationSender
@implementation NameBarView

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)target:(NSString *)content blowThroughSession:(NIMSession *)session{
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
                           [[ThanData sharedInstance] m_needData] : content,
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
    notification.env = [[ImageTing configRefresh] send];
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
- (void)project:(NIMSession *)session
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
        notification.env = [[ImageTing configRefresh] send];
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
- (void)airFilled:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    thoroughfareAppellation:(NSString *)roomName
                     //: members:(NSArray *)members
                     clean:(NSArray *)members
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
                           [[ThanData sharedInstance] showPlaceName] : members,
                           //: @"teamId" : teamId,
                           [[ThanData sharedInstance] appItemText] : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           [[ThanData sharedInstance] m_onAtText] : team.teamName? team.teamName : [[ThanData sharedInstance] user_endContent],
                           //: @"room" : roomName,
                           [[ThanData sharedInstance] dreamMessageData] : roomName,
                           //: @"teamType" : @(teamType)
                           [[ThanData sharedInstance] user_imageButtonTitle] : @(teamType)
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
    notification.env = [[ImageTing configRefresh] send];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    RangeOption *option = [[RangeOption alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: FFFKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    ConfirmationInfo *me = [[MessageContent secretResolution] recent:[NIMSDK sharedSDK].loginManager.currentAccount blue:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".ntes_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,[[ThanData sharedInstance] userCommentName].shouldLocalized];
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