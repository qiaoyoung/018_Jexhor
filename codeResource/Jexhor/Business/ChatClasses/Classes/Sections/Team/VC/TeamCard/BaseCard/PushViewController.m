
#import <Foundation/Foundation.h>

@interface SatelliteData : NSObject

+ (instancetype)sharedInstance;

//: 邀请你加入讨论组
@property (nonatomic, copy) NSString *appOurKey;

//: jpg
@property (nonatomic, copy) NSString *notiSodFormat;

//: attach
@property (nonatomic, copy) NSString *app_cancelValue;

//: group_info_activity_update_failed
@property (nonatomic, copy) NSString *m_ironicalData;

//: postscript
@property (nonatomic, copy) NSString *userCropStr;

//: 邀请你加入超大群
@property (nonatomic, copy) NSString *userHostileValue;

//: 扩展消息
@property (nonatomic, copy) NSString *mainViewName;

//: 邀请你加入高级群
@property (nonatomic, copy) NSString *mainScapeName;

@end

@implementation SatelliteData

+ (instancetype)sharedInstance {
    static SatelliteData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SatelliteDataToCache:(Byte *)data {
    int dishAuthority = data[0];
    Byte compute = data[1];
    int dismissWhit = data[2];
    for (int i = dismissWhit; i < dismissWhit + dishAuthority; i++) {
        int value = data[i] + compute;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[dismissWhit + dishAuthority] = 0;
    return data + dismissWhit;
}

- (NSString *)StringFromSatelliteData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SatelliteDataToCache:data]];
}

//: 邀请你加入超大群
- (NSString *)userHostileValue {
    if (!_userHostileValue) {
        Byte value[] = {24, 54, 4, 45, 179, 76, 74, 178, 121, 129, 174, 135, 106, 175, 84, 106, 175, 79, 111, 178, 128, 79, 175, 110, 113, 177, 136, 110, 214};
        _userHostileValue = [self StringFromSatelliteData:value];
    }
    return _userHostileValue;
}

//: jpg
- (NSString *)notiSodFormat {
    if (!_notiSodFormat) {
        Byte value[] = {3, 71, 13, 53, 183, 121, 181, 77, 40, 196, 27, 170, 231, 35, 41, 32, 59};
        _notiSodFormat = [self StringFromSatelliteData:value];
    }
    return _notiSodFormat;
}

//: group_info_activity_update_failed
- (NSString *)m_ironicalData {
    if (!_m_ironicalData) {
        Byte value[] = {33, 30, 13, 218, 252, 119, 34, 250, 230, 43, 192, 243, 212, 73, 84, 81, 87, 82, 65, 75, 80, 72, 81, 65, 67, 69, 86, 75, 88, 75, 86, 91, 65, 87, 82, 70, 67, 86, 71, 65, 72, 67, 75, 78, 71, 70, 229};
        _m_ironicalData = [self StringFromSatelliteData:value];
    }
    return _m_ironicalData;
}

//: 邀请你加入高级群
- (NSString *)mainScapeName {
    if (!_mainScapeName) {
        Byte value[] = {24, 20, 3, 213, 110, 108, 212, 155, 163, 208, 169, 140, 209, 118, 140, 209, 113, 145, 213, 151, 132, 211, 166, 147, 211, 170, 144, 32};
        _mainScapeName = [self StringFromSatelliteData:value];
    }
    return _mainScapeName;
}

//: 扩展消息
- (NSString *)mainViewName {
    if (!_mainViewName) {
        Byte value[] = {12, 15, 12, 1, 44, 137, 52, 109, 160, 198, 126, 84, 215, 122, 154, 214, 162, 134, 215, 167, 121, 215, 114, 160, 182};
        _mainViewName = [self StringFromSatelliteData:value];
    }
    return _mainViewName;
}

//: 邀请你加入讨论组
- (NSString *)appOurKey {
    if (!_appOurKey) {
        Byte value[] = {24, 77, 8, 128, 76, 245, 127, 67, 156, 53, 51, 155, 98, 106, 151, 112, 83, 152, 61, 83, 152, 56, 88, 155, 97, 91, 155, 97, 109, 154, 110, 55, 19};
        _appOurKey = [self StringFromSatelliteData:value];
    }
    return _appOurKey;
}

//: postscript
- (NSString *)userCropStr {
    if (!_userCropStr) {
        Byte value[] = {10, 96, 11, 208, 251, 47, 149, 164, 63, 205, 33, 16, 15, 19, 20, 19, 3, 18, 9, 16, 20, 245};
        _userCropStr = [self StringFromSatelliteData:value];
    }
    return _userCropStr;
}

