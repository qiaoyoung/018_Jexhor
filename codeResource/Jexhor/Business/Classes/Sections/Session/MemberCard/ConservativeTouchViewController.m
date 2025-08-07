
#import <Foundation/Foundation.h>

@interface EnableData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EnableData

+ (instancetype)sharedInstance {
    static EnableData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EnableDataToCache:(Byte *)data {
    int goingInvestorUser = data[0];
    Byte maxRequirement = data[1];
    int subChief = data[2];
    for (int i = subChief; i < subChief + goingInvestorUser; i++) {
        int value = data[i] - maxRequirement;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[subChief + goingInvestorUser] = 0;
    return data + subChief;
}

- (NSString *)StringFromEnableData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EnableDataToCache:data]];
}

//: /team/getTeamSetting
- (NSString *)show_spaceTitle {
    /* static */ NSString *show_spaceTitle = nil;
    if (!show_spaceTitle) {
        Byte value[] = {20, 44, 8, 96, 103, 131, 83, 122, 91, 160, 145, 141, 153, 91, 147, 145, 160, 128, 145, 141, 153, 127, 145, 160, 160, 149, 154, 147, 13};
        show_spaceTitle = [self StringFromEnableData:value];
    }
    return show_spaceTitle;
}

//: canAddFriend
- (NSString *)main_hostileFormat {
    /* static */ NSString *main_hostileFormat = nil;
    if (!main_hostileFormat) {
        Byte value[] = {12, 73, 13, 176, 34, 47, 50, 26, 159, 121, 84, 44, 252, 172, 170, 183, 138, 173, 173, 143, 187, 178, 174, 183, 173, 201};
        main_hostileFormat = [self StringFromEnableData:value];
    }
    return main_hostileFormat;
}

//: 邀请你加入高级群
- (NSString *)kPanYinName {
    /* static */ NSString *kPanYinName = nil;
    if (!kPanYinName) {
        Byte value[] = {24, 68, 10, 79, 42, 124, 162, 168, 254, 33, 45, 198, 196, 44, 243, 251, 40, 1, 228, 41, 206, 228, 41, 201, 233, 45, 239, 220, 43, 254, 235, 43, 2, 232, 95};
        kPanYinName = [self StringFromEnableData:value];
    }
    return kPanYinName;
}

//: code
- (NSString *)mainEliteTitle {
    /* static */ NSString *mainEliteTitle = nil;
    if (!mainEliteTitle) {
        Byte value[] = {4, 2, 3, 101, 113, 102, 103, 178};
        mainEliteTitle = [self StringFromEnableData:value];
    }
    return mainEliteTitle;
}

//: #05D481
- (NSString *)k_laverTitle {
    /* static */ NSString *k_laverTitle = nil;
    if (!k_laverTitle) {
        Byte value[] = {7, 73, 7, 23, 126, 129, 207, 108, 121, 126, 141, 125, 129, 122, 43};
        k_laverTitle = [self StringFromEnableData:value];
    }
    return k_laverTitle;
}

//: group_info_activity_op_failed
- (NSString *)userErrFormat {
    /* static */ NSString *userErrFormat = nil;
    if (!userErrFormat) {
        Byte value[] = {29, 3, 6, 206, 66, 6, 106, 117, 114, 120, 115, 98, 108, 113, 105, 114, 98, 100, 102, 119, 108, 121, 108, 119, 124, 98, 114, 115, 98, 105, 100, 108, 111, 104, 103, 104};
        userErrFormat = [self StringFromEnableData:value];
    }
    return userErrFormat;
}

//: data
- (NSString *)main_whichMsg {
    /* static */ NSString *main_whichMsg = nil;
    if (!main_whichMsg) {
        Byte value[] = {4, 23, 6, 166, 175, 124, 123, 120, 139, 120, 217};
        main_whichMsg = [self StringFromEnableData:value];
    }
    return main_whichMsg;
}

//: 邀请你加入讨论组
- (NSString *)noti_messageEconomicMsg {
    /* static */ NSString *noti_messageEconomicMsg = nil;
    if (!noti_messageEconomicMsg) {
        Byte value[] = {24, 18, 9, 21, 70, 88, 226, 115, 19, 251, 148, 146, 250, 193, 201, 246, 207, 178, 247, 156, 178, 247, 151, 183, 250, 192, 186, 250, 192, 204, 249, 205, 150, 67};
        noti_messageEconomicMsg = [self StringFromEnableData:value];
    }
    return noti_messageEconomicMsg;
}

