
#import <Foundation/Foundation.h>

@interface AcknowledgeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AcknowledgeData

+ (instancetype)sharedInstance {
    static AcknowledgeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AcknowledgeDataToCache:(Byte *)data {
    int empireQuip = data[0];
    Byte relaxEpidemic = data[1];
    int legislationWing = data[2];
    for (int i = legislationWing; i < legislationWing + empireQuip; i++) {
        int value = data[i] + relaxEpidemic;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[legislationWing + empireQuip] = 0;
    return data + legislationWing;
}

- (NSString *)StringFromAcknowledgeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AcknowledgeDataToCache:data]];
}

//: select_contact
- (NSString *)user_heroSlatButtonName {
    /* static */ NSString *user_heroSlatButtonName = nil;
    if (!user_heroSlatButtonName) {
        Byte value[] = {14, 59, 3, 56, 42, 49, 42, 40, 57, 36, 40, 52, 51, 57, 38, 40, 57, 218};
        user_heroSlatButtonName = [self StringFromAcknowledgeData:value];
    }
    return user_heroSlatButtonName;
}

//: 选择群组
- (NSString *)mVenueKey {
    /* static */ NSString *mVenueKey = nil;
    if (!mVenueKey) {
        Byte value[] = {12, 9, 7, 46, 207, 127, 83, 224, 119, 128, 221, 130, 160, 222, 181, 155, 222, 178, 123, 116};
        mVenueKey = [self StringFromAcknowledgeData:value];
    }
    return mVenueKey;
}

