
#import <Foundation/Foundation.h>

@interface PrisonShowData : NSObject

@end

@implementation PrisonShowData

+ (Byte *)PrisonShowDataToCache:(Byte *)data {
    int supping = data[0];
    Byte villageTerm = data[1];
    int history = data[2];
    for (int i = history; i < history + supping; i++) {
        int value = data[i] + villageTerm;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[history + supping] = 0;
    return data + history;
}

+ (NSString *)StringFromPrisonShowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PrisonShowDataToCache:data]];
}

//: group_info_activity_op_failed
+ (NSString *)app_cropUrl {
    /* static */ NSString *app_cropUrl = nil;
    if (!app_cropUrl) {
        Byte value[] = {29, 5, 5, 112, 221, 98, 109, 106, 112, 107, 90, 100, 105, 97, 106, 90, 92, 94, 111, 100, 113, 100, 111, 116, 90, 106, 107, 90, 97, 92, 100, 103, 96, 95, 128};
        app_cropUrl = [self StringFromPrisonShowData:value];
    }
    return app_cropUrl;
}

//: 邀请成功，等待验证
+ (NSString *)main_adviserName {
    /* static */ NSString *main_adviserName = nil;
    if (!main_adviserName) {
        Byte value[] = {27, 35, 4, 186, 198, 95, 93, 197, 140, 148, 195, 101, 109, 194, 103, 124, 204, 153, 105, 196, 138, 102, 194, 155, 98, 198, 135, 105, 197, 140, 94, 247};
        main_adviserName = [self StringFromPrisonShowData:value];
    }
    return main_adviserName;
}

//: 邀请成功
+ (NSString *)main_directKey {
    /* static */ NSString *main_directKey = nil;
    if (!main_directKey) {
        Byte value[] = {12, 59, 12, 223, 75, 60, 131, 192, 243, 172, 167, 221, 174, 71, 69, 173, 116, 124, 171, 77, 85, 170, 79, 100, 137};
        main_directKey = [self StringFromPrisonShowData:value];
    }
    return main_directKey;
}

//: user_profile_avtivity_user_info_update_failed
+ (NSString *)notiVersionPath {
    /* static */ NSString *notiVersionPath = nil;
    if (!notiVersionPath) {
        Byte value[] = {45, 54, 10, 154, 51, 171, 198, 75, 164, 158, 63, 61, 47, 60, 41, 58, 60, 57, 48, 51, 54, 47, 41, 43, 64, 62, 51, 64, 51, 62, 67, 41, 63, 61, 47, 60, 41, 51, 56, 48, 57, 41, 63, 58, 46, 43, 62, 47, 41, 48, 43, 51, 54, 47, 46, 232};
        notiVersionPath = [self StringFromPrisonShowData:value];
    }
    return notiVersionPath;
}

//: 超大群未开放该功能
+ (NSString *)dream_dateUrl {
    /* static */ NSString *dream_dateUrl = nil;
    if (!dream_dateUrl) {
        Byte value[] = {27, 19, 7, 248, 151, 143, 32, 213, 163, 114, 210, 145, 148, 212, 171, 145, 211, 137, 151, 210, 169, 109, 211, 129, 171, 213, 156, 146, 210, 119, 140, 213, 112, 170, 167};
        dream_dateUrl = [self StringFromPrisonShowData:value];
    }
    return dream_dateUrl;
}

//: 邀请失败
+ (NSString *)show_constantId {
    /* static */ NSString *show_constantId = nil;
    if (!show_constantId) {
        Byte value[] = {12, 71, 3, 162, 59, 57, 161, 104, 112, 158, 93, 106, 161, 109, 94, 31};
        show_constantId = [self StringFromPrisonShowData:value];
    }
    return show_constantId;
}

//: postscript
+ (NSString *)k_viewFormat {
    /* static */ NSString *k_viewFormat = nil;
    if (!k_viewFormat) {
        Byte value[] = {10, 89, 3, 23, 22, 26, 27, 26, 10, 25, 16, 23, 27, 245};
        k_viewFormat = [self StringFromPrisonShowData:value];
    }
    return k_viewFormat;
}

//: attach
+ (NSString *)mainBrownStr {
    /* static */ NSString *mainBrownStr = nil;
    if (!mainBrownStr) {
        Byte value[] = {6, 83, 8, 240, 49, 60, 80, 190, 14, 33, 33, 14, 16, 21, 30};
        mainBrownStr = [self StringFromPrisonShowData:value];
    }
    return mainBrownStr;
}

