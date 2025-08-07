
#import <Foundation/Foundation.h>

@interface BalancedData : NSObject

+ (instancetype)sharedInstance;

//: #F6F7FA
@property (nonatomic, copy) NSString *dream_custodyId;

//: #FF483D
@property (nonatomic, copy) NSString *noti_commissionContent;

//: clear_notice
@property (nonatomic, copy) NSString *mainHisId;

//: sure_to_clear
@property (nonatomic, copy) NSString *show_essentialFormat;

//: team_create_helper_create_success
@property (nonatomic, copy) NSString *user_dancePath;

//: add_noticess
@property (nonatomic, copy) NSString *userViewChiefMessage;

//: Clean_success
@property (nonatomic, copy) NSString *mainJuryPath;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *userConstantMsg;

//: Create_group_announcement
@property (nonatomic, copy) NSString *mainPickPath;

//: title
@property (nonatomic, copy) NSString *m_conductPath;

//: time
@property (nonatomic, copy) NSString *appDetectiveKey;

//: #05D481
@property (nonatomic, copy) NSString *dreamRoughData;

//: creator
@property (nonatomic, copy) NSString *main_chartTingKey;

//: delete
@property (nonatomic, copy) NSString *m_thankNuclearId;

//: content
@property (nonatomic, copy) NSString *mainOurselvesMessage;

//: #999999
@property (nonatomic, copy) NSString *mainAffairMessage;

//: icon_add_w
@property (nonatomic, copy) NSString *show_trafficValue;

//: user_profile_avtivity_edit
@property (nonatomic, copy) NSString *mVileSnapIdent;

//: back_arrow_bl
@property (nonatomic, copy) NSString *mInfoUrl;

//: ic_none_announcement
@property (nonatomic, copy) NSString *notiAlreadyInputStr;

//: No_group_announcement
@property (nonatomic, copy) NSString *k_userData;

//: activity_group_info_group_toast
@property (nonatomic, copy) NSString *user_costlyTheaterName;

@end

@implementation BalancedData

+ (instancetype)sharedInstance {
    static BalancedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BalancedDataToCache:(Byte *)data {
    int cantilever = data[0];
    int expose = data[1];
    for (int i = 0; i < cantilever / 2; i++) {
        int begin = expose + i;
        int end = expose + cantilever - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[expose + cantilever] = 0;
    return data + expose;
}

- (NSString *)StringFromBalancedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BalancedDataToCache:data]];
}  

//: title
- (NSString *)m_conductPath {
    if (!_m_conductPath) {
        Byte value[] = {5, 10, 9, 47, 108, 191, 82, 210, 141, 62, 101, 108, 116, 105, 116, 8};
        _m_conductPath = [self StringFromBalancedData:value];
    }
    return _m_conductPath;
}

//: delete
- (NSString *)m_thankNuclearId {
    if (!_m_thankNuclearId) {
        Byte value[] = {6, 11, 27, 215, 140, 140, 223, 248, 25, 38, 193, 101, 116, 101, 108, 101, 100, 236};
        _m_thankNuclearId = [self StringFromBalancedData:value];
    }
    return _m_thankNuclearId;
}

//: time
- (NSString *)appDetectiveKey {
    if (!_appDetectiveKey) {
        Byte value[] = {4, 7, 52, 179, 166, 184, 81, 101, 109, 105, 116, 169};
        _appDetectiveKey = [self StringFromBalancedData:value];
    }
    return _appDetectiveKey;
}

//: clear_notice
- (NSString *)mainHisId {
    if (!_mainHisId) {
        Byte value[] = {12, 11, 130, 229, 99, 66, 82, 127, 244, 240, 71, 101, 99, 105, 116, 111, 110, 95, 114, 97, 101, 108, 99, 18};
        _mainHisId = [self StringFromBalancedData:value];
    }
    return _mainHisId;
}