//: group_info_activity_team_member
- (NSString *)mWooKey {
    /* static */ NSString *mWooKey = nil;
    if (!mWooKey) {
        Byte value[] = {31, 81, 6, 98, 128, 147, 184, 195, 192, 198, 193, 176, 186, 191, 183, 192, 176, 178, 180, 197, 186, 199, 186, 197, 202, 176, 197, 182, 178, 190, 176, 190, 182, 190, 179, 182, 195, 204};
        mWooKey = [self StringFromEnableData:value];
    }
    return mWooKey;
}

//: ic_group_addmember
- (NSString *)kSustainData {
    /* static */ NSString *kSustainData = nil;
    if (!kSustainData) {
        Byte value[] = {18, 99, 11, 51, 106, 5, 5, 147, 202, 151, 117, 204, 198, 194, 202, 213, 210, 216, 211, 194, 196, 199, 199, 208, 200, 208, 197, 200, 213, 134};
        kSustainData = [self StringFromEnableData:value];
    }
    return kSustainData;
}

//: 扩展消息
- (NSString *)mInfoFormat {
    /* static */ NSString *mInfoFormat = nil;
    if (!mInfoFormat) {
        Byte value[] = {12, 90, 3, 64, 227, 3, 63, 11, 239, 64, 16, 226, 64, 219, 9, 192};
        mInfoFormat = [self StringFromEnableData:value];
    }
    return mInfoFormat;
}

//: 邀请你加入超大群
- (NSString *)notiDelicateAllyAffairText {
    /* static */ NSString *notiDelicateAllyAffairText = nil;
    if (!notiDelicateAllyAffairText) {
        Byte value[] = {24, 43, 4, 128, 20, 173, 171, 19, 218, 226, 15, 232, 203, 16, 181, 203, 16, 176, 208, 19, 225, 176, 16, 207, 210, 18, 233, 207, 120};
        notiDelicateAllyAffairText = [self StringFromEnableData:value];
    }
    return notiDelicateAllyAffairText;
}

//: attach
- (NSString *)user_lightMainStr {
    /* static */ NSString *user_lightMainStr = nil;
    if (!user_lightMainStr) {
        Byte value[] = {6, 62, 13, 244, 97, 79, 123, 90, 231, 25, 125, 85, 113, 159, 178, 178, 159, 161, 166, 14};
        user_lightMainStr = [self StringFromEnableData:value];
    }
    return user_lightMainStr;
}

//: kNIMTeamListDataTeamMembersChanged
- (NSString *)showPressedGoingName {
    /* static */ NSString *showPressedGoingName = nil;
    if (!showPressedGoingName) {
        Byte value[] = {34, 50, 4, 195, 157, 128, 123, 127, 134, 151, 147, 159, 126, 155, 165, 166, 118, 147, 166, 147, 134, 151, 147, 159, 127, 151, 159, 148, 151, 164, 165, 117, 154, 147, 160, 153, 151, 150, 163};
        showPressedGoingName = [self StringFromEnableData:value];
    }
    return showPressedGoingName;
}

//: postscript
- (NSString *)dream_versionContent {
    /* static */ NSString *dream_versionContent = nil;
    if (!dream_versionContent) {
        Byte value[] = {10, 67, 12, 224, 16, 237, 127, 181, 116, 124, 219, 192, 179, 178, 182, 183, 182, 166, 181, 172, 179, 183, 217};
        dream_versionContent = [self StringFromEnableData:value];
    }
    return dream_versionContent;
}

//: modify_activity_modify_success
- (NSString *)main_actorData {
    /* static */ NSString *main_actorData = nil;
    if (!main_actorData) {
        Byte value[] = {30, 4, 7, 144, 56, 127, 18, 113, 115, 104, 109, 106, 125, 99, 101, 103, 120, 109, 122, 109, 120, 125, 99, 113, 115, 104, 109, 106, 125, 99, 119, 121, 103, 103, 105, 119, 119, 136};
        main_actorData = [self StringFromEnableData:value];
    }
    return main_actorData;
}