//: modify_activity_modify_success
+ (NSString *)app_moralPath {
    /* static */ NSString *app_moralPath = nil;
    if (!app_moralPath) {
        Byte value[] = {30, 56, 6, 113, 228, 72, 53, 55, 44, 49, 46, 65, 39, 41, 43, 60, 49, 62, 49, 60, 65, 39, 53, 55, 44, 49, 46, 65, 39, 59, 61, 43, 43, 45, 59, 59, 182};
        app_moralPath = [self StringFromPrisonShowData:value];
    }
    return app_moralPath;
}

//: 你已经不在群里
+ (NSString *)m_financialData {
    /* static */ NSString *m_financialData = nil;
    if (!m_financialData) {
        Byte value[] = {21, 79, 9, 181, 242, 56, 102, 182, 3, 149, 110, 81, 150, 104, 99, 152, 108, 64, 149, 105, 62, 150, 77, 89, 152, 111, 85, 154, 56, 61, 134};
        m_financialData = [self StringFromPrisonShowData:value];
    }
    return m_financialData;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)appRichId {
    /* static */ NSString *appRichId = nil;
    if (!appRichId) {
        Byte value[] = {39, 64, 4, 226, 53, 51, 37, 50, 31, 41, 46, 38, 47, 31, 33, 54, 52, 41, 54, 41, 52, 57, 31, 53, 48, 44, 47, 33, 36, 31, 33, 54, 33, 52, 33, 50, 31, 38, 33, 41, 44, 37, 36, 77};
        appRichId = [self StringFromPrisonShowData:value];
    }
    return appRichId;
}

//: nimkit.teamlist.data
+ (NSString *)mAllotVerdictStr {
    /* static */ NSString *mAllotVerdictStr = nil;
    if (!mAllotVerdictStr) {
        Byte value[] = {20, 48, 13, 103, 105, 122, 87, 240, 120, 165, 142, 60, 62, 62, 57, 61, 59, 57, 68, 254, 68, 53, 49, 61, 60, 57, 67, 68, 254, 52, 49, 68, 49, 228};
        mAllotVerdictStr = [self StringFromPrisonShowData:value];
    }
    return mAllotVerdictStr;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainRead.m
// Secret
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushTeamListDataManager.h"
#import "MainRead.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: NSString *const kNIMTeamListDataTeamInfoUpdate = @"kNIMTeamListDataTeamInfoUpdate";
NSString *const noti_dataMessage = @"kNIMTeamListDataTeamInfoUpdate";
//: NSString *const kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
NSString *const userVideoBarFormat = @"kNIMTeamListDataTeamMembersChanged";

//: @interface PushTeamListDataManager ()<NIMTeamManagerDelegate>
@interface MainRead ()<NIMTeamManagerDelegate>

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, strong) NSMutableArray <PushTeamCardMemberItem *> *members;
@property (nonatomic, strong) NSMutableArray <CardSession *> *members;

//: @property (nonatomic, strong) NIMTeamMember *myTeamInfo;
@property (nonatomic, strong) NIMTeamMember *myTeamInfo;

//: @property (nonatomic, strong) PushTeamCardMemberItem *myCard;
@property (nonatomic, strong) CardSession *myCard;

//: @end
@end

//: @implementation PushTeamListDataManager
@implementation MainRead

//: - (void)dealloc {
- (void)dealloc {
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }
}

//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session {
- (instancetype)initWithBusinessExecutiveSpecialSession:(NIMTeam *)team start:(NIMSession *)session {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _team = team;
        _team = team;
        //: _session = session;
        _session = session;
        //: if (team.type == NIMTeamTypeSuper) {
        if (team.type == NIMTeamTypeSuper) {
            //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
            [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
            [[NIMSDK sharedSDK].teamManager addDelegate:self];
        }
        //: [self reloadMyTeamInfo];
        [self from];
    }
    //: return self;
    return self;
}

