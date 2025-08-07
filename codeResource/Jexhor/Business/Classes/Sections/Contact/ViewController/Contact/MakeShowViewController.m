
#import <Foundation/Foundation.h>

@interface GammaHydroxybutyrateData : NSObject

+ (instancetype)sharedInstance;

//: #FF483D
@property (nonatomic, copy) NSString *appIconPath;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *show_underContent;

//: ic_tip_r
@property (nonatomic, copy) NSString *appInsideContentCropFormat;

//: black_list_activity_black
@property (nonatomic, copy) NSString *notiCenterInsidePath;

//: ic_none_blockList
@property (nonatomic, copy) NSString *show_withStyleFormat;

//: back_arrow_bl
@property (nonatomic, copy) NSString *m_randomTitle;

//: #FFF6CF
@property (nonatomic, copy) NSString *main_statusMsg;

//: #999999
@property (nonatomic, copy) NSString *showSpaceStr;

//: group_info_activity_without
@property (nonatomic, copy) NSString *dream_equalImageMessageName;

//: group_chat_avatar_activity_add_black_success
@property (nonatomic, copy) NSString *main_contentIconKey;

//: friend_delete_fail
@property (nonatomic, copy) NSString *kNameMessage;

//: black_list_activity_black_list_tip
@property (nonatomic, copy) NSString *dream_threadPath;

//: #F6F7FA
@property (nonatomic, copy) NSString *app_buttonMarginId;

@end

@implementation GammaHydroxybutyrateData

+ (instancetype)sharedInstance {
    static GammaHydroxybutyrateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)GammaHydroxybutyrateDataToCache:(Byte *)data {
    int message = data[0];
    int complete = data[1];
    for (int i = 0; i < message / 2; i++) {
        int begin = complete + i;
        int end = complete + message - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[complete + message] = 0;
    return data + complete;
}

- (NSString *)StringFromGammaHydroxybutyrateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GammaHydroxybutyrateDataToCache:data]];
}  