//: back_arrow_bl
- (NSString *)m_panText {
    /* static */ NSString *m_panText = nil;
    if (!m_panText) {
        Byte value[] = {13, 19, 5, 56, 178, 117, 116, 118, 126, 114, 116, 133, 133, 130, 138, 114, 117, 127, 7};
        m_panText = [self StringFromEnableData:value];
    }
    return m_panText;
}

//: group_member_info_activity_team_creator
- (NSString *)notiStyleTitle {
    /* static */ NSString *notiStyleTitle = nil;
    if (!notiStyleTitle) {
        Byte value[] = {39, 54, 8, 55, 110, 181, 229, 93, 157, 168, 165, 171, 166, 149, 163, 155, 163, 152, 155, 168, 149, 159, 164, 156, 165, 149, 151, 153, 170, 159, 172, 159, 170, 175, 149, 170, 155, 151, 163, 149, 153, 168, 155, 151, 170, 165, 168, 132};
        notiStyleTitle = [self StringFromEnableData:value];
    }
    return notiStyleTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCTeamMemberListViewController.h"
#import "ConservativeTouchViewController.h"
//: #import "FFFCardHeaderCell.h"
#import "CompartmentReusableView.h"
//: #import "FFFTeamCardMemberItem.h"
#import "CardSession.h"
//: #import "FFFTeamMemberCardViewController.h"
#import "StraddleViewController.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "CoverView.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "FFFTeamListDataManager.h"
#import "MainRead.h"
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "NTESContactDataCell.h"
#import "CrossViewCell.h"
//: #import "FFFGroupMemberTableViewCell.h"
#import "TapTingView.h"
//: #import "FFFContactSelectViewController.h"
#import "SwitchlyViewController.h"

//: typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);
typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

//: @interface CCCTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>
@interface ConservativeTouchViewController ()<UITableViewDataSource,UITableViewDelegate,BackgroundDelegate,ScoopClick>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <ShouldBackground> dataSource;
//: @property (nonatomic, assign) NSInteger pageIndex;
@property (nonatomic, assign) NSInteger pageIndex;
//: @property (nonatomic, assign) NSInteger totalPageCount;
@property (nonatomic, assign) NSInteger totalPageCount;
//: @property (nonatomic, strong) UIButton *nextBtn;
@property (nonatomic, strong) UIButton *nextBtn;
//: @property (nonatomic, strong) UIButton *lastBtn;
@property (nonatomic, strong) UIButton *lastBtn;
//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;

//: @property (nonatomic ,copy) NSArray *muteArray;
@property (nonatomic ,copy) NSArray *muteArray;

//: @end
@end

//: @implementation CCCTeamMemberListViewController
@implementation ConservativeTouchViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (instancetype)initWithDataSource:(FFFTeamListDataManager *)dataSource {
- (instancetype)initWithIcon:(MainRead *)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _teamListManager = dataSource;
        _teamListManager = dataSource;
        //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
        NSString *kNIMTeamListDataTeamMembersChanged = [[EnableData sharedInstance] showPressedGoingName];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(liped:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    }
    //: return self;
    return self;
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}
//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)rightNavButtonClick{
- (void)allBlue{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        CheckedConfig *config = [[CheckedConfig alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc metadata];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self providerDoing];
    //: [self loadMuteListData];
    [self videoData];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[EnableData sharedInstance] show_spaceTitle]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[[EnableData sharedInstance] mainEliteTitle]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[[EnableData sharedInstance] main_whichMsg]];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
    //: }];
    }];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];

//    [_collectionView reloadData];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
}

//: - (void)setupUI {
- (void)providerDoing {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[EnableData sharedInstance] m_panText]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice title]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [BackgroundRandomAttribute content:[[EnableData sharedInstance] mWooKey]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice title]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    submitButton.backgroundColor = [UIColor user:[[EnableData sharedInstance] k_laverTitle]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[[EnableData sharedInstance] kSustainData]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(allBlue) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;

//    [self.view addSubview:self.collectionView];

}

//: - (void)loadMuteListData {
- (void)videoData {

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    }
}