//: - (NSMutableArray *)memberIds {
- (NSMutableArray *)memberIds {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [_members enumerateObjectsUsingBlock:^(PushTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(CardSession * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (obj.userId) {
        if (obj.userId) {
            //: [ret addObject:obj.userId];
            [ret addObject:obj.userId];
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: - (PushTeamCardMemberItem *)memberWithUserId:(NSString *)userId {
- (CardSession *)inputTo:(NSString *)userId {
    //: __block PushTeamCardMemberItem *ret = nil;
    __block CardSession *ret = nil;
    //: [_members enumerateObjectsUsingBlock:^(PushTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(CardSession * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: ret = obj;
            ret = obj;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: #pragma mark - Function
#pragma mark - Function
//: - (NSString *)myAccount {
- (NSString *)myAccount {
    //: return [[NIMSDK sharedSDK].loginManager currentAccount];
    return [[NIMSDK sharedSDK].loginManager currentAccount];
}

//: - (void)reloadMyTeamInfo {
- (void)from {
    //: NSString *userId = [self myAccount];
    NSString *userId = [self myAccount];
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: if (self.team.type == NIMTeamTypeSuper) {
    if (self.team.type == NIMTeamTypeSuper) {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                   //: inTeam:teamId];
                                                                   inTeam:teamId];
    //: } else {
    } else {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                          //: inTeam:teamId];
                                                          inTeam:teamId];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addMemberItem:(PushTeamCardMemberItem *)item {
- (void)constituent:(CardSession *)item {
    //: if (!item) {
    if (!item) {
        //: return;
        return;
    }
    //: switch (item.userType) {
    switch (item.userType) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
        {
            //: [_members insertObject:item atIndex:0];
            [_members insertObject:item atIndex:0];
            //: break;
            break;
        }
        //: default:
        default:
            //: [_members addObject:item];
            [_members addObject:item];
            //: break;
            break;
    }
}

//: - (void)removeMemberItem:(NSString *)userId {
- (void)alongShow:(NSString *)userId {
    //: for (PushTeamCardMemberItem *obj in _members) {
    for (CardSession *obj in _members) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: [_members removeObject:obj];
            [_members removeObject:obj];
            //: break;
            break;
        }
    }
}

//: - (void)addMembers:(NSArray <NIMTeamMember *>*)members {
- (void)menuMembers:(NSArray <NIMTeamMember *>*)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: for (NIMTeamMember *member in members) {
    for (NIMTeamMember *member in members) {
        //: PushTeamCardMemberItem *item = [[PushTeamCardMemberItem alloc] initWithMember:member
        CardSession *item = [[CardSession alloc] initWith:member
                                                                           //: teamType:_team.type];
                                                                           kibbutznik:_team.type];

        //: [self addMemberItem:item];
        [self constituent:item];
    }
}

//: - (void)removeMembers:(NSArray <NSString *> *)userIds {
- (void)debone:(NSArray <NSString *> *)userIds {
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: [self removeMemberItem:userId];
        [self alongShow:userId];
    }
}

//: - (NIMTeamMember*)teamInfo:(NSString*)uid{
- (NIMTeamMember*)teamTing:(NSString*)uid{
    //: for (PushTeamCardMemberItem *member in _members) {
    for (CardSession *member in _members) {
        //: if ([member.userId isEqualToString:uid]) {
        if ([member.userId isEqualToString:uid]) {
            //: return member.member;
            return member.member;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
- (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
    //: _myTeamInfo = myTeamInfo;
    _myTeamInfo = myTeamInfo;
    //: _myCard = [[PushTeamCardMemberItem alloc] initWithMember:myTeamInfo
    _myCard = [[CardSession alloc] initWith:myTeamInfo
                                                   //: teamType:_team.type];
                                                   kibbutznik:_team.type];
}


//: - (void)updateMembersWithOption:(PushMembersFetchOption *)option
- (void)teamWith:(ReminiscenceSession *)option
                        //: members:(NSArray <NIMTeamMember *> *)members {
                        content:(NSArray <NIMTeamMember *> *)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: if (option.isRefresh) {
    if (option.isRefresh) {
        //: [_members removeAllObjects];
        [_members removeAllObjects];

        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: PushTeamCardMemberItem *item = [[PushTeamCardMemberItem alloc] initWithMember:member
            CardSession *item = [[CardSession alloc] initWith:member
                                                                               //: teamType:_team.type];
                                                                               kibbutznik:_team.type];
            //: [self addMemberItem:item];
            [self constituent:item];
        }
    //: } else {
    } else {
        //: NSInteger start = _members.count - option.offset;
        NSInteger start = _members.count - option.offset;
        //: for (NSInteger i = start; i < members.count; i++) {
        for (NSInteger i = start; i < members.count; i++) {
            //: NIMTeamMember *member = members[i];
            NIMTeamMember *member = members[i];

            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: PushTeamCardMemberItem *item = [[PushTeamCardMemberItem alloc] initWithMember:member
            CardSession *item = [[CardSession alloc] initWith:member
                                                                               //: teamType:_team.type];
                                                                               kibbutznik:_team.type];
            //: [self addMemberItem:item];
            [self constituent:item];
        }
    }
}

//: #pragma mark - Handle
#pragma mark - Handle
//: - (void)handleUnsupport:(NIMTeamListDataBlock)completion {
- (void)voiceView:(NIMTeamListDataBlock)completion {
    //: NSError *error = [NSError errorWithDomain:@"nimkit.teamlist.data"
    NSError *error = [NSError errorWithDomain:[PrisonShowData mAllotVerdictStr]
                                         //: code:0x1000
                                         code:0x1000
                                     //: userInfo:@{NSLocalizedDescriptionKey : @"超大群未开放该功能".nim_localized}];
                                     userInfo:@{NSLocalizedDescriptionKey : [PrisonShowData dream_dateUrl].minIn}];
    //: if (completion) {
    if (completion) {
        //: completion(error, @"超大群未开放该功能".nim_localized);
        completion(error, [PrisonShowData dream_dateUrl].minIn);
    }
}


//: - (void)handleAddUsers:(NSError *)error
- (void)handle:(NSError *)error
              //: memebers:(NSArray<NIMTeamMember *> *)members
              sort:(NSArray<NIMTeamMember *> *)members
            //: completion:(NIMTeamListDataBlock)completion {
            pull:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: if (self.team.type == NIMTeamTypeNormal) { 
        if (self.team.type == NIMTeamTypeNormal) { //高级群需要验证，普通群直接进
            //: [self addMembers:members];
            [self menuMembers:members];
            //: msg = [PushLanguageManager getTextWithKey:@"邀请成功"];
            msg = [BackgroundRandomAttribute content:[PrisonShowData main_directKey]];
        //: } else {
        } else {
            //: if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
            if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
                //: msg = [PushLanguageManager getTextWithKey:@"邀请成功，等待验证"];
                msg = [BackgroundRandomAttribute content:[PrisonShowData main_adviserName]];
            //: } else {
            } else {
                //: [self addMembers:members];
                [self menuMembers:members];
                //: msg = [PushLanguageManager getTextWithKey:@"邀请成功"];
                msg = [BackgroundRandomAttribute content:[PrisonShowData main_directKey]];
            }
        }
    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@ :%zd",[PushLanguageManager getTextWithKey:@"邀请失败"],error.code];
        msg = [NSString stringWithFormat:@"%@ :%zd",[BackgroundRandomAttribute content:[PrisonShowData show_constantId]],error.code];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleKickUsers:(NSArray *)userIds
- (void)ting:(NSArray *)userIds
                  //: error:(NSError *)error
                  streetwise:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             userDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self removeMembers:userIds];
        [self debone:userIds];
    //: } else {
    } else {
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAnnouncement:(NSString *)content
- (void)removeTime:(NSString *)content
                               //: error:(NSError *)error
                               post:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          title:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.announcement = content;
        self.team.announcement = content;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAvatar:(NSString *)urlString
- (void)style:(NSString *)urlString
                         //: error:(NSError *)error
                         title_strong:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion {
                    read:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [PushLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData notiVersionPath]];
    //: } else {
    } else {
        //: self.team.avatarUrl = urlString;
        self.team.avatarUrl = urlString;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamName:(NSString *)name
- (void)value:(NSString *)name
                       //: error:(NSError *)error
                       tableCompletion:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  restoreExist:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.teamName = name;
        self.team.teamName = name;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNick:(NSString *)nick
- (void)file:(NSString *)nick
                       //: error:(NSError *)error
                       essential:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  add:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.myTeamInfo.nickname = nick;
        self.myTeamInfo.nickname = nick;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamIntro:(NSString *)intro
- (void)cut:(NSString *)intro
                        //: error:(NSError *)error
                        doing:(NSError *)error
                   //: completion:(NIMTeamListDataBlock)completion {
                   can:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.intro = intro;
        self.team.intro = intro;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamMute:(NSError *)error
- (void)showCompletion:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  juniorVarsity:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)key:(NIMTeamJoinMode)mode
                           //: error:(NSError *)error
                           icon:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      media:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.joinMode = mode;
        self.team.joinMode = mode;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)afterState:(NIMTeamInviteMode)mode
                             //: error:(NSError *)error
                             disabled:(NSError *)error
                        //: completion:(NIMTeamListDataBlock)completion {
                        mode:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.inviteMode = mode;
        self.team.inviteMode = mode;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: } else {
    } else {
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)straddle:(NIMTeamUpdateInfoMode)mode
                           //: error:(NSError *)error
                           count:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      shirtButton:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.updateInfoMode = mode;
        self.team.updateInfoMode = mode;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: } else {
    } else {
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)removeTing:(NIMTeamBeInviteMode)mode
                               //: error:(NSError *)error
                               moreCompletion:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          comment:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.beInviteMode = mode;
        self.team.beInviteMode = mode;
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNotifyState:(NIMTeamNotifyState)state
- (void)info:(NIMTeamNotifyState)state
                              //: error:(NSError *)error
                              show:(NSError *)error
                         //: completion:(NIMTeamListDataBlock)completion {
                         subError:(NIMTeamListDataBlock)completion {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleAddManagers:(NSArray *)userIds
- (void)managers:(NSArray *)userIds
                    //: error:(NSError *)error
                    cameraCircle:(NSError *)error
               //: completion:(NIMTeamListDataBlock)completion {
               by:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: __block BOOL isChanged = NO;
    __block BOOL isChanged = NO;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(PushTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(CardSession * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeManager;
                    obj.userType = NIMTeamMemberTypeManager;
                    //: isChanged = YES;
                    isChanged = YES;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }

        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}


//: - (void)handleRemoveManagers:(NSArray *)userIds
- (void)should:(NSArray *)userIds
                       //: error:(NSError *)error
                       titleName:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  red:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(PushTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(CardSession * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeNormal;
                    obj.userType = NIMTeamMemberTypeNormal;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleTransferOwner:(NSString *)userId
- (void)teamBy:(NSString *)userId
                      //: leave:(BOOL)leave
                      image:(BOOL)leave
                      //: error:(NSError *)error
                      text:(NSError *)error
                 //: completion:(NIMTeamListDataBlock)completion {
                 worldView:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: NIMTeamMember *memberInfo = [self teamInfo:userId];
        NIMTeamMember *memberInfo = [self teamTing:userId];
        //: memberInfo.type = NIMTeamMemberTypeOwner;
        memberInfo.type = NIMTeamMemberTypeOwner;
        //: if (leave && userId) {
        if (leave && userId) {
            //: [self removeMembers:@[userId]];
            [self debone:@[userId]];
        }
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateUserNick:(NSString *)userId
- (void)comeToGripsPressedGreen:(NSString *)userId
                        //: nick:(NSString *)nick
                        info_strong:(NSString *)nick
                       //: error:(NSError *)error
                       nick_strong:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  itemEnableside:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self.members enumerateObjectsUsingBlock:^(PushTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.members enumerateObjectsUsingBlock:^(CardSession * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([obj.userId isEqualToString:userId]) {
            if ([obj.userId isEqualToString:userId]) {
                //: obj.member.nickname = nick;
                obj.member.nickname = nick;
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpateUserMuteState:(NSError *)error
- (void)land:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      sub:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_moralPath]];
    //: }else{
    }else{
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)input:(NSArray <NIMTeamMember *> *)members
                        //: option:(PushMembersFetchOption *)option
                        text:(ReminiscenceSession *)option
                         //: error:(NSError *)error
                         blue:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion{
                    anyRecent:(NIMTeamListDataBlock)completion{
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self updateMembersWithOption:option members:members];
        [self teamWith:option content:members];
    //: } else if (error.code == NIMRemoteErrorCodeTeamNotMember
    } else if (error.code == NIMRemoteErrorCodeTeamNotMember
               //: || error.code == NIMRemoteErrorCodeNotInTeam) {
               || error.code == NIMRemoteErrorCodeNotInTeam) {
        //: msg = @"你已经不在群里".nim_localized;
        msg = [PrisonShowData m_financialData].minIn;
    //: } else {
    } else {
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchMuteTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)name:(NSArray <NIMTeamMember *> *)members
                             //: error:(NSError *)error
                             tingRecord:(NSError *)error
                        //: completion:(NIMTeamMuteListDataBlock)completion {
                        will:(NIMTeamMuteListDataBlock)completion {
    //: NSMutableArray *items = nil;
    NSMutableArray *items = nil;
    //: if (!error) {
    if (!error) {
        //: items = [NSMutableArray array];
        items = [NSMutableArray array];
        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: PushTeamCardMemberItem *item = [[PushTeamCardMemberItem alloc] initWithMember:member
            CardSession *item = [[CardSession alloc] initWith:member
                                                                               //: teamType:_team.type];
                                                                               kibbutznik:_team.type];
            //: [items addObject:item];
            [items addObject:item];
        }
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, items);
        completion(error, items);
    }
}

//: - (void)handleWithError:(NSError *)error
- (void)quickChange:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             handle:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [BackgroundRandomAttribute content:[PrisonShowData app_cropUrl]];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: #pragma mark - <PushTeamOperation>
#pragma mark - <BeforeImage>
//: - (void)addUsers:(NSArray *)userIds
- (void)complete:(NSArray *)userIds
            //: info:(NSDictionary *)info
            alongTing:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)block {
      net:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *postscript = info[@"postscript"];
    NSString *postscript = info[[PrisonShowData k_viewFormat]];
    //: NSString *attach = info[@"attach"];
    NSString *attach = info[[PrisonShowData mainBrownStr]];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
                                               //: toTeam:teamId
                                               toTeam:teamId
                                           //: postscript:postscript
                                           postscript:postscript
                                               //: attach:attach
                                               attach:attach
                                           //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                           completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf handle:error
                            //: memebers:members
                            sort:members
                          //: completion:block];
                          pull:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addUsers:userIds
        [[NIMSDK sharedSDK].teamManager addUsers:userIds
                                          //: toTeam:teamId
                                          toTeam:teamId
                                      //: postscript:postscript
                                      postscript:postscript
                                          //: attach:attach
                                          attach:attach
                                      //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                      completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf handle:error
                            //: memebers:members
                            sort:members
                          //: completion:block];
                          pull:block];
        //: }];
        }];
    }
}

//: - (void)kickUsers:(NSArray *)userIds
- (void)monthCompletion:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)block {
       recent:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
                                              //: fromTeam:teamId
                                              fromTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself ting:userIds
                             //: error:error
                             streetwise:error
                        //: completion:block];
                        userDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager kickUsers:userIds
        [[NIMSDK sharedSDK].teamManager kickUsers:userIds
                                         //: fromTeam:teamId
                                         fromTeam:teamId
                                       //: completion:^(NSError *error) {
                                       completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself ting:userIds
                             //: error:error
                             streetwise:error
                        //: completion:block];
                        userDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)noPin:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)block {
                    date:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *announcement = content ?: @"";
    NSString *announcement = content ?: @"";
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError * _Nullable error) {
                                                         completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf removeTime:announcement
                                             //: error:error
                                             post:error
                                        //: completion:block];
                                        title:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError * _Nullable error) {
                                                    completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf removeTime:announcement
                                             //: error:error
                                             post:error
                                        //: completion:block];
                                        title:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)distantAdd:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)block {
              app:(NIMTeamListDataBlock)block {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
    [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
        //: if (!error && urlString && wself) {
        if (!error && urlString && wself) {

            //: if (wself.team.type == NIMTeamTypeSuper) {
            if (wself.team.type == NIMTeamTypeSuper) {
                    //: [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                    [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                                                                   //: teamId:wself.team.teamId
                                                                   teamId:wself.team.teamId
                                                               //: completion:^(NSError * _Nullable error) {
                                                               completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself style:urlString title_strong:error read:block];
                //: }];
                }];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                                                          //: teamId:wself.team.teamId
                                                          teamId:wself.team.teamId
                                                      //: completion:^(NSError * _Nullable error) {
                                                      completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself style:urlString title_strong:error read:block];
                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (block) {
            if (block) {
                //: block(error, [PushLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]);
                block(error, [BackgroundRandomAttribute content:[PrisonShowData appRichId]]);
            }
        }
    //: }];
    }];
}

