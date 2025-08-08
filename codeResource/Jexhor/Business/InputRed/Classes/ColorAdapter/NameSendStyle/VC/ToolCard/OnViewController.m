
#import <Foundation/Foundation.h>

@interface FortunateData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FortunateData

+ (instancetype)sharedInstance {
    static FortunateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FortunateDataToCache:(Byte *)data {
    int kidskin = data[0];
    Byte roar = data[1];
    int electionTossBike = data[2];
    for (int i = electionTossBike; i < electionTossBike + kidskin; i++) {
        int value = data[i] + roar;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[electionTossBike + kidskin] = 0;
    return data + electionTossBike;
}

- (NSString *)StringFromFortunateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FortunateDataToCache:data]];
}

//: title
- (NSString *)noti_accountValue {
    /* static */ NSString *noti_accountValue = nil;
    if (!noti_accountValue) {
        Byte value[] = {5, 37, 5, 82, 104, 79, 68, 79, 71, 64, 129};
        noti_accountValue = [self StringFromFortunateData:value];
    }
    return noti_accountValue;
}

//: back_arrow_bl
- (NSString *)dreamPresentValue {
    /* static */ NSString *dreamPresentValue = nil;
    if (!dreamPresentValue) {
        Byte value[] = {13, 22, 7, 3, 224, 30, 4, 76, 75, 77, 85, 73, 75, 92, 92, 89, 97, 73, 76, 86, 216};
        dreamPresentValue = [self StringFromFortunateData:value];
    }
    return dreamPresentValue;
}

//: user_profile_avtivity_edit
- (NSString *)app_northernData {
    /* static */ NSString *app_northernData = nil;
    if (!app_northernData) {
        Byte value[] = {26, 96, 3, 21, 19, 5, 18, 255, 16, 18, 15, 6, 9, 12, 5, 255, 1, 22, 20, 9, 22, 9, 20, 25, 255, 5, 4, 9, 20, 222};
        app_northernData = [self StringFromFortunateData:value];
    }
    return app_northernData;
}

//: clear_notice
- (NSString *)noti_soleKaName {
    /* static */ NSString *noti_soleKaName = nil;
    if (!noti_soleKaName) {
        Byte value[] = {12, 73, 7, 132, 220, 106, 220, 26, 35, 28, 24, 41, 22, 37, 38, 43, 32, 26, 28, 254};
        noti_soleKaName = [self StringFromFortunateData:value];
    }
    return noti_soleKaName;
}

//: creator
- (NSString *)dreamMaxEnrollInValue {
    /* static */ NSString *dreamMaxEnrollInValue = nil;
    if (!dreamMaxEnrollInValue) {
        Byte value[] = {7, 99, 7, 228, 7, 113, 149, 0, 15, 2, 254, 17, 12, 15, 235};
        dreamMaxEnrollInValue = [self StringFromFortunateData:value];
    }
    return dreamMaxEnrollInValue;
}

//: icon_add_w
- (NSString *)dreamComplainContent {
    /* static */ NSString *dreamComplainContent = nil;
    if (!dreamComplainContent) {
        Byte value[] = {10, 43, 11, 99, 145, 133, 16, 68, 80, 147, 230, 62, 56, 68, 67, 52, 54, 57, 57, 52, 76, 76};
        dreamComplainContent = [self StringFromFortunateData:value];
    }
    return dreamComplainContent;
}

//: #F6F7FA
- (NSString *)notiComfortPicText {
    /* static */ NSString *notiComfortPicText = nil;
    if (!notiComfortPicText) {
        Byte value[] = {7, 9, 7, 230, 217, 106, 105, 26, 61, 45, 61, 46, 61, 56, 50};
        notiComfortPicText = [self StringFromFortunateData:value];
    }
    return notiComfortPicText;
}

//: delete
- (NSString *)dreamGrandValue {
    /* static */ NSString *dreamGrandValue = nil;
    if (!dreamGrandValue) {
        Byte value[] = {6, 8, 11, 72, 172, 243, 204, 88, 14, 235, 235, 92, 93, 100, 93, 108, 93, 157};
        dreamGrandValue = [self StringFromFortunateData:value];
    }
    return dreamGrandValue;
}

//: #05D481
- (NSString *)showAfternoonValue {
    /* static */ NSString *showAfternoonValue = nil;
    if (!showAfternoonValue) {
        Byte value[] = {7, 20, 7, 65, 199, 34, 241, 15, 28, 33, 48, 32, 36, 29, 114};
        showAfternoonValue = [self StringFromFortunateData:value];
    }
    return showAfternoonValue;
}

//: team_create_helper_create_success
- (NSString *)app_twinValue {
    /* static */ NSString *app_twinValue = nil;
    if (!app_twinValue) {
        Byte value[] = {33, 25, 3, 91, 76, 72, 84, 70, 74, 89, 76, 72, 91, 76, 70, 79, 76, 83, 87, 76, 89, 70, 74, 89, 76, 72, 91, 76, 70, 90, 92, 74, 74, 76, 90, 90, 116};
        app_twinValue = [self StringFromFortunateData:value];
    }
    return app_twinValue;
}

//: time
- (NSString *)dream_enormousTitle {
    /* static */ NSString *dream_enormousTitle = nil;
    if (!dream_enormousTitle) {
        Byte value[] = {4, 86, 11, 25, 114, 190, 157, 23, 155, 247, 234, 30, 19, 23, 15, 150};
        dream_enormousTitle = [self StringFromFortunateData:value];
    }
    return dream_enormousTitle;
}

//: ic_none_announcement
- (NSString *)main_buttonGooName {
    /* static */ NSString *main_buttonGooName = nil;
    if (!main_buttonGooName) {
        Byte value[] = {20, 90, 5, 188, 174, 15, 9, 5, 20, 21, 20, 11, 5, 7, 20, 20, 21, 27, 20, 9, 11, 19, 11, 20, 26, 168};
        main_buttonGooName = [self StringFromFortunateData:value];
    }
    return main_buttonGooName;
}

//: sure_to_clear
- (NSString *)noti_pickYouthData {
    /* static */ NSString *noti_pickYouthData = nil;
    if (!noti_pickYouthData) {
        Byte value[] = {13, 53, 7, 214, 99, 72, 205, 62, 64, 61, 48, 42, 63, 58, 42, 46, 55, 48, 44, 61, 88};
        noti_pickYouthData = [self StringFromFortunateData:value];
    }
    return noti_pickYouthData;
}

//: activity_group_info_group_toast
- (NSString *)showElementaryTitle {
    /* static */ NSString *showElementaryTitle = nil;
    if (!showElementaryTitle) {
        Byte value[] = {31, 6, 10, 242, 63, 228, 177, 149, 204, 121, 91, 93, 110, 99, 112, 99, 110, 115, 89, 97, 108, 105, 111, 106, 89, 99, 104, 96, 105, 89, 97, 108, 105, 111, 106, 89, 110, 105, 91, 109, 110, 105};
        showElementaryTitle = [self StringFromFortunateData:value];
    }
    return showElementaryTitle;
}

//: content
- (NSString *)mCareData {
    /* static */ NSString *mCareData = nil;
    if (!mCareData) {
        Byte value[] = {7, 97, 8, 183, 132, 17, 34, 36, 2, 14, 13, 19, 4, 13, 19, 50};
        mCareData = [self StringFromFortunateData:value];
    }
    return mCareData;
}

//: No_group_announcement
- (NSString *)showSessionVehicleValue {
    /* static */ NSString *showSessionVehicleValue = nil;
    if (!showSessionVehicleValue) {
        Byte value[] = {21, 96, 4, 47, 238, 15, 255, 7, 18, 15, 21, 16, 255, 1, 14, 14, 15, 21, 14, 3, 5, 13, 5, 14, 20, 10};
        showSessionVehicleValue = [self StringFromFortunateData:value];
    }
    return showSessionVehicleValue;
}

//: add_noticess
- (NSString *)m_lengthRecallData {
    /* static */ NSString *m_lengthRecallData = nil;
    if (!m_lengthRecallData) {
        Byte value[] = {12, 22, 7, 156, 77, 66, 74, 75, 78, 78, 73, 88, 89, 94, 83, 77, 79, 93, 93, 67};
        m_lengthRecallData = [self StringFromFortunateData:value];
    }
    return m_lengthRecallData;
}

//: #999999
- (NSString *)userLeatherNapValue {
    /* static */ NSString *userLeatherNapValue = nil;
    if (!userLeatherNapValue) {
        Byte value[] = {7, 76, 5, 246, 40, 215, 237, 237, 237, 237, 237, 237, 1};
        userLeatherNapValue = [self StringFromFortunateData:value];
    }
    return userLeatherNapValue;
}

//: Clean_success
- (NSString *)mainSliceIllegalText {
    /* static */ NSString *mainSliceIllegalText = nil;
    if (!mainSliceIllegalText) {
        Byte value[] = {13, 96, 4, 125, 227, 12, 5, 1, 14, 255, 19, 21, 3, 3, 5, 19, 19, 192};
        mainSliceIllegalText = [self StringFromFortunateData:value];
    }
    return mainSliceIllegalText;
}

//: #FF483D
- (NSString *)user_zineWithData {
    /* static */ NSString *user_zineWithData = nil;
    if (!user_zineWithData) {
        Byte value[] = {7, 22, 4, 255, 13, 48, 48, 30, 34, 29, 46, 245};
        user_zineWithData = [self StringFromFortunateData:value];
    }
    return user_zineWithData;
}

//: Create_group_announcement
- (NSString *)m_beastValue {
    /* static */ NSString *m_beastValue = nil;
    if (!m_beastValue) {
        Byte value[] = {25, 95, 9, 163, 74, 234, 7, 201, 23, 228, 19, 6, 2, 21, 6, 0, 8, 19, 16, 22, 17, 0, 2, 15, 15, 16, 22, 15, 4, 6, 14, 6, 15, 21, 240};
        m_beastValue = [self StringFromFortunateData:value];
    }
    return m_beastValue;
}

//: team_create_helper_create_failed
- (NSString *)m_drugValue {
    /* static */ NSString *m_drugValue = nil;
    if (!m_drugValue) {
        Byte value[] = {32, 80, 11, 27, 143, 142, 235, 180, 145, 178, 71, 36, 21, 17, 29, 15, 19, 34, 21, 17, 36, 21, 15, 24, 21, 28, 32, 21, 34, 15, 19, 34, 21, 17, 36, 21, 15, 22, 17, 25, 28, 21, 20, 128};
        m_drugValue = [self StringFromFortunateData:value];
    }
    return m_drugValue;
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
//: #import "WorkTeamAnnouncementListViewController.h"
#import "OnViewController.h"
//: #import "WorkUsrInfoData.h"
#import "WorkUsrInfoData.h"
//: #import "WorkCreateTeamAnnouncement.h"
#import "DisplayColorViewController.h"
//: #import "WorkTeamAnnouncementListCell.h"
#import "RankView.h"
//: #import "WorkKitDependency.h"
#import "WorkKitDependency.h"
//: #import "WorkKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"
//: #import "LEEAlert.h"
#import "SendAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "ZMONAlartView.h"
#import "UncoloredView.h"

//: @interface WorkTeamAnnouncementListViewController () <UITableViewDelegate,
@interface OnViewController () <UITableViewDelegate,
                                                     //: UITableViewDataSource,
                                                     UITableViewDataSource,
                                                     //: NTESCreateTeamAnnouncementDelegate>
                                                     MessageStyleTitle>

//: @property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) NSMutableArray *announcements;;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NIMTeamAnnouncementListOption *option;
@property (nonatomic,strong) TeamStatus *option;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) UncoloredView *groupAlartView;

//: @end
@end

//: @implementation WorkTeamAnnouncementListViewController
@implementation OnViewController

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
- (instancetype)initWithManagerPressedDate:(TeamStatus *)option {
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
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor ground:[[FortunateData sharedInstance] notiComfortPicText]];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[FortunateData sharedInstance] dreamPresentValue]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    labtitle.text = [InputRed preserve:[[FortunateData sharedInstance] showElementaryTitle]];//群公告
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
- (void)setOption:(TeamStatus *)option {
    //: _option = option;
    _option = option;
    //: [self updateAnnouncementsWithContent:option.announcement];
    [self idiomContent:option.announcement];
}

//: - (void)updateAnnouncementsWithContent:(NSString *)content {
- (void)idiomContent:(NSString *)content {
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
- (void)ring:(id)sender {
    //: WorkCreateTeamAnnouncement *vc = [[WorkCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    DisplayColorViewController *vc = [[DisplayColorViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onEditAnnouncement:(id)sender {
- (void)shouldAnnouncement:(id)sender {

    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;

    //: WorkCreateTeamAnnouncement *vc = [[WorkCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    DisplayColorViewController *vc = [[DisplayColorViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultTitle = [announcement objectForKey:[[FortunateData sharedInstance] noti_accountValue]] ?: @"";
    //: vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    vc.defaultContent = [announcement objectForKey:[[FortunateData sharedInstance] mCareData]] ?: @"";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onCleanAnnouncement:(id)sender {
- (void)teams:(id)sender {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[WorkLanguageManager getTextWithKey:@"sure_to_clear"]];
    [self.groupAlartView pathTextname:[InputRed preserve:[[FortunateData sharedInstance] noti_pickYouthData]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView name];
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
            [self clean];
            //: [self.groupAlartView animationClose];
            [self.groupAlartView animationWithEnableAtHand];
        //: };
        };

//    __weak typeof(self) wself = self;
//
//    [SendAlert alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(NameVideo *action) {
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
//        .LeeAddAction(^(NameVideo *action) {
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
- (void)clean
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if(!error && wself) {
        if(!error && wself) {
            //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"Clean_success"]];
            [wself.view makeToast:[InputRed preserve:[[FortunateData sharedInstance] mainSliceIllegalText]]];// @"清理成功"
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
    NSString *content = [announcement objectForKey:[[FortunateData sharedInstance] mCareData]];

    //: return [WorkTeamAnnouncementListCell cellHeight:content];
    return [RankView custom:content];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: WorkTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorkTeamAnnouncementListCell"];
    RankView *cell = [tableView dequeueReusableCellWithIdentifier:@"RankView"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[WorkTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"WorkTeamAnnouncementListCell"];
        cell = [[RankView alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"RankView"];
    }
    //: [cell refreshData:announcement nick:_option.nick];
    [cell cell:announcement reloadFrameNick:_option.nick];
//
//    RankView *cell = [tableView dequeueReusableCellWithIdentifier:@"RankView"];
//    [cell refreshData:announcement nick:_option.nick];
    //: return cell;
    return cell;
}

//: #pragma mark - CreateTeamAnnouncementDelegate
#pragma mark - CreateTeamAnnouncementDelegate
//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
- (void)s:(NSString *)title outsideRecent:(NSString *)content {
    //: NSString *ret = nil;
    NSString *ret = nil;
    //: NSDictionary *announcement = @{@"title": title ?: @"",
    NSDictionary *announcement = @{[[FortunateData sharedInstance] noti_accountValue]: title ?: @"",
                                   //: @"content": content ?: @"",
                                   [[FortunateData sharedInstance] mCareData]: content ?: @"",
                                   //: @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   [[FortunateData sharedInstance] dreamMaxEnrollInValue]: [[NIMSDK sharedSDK].loginManager currentAccount],
                                   //: @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
                                   [[FortunateData sharedInstance] dream_enormousTitle]: @((NSInteger)[NSDate date].timeIntervalSince1970)};

    //: NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    //: ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
    if ([_delegate respondsToSelector:@selector(mark:announcement:)]) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
        [_delegate mark:ret announcement:^(NSError *error) {
            //: [WorkKitProgressHUD dismiss];
            [KitEffectView should];
            //: if(!error) {
            if(!error) {
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"team_create_helper_create_success"]];
                [wself.view makeToast:[InputRed preserve:[[FortunateData sharedInstance] app_twinValue]]];
                //: [wself updateAnnouncementsWithContent:ret];
                [wself idiomContent:ret];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: } else {
            } else {
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"team_create_helper_create_failed"]];
                [wself.view makeToast:[InputRed preserve:[[FortunateData sharedInstance] m_drugValue]]];
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
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
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
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop]))];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        defImg.image = [UIImage imageNamed:[[FortunateData sharedInstance] main_buttonGooName]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor ground:[[FortunateData sharedInstance] userLeatherNapValue]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [WorkLanguageManager getTextWithKey:@"No_group_announcement"];
        emptyTipLabel.text = [InputRed preserve:[[FortunateData sharedInstance] showSessionVehicleValue]];

        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            //: emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            //: [emptyButton setTitle:[WorkLanguageManager getTextWithKey:@"Create_group_announcement"] forState:UIControlStateNormal];
            [emptyButton setTitle:[InputRed preserve:[[FortunateData sharedInstance] m_beastValue]] forState:UIControlStateNormal];
            //: [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:[[FortunateData sharedInstance] dreamComplainContent]] forState:UIControlStateNormal];
            //: [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [emptyButton addTarget:self action:@selector(ring:) forControlEvents:UIControlEventTouchUpInside];
            //: [_defView addSubview:emptyButton];
            [_defView addSubview:emptyButton];
            //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
            emptyButton.backgroundColor = [UIColor ground:[[FortunateData sharedInstance] showAfternoonValue]];
            //: emptyButton.layer.cornerRadius = 22;
            emptyButton.layer.cornerRadius = 22;
            //: [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
            [emptyButton cookie:(MKButtonEdgeInsetsStyleLeft) disable:10];
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
        [closeBtn addTarget:self action:@selector(shouldAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
       //: [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
       [closeBtn setImage:[UIImage imageNamed:[[FortunateData sharedInstance] m_lengthRecallData]] forState:UIControlStateNormal];
        //: closeBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        closeBtn.backgroundColor = [UIColor ground:[[FortunateData sharedInstance] showAfternoonValue]];
        //: closeBtn.layer.cornerRadius = 22;
        closeBtn.layer.cornerRadius = 22;
        //: closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"user_profile_avtivity_edit"] forState:UIControlStateNormal];
        [closeBtn setTitle:[InputRed preserve:[[FortunateData sharedInstance] app_northernData]] forState:UIControlStateNormal];
        //: [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [closeBtn cookie:(MKButtonEdgeInsetsStyleLeft) disable:10];
        //: [_box addSubview:closeBtn];
        [_box addSubview:closeBtn];


        //: UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        //: [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn addTarget:self action:@selector(teams:) forControlEvents:UIControlEventTouchUpInside];
        //: [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        [sureBtn setImage:[UIImage imageNamed:[[FortunateData sharedInstance] noti_soleKaName]] forState:UIControlStateNormal];
        //: sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        sureBtn.backgroundColor = [UIColor ground:[[FortunateData sharedInstance] user_zineWithData]];
        //: sureBtn.layer.cornerRadius = 22;
        sureBtn.layer.cornerRadius = 22;
        //: sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [sureBtn setTitle:[WorkLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [sureBtn setTitle:[InputRed preserve:[[FortunateData sharedInstance] dreamGrandValue]] forState:UIControlStateNormal];
        //: [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [sureBtn cookie:(MKButtonEdgeInsetsStyleLeft) disable:10];
        //: [_box addSubview:sureBtn];
        [_box addSubview:sureBtn];
    }
    //: return _box;
    return _box;
}

//: - (ZMONAlartView *)groupAlartView{
- (UncoloredView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[UncoloredView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}


//: @end
@end

//: @implementation NIMTeamAnnouncementListOption
@implementation TeamStatus
//: @end
@end