//: back_arrow_bl
- (NSString *)mInfoUrl {
    if (!_mInfoUrl) {
        Byte value[] = {13, 10, 212, 186, 133, 142, 10, 124, 86, 58, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 248};
        _mInfoUrl = [self StringFromBalancedData:value];
    }
    return _mInfoUrl;
}

//: user_profile_avtivity_edit
- (NSString *)mVileSnapIdent {
    if (!_mVileSnapIdent) {
        Byte value[] = {26, 2, 116, 105, 100, 101, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 98};
        _mVileSnapIdent = [self StringFromBalancedData:value];
    }
    return _mVileSnapIdent;
}

//: sure_to_clear
- (NSString *)show_essentialFormat {
    if (!_show_essentialFormat) {
        Byte value[] = {13, 6, 206, 248, 107, 104, 114, 97, 101, 108, 99, 95, 111, 116, 95, 101, 114, 117, 115, 122};
        _show_essentialFormat = [self StringFromBalancedData:value];
    }
    return _show_essentialFormat;
}

//: team_create_helper_create_failed
- (NSString *)userConstantMsg {
    if (!_userConstantMsg) {
        Byte value[] = {32, 11, 109, 190, 135, 109, 15, 110, 161, 122, 242, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 101, 114, 99, 95, 114, 101, 112, 108, 101, 104, 95, 101, 116, 97, 101, 114, 99, 95, 109, 97, 101, 116, 237};
        _userConstantMsg = [self StringFromBalancedData:value];
    }
    return _userConstantMsg;
}

//: #999999
- (NSString *)mainAffairMessage {
    if (!_mainAffairMessage) {
        Byte value[] = {7, 8, 129, 125, 100, 21, 29, 176, 57, 57, 57, 57, 57, 57, 35, 91};
        _mainAffairMessage = [self StringFromBalancedData:value];
    }
    return _mainAffairMessage;
}

//: ic_none_announcement
- (NSString *)notiAlreadyInputStr {
    if (!_notiAlreadyInputStr) {
        Byte value[] = {20, 2, 116, 110, 101, 109, 101, 99, 110, 117, 111, 110, 110, 97, 95, 101, 110, 111, 110, 95, 99, 105, 38};
        _notiAlreadyInputStr = [self StringFromBalancedData:value];
    }
    return _notiAlreadyInputStr;
}

//: Create_group_announcement
- (NSString *)mainPickPath {
    if (!_mainPickPath) {
        Byte value[] = {25, 12, 169, 49, 139, 190, 17, 136, 49, 119, 122, 246, 116, 110, 101, 109, 101, 99, 110, 117, 111, 110, 110, 97, 95, 112, 117, 111, 114, 103, 95, 101, 116, 97, 101, 114, 67, 60};
        _mainPickPath = [self StringFromBalancedData:value];
    }
    return _mainPickPath;
}

//: No_group_announcement
- (NSString *)k_userData {
    if (!_k_userData) {
        Byte value[] = {21, 4, 204, 236, 116, 110, 101, 109, 101, 99, 110, 117, 111, 110, 110, 97, 95, 112, 117, 111, 114, 103, 95, 111, 78, 221};
        _k_userData = [self StringFromBalancedData:value];
    }
    return _k_userData;
}

//: creator
- (NSString *)main_chartTingKey {
    if (!_main_chartTingKey) {
        Byte value[] = {7, 10, 16, 57, 7, 70, 221, 142, 35, 2, 114, 111, 116, 97, 101, 114, 99, 95};
        _main_chartTingKey = [self StringFromBalancedData:value];
    }
    return _main_chartTingKey;
}

//: add_noticess
- (NSString *)userViewChiefMessage {
    if (!_userViewChiefMessage) {
        Byte value[] = {12, 3, 213, 115, 115, 101, 99, 105, 116, 111, 110, 95, 100, 100, 97, 34};
        _userViewChiefMessage = [self StringFromBalancedData:value];
    }
    return _userViewChiefMessage;
}