//: - (void)updateTeamName:(NSString *)name
- (void)reloadInfoFrom:(NSString *)name
            //: completion:(NIMTeamListDataBlock)block {
            should:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
        [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
                                                     //: teamId:teamId
                                                     teamId:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf value:name
                                     //: error:error
                                     tableCompletion:error
                                //: completion:block];
                                restoreExist:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamName:name
        [[NIMSDK sharedSDK].teamManager updateTeamName:name
                                                //: teamId:teamId
                                                teamId:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf value:name
                                     //: error:error
                                     tableCompletion:error
                                //: completion:block];
                                restoreExist:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNick:(NSString *)nick
- (void)checked:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            everyFile:(NIMTeamListDataBlock)block {
    //: NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf file:nick
                                     //: error:error
                                     essential:error
                                //: completion:block];
                                add:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf file:nick
                                     //: error:error
                                     essential:error
                                //: completion:block];
                                add:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamIntro:(NSString *)intro
- (void)size:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)block {
             labelOf:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf cut:intro
                                      //: error:error
                                      doing:error
                                 //: completion:block];
                                 can:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
                                                 //: teamId:teamId
                                                 teamId:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf cut:intro
                                      //: error:error
                                      doing:error
                                 //: completion:block];
                                 can:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamMute:(BOOL)mute
- (void)modifyImage:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)block {
            cameraShould:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: inTeam:teamId
                                                      inTeam:teamId
                                                  //: completion:^(NSError * _Nullable error) {
                                                  completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf showCompletion:error
                                //: completion:block];
                                juniorVarsity:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf showCompletion:error
                                //: completion:block];
                                juniorVarsity:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)radiogram:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                present:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
                                                         //: teamId:teamId
                                                         teamId:teamId
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf key:mode
                                         //: error:error
                                         icon:error
                                    //: completion:block];
                                    media:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
                                                    //: teamId:teamId
                                                    teamId:teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf key:mode
                                         //: error:error
                                         icon:error
                                    //: completion:block];
                                    media:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)reload:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)block {
                  putUp:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self voiceView:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInviteMode:mode
            [weakSelf afterState:mode
                                           //: error:error
                                           disabled:error
                                      //: completion:block];
                                      mode:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)color:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                empty:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self voiceView:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
                                                          //: teamId:teamId
                                                          teamId:teamId
                                                      //: completion:^(NSError *error) {
                                                      completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInfoMode:mode
            [weakSelf straddle:mode
                                         //: error:error
                                         count:error
                                    //: completion:block];
                                    shirtButton:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)show:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)block {
                    message:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf removeTing:mode
                                             //: error:error
                                             moreCompletion:error
                                        //: completion:block];
                                        comment:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf removeTing:mode
                                             //: error:error
                                             moreCompletion:error
                                        //: completion:block];
                                        comment:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)to:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)block {
                   enable:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
        [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf info:state
                                            //: error:error
                                            show:error
                                       //: completion:block];
                                       subError:block];
         //: }];
         }];
    //: } else {
    } else {
        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf info:state
                                            //: error:error
                                            show:error
                                       //: completion:block];
                                       subError:block];
         //: }];
         }];
    }
}