//: 选择超限
- (NSString *)showInfoContent {
    /* static */ NSString *showInfoContent = nil;
    if (!showInfoContent) {
        Byte value[] = {12, 13, 6, 91, 178, 114, 220, 115, 124, 217, 126, 156, 219, 169, 120, 220, 140, 131, 4};
        showInfoContent = [self StringFromAcknowledgeData:value];
    }
    return showInfoContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadConfig.m
// Secret
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushContactSelectConfig.h"
#import "ReadConfig.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "SizeSoulData.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "PushKitInfo.h"
#import "DataTeam.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation CheckedConfig : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)muti{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)holderColor{
    //: return [PushLanguageManager getTextWithKey:@"select_contact"];
    return [BackgroundRandomAttribute content:[[AcknowledgeData sharedInstance] user_heroSlatButtonName]];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)secretBy{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)minBetween{
    //: return @"选择超限".nim_localized;
    return [[AcknowledgeData sharedInstance] showInfoContent].minIn;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)nimShould:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    SizeSoulData *groupedData = [[SizeSoulData alloc] init];
    //: NSMutableArray *myFriendArray = @[].mutableCopy;
    NSMutableArray *myFriendArray = @[].mutableCopy;
    //: NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    //: NSMutableArray *members = @[].mutableCopy;
    NSMutableArray *members = @[].mutableCopy;

    //: for (NIMUser *user in data) {
    for (NIMUser *user in data) {
        //: [myFriendArray addObject:user.userId];
        [myFriendArray addObject:user.userId];
    }
    //: NSArray *friend_uids = [self filterData:myFriendArray];
    NSArray *friend_uids = [self change:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        UsufructuaryUser *user = [[UsufructuaryUser alloc] initWithCenter:uid];
        //: [members addObject:user];
        [members addObject:user];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)change:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(communicationContent)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (PushKitInfo *)getInfoById:(NSString *)selectedId {
- (DataTeam *)perspective:(NSString *)selectedId {
    //: PushKitInfo *info = nil;
    DataTeam *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[Secret highlight] infoAndStraddleOption:selectedId item:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation OfTo : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)secretBy{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)title{
- (NSString *)holderColor{
    //: return [PushLanguageManager getTextWithKey:@"select_contact"];
    return [BackgroundRandomAttribute content:[[AcknowledgeData sharedInstance] user_heroSlatButtonName]];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)minBetween{
    //: return @"选择超限".nim_localized;
    return [[AcknowledgeData sharedInstance] showInfoContent].minIn;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)along:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            color:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            than:(NIMContactDataProviderHandler)handler {
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: NSMutableArray <NSString *>*uids = [NSMutableArray array];
    NSMutableArray <NSString *>*uids = [NSMutableArray array];
    //: if (teamType == NIMKitTeamTypeNomal) { 
    if (teamType == NIMKitTeamTypeNomal) { //普通群组
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf tingValue:teamID
                                      //: uids:uids
                                      glycerolize:uids
                                   //: handler:handler];
                                   key:handler];
            }
        //: }];
        }];
    //: } else if (teamType == NIMKitTeamTypeSuper) { 
    } else if (teamType == NIMKitTeamTypeSuper) { //超大群组
        //: NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf tingValue:teamID
                                      //: uids:uids
                                      glycerolize:uids
                                   //: handler:handler];
                                   key:handler];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: if (handler) {
        if (handler) {
            //: handler(nil, nil);
            handler(nil, nil);
        }
    }
}

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)tingValue:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    glycerolize:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 key:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    SizeSoulData *groupedData = [[SizeSoulData alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self label:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        CoverMember *user = [[CoverMember alloc] initWithRuddy:uid
                                                                       //: session:_session];
                                                                       sendBy:_session];
        //: [membersArr addObject:user];
        [membersArr addObject:user];
    }
    //: groupedData.members = membersArr;
    groupedData.members = membersArr;
    //: if (membersArr) {
    if (membersArr) {
        //: [membersArr removeAllObjects];
        [membersArr removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)nimShould:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self along:_teamId
                              //: teamType:_teamType
                              color:_teamType
                               //: handler:handler];
                               than:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)label:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(communicationContent)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (PushKitInfo *)getInfoById:(NSString *)selectedId {
- (DataTeam *)perspective:(NSString *)selectedId {
    //: PushKitInfo *info = nil;
    DataTeam *info = nil;
    //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[Secret highlight] infoAndStraddleOption:selectedId item:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation MessageConfig : NSObject

//: - (NSString *)title{
- (NSString *)holderColor{
    //: return @"选择群组".nim_localized;
    return [[AcknowledgeData sharedInstance] mVenueKey].minIn;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)secretBy{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)minBetween{
    //: return @"选择超限".nim_localized;
    return [[AcknowledgeData sharedInstance] showInfoContent].minIn;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)view:(NIMKitTeamType)teamType {
    //: NSMutableArray *uids = [NSMutableArray array];
    NSMutableArray *uids = [NSMutableArray array];
    //: NSMutableArray *team_data = nil;
    NSMutableArray *team_data = nil;
    //: if (teamType == NIMKitTeamTypeNomal) {
    if (teamType == NIMKitTeamTypeNomal) {
        //: team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
    //: } else if (teamType == NIMKitTeamTypeSuper) {
    } else if (teamType == NIMKitTeamTypeSuper) {
        //: team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
    }

    //: for (NIMTeam *team in team_data) {
    for (NIMTeam *team in team_data) {
        //: if (team.teamId) {
        if (team.teamId) {
            //: [uids addObject:team.teamId];
            [uids addObject:team.teamId];
        }
    }
    //: return [self filterData:uids];
    return [self child:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)nimShould:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self view:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    SizeSoulData *groupedData = [[SizeSoulData alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <ToolTextEnablely>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        MasterTeam *team = [[MasterTeam alloc] initWithType:tid childLink:_teamType];
        //: [members addObject:team];
        [members addObject:team];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)child:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(communicationContent)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (PushKitInfo *)getInfoById:(NSString *)selectedId {
- (DataTeam *)perspective:(NSString *)selectedId {
    //: PushKitInfo *info = nil;
    DataTeam *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[Secret highlight] show:selectedId corner:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[Secret highlight] of:selectedId enableence_strong:nil];
    }
    //: return info;
    return info;
}

//: @end
@end
