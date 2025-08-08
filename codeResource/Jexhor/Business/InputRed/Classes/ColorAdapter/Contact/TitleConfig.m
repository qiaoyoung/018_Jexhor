
#import <Foundation/Foundation.h>

@interface PaintRecallData : NSObject

+ (instancetype)sharedInstance;

//: 选择超限
@property (nonatomic, copy) NSString *m_twinShowData;

//: select_contact
@property (nonatomic, copy) NSString *showNurseReadTitle;

//: 选择群组
@property (nonatomic, copy) NSString *appUniteData;

@end

@implementation PaintRecallData

+ (instancetype)sharedInstance {
    static PaintRecallData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PaintRecallDataToCache:(Byte *)data {
    int fuss = data[0];
    Byte deployGoo = data[1];
    int valueGross = data[2];
    for (int i = valueGross; i < valueGross + fuss; i++) {
        int value = data[i] + deployGoo;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[valueGross + fuss] = 0;
    return data + valueGross;
}

- (NSString *)StringFromPaintRecallData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PaintRecallDataToCache:data]];
}

//: select_contact
- (NSString *)showNurseReadTitle {
    if (!_showNurseReadTitle) {
        Byte value[] = {14, 59, 10, 83, 222, 40, 33, 181, 147, 52, 56, 42, 49, 42, 40, 57, 36, 40, 52, 51, 57, 38, 40, 57, 238};
        _showNurseReadTitle = [self StringFromPaintRecallData:value];
    }
    return _showNurseReadTitle;
}

//: 选择超限
- (NSString *)m_twinShowData {
    if (!_m_twinShowData) {
        Byte value[] = {12, 53, 4, 43, 180, 75, 84, 177, 86, 116, 179, 129, 80, 180, 100, 91, 186};
        _m_twinShowData = [self StringFromPaintRecallData:value];
    }
    return _m_twinShowData;
}

//: 选择群组
- (NSString *)appUniteData {
    if (!_appUniteData) {
        Byte value[] = {12, 10, 8, 111, 33, 101, 251, 197, 223, 118, 127, 220, 129, 159, 221, 180, 154, 221, 177, 122, 188};
        _appUniteData = [self StringFromPaintRecallData:value];
    }
    return _appUniteData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleConfig.m
// MessageContent
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkContactSelectConfig.h"
#import "TitleConfig.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "SessionCount.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "WorkKitInfo.h"
#import "ConfirmationInfo.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation RecentMessage : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)elect{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)color{
    //: return [WorkLanguageManager getTextWithKey:@"select_contact"];
    return [InputRed preserve:[PaintRecallData sharedInstance].showNurseReadTitle];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)nameData{
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
- (NSString *)rangeLength{
    //: return @"选择超限".nim_localized;
    return [PaintRecallData sharedInstance].m_twinShowData.titleBy;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)anySizeData:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    SessionCount *groupedData = [[SessionCount alloc] init];
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
    NSArray *friend_uids = [self filterOut:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        RedUser *user = [[RedUser alloc] initWithTitle:uid];
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
- (NSArray *)filterOut:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(doingIds)]) {
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

//: - (WorkKitInfo *)getInfoById:(NSString *)selectedId {
- (ConfirmationInfo *)image:(NSString *)selectedId {
    //: WorkKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[MessageContent secretResolution] recent:selectedId blue:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation StyleConfig : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)nameData{
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
- (NSString *)color{
    //: return [WorkLanguageManager getTextWithKey:@"select_contact"];
    return [InputRed preserve:[PaintRecallData sharedInstance].showNurseReadTitle];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)rangeLength{
    //: return @"选择超限".nim_localized;
    return [PaintRecallData sharedInstance].m_twinShowData.titleBy;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)flyingSquad:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            version:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            need:(NIMContactDataProviderHandler)handler {
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
                [weakSelf message:teamID
                                      //: uids:uids
                                      state:uids
                                   //: handler:handler];
                                   changeProviderHandler:handler];
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
                [weakSelf message:teamID
                                      //: uids:uids
                                      state:uids
                                   //: handler:handler];
                                   changeProviderHandler:handler];
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
- (void)message:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    state:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 changeProviderHandler:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    SessionCount *groupedData = [[SessionCount alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self nameNotice:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        LineMember *user = [[LineMember alloc] initWithTeamRead:uid
                                                                       //: session:_session];
                                                                       groupDiscussion:_session];
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
- (void)anySizeData:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self flyingSquad:_teamId
                              //: teamType:_teamType
                              version:_teamType
                               //: handler:handler];
                               need:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)nameNotice:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(doingIds)]) {
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

//: - (WorkKitInfo *)getInfoById:(NSString *)selectedId {
- (ConfirmationInfo *)image:(NSString *)selectedId {
    //: WorkKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
    RangeOption *option = [[RangeOption alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[MessageContent secretResolution] recent:selectedId blue:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation MagnitudeRecord : NSObject

//: - (NSString *)title{
- (NSString *)color{
    //: return @"选择群组".nim_localized;
    return [PaintRecallData sharedInstance].appUniteData.titleBy;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)nameData{
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
- (NSString *)rangeLength{
    //: return @"选择超限".nim_localized;
    return [PaintRecallData sharedInstance].m_twinShowData.titleBy;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)add:(NIMKitTeamType)teamType {
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
    return [self send:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)anySizeData:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self add:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    SessionCount *groupedData = [[SessionCount alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <MemberProtocol>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        SendSame *team = [[SendSame alloc] initWithDisable:tid house:_teamType];
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
- (NSArray *)send:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(doingIds)]) {
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

//: - (WorkKitInfo *)getInfoById:(NSString *)selectedId {
- (ConfirmationInfo *)image:(NSString *)selectedId {
    //: WorkKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[MessageContent secretResolution] info:selectedId comment:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[MessageContent secretResolution] item:selectedId pit:nil];
    }
    //: return info;
    return info;
}

//: @end
@end