//: - (void)addManagers:(NSArray *)userIds
- (void)will:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)block {
         scaleDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf managers:userIds
                                  //: error:error
                                  cameraCircle:error
                             //: completion:block];
                             by:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
                                                    //: users:userIds
                                                    users:userIds
                                               //: completion:^(NSError *error) {
                                               completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf managers:userIds
                                  //: error:error
                                  cameraCircle:error
                             //: completion:block];
                             by:block];
        //: }];
        }];
    }
}

//: - (void)removeManagers:(NSArray *)userIds
- (void)unitBackground:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)block {
            beDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
                                                              //: users:userIds
                                                              users:userIds
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf should:userIds
                                     //: error:error
                                     titleName:error
                                //: completion:block];
                                red:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf should:userIds
                                     //: error:error
                                     titleName:error
                                //: completion:block];
                                red:block];
        //: }];
        }];
    }
}

//: - (void)transferOwnerWithUserId:(NSString *)userId
- (void)tabLabel:(NSString *)userId
                          //: leave:(BOOL)leave
                          view:(BOOL)leave
                     //: completion:(NIMTeamListDataBlock)block {
                     atDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
                                                          //: newOwnerId:userId
                                                          newOwnerId:userId
                                                             //: isLeave:leave
                                                             isLeave:leave
                                                          //: completion:^(NSError *error) {
                                                          completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf teamBy:userId
                                    //: leave:leave
                                    image:leave
                                    //: error:error
                                    text:error
                               //: completion:block];
                               worldView:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
                                                     //: newOwnerId:userId
                                                     newOwnerId:userId
                                                        //: isLeave:leave
                                                        isLeave:leave
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf teamBy:userId
                                    //: leave:leave
                                    image:leave
                                    //: error:error
                                    text:error
                               //: completion:block];
                               worldView:block];
        //: }];
        }];
    }
}



