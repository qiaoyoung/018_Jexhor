
#import <Foundation/Foundation.h>

@interface ModeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ModeData

+ (instancetype)sharedInstance {
    static ModeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ModeDataToCache:(Byte *)data {
    int labelCan = data[0];
    Byte viseDoing = data[1];
    int imageSlice = data[2];
    for (int i = imageSlice; i < imageSlice + labelCan; i++) {
        int value = data[i] - viseDoing;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[imageSlice + labelCan] = 0;
    return data + imageSlice;
}

- (NSString *)StringFromModeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ModeDataToCache:data]];
}

//: ic_tip_r
- (NSString *)dreamSizeText {
    /* static */ NSString *dreamSizeText = nil;
    if (!dreamSizeText) {
        Byte value[] = {8, 75, 3, 180, 174, 170, 191, 180, 187, 170, 189, 111};
        dreamSizeText = [self StringFromModeData:value];
    }
    return dreamSizeText;
}

//: ic_none_blockList
- (NSString *)dream_viewData {
    /* static */ NSString *dream_viewData = nil;
    if (!dream_viewData) {
        Byte value[] = {17, 61, 6, 127, 235, 72, 166, 160, 156, 171, 172, 171, 162, 156, 159, 169, 172, 160, 168, 137, 166, 176, 177, 213};
        dream_viewData = [self StringFromModeData:value];
    }
    return dream_viewData;
}

//: #F6F7FA
- (NSString *)kNovelButtonName {
    /* static */ NSString *kNovelButtonName = nil;
    if (!kNovelButtonName) {
        Byte value[] = {7, 90, 7, 102, 233, 176, 157, 125, 160, 144, 160, 145, 160, 155, 207};
        kNovelButtonName = [self StringFromModeData:value];
    }
    return kNovelButtonName;
}

//: back_arrow_bl
- (NSString *)k_viewValue {
    /* static */ NSString *k_viewValue = nil;
    if (!k_viewValue) {
        Byte value[] = {13, 8, 8, 98, 5, 212, 80, 30, 106, 105, 107, 115, 103, 105, 122, 122, 119, 127, 103, 106, 116, 96};
        k_viewValue = [self StringFromModeData:value];
    }
    return k_viewValue;
}

//: black_list_activity_black_list_tip
- (NSString *)dreamLimitValue {
    /* static */ NSString *dreamLimitValue = nil;
    if (!dreamLimitValue) {
        Byte value[] = {34, 26, 4, 121, 124, 134, 123, 125, 133, 121, 134, 131, 141, 142, 121, 123, 125, 142, 131, 144, 131, 142, 147, 121, 124, 134, 123, 125, 133, 121, 134, 131, 141, 142, 121, 142, 131, 138, 200};
        dreamLimitValue = [self StringFromModeData:value];
    }
    return dreamLimitValue;
}

//: #Work6CF
- (NSString *)userHandleData {
    /* static */ NSString *userHandleData = nil;
    if (!userHandleData) {
        Byte value[] = {7, 86, 5, 33, 20, 121, 156, 156, 156, 140, 153, 156, 19};
        userHandleData = [self StringFromModeData:value];
    }
    return userHandleData;
}

//: #FF483D
- (NSString *)k_imageName {
    /* static */ NSString *k_imageName = nil;
    if (!k_imageName) {
        Byte value[] = {7, 78, 11, 230, 114, 130, 130, 126, 57, 34, 180, 113, 148, 148, 130, 134, 129, 146, 182};
        k_imageName = [self StringFromModeData:value];
    }
    return k_imageName;
}

//: group_info_activity_without
- (NSString *)appVideoValue {
    /* static */ NSString *appVideoValue = nil;
    if (!appVideoValue) {
        Byte value[] = {27, 5, 5, 131, 136, 108, 119, 116, 122, 117, 100, 110, 115, 107, 116, 100, 102, 104, 121, 110, 123, 110, 121, 126, 100, 124, 110, 121, 109, 116, 122, 121, 239};
        appVideoValue = [self StringFromModeData:value];
    }
    return appVideoValue;
}

//: #999999
- (NSString *)kCousinDisableTitle {
    /* static */ NSString *kCousinDisableTitle = nil;
    if (!kCousinDisableTitle) {
        Byte value[] = {7, 52, 3, 87, 109, 109, 109, 109, 109, 109, 103};
        kCousinDisableTitle = [self StringFromModeData:value];
    }
    return kCousinDisableTitle;
}