//: activity_group_info_group_toast
- (NSString *)user_costlyTheaterName {
    if (!_user_costlyTheaterName) {
        Byte value[] = {31, 4, 247, 15, 116, 115, 97, 111, 116, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 250};
        _user_costlyTheaterName = [self StringFromBalancedData:value];
    }
    return _user_costlyTheaterName;
}

//: #F6F7FA
- (NSString *)dream_custodyId {
    if (!_dream_custodyId) {
        Byte value[] = {7, 6, 245, 3, 108, 200, 65, 70, 55, 70, 54, 70, 35, 31};
        _dream_custodyId = [self StringFromBalancedData:value];
    }
    return _dream_custodyId;
}

//: #05D481
- (NSString *)dreamRoughData {
    if (!_dreamRoughData) {
        Byte value[] = {7, 10, 82, 241, 128, 47, 145, 108, 243, 209, 49, 56, 52, 68, 53, 48, 35, 72};
        _dreamRoughData = [self StringFromBalancedData:value];
    }
    return _dreamRoughData;
}

//: team_create_helper_create_success
- (NSString *)user_dancePath {
    if (!_user_dancePath) {
        Byte value[] = {33, 7, 252, 41, 119, 151, 165, 115, 115, 101, 99, 99, 117, 115, 95, 101, 116, 97, 101, 114, 99, 95, 114, 101, 112, 108, 101, 104, 95, 101, 116, 97, 101, 114, 99, 95, 109, 97, 101, 116, 240};
        _user_dancePath = [self StringFromBalancedData:value];
    }
    return _user_dancePath;
}

//: Clean_success
- (NSString *)mainJuryPath {
    if (!_mainJuryPath) {
        Byte value[] = {13, 7, 193, 172, 205, 102, 208, 115, 115, 101, 99, 99, 117, 115, 95, 110, 97, 101, 108, 67, 146};
        _mainJuryPath = [self StringFromBalancedData:value];
    }
    return _mainJuryPath;
}

//: #FF483D
- (NSString *)noti_commissionContent {
    if (!_noti_commissionContent) {
        Byte value[] = {7, 9, 38, 250, 249, 48, 18, 151, 98, 68, 51, 56, 52, 70, 70, 35, 82};
        _noti_commissionContent = [self StringFromBalancedData:value];
    }
    return _noti_commissionContent;
}

//: content
- (NSString *)mainOurselvesMessage {
    if (!_mainOurselvesMessage) {
        Byte value[] = {7, 4, 102, 220, 116, 110, 101, 116, 110, 111, 99, 192};
        _mainOurselvesMessage = [self StringFromBalancedData:value];
    }
    return _mainOurselvesMessage;
}

//: icon_add_w
- (NSString *)show_trafficValue {
    if (!_show_trafficValue) {
        Byte value[] = {10, 7, 233, 7, 183, 47, 199, 119, 95, 100, 100, 97, 95, 110, 111, 99, 105, 20};
        _show_trafficValue = [self StringFromBalancedData:value];
    }
    return _show_trafficValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushTeamAnnouncementListViewController.h"
#import "ProclamationTeamLightMemoryListViewController.h"
//: #import "PushUsrInfoData.h"
#import "PushUsrInfoData.h"
//: #import "PushCreateTeamAnnouncement.h"
#import "DoingViewController.h"
//: #import "PushTeamAnnouncementListCell.h"
#import "DoinglyTouchView.h"
//: #import "PushKitDependency.h"
#import "PushKitDependency.h"
//: #import "PushKitProgressHUD.h"
#import "CoverView.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "LEEAlert.h"
#import "BubbleAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "ZMONAlartView.h"
#import "ShouldView.h"

//: @interface PushTeamAnnouncementListViewController () <UITableViewDelegate,
@interface ProclamationTeamLightMemoryListViewController () <UITableViewDelegate,
                                                     //: UITableViewDataSource,
                                                     UITableViewDataSource,
                                                     //: NTESCreateTeamAnnouncementDelegate>
                                                     EnablelyDelegate>

//: @property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) NSMutableArray *announcements;;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NIMTeamAnnouncementListOption *option;
@property (nonatomic,strong) ToolOption *option;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) ShouldView *groupAlartView;