//: - (void)updateUserNick:(NSString *)userId
- (void)userAllow:(NSString *)userId
                  //: nick:(NSString *)nick
                  flushForTitle:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            when:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf comeToGripsPressedGreen:userId
                                      //: nick:nick
                                      info_strong:nick
                                     //: error:error
                                     nick_strong:error
                                //: completion:block];
                                itemEnableside:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:userId
        [[NIMSDK sharedSDK].teamManager updateUserNick:userId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf comeToGripsPressedGreen:userId
                                      //: nick:nick
                                      info_strong:nick
                                     //: error:error
                                     nick_strong:error
                                //: completion:block];
                                itemEnableside:block];
        //: }];
        }];
    }
}

//: - (void)updateUserMuteState:(NSString *)userId
- (void)image:(NSString *)userId
                       //: mute:(BOOL)mute
                       bubblePressed:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)block {
                 random:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (userId) {
        if (userId) {
            //: [users addObject:userId];
            [users addObject:userId];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf land:error
                                    //: completion:block];
                                    sub:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: userId:userId
                                                 userId:userId
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf land:error
                                    //: completion:block];
                                    sub:block];
         //: }];
         }];
    }
}

//: - (void)fetchTeamMembersWithOption:(PushMembersFetchOption *)option
- (void)at:(ReminiscenceSession *)option
                        //: completion:(NIMTeamListDataBlock)block {
                        teamShared:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        //: sdkOption.offset = option.offset;
        sdkOption.offset = option.offset;
        //: sdkOption.count = option.count;
        sdkOption.count = option.count;
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
                                                       //: option:sdkOption
                                                       option:sdkOption
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf input:members
                          //: option:option
                          text:option
                           //: error:error
                           blue:error
                      //: completion:block];
                      anyRecent:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: option.isRefresh = YES; 
            option.isRefresh = YES; //高级群全更新
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf input:members
                                      //: option:option
                                      text:option
                                       //: error:error
                                       blue:error
                                  //: completion:block];
                                  anyRecent:block];
        //: }];
        }];
    }
}