//: black_list_activity_black
- (NSString *)notiCenterInsidePath {
    if (!_notiCenterInsidePath) {
        Byte value[] = {25, 7, 194, 122, 116, 214, 60, 107, 99, 97, 108, 98, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 225};
        _notiCenterInsidePath = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _notiCenterInsidePath;
}

//: #FF483D
- (NSString *)appIconPath {
    if (!_appIconPath) {
        Byte value[] = {7, 10, 10, 69, 172, 193, 228, 112, 255, 32, 68, 51, 56, 52, 70, 70, 35, 12};
        _appIconPath = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _appIconPath;
}

//: group_info_activity_op_failed
- (NSString *)show_underContent {
    if (!_show_underContent) {
        Byte value[] = {29, 7, 153, 81, 109, 249, 209, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 106};
        _show_underContent = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _show_underContent;
}

//: friend_delete_fail
- (NSString *)kNameMessage {
    if (!_kNameMessage) {
        Byte value[] = {18, 12, 206, 100, 142, 218, 218, 141, 93, 27, 94, 183, 108, 105, 97, 102, 95, 101, 116, 101, 108, 101, 100, 95, 100, 110, 101, 105, 114, 102, 164};
        _kNameMessage = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _kNameMessage;
}

//: ic_tip_r
- (NSString *)appInsideContentCropFormat {
    if (!_appInsideContentCropFormat) {
        Byte value[] = {8, 6, 166, 65, 47, 185, 114, 95, 112, 105, 116, 95, 99, 105, 114};
        _appInsideContentCropFormat = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _appInsideContentCropFormat;
}

//: #FFF6CF
- (NSString *)main_statusMsg {
    if (!_main_statusMsg) {
        Byte value[] = {7, 8, 12, 37, 24, 206, 89, 85, 70, 67, 54, 70, 70, 70, 35, 72};
        _main_statusMsg = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _main_statusMsg;
}

//: #F6F7FA
- (NSString *)app_buttonMarginId {
    if (!_app_buttonMarginId) {
        Byte value[] = {7, 4, 254, 163, 65, 70, 55, 70, 54, 70, 35, 186};
        _app_buttonMarginId = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _app_buttonMarginId;
}

//: back_arrow_bl
- (NSString *)m_randomTitle {
    if (!_m_randomTitle) {
        Byte value[] = {13, 4, 68, 112, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 112};
        _m_randomTitle = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _m_randomTitle;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)main_contentIconKey {
    if (!_main_contentIconKey) {
        Byte value[] = {44, 10, 119, 255, 162, 253, 230, 124, 13, 102, 115, 115, 101, 99, 99, 117, 115, 95, 107, 99, 97, 108, 98, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 114, 97, 116, 97, 118, 97, 95, 116, 97, 104, 99, 95, 112, 117, 111, 114, 103, 142};
        _main_contentIconKey = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _main_contentIconKey;
}

//: ic_none_blockList
- (NSString *)show_withStyleFormat {
    if (!_show_withStyleFormat) {
        Byte value[] = {17, 3, 121, 116, 115, 105, 76, 107, 99, 111, 108, 98, 95, 101, 110, 111, 110, 95, 99, 105, 95};
        _show_withStyleFormat = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _show_withStyleFormat;
}

//: group_info_activity_without
- (NSString *)dream_equalImageMessageName {
    if (!_dream_equalImageMessageName) {
        Byte value[] = {27, 11, 212, 156, 113, 55, 221, 129, 90, 113, 3, 116, 117, 111, 104, 116, 105, 119, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 29};
        _dream_equalImageMessageName = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _dream_equalImageMessageName;
}

//: black_list_activity_black_list_tip
- (NSString *)dream_threadPath {
    if (!_dream_threadPath) {
        Byte value[] = {34, 5, 42, 50, 26, 112, 105, 116, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 108};
        _dream_threadPath = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _dream_threadPath;
}

//: #999999
- (NSString *)showSpaceStr {
    if (!_showSpaceStr) {
        Byte value[] = {7, 11, 14, 141, 73, 229, 249, 86, 125, 37, 234, 57, 57, 57, 57, 57, 57, 35, 244};
        _showSpaceStr = [self StringFromGammaHydroxybutyrateData:value];
    }
    return _showSpaceStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeShowViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "ShouldViewCell.h"
//#import "ReadView.h"

// __M_A_C_R_O__
//: #import "CCCBlackListViewController.h"
#import "MakeShowViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "FFFContactSelectViewController.h"
#import "SwitchlyViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "NTESContactDataMember.h"
#import "InformationMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "TingView.h"

//: @interface CCCBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NTESUserListCellDelegate>
@interface MakeShowViewController ()<UITableViewDataSource,UITableViewDelegate,BackgroundDelegate,VideoTemp>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//@property (nonatomic,strong) ReadView *header;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;


//: @end
@end

//: @implementation CCCBlackListViewController
@implementation MakeShowViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor user:[GammaHydroxybutyrateData sharedInstance].app_buttonMarginId];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[GammaHydroxybutyrateData sharedInstance].m_randomTitle] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [BackgroundRandomAttribute content:[GammaHydroxybutyrateData sharedInstance].notiCenterInsidePath];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice title])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-30) style:UITableViewStyleGrouped];
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

    //: [self loadTheView];
    [self transom];
}

//: - (void)loadTheView
- (void)transom
{
    //: self.data = self.myBlackListUser;
    self.data = self.outLanguage;
    //: if (self.data.count>0) {
    if (self.data.count>0) {
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

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
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
    TingView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[TingView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.section];
    InformationMember *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell picture:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NTESContactDataMember *member = self.data[indexPath.section];
    InformationMember *member = self.data[indexPath.section];

    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.info.infoId];
    AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber {
- (void)withs:(InformationMember *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView reloadData];
                //: if (wself.data.count>0) {
                if (wself.data.count>0) {
                    //: wself.defView.hidden = YES;
                    wself.defView.hidden = YES;
                    //: wself.tableView.hidden = NO;
                    wself.tableView.hidden = NO;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else{
                }else{
                    //: wself.defView.hidden = NO;
                    wself.defView.hidden = NO;
                    //: wself.tableView.hidden = YES;
                    wself.tableView.hidden = YES;
                }
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[BackgroundRandomAttribute content:[GammaHydroxybutyrateData sharedInstance].kNameMessage] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)onOpera:(id)sender{
- (void)comicOpera:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (NTESContactDataMember *member in self.data) {
    for (InformationMember *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    CheckedConfig *config = [[CheckedConfig alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc metadata];
}


//: #pragma mark - NTESContactSelectDelegate
#pragma mark - NTESContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)endSelect:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[BackgroundRandomAttribute content:[GammaHydroxybutyrateData sharedInstance].main_contentIconKey] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.outLanguage;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[BackgroundRandomAttribute content:[GammaHydroxybutyrateData sharedInstance].show_underContent] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)upgrade
{
}

//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)outLanguage{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        InformationMember *member = [[InformationMember alloc] init];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        DataTeam *info = [[Secret highlight] infoAndStraddleOption:user.userId item:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor user:[GammaHydroxybutyrateData sharedInstance].main_statusMsg];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[GammaHydroxybutyrateData sharedInstance].appInsideContentCropFormat];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor user:[GammaHydroxybutyrateData sharedInstance].appIconPath];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [BackgroundRandomAttribute content:[GammaHydroxybutyrateData sharedInstance].dream_threadPath];
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
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:[GammaHydroxybutyrateData sharedInstance].show_withStyleFormat];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor user:[GammaHydroxybutyrateData sharedInstance].showSpaceStr];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [BackgroundRandomAttribute content:[GammaHydroxybutyrateData sharedInstance].dream_equalImageMessageName];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end