//: attach
- (NSString *)app_cancelValue {
    if (!_app_cancelValue) {
        Byte value[] = {6, 38, 3, 59, 78, 78, 59, 61, 66, 219};
        _app_cancelValue = [self StringFromSatelliteData:value];
    }
    return _app_cancelValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PushViewController.m
// Secret
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushTeamCardOperationViewController.h"
#import "PushViewController.h"
//: #import "PushKitProgressHUD.h"
#import "CoverView.h"
//: #import "PushKitDependency.h"
#import "PushKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "NTESSessionMsgConverter.h"
#import "SessionDevice.h"

//: @implementation PushTeamCardOperationViewController
@implementation PushViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithNumberChild:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     change:(NIMSession *)session
                      //: option:(PushTeamCardViewControllerOption *)option {
                      at:(OrientationBackground *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[PushTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[MainRead alloc] initWithBusinessExecutiveSpecialSession:team start:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(detailled:) name:noti_dataMessage object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(liped:) name:userVideoBarFormat object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: PushMembersFetchOption *option = [[PushMembersFetchOption alloc] init];
    ReminiscenceSession *option = [[ReminiscenceSession alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self rangeMember:option];
}

//: - (void)reloadData {
- (void)domain {
    //: [self reloadTableHeaderData];
    [self message];
    //: [self reloadTableViewData];
    [self questionImage];
    //: [self reloadOtherData];
    [self bruxism];
}

//: - (void)didFetchTeamMember:(PushMembersFetchOption *)option {
- (void)rangeMember:(ReminiscenceSession *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager at:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          teamShared:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself domain];
        }
        //: [wself showToastMsg:msg];
        [wself to:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)untilRequest:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            backMode:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[SatelliteData sharedInstance].app_cancelValue] = [SatelliteData sharedInstance].mainViewName;
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[SatelliteData sharedInstance].userCropStr] = [SatelliteData sharedInstance].appOurKey.minIn;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[SatelliteData sharedInstance].userCropStr] = [SatelliteData sharedInstance].mainScapeName.minIn;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[SatelliteData sharedInstance].userCropStr] = [SatelliteData sharedInstance].userHostileValue.minIn;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager complete:userIds alongTing:info net:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself message];
        }
        //: [wself showToastMsg:msg];
        [wself to:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)date:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager monthCompletion:@[userId] recent:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself message];
        }
        //: [wself showToastMsg:msg];
        [wself to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)holder:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager reloadInfoFrom:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              should:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself domain];
        }
        //: [wself showToastMsg:msg];
        [wself to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)fill:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager checked:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              everyFile:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)infoGreenCountro:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager size:intro labelOf:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)roundShow:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager modifyImage:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              cameraShould:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)letter:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self messageCompletion:type will:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf media:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)view:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager radiogram:mode present:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)pop:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager reload:mode putUp:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)managerSetup:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager show:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      message:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)reload:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager color:mode empty:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf domain];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)teamMedia:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager to:state enable:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf questionImage];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)labelClick:(NSString *)userId view:(BOOL)leave {
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager tabLabel:userId
                                         //: leave:leave
                                         view:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    atDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self domain];
        }
        //: [self showToastMsg:msg];
        [self to:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)visualisation{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager record:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf to:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)context{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager success:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself to:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)detailled:(NSNotification *)note {
    //: [self reloadData];
    [self domain];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)liped:(NSNotification *)note {

    //: [self reloadData];
    [self domain];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)green
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: if (members.count>20) {
            if (members.count>20) {

                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];

            //: }else{
            }else{
//                [self didUpdateNotifiyState:NIMTeamNotifyStateAll];
                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];
            }
            //: [self reloadData];
            [self domain];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image {
- (void)media:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image off];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[SatelliteData sharedInstance].notiSodFormat];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [PushKitProgressHUD show];
        [CoverView input];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager distantAdd:filePath app:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [PushKitProgressHUD dismiss];
            [CoverView pressed];
            //: if (!error) {
            if (!error) {
                //: NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                //: [sdManager.imageCache storeImage:imageForAvatarUpload
                [sdManager.imageCache storeImage:imageForAvatarUpload
                                       //: imageData:data
                                       imageData:data
                                          //: forKey:urlString
                                          forKey:urlString
                                       //: cacheType:SDImageCacheTypeAll
                                       cacheType:SDImageCacheTypeAll
                                      //: completion:nil];
                                      completion:nil];
                //: [wself reloadTableHeaderData];
                [wself message];
            }
            //: [wself showToastMsg:msg];
            [wself to:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[PushLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself to:[BackgroundRandomAttribute content:[SatelliteData sharedInstance].m_ironicalData]];
    }
}

//: @end
@end

//: @implementation PushTeamCardViewControllerOption
@implementation OrientationBackground

//: @end
@end