//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)block {
- (void)add:(NIMTeamMuteListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
                                                        //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                        completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf name:members
                                           //: error:error
                                           tingRecord:error
                                      //: completion:block];
                                      will:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf name:members
                                           //: error:error
                                           tingRecord:error
                                      //: completion:block];
                                      will:block];
        //: }];
        }];
    }
}

//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)block {
- (void)success:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
                                           //: completion:^(NSError *error) {
                                           completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf quickChange:error
                           //: completion:block];
                           handle:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager quitTeam:teamId
        [[NIMSDK sharedSDK].teamManager quitTeam:teamId
                                      //: completion:^(NSError *error) {
                                      completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf quickChange:error
                           //: completion:block];
                           handle:block];
        //: }];
        }];
    }
}

//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)block {
- (void)record:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self voiceView:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
        [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
            //: [weakSelf handleWithError:error completion:block];
            [weakSelf quickChange:error handle:block];
        //: }];
        }];
    }
}

//: #pragma mark - <PushTeamMemberListDataSource>
#pragma mark - <ShouldBackground>
//: - (NSInteger)memberNumber {
- (NSInteger)associate {
    //: return [_team memberNumber];
    return [_team memberNumber];
}

//: #pragma mark - <NIMTeamManagerDelegate>
#pragma mark - <NIMTeamManagerDelegate>
//: - (void)onTeamUpdated:(NIMTeam *)team {
- (void)onTeamUpdated:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamInfoUpdate object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:noti_dataMessage object:nil];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team {
- (void)onTeamMemberChanged:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: PushMembersFetchOption *option = [[PushMembersFetchOption alloc] init];
    ReminiscenceSession *option = [[ReminiscenceSession alloc] init];
    //: option.count = _members.count + 50;
    option.count = _members.count + 50;
    //: option.offset = 0;
    option.offset = 0;
    //: [self fetchTeamMembersWithOption:option completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
    [self at:option teamShared:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: if (error) {
        if (error) {
            //: NSLog(@"warning: teamupdate user failed because userid is empty");
        //: } else {
        } else {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamMembersChanged object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:userVideoBarFormat object:nil];
        }
    //: }];
    }];
}

//: @end
@end