//: group_chat_avatar_activity_remove_black_success
- (NSString *)showQuickName {
    /* static */ NSString *showQuickName = nil;
    if (!showQuickName) {
        Byte value[] = {47, 39, 12, 160, 88, 142, 148, 194, 19, 107, 33, 244, 142, 153, 150, 156, 151, 134, 138, 143, 136, 155, 134, 136, 157, 136, 155, 136, 153, 134, 136, 138, 155, 144, 157, 144, 155, 160, 134, 153, 140, 148, 150, 157, 140, 134, 137, 147, 136, 138, 146, 134, 154, 156, 138, 138, 140, 154, 154, 225};
        showQuickName = [self StringFromModeData:value];
    }
    return showQuickName;
}

//: black_list_activity_black
- (NSString *)m_givingData {
    /* static */ NSString *m_givingData = nil;
    if (!m_givingData) {
        Byte value[] = {25, 83, 3, 181, 191, 180, 182, 190, 178, 191, 188, 198, 199, 178, 180, 182, 199, 188, 201, 188, 199, 204, 178, 181, 191, 180, 182, 190, 234};
        m_givingData = [self StringFromModeData:value];
    }
    return m_givingData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityViewController.m
// MessageContent
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkTeamMuteMemberListViewController.h"
#import "ActivityViewController.h"
//: #import "WorkTeamMemberCardViewController.h"
#import "SodalistViewController.h"
//: #import "WorkCardHeaderCell.h"
#import "NameReusableView.h"
//: #import "WorkTeamCardMemberItem.h"
#import "MessageItem.h"
//: #import "WorkKitDependency.h"
#import "WorkKitDependency.h"
//: #import "WorkKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "NTESContactDataMember.h"
#import "PresentItem.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "FileView.h"

//: @interface WorkTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NTESUserListCellDelegate>
@interface ActivityViewController ()<UITableViewDataSource,UITableViewDelegate,TextFactor>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NSMutableArray *memberList;
@property (nonatomic,strong) NSMutableArray *memberList;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation WorkTeamMuteMemberListViewController
@implementation ActivityViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self corner];
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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor ground:[[ModeData sharedInstance] kNovelButtonName]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[ModeData sharedInstance] k_viewValue]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [InputRed preserve:[[ModeData sharedInstance] m_givingData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTeamManageList];
    [self corner];
}


//: - (void)loadTeamManageList
- (void)corner
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: self.memberList = [NSMutableArray arrayWithArray:members];
            self.memberList = [NSMutableArray arrayWithArray:members];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        }
    //: }];
    }];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.memberList.count;
    return self.memberList.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    FileView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[FileView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];
    //: [cell refreshData:member];
    [cell doingShow:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];

    //: WorkTeamMemberCardViewController *vc = [[WorkTeamMemberCardViewController alloc] init];
    SodalistViewController *vc = [[SodalistViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: vc.memberId = member.userId;
    vc.memberId = member.userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
- (void)notTouch:(NIMTeamMember *)teamMemeber
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:NO
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             //: userId:teamMemeber.userId
                                             userId:teamMemeber.userId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {

        //: if(!error) {
        if(!error) {
            //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"group_chat_avatar_activity_remove_black_success"]
            [self.view makeToast:[InputRed preserve:[[ModeData sharedInstance] showQuickName]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self.memberList removeObject:teamMemeber];
            [self.memberList removeObject:teamMemeber];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        //: }else{
        }else{
            //: [self.view makeToast:error.description
            [self.view makeToast:error.description
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
     //: }];
     }];
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#Work6CF"];
        _box.backgroundColor = [UIColor ground:[[ModeData sharedInstance] userHandleData]];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[[ModeData sharedInstance] dreamSizeText]];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor ground:[[ModeData sharedInstance] k_imageName]];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [WorkLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [InputRed preserve:[[ModeData sharedInstance] dreamLimitValue]];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}
//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:[[ModeData sharedInstance] dream_viewData]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor ground:[[ModeData sharedInstance] kCousinDisableTitle]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [WorkLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [InputRed preserve:[[ModeData sharedInstance] appVideoValue]];


    }
    //: return _defView;
    return _defView;
}




//: @end
@end
