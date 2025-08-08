
#import <Foundation/Foundation.h>

NSString *StringFromPopularityData(Byte *data);


//: 邀请你加入讨论组
Byte user_birthdayName[] = {88, 24, 8, 190, 144, 2, 217, 112, 132, 187, 231, 186, 174, 232, 168, 174, 232, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 40};

//: group_info_activity_update_failed
Byte mExpectValue[] = {50, 33, 7, 171, 242, 173, 28, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 100, 112, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 35};

//: 邀请你加入高级群
Byte mShowTitle[] = {29, 24, 10, 171, 30, 65, 18, 175, 239, 94, 164, 190, 231, 167, 186, 231, 152, 171, 233, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 147};

//: postscript
Byte app_willingnessContent[] = {28, 10, 5, 60, 28, 116, 112, 105, 114, 99, 115, 116, 115, 111, 112, 194};

//: attach
Byte noti_hemeValue[] = {11, 6, 10, 102, 152, 73, 108, 93, 89, 97, 104, 99, 97, 116, 116, 97, 51};

//: 扩展消息
Byte userAfternoonName[] = {73, 12, 10, 251, 243, 245, 213, 247, 65, 200, 175, 129, 230, 136, 182, 230, 149, 177, 229, 169, 137, 230, 47};

//: 邀请你加入超大群
Byte show_poolData[] = {6, 24, 8, 122, 118, 230, 141, 48, 164, 190, 231, 167, 164, 229, 133, 182, 232, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 123};

//: jpg
Byte app_bindValue[] = {58, 3, 9, 2, 186, 208, 151, 216, 135, 103, 112, 106, 70};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputViewController.m
// MessageContent
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkTeamCardOperationViewController.h"
#import "InputViewController.h"
//: #import "WorkKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "WorkKitDependency.h"
#import "WorkKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "NTESSessionMsgConverter.h"
#import "ViewLine.h"

//: @implementation WorkTeamCardOperationViewController
@implementation InputViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithInput:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     toFromOption:(NIMSession *)session
                      //: option:(WorkTeamCardViewControllerOption *)option {
                      value:(ThreadBottom *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[WorkTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[ShowManager alloc] initWithKey:team section:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(belowIntervalelligenceInformation:) name:notiRetValue object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recording:) name:show_contentData object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: WorkMembersFetchOption *option = [[WorkMembersFetchOption alloc] init];
    SameOption *option = [[SameOption alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self teamColor:option];
}

//: - (void)reloadData {
- (void)number {
    //: [self reloadTableHeaderData];
    [self minorLeagueClub];
    //: [self reloadTableViewData];
    [self empty];
    //: [self reloadOtherData];
    [self itemBy];
}

//: - (void)didFetchTeamMember:(WorkMembersFetchOption *)option {
- (void)teamColor:(SameOption *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager ofTool:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          value:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself number];
        }
        //: [wself showToastMsg:msg];
        [wself textTag:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)high:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            pressed:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[StringFromPopularityData(noti_hemeValue)] = StringFromPopularityData(userAfternoonName);
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[StringFromPopularityData(app_willingnessContent)] = StringFromPopularityData(user_birthdayName).titleBy;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[StringFromPopularityData(app_willingnessContent)] = StringFromPopularityData(mShowTitle).titleBy;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[StringFromPopularityData(app_willingnessContent)] = StringFromPopularityData(show_poolData).titleBy;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager small:userIds yieldShared:info net:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself minorLeagueClub];
        }
        //: [wself showToastMsg:msg];
        [wself textTag:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)searchedMessage:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager color:@[userId] minority:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself minorLeagueClub];
        }
        //: [wself showToastMsg:msg];
        [wself textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)bubble:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager last:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              of:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself number];
        }
        //: [wself showToastMsg:msg];
        [wself textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)belowMenu:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager asChild:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              center:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)team:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager voice:intro session:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)image:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager container:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              inputCompletion:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)rueWithIt:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self value:type successContent:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf cellBy:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)addUp:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager regionCompletion:mode joinSize:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)dateBarMode:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager section:mode chromaticDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)invite:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager origin:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      shared:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)cellBlue:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager generateCompletion:mode optionDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf number];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)textIn:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager message:state insert:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf empty];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)disable:(NSString *)userId show:(BOOL)leave {
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager maxShow:userId
                                         //: leave:leave
                                         voice:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    iconHandle:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self number];
        }
        //: [self showToastMsg:msg];
        [self textTag:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)dismissInLittleLeagueTeam{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager screen:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf textTag:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)shouldColor{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager color:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself textTag:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)belowIntervalelligenceInformation:(NSNotification *)note {
    //: [self reloadData];
    [self number];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)recording:(NSNotification *)note {

    //: [self reloadData];
    [self number];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)shadow
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
            [self number];
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
- (void)cellBy:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image imageFormatUpload];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:StringFromPopularityData(app_bindValue)];
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
        //: [WorkKitProgressHUD show];
        [KitEffectView refreshShow];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager modifyInValue:filePath filling:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [WorkKitProgressHUD dismiss];
            [KitEffectView should];
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
                [wself minorLeagueClub];
            }
            //: [wself showToastMsg:msg];
            [wself textTag:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[WorkLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself textTag:[InputRed preserve:StringFromPopularityData(mExpectValue)]];
    }
}

//: @end
@end

//: @implementation WorkTeamCardViewControllerOption
@implementation ThreadBottom

//: @end
@end

Byte * PopularityDataToCache(Byte *data) {
    int poolTower = data[0];
    int greatUncle = data[1];
    int infoRearItem = data[2];
    if (!poolTower) return data + infoRearItem;
    for (int i = 0; i < greatUncle / 2; i++) {
        int begin = infoRearItem + i;
        int end = infoRearItem + greatUncle - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[infoRearItem + greatUncle] = 0;
    return data + infoRearItem;
}

NSString *StringFromPopularityData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PopularityDataToCache(data)];
}  