//: @end
@end

//: @implementation PushTeamAnnouncementListViewController
@implementation ProclamationTeamLightMemoryListViewController

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
- (instancetype)initWithKey:(ToolOption *)option {
    //: if (self = [super initWithNibName:nil bundle:nil]) {
    if (self = [super initWithNibName:nil bundle:nil]) {
        //: self.option = option;
        self.option = option;
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

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
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
    self.view.backgroundColor = [UIColor user:[BalancedData sharedInstance].dream_custodyId];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BalancedData sharedInstance].mInfoUrl] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    labtitle.text = [BackgroundRandomAttribute content:[BalancedData sharedInstance].user_costlyTheaterName];//群公告
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);
    self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
}

//: - (void)setOption:(NIMTeamAnnouncementListOption *)option {
- (void)setOption:(ToolOption *)option {
    //: _option = option;
    _option = option;
    //: [self updateAnnouncementsWithContent:option.announcement];
    [self itemCheck:option.announcement];
}

//: - (void)updateAnnouncementsWithContent:(NSString *)content {
- (void)itemCheck:(NSString *)content {
    //: if (content) {
    if (content) {
        //: NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        //: _announcements = [NSMutableArray arrayWithArray:datas];
        _announcements = [NSMutableArray arrayWithArray:datas];
    //: } else {
    } else {
        //: _announcements = nil;
        _announcements = nil;
    }
    //: if(_announcements == nil){
    if(_announcements == nil){
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.box.hidden = YES;
        self.box.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: self.box.hidden = NO;
            self.box.hidden = NO;
        }
    }
}

//: - (void)onCreateAnnouncement:(id)sender {
- (void)denominates:(id)sender {
    //: PushCreateTeamAnnouncement *vc = [[PushCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    DoingViewController *vc = [[DoingViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onEditAnnouncement:(id)sender {
- (void)languages:(id)sender {

    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;

    //: PushCreateTeamAnnouncement *vc = [[PushCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    DoingViewController *vc = [[DoingViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultTitle = [announcement objectForKey:[BalancedData sharedInstance].m_conductPath] ?: @"";
    //: vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    vc.defaultContent = [announcement objectForKey:[BalancedData sharedInstance].mainOurselvesMessage] ?: @"";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onCleanAnnouncement:(id)sender {
- (void)childIndexUser:(id)sender {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[PushLanguageManager getTextWithKey:@"sure_to_clear"]];
    [self.groupAlartView with:[BackgroundRandomAttribute content:[BalancedData sharedInstance].show_essentialFormat]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView head];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            // 删除点击事件Block
            //: [self cleanTeamAnnouncement];
            [self markLoad];
            //: [self.groupAlartView animationClose];
            [self.groupAlartView nearAdd];
        //: };
        };

//    __weak typeof(self) wself = self;
//
//    [BubbleAlert alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(TitleCenterInput *action) {
//            
//            action.type = LEEActionTypeCancel;
//            action.title = LangKey(@"contact_tag_fragment_cancel");//@"取消"
//            action.titleColor = [UIColor grayColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                
//                // 取消点击事件Block
//            };
//        })
//        .LeeAddAction(^(TitleCenterInput *action) {
//            
//            action.type = LEEActionTypeDefault;
//            action.title = LangKey(@"contact_tag_fragment_sure"); //@"确定";
//            action.titleColor = [UIColor redColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                // 删除点击事件Block
//                [wself cleanTeamAnnouncement];
//            };
//        })
//        .LeeHeaderColor([UIColor whiteColor])
//        .LeeShow();
}

//: - (void)cleanTeamAnnouncement
- (void)markLoad
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [PushKitProgressHUD show];
    [CoverView input];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        //: [PushKitProgressHUD dismiss];
        [CoverView pressed];
        //: if(!error && wself) {
        if(!error && wself) {
            //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"Clean_success"]];
            [wself.view makeToast:[BackgroundRandomAttribute content:[BalancedData sharedInstance].mainJuryPath]];// @"清理成功"
            //: wself.announcements = nil;
            wself.announcements = nil;
//            [wself.tableView reloadData];

            //: self.tableView.hidden = YES;
            self.tableView.hidden = YES;
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
            //: self.box.hidden = YES;
            self.box.hidden = YES;
        }
    //: }];
    }];
}


//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return _announcements.lastObject ? 1 : 0;
    return _announcements.lastObject ? 1 : 0;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: NSString *content = [announcement objectForKey:@"content"];
    NSString *content = [announcement objectForKey:[BalancedData sharedInstance].mainOurselvesMessage];

    //: return [PushTeamAnnouncementListCell cellHeight:content];
    return [DoinglyTouchView compartment:content];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: PushTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PushTeamAnnouncementListCell"];
    DoinglyTouchView *cell = [tableView dequeueReusableCellWithIdentifier:@"DoinglyTouchView"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[PushTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"PushTeamAnnouncementListCell"];
        cell = [[DoinglyTouchView alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"DoinglyTouchView"];
    }
    //: [cell refreshData:announcement nick:_option.nick];
    [cell select:announcement title:_option.nick];
//
//    DoinglyTouchView *cell = [tableView dequeueReusableCellWithIdentifier:@"DoinglyTouchView"];
//    [cell refreshData:announcement nick:_option.nick];
    //: return cell;
    return cell;
}

//: #pragma mark - CreateTeamAnnouncementDelegate
#pragma mark - CreateTeamAnnouncementDelegate
//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
- (void)quick:(NSString *)title doing:(NSString *)content {
    //: NSString *ret = nil;
    NSString *ret = nil;
    //: NSDictionary *announcement = @{@"title": title ?: @"",
    NSDictionary *announcement = @{[BalancedData sharedInstance].m_conductPath: title ?: @"",
                                   //: @"content": content ?: @"",
                                   [BalancedData sharedInstance].mainOurselvesMessage: content ?: @"",
                                   //: @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   [BalancedData sharedInstance].main_chartTingKey: [[NIMSDK sharedSDK].loginManager currentAccount],
                                   //: @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
                                   [BalancedData sharedInstance].appDetectiveKey: @((NSInteger)[NSDate date].timeIntervalSince1970)};

    //: NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    //: ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [PushKitProgressHUD show];
    [CoverView input];
    //: if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
    if ([_delegate respondsToSelector:@selector(begin:shouldUser:)]) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
        [_delegate begin:ret shouldUser:^(NSError *error) {
            //: [PushKitProgressHUD dismiss];
            [CoverView pressed];
            //: if(!error) {
            if(!error) {
                //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"team_create_helper_create_success"]];
                [wself.view makeToast:[BackgroundRandomAttribute content:[BalancedData sharedInstance].user_dancePath]];
                //: [wself updateAnnouncementsWithContent:ret];
                [wself itemCheck:ret];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: } else {
            } else {
                //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"team_create_helper_create_failed"]];
                [wself.view makeToast:[BackgroundRandomAttribute content:[BalancedData sharedInstance].userConstantMsg]];
            }
        //: }];
        }];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
//        _tableView.rowHeight = SCREEN_HEIGHT;
        //: [_tableView setTableFooterView:[UIView new]];
        [_tableView setTableFooterView:[UIView new]];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
    }
    //: return _tableView;
    return _tableView;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title]))];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        defImg.image = [UIImage imageNamed:[BalancedData sharedInstance].notiAlreadyInputStr];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor user:[BalancedData sharedInstance].mainAffairMessage];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [PushLanguageManager getTextWithKey:@"No_group_announcement"];
        emptyTipLabel.text = [BackgroundRandomAttribute content:[BalancedData sharedInstance].k_userData];

        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            //: emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            //: [emptyButton setTitle:[PushLanguageManager getTextWithKey:@"Create_group_announcement"] forState:UIControlStateNormal];
            [emptyButton setTitle:[BackgroundRandomAttribute content:[BalancedData sharedInstance].mainPickPath] forState:UIControlStateNormal];
            //: [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:[BalancedData sharedInstance].show_trafficValue] forState:UIControlStateNormal];
            //: [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [emptyButton addTarget:self action:@selector(denominates:) forControlEvents:UIControlEventTouchUpInside];
            //: [_defView addSubview:emptyButton];
            [_defView addSubview:emptyButton];
            //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
            emptyButton.backgroundColor = [UIColor user:[BalancedData sharedInstance].dreamRoughData];
            //: emptyButton.layer.cornerRadius = 22;
            emptyButton.layer.cornerRadius = 22;
            //: [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
            [emptyButton putUp:(MKButtonEdgeInsetsStyleLeft) line:10];
        }

    }
    //: return _defView;
    return _defView;
}

//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]init];
        _box = [[UIView alloc]init];
//        _box.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
////        [self.view addSubview:_box];
//        _box.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
//        _box.layer.shadowOffset = CGSizeMake(0,0);
//        _box.layer.shadowOpacity = 1;
//        _box.layer.shadowRadius = 12;
        //: _box.hidden = YES;
        _box.hidden = YES;

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeBtn.frame = CGRectMake(15, 10, width, 44);
        closeBtn.frame = CGRectMake(15, 10, width, 44);
        //: [closeBtn addTarget:self action:@selector(onEditAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [closeBtn addTarget:self action:@selector(languages:) forControlEvents:UIControlEventTouchUpInside];
       //: [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
       [closeBtn setImage:[UIImage imageNamed:[BalancedData sharedInstance].userViewChiefMessage] forState:UIControlStateNormal];
        //: closeBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        closeBtn.backgroundColor = [UIColor user:[BalancedData sharedInstance].dreamRoughData];
        //: closeBtn.layer.cornerRadius = 22;
        closeBtn.layer.cornerRadius = 22;
        //: closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeBtn setTitle:[PushLanguageManager getTextWithKey:@"user_profile_avtivity_edit"] forState:UIControlStateNormal];
        [closeBtn setTitle:[BackgroundRandomAttribute content:[BalancedData sharedInstance].mVileSnapIdent] forState:UIControlStateNormal];
        //: [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [closeBtn putUp:(MKButtonEdgeInsetsStyleLeft) line:10];
        //: [_box addSubview:closeBtn];
        [_box addSubview:closeBtn];


        //: UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        //: [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn addTarget:self action:@selector(childIndexUser:) forControlEvents:UIControlEventTouchUpInside];
        //: [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        [sureBtn setImage:[UIImage imageNamed:[BalancedData sharedInstance].mainHisId] forState:UIControlStateNormal];
        //: sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        sureBtn.backgroundColor = [UIColor user:[BalancedData sharedInstance].noti_commissionContent];
        //: sureBtn.layer.cornerRadius = 22;
        sureBtn.layer.cornerRadius = 22;
        //: sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [sureBtn setTitle:[PushLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [sureBtn setTitle:[BackgroundRandomAttribute content:[BalancedData sharedInstance].m_thankNuclearId] forState:UIControlStateNormal];
        //: [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [sureBtn putUp:(MKButtonEdgeInsetsStyleLeft) line:10];
        //: [_box addSubview:sureBtn];
        [_box addSubview:sureBtn];
    }
    //: return _box;
    return _box;
}

//: - (ZMONAlartView *)groupAlartView{
- (ShouldView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[ShouldView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}


//: @end
@end

//: @implementation NIMTeamAnnouncementListOption
@implementation ToolOption
//: @end
@end