//更新群成员禁言
//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute
- (void)send:(NSString *)uid valueAcross:(BOOL)mute
{
//    [_dataSource updateUserMuteState:uid mute:mute completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [self.tableView reloadData];
//    }];

    //: BOOL ismute = YES;
    BOOL ismute = YES;
    //: for (NIMTeamMember *member in self.muteArray) {
    for (NIMTeamMember *member in self.muteArray) {
        //: if([member.userId isEqualToString:uid]){
        if([member.userId isEqualToString:uid]){
            //: ismute = NO;
            ismute = NO;
        //: }else{
        }else{
            //: ismute = YES;
            ismute = YES;
        }
    }

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (uid) {
        if (uid) {
            //: [users addObject:uid];
            [users addObject:uid];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [self loadMuteListData];
            [self videoData];

        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
                                                 //: userId:uid
                                                 userId:uid
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [BackgroundRandomAttribute content:[[EnableData sharedInstance] main_actorData]];
            //: }else{
            }else{
                //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [BackgroundRandomAttribute content:[[EnableData sharedInstance] userErrFormat]];
            }
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];

//            [self.tableView reloadData];
            //: [self loadMuteListData];
            [self videoData];
         //: }];
         }];
    }
}
//: - (void)cellShouldBeRemoved:(NSString *)uid
- (void)sendBottom:(NSString *)uid
{
    //: [FFFKitProgressHUD show];
    [CoverView input];
    //: [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager monthCompletion:@[uid] recent:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [CoverView pressed];
        //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return _teamListManager.memberIds.count;
    return _teamListManager.memberIds.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: FFFGroupMemberTableViewCell *cell = [FFFGroupMemberTableViewCell cellWithTableView:tableView];
    TapTingView *cell = [TapTingView present:tableView];
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSString *uId = _teamListManager.memberIds[indexPath.section];
    NSString *uId = _teamListManager.memberIds[indexPath.section];
    //: FFFKitInfo *usrInfo = [[MyUserKit sharedKit] infoByUser:uId option:nil];
    DataTeam *usrInfo = [[Secret highlight] infoAndStraddleOption:uId item:nil];

    //: [cell reloadWithUserId:uId];
    [cell nameTag:uId];
    //: [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    //: cell.titleLabel.text = usrInfo.showName;
    cell.titleLabel.text = usrInfo.showName;
    //: cell.subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    cell.subtitleLabel.text = [BackgroundRandomAttribute content:[[EnableData sharedInstance] notiStyleTitle]];

    //: BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    //: if(isown){
    if(isown){
        //: cell.subtitleLabel.hidden = NO;
        cell.subtitleLabel.hidden = NO;
    //: }else{
    }else{
        //: cell.subtitleLabel.hidden = YES;
        cell.subtitleLabel.hidden = YES;
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: cell.muteBtn.hidden = NO;
        cell.muteBtn.hidden = NO;
        //: cell.removeBtn.hidden = NO;
        cell.removeBtn.hidden = NO;
        //: cell.muteBtn.selected = NO;
        cell.muteBtn.selected = NO;
        //: for (NIMTeamMember *member in self.muteArray) {
        for (NIMTeamMember *member in self.muteArray) {
            //: if([member.userId isEqualToString:uId] && member.isMuted){
            if([member.userId isEqualToString:uId] && member.isMuted){
                //: cell.muteBtn.selected = YES;
                cell.muteBtn.selected = YES;
            }
        }
    //: }else{
    }else{
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if(isown){
    if(isown){
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig index:[[EnableData sharedInstance] main_hostileFormat]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {
        //: NSString *uId = _teamListManager.memberIds[indexPath.section];
        NSString *uId = _teamListManager.memberIds[indexPath.section];
//    StraddleViewController *vc = [[StraddleViewController alloc] init];
//    vc.teamListManager = self.teamListManager;
//    vc.memberId = uId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)endSelect:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self top:selectedContacts lengthView:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)top:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            lengthView:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[[EnableData sharedInstance] user_lightMainStr]] = [[EnableData sharedInstance] mInfoFormat];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[[EnableData sharedInstance] dream_versionContent]] = [[EnableData sharedInstance] noti_messageEconomicMsg].minIn;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[[EnableData sharedInstance] dream_versionContent]] = [[EnableData sharedInstance] kPanYinName].minIn;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[[EnableData sharedInstance] dream_versionContent]] = [[EnableData sharedInstance] notiDelicateAllyAffairText].minIn;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [CoverView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager complete:userIds alongTing:info net:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [CoverView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)liped:(NSNotification *)note {

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: @end
@end