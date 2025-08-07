
#import <Foundation/Foundation.h>

@interface EmergencyData : NSObject

+ (instancetype)sharedInstance;

//: data
@property (nonatomic, copy) NSString *showThreadContent;

//: #05D481
@property (nonatomic, copy) NSString *mainShowVideoData;

//: modify_activity_modify_success
@property (nonatomic, copy) NSString *notiKeepValue;

//: 邀请你加入高级群
@property (nonatomic, copy) NSString *show_makeText;

//: 邀请你加入超大群
@property (nonatomic, copy) NSString *m_seriesTitle;

//: kNIMTeamListDataTeamMembersChanged
@property (nonatomic, copy) NSString *noti_balanceName;

//: attach
@property (nonatomic, copy) NSString *main_againstData;

//: 邀请你加入讨论组
@property (nonatomic, copy) NSString *appKeepContent;

//: /team/getTeamSetting
@property (nonatomic, copy) NSString *showAgainstViseData;

//: code
@property (nonatomic, copy) NSString *m_pollutionData;

//: canAddFriend
@property (nonatomic, copy) NSString *mDrugValue;

//: ic_group_addmember
@property (nonatomic, copy) NSString *show_bubbleData;

//: 扩展消息
@property (nonatomic, copy) NSString *main_itemHandleData;

//: postscript
@property (nonatomic, copy) NSString *k_congressionalContent;

//: back_arrow_bl
@property (nonatomic, copy) NSString *userCommentText;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *noti_hideName;

//: group_member_info_activity_team_creator
@property (nonatomic, copy) NSString *m_afternoonContent;

//: group_info_activity_team_member
@property (nonatomic, copy) NSString *notiButtonName;

@end

@implementation EmergencyData

+ (instancetype)sharedInstance {
    static EmergencyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EmergencyDataToCache:(Byte *)data {
    int confine = data[0];
    Byte dream = data[1];
    int drugComment = data[2];
    for (int i = drugComment; i < drugComment + confine; i++) {
        int value = data[i] - dream;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[drugComment + confine] = 0;
    return data + drugComment;
}

- (NSString *)StringFromEmergencyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EmergencyDataToCache:data]];
}

//: kNIMTeamListDataTeamMembersChanged
- (NSString *)noti_balanceName {
    if (!_noti_balanceName) {
        Byte value[] = {34, 60, 9, 96, 104, 242, 252, 201, 140, 167, 138, 133, 137, 144, 161, 157, 169, 136, 165, 175, 176, 128, 157, 176, 157, 144, 161, 157, 169, 137, 161, 169, 158, 161, 174, 175, 127, 164, 157, 170, 163, 161, 160, 131};
        _noti_balanceName = [self StringFromEmergencyData:value];
    }
    return _noti_balanceName;
}

//: modify_activity_modify_success
- (NSString *)notiKeepValue {
    if (!_notiKeepValue) {
        Byte value[] = {30, 51, 5, 40, 249, 160, 162, 151, 156, 153, 172, 146, 148, 150, 167, 156, 169, 156, 167, 172, 146, 160, 162, 151, 156, 153, 172, 146, 166, 168, 150, 150, 152, 166, 166, 193};
        _notiKeepValue = [self StringFromEmergencyData:value];
    }
    return _notiKeepValue;
}

//: canAddFriend
- (NSString *)mDrugValue {
    if (!_mDrugValue) {
        Byte value[] = {12, 50, 11, 82, 125, 112, 117, 168, 16, 233, 45, 149, 147, 160, 115, 150, 150, 120, 164, 155, 151, 160, 150, 230};
        _mDrugValue = [self StringFromEmergencyData:value];
    }
    return _mDrugValue;
}

//: data
- (NSString *)showThreadContent {
    if (!_showThreadContent) {
        Byte value[] = {4, 92, 11, 58, 78, 149, 18, 102, 109, 68, 136, 192, 189, 208, 189, 140};
        _showThreadContent = [self StringFromEmergencyData:value];
    }
    return _showThreadContent;
}

//: back_arrow_bl
- (NSString *)userCommentText {
    if (!_userCommentText) {
        Byte value[] = {13, 31, 10, 144, 61, 96, 205, 77, 235, 16, 129, 128, 130, 138, 126, 128, 145, 145, 142, 150, 126, 129, 139, 148};
        _userCommentText = [self StringFromEmergencyData:value];
    }
    return _userCommentText;
}

//: group_info_activity_team_member
- (NSString *)notiButtonName {
    if (!_notiButtonName) {
        Byte value[] = {31, 62, 4, 207, 165, 176, 173, 179, 174, 157, 167, 172, 164, 173, 157, 159, 161, 178, 167, 180, 167, 178, 183, 157, 178, 163, 159, 171, 157, 171, 163, 171, 160, 163, 176, 79};
        _notiButtonName = [self StringFromEmergencyData:value];
    }
    return _notiButtonName;
}

//: ic_group_addmember
- (NSString *)show_bubbleData {
    if (!_show_bubbleData) {
        Byte value[] = {18, 79, 13, 184, 132, 30, 56, 65, 29, 212, 143, 50, 117, 184, 178, 174, 182, 193, 190, 196, 191, 174, 176, 179, 179, 188, 180, 188, 177, 180, 193, 234};
        _show_bubbleData = [self StringFromEmergencyData:value];
    }
    return _show_bubbleData;
}

//: 邀请你加入高级群
- (NSString *)show_makeText {
    if (!_show_makeText) {
        Byte value[] = {24, 1, 10, 222, 224, 94, 45, 191, 239, 204, 234, 131, 129, 233, 176, 184, 229, 190, 161, 230, 139, 161, 230, 134, 166, 234, 172, 153, 232, 187, 168, 232, 191, 165, 218};
        _show_makeText = [self StringFromEmergencyData:value];
    }
    return _show_makeText;
}

//: attach
- (NSString *)main_againstData {
    if (!_main_againstData) {
        Byte value[] = {6, 9, 3, 106, 125, 125, 106, 108, 113, 197};
        _main_againstData = [self StringFromEmergencyData:value];
    }
    return _main_againstData;
}

//: postscript
- (NSString *)k_congressionalContent {
    if (!_k_congressionalContent) {
        Byte value[] = {10, 39, 9, 146, 133, 132, 202, 27, 134, 151, 150, 154, 155, 154, 138, 153, 144, 151, 155, 165};
        _k_congressionalContent = [self StringFromEmergencyData:value];
    }
    return _k_congressionalContent;
}

//: 邀请你加入讨论组
- (NSString *)appKeepContent {
    if (!_appKeepContent) {
        Byte value[] = {24, 22, 9, 23, 172, 147, 42, 222, 85, 255, 152, 150, 254, 197, 205, 250, 211, 182, 251, 160, 182, 251, 155, 187, 254, 196, 190, 254, 196, 208, 253, 209, 154, 11};
        _appKeepContent = [self StringFromEmergencyData:value];
    }
    return _appKeepContent;
}

//: group_member_info_activity_team_creator
- (NSString *)m_afternoonContent {
    if (!_m_afternoonContent) {
        Byte value[] = {39, 16, 12, 186, 69, 45, 62, 112, 102, 35, 238, 240, 119, 130, 127, 133, 128, 111, 125, 117, 125, 114, 117, 130, 111, 121, 126, 118, 127, 111, 113, 115, 132, 121, 134, 121, 132, 137, 111, 132, 117, 113, 125, 111, 115, 130, 117, 113, 132, 127, 130, 73};
        _m_afternoonContent = [self StringFromEmergencyData:value];
    }
    return _m_afternoonContent;
}

//: 邀请你加入超大群
- (NSString *)m_seriesTitle {
    if (!_m_seriesTitle) {
        Byte value[] = {24, 26, 8, 181, 139, 25, 140, 226, 3, 156, 154, 2, 201, 209, 254, 215, 186, 255, 164, 186, 255, 159, 191, 2, 208, 159, 255, 190, 193, 1, 216, 190, 157};
        _m_seriesTitle = [self StringFromEmergencyData:value];
    }
    return _m_seriesTitle;
}

//: group_info_activity_op_failed
- (NSString *)noti_hideName {
    if (!_noti_hideName) {
        Byte value[] = {29, 58, 8, 204, 195, 52, 169, 5, 161, 172, 169, 175, 170, 153, 163, 168, 160, 169, 153, 155, 157, 174, 163, 176, 163, 174, 179, 153, 169, 170, 153, 160, 155, 163, 166, 159, 158, 221};
        _noti_hideName = [self StringFromEmergencyData:value];
    }
    return _noti_hideName;
}

//: #05D481
- (NSString *)mainShowVideoData {
    if (!_mainShowVideoData) {
        Byte value[] = {7, 72, 11, 106, 27, 223, 96, 20, 125, 98, 71, 107, 120, 125, 140, 124, 128, 121, 8};
        _mainShowVideoData = [self StringFromEmergencyData:value];
    }
    return _mainShowVideoData;
}

//: /team/getTeamSetting
- (NSString *)showAgainstViseData {
    if (!_showAgainstViseData) {
        Byte value[] = {20, 98, 13, 71, 132, 165, 192, 63, 199, 137, 1, 131, 203, 145, 214, 199, 195, 207, 145, 201, 199, 214, 182, 199, 195, 207, 181, 199, 214, 214, 203, 208, 201, 13};
        _showAgainstViseData = [self StringFromEmergencyData:value];
    }
    return _showAgainstViseData;
}

//: 扩展消息
- (NSString *)main_itemHandleData {
    if (!_main_itemHandleData) {
        Byte value[] = {12, 55, 6, 229, 212, 214, 29, 192, 224, 28, 232, 204, 29, 237, 191, 29, 184, 230, 135};
        _main_itemHandleData = [self StringFromEmergencyData:value];
    }
    return _main_itemHandleData;
}

//: code
- (NSString *)m_pollutionData {
    if (!_m_pollutionData) {
        Byte value[] = {4, 52, 7, 141, 240, 227, 166, 151, 163, 152, 153, 65};
        _m_pollutionData = [self StringFromEmergencyData:value];
    }
    return _m_pollutionData;
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
#import "OnenseViewController.h"
//: #import "FFFCardHeaderCell.h"
#import "NameReusableView.h"
//: #import "FFFTeamCardMemberItem.h"
#import "MessageItem.h"
//: #import "FFFTeamMemberCardViewController.h"
#import "SodalistViewController.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "FFFTeamListDataManager.h"
#import "ShowManager.h"
//: #import "NTESPersonalCardViewController.h"
#import "SystemViewController.h"
//: #import "NTESContactDataCell.h"
#import "BeView.h"
//: #import "FFFGroupMemberTableViewCell.h"
#import "HomeboyViewCell.h"
//: #import "FFFContactSelectViewController.h"
#import "CompartmentViewController.h"

//: typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);
typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

//: @interface CCCTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>
@interface OnenseViewController ()<UITableViewDataSource,UITableViewDelegate,NeedInfoName,MagnitudeDelegate>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <ColorActionClean> dataSource;
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
@implementation OnenseViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (instancetype)initWithDataSource:(FFFTeamListDataManager *)dataSource {
- (instancetype)initWithName:(ShowManager *)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _teamListManager = dataSource;
        _teamListManager = dataSource;
        //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
        NSString *kNIMTeamListDataTeamMembersChanged = [EmergencyData sharedInstance].noti_balanceName;
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recording:) name:kNIMTeamListDataTeamMembersChanged object:nil];
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
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)rightNavButtonClick{
- (void)thoughtImage{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        RecentMessage *config = [[RecentMessage alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc high];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self use];
    //: [self loadMuteListData];
    [self heading];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[EmergencyData sharedInstance].showAgainstViseData] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[EmergencyData sharedInstance].m_pollutionData];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[EmergencyData sharedInstance].showThreadContent];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
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
- (void)use {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[EmergencyData sharedInstance].userCommentText] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice heightShowStop]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [InputRed preserve:[EmergencyData sharedInstance].notiButtonName];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice heightShowStop]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    submitButton.backgroundColor = [UIColor ground:[EmergencyData sharedInstance].mainShowVideoData];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[EmergencyData sharedInstance].show_bubbleData] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(thoughtImage) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])) style:UITableViewStyleGrouped];
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
- (void)heading {

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
- (void)text:(NSString *)uid analyze:(BOOL)mute
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
            [self heading];

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
                msg = [InputRed preserve:[EmergencyData sharedInstance].notiKeepValue];
            //: }else{
            }else{
                //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [InputRed preserve:[EmergencyData sharedInstance].noti_hideName];
            }
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];

//            [self.tableView reloadData];
            //: [self loadMuteListData];
            [self heading];
         //: }];
         }];
    }
}
//: - (void)cellShouldBeRemoved:(NSString *)uid
- (void)untilImage:(NSString *)uid
{
    //: [FFFKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager color:@[uid] minority:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [KitEffectView should];
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
    HomeboyViewCell *cell = [HomeboyViewCell byColor:tableView];
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSString *uId = _teamListManager.memberIds[indexPath.section];
    NSString *uId = _teamListManager.memberIds[indexPath.section];
    //: FFFKitInfo *usrInfo = [[MyUserKit sharedKit] infoByUser:uId option:nil];
    ConfirmationInfo *usrInfo = [[MessageContent secretResolution] recent:uId blue:nil];

    //: [cell reloadWithUserId:uId];
    [cell characteristicRootOfASquareMatrix:uId];
    //: [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    //: cell.titleLabel.text = usrInfo.showName;
    cell.titleLabel.text = usrInfo.showName;
    //: cell.subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    cell.subtitleLabel.text = [InputRed preserve:[EmergencyData sharedInstance].m_afternoonContent];

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
    NSString *canMemberInfo = [_teamSettingConfig route:[EmergencyData sharedInstance].mDrugValue];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {
        //: NSString *uId = _teamListManager.memberIds[indexPath.section];
        NSString *uId = _teamListManager.memberIds[indexPath.section];
//    SodalistViewController *vc = [[SodalistViewController alloc] init];
//    vc.teamListManager = self.teamListManager;
//    vc.memberId = uId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        SystemViewController *vc = [[SystemViewController alloc] initWithAdd:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)anointExamine:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self toText:selectedContacts table:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)toText:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            table:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[EmergencyData sharedInstance].main_againstData] = [EmergencyData sharedInstance].main_itemHandleData;
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[EmergencyData sharedInstance].k_congressionalContent] = [EmergencyData sharedInstance].appKeepContent.titleBy;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[EmergencyData sharedInstance].k_congressionalContent] = [EmergencyData sharedInstance].show_makeText.titleBy;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[EmergencyData sharedInstance].k_congressionalContent] = [EmergencyData sharedInstance].m_seriesTitle.titleBy;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [KitEffectView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager small:userIds yieldShared:info net:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [KitEffectView dismiss];

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
- (void)recording:(NSNotification *)note {

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: @end
@end