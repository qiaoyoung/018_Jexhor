
#import <Foundation/Foundation.h>

@interface SizeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SizeData

+ (instancetype)sharedInstance {
    static SizeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SizeDataToCache:(Byte *)data {
    int fastening = data[0];
    int buttonDevice = data[1];
    for (int i = 0; i < fastening / 2; i++) {
        int begin = buttonDevice + i;
        int end = buttonDevice + fastening - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[buttonDevice + fastening] = 0;
    return data + buttonDevice;
}

- (NSString *)StringFromSizeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SizeDataToCache:data]];
}  

//: #2C3042
- (NSString *)noti_viewMessage {
    /* static */ NSString *noti_viewMessage = nil;
    if (!noti_viewMessage) {
        Byte value[] = {7, 6, 172, 46, 85, 72, 50, 52, 48, 51, 67, 50, 35, 29};
        noti_viewMessage = [self StringFromSizeData:value];
    }
    return noti_viewMessage;
}

//: account
- (NSString *)dreamUnderData {
    /* static */ NSString *dreamUnderData = nil;
    if (!dreamUnderData) {
        Byte value[] = {7, 8, 126, 55, 79, 132, 32, 204, 116, 110, 117, 111, 99, 99, 97, 186};
        dreamUnderData = [self StringFromSizeData:value];
    }
    return dreamUnderData;
}

//: msg
- (NSString *)dreamViewData {
    /* static */ NSString *dreamViewData = nil;
    if (!dreamViewData) {
        Byte value[] = {3, 8, 172, 246, 49, 205, 216, 162, 103, 115, 109, 34};
        dreamViewData = [self StringFromSizeData:value];
    }
    return dreamViewData;
}

//: fuid
- (NSString *)app_nameEnableStr {
    /* static */ NSString *app_nameEnableStr = nil;
    if (!app_nameEnableStr) {
        Byte value[] = {4, 8, 83, 188, 71, 150, 211, 14, 100, 105, 117, 102, 137};
        app_nameEnableStr = [self StringFromSizeData:value];
    }
    return app_nameEnableStr;
}

//: request_successful
- (NSString *)notiMaxSizeStr {
    /* static */ NSString *notiMaxSizeStr = nil;
    if (!notiMaxSizeStr) {
        Byte value[] = {18, 12, 119, 93, 93, 101, 63, 5, 173, 17, 47, 250, 108, 117, 102, 115, 115, 101, 99, 99, 117, 115, 95, 116, 115, 101, 117, 113, 101, 114, 242};
        notiMaxSizeStr = [self StringFromSizeData:value];
    }
    return notiMaxSizeStr;
}

//: #EEEEEE
- (NSString *)appTapStr {
    /* static */ NSString *appTapStr = nil;
    if (!appTapStr) {
        Byte value[] = {7, 6, 15, 13, 153, 113, 69, 69, 69, 69, 69, 69, 35, 44};
        appTapStr = [self StringFromSizeData:value];
    }
    return appTapStr;
}

//: group_info_activity_number_no
- (NSString *)appMarginTitleCropFormat {
    /* static */ NSString *appMarginTitleCropFormat = nil;
    if (!appMarginTitleCropFormat) {
        Byte value[] = {29, 8, 76, 105, 77, 69, 255, 149, 111, 110, 95, 114, 101, 98, 109, 117, 110, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 111};
        appMarginTitleCropFormat = [self StringFromSizeData:value];
    }
    return appMarginTitleCropFormat;
}

//: add_friend_add_fail
- (NSString *)noti_centerButtonDisplayFormat {
    /* static */ NSString *noti_centerButtonDisplayFormat = nil;
    if (!noti_centerButtonDisplayFormat) {
        Byte value[] = {19, 2, 108, 105, 97, 102, 95, 100, 100, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 62};
        noti_centerButtonDisplayFormat = [self StringFromSizeData:value];
    }
    return noti_centerButtonDisplayFormat;
}

//: /user/recommend
- (NSString *)dream_tapSubMessage {
    /* static */ NSString *dream_tapSubMessage = nil;
    if (!dream_tapSubMessage) {
        Byte value[] = {15, 8, 34, 158, 184, 154, 204, 42, 100, 110, 101, 109, 109, 111, 99, 101, 114, 47, 114, 101, 115, 117, 47, 32};
        dream_tapSubMessage = [self StringFromSizeData:value];
    }
    return dream_tapSubMessage;
}

//: data
- (NSString *)dreamShowKey {
    /* static */ NSString *dreamShowKey = nil;
    if (!dreamShowKey) {
        Byte value[] = {4, 2, 97, 116, 97, 100, 242};
        dreamShowKey = [self StringFromSizeData:value];
    }
    return dreamShowKey;
}

//: #FAF8FD
- (NSString *)noti_coverId {
    /* static */ NSString *noti_coverId = nil;
    if (!noti_coverId) {
        Byte value[] = {7, 8, 121, 245, 70, 203, 58, 35, 68, 70, 56, 70, 65, 70, 35, 200};
        noti_coverId = [self StringFromSizeData:value];
    }
    return noti_coverId;
}

//: add_friend_activity_add_friend
- (NSString *)user_atMarginMsg {
    /* static */ NSString *user_atMarginMsg = nil;
    if (!user_atMarginMsg) {
        Byte value[] = {30, 9, 162, 144, 224, 7, 202, 173, 103, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 221};
        user_atMarginMsg = [self StringFromSizeData:value];
    }
    return user_atMarginMsg;
}

//: hot_guys
- (NSString *)show_insideMsg {
    /* static */ NSString *show_insideMsg = nil;
    if (!show_insideMsg) {
        Byte value[] = {8, 7, 54, 228, 34, 180, 97, 115, 121, 117, 103, 95, 116, 111, 104, 90};
        show_insideMsg = [self StringFromSizeData:value];
    }
    return show_insideMsg;
}

//: icon_search_w
- (NSString *)k_completePath {
    /* static */ NSString *k_completePath = nil;
    if (!k_completePath) {
        Byte value[] = {13, 11, 151, 15, 19, 177, 181, 123, 153, 148, 14, 119, 95, 104, 99, 114, 97, 101, 115, 95, 110, 111, 99, 105, 1};
        k_completePath = [self StringFromSizeData:value];
    }
    return k_completePath;
}

//: my_qr
- (NSString *)kColorValue {
    /* static */ NSString *kColorValue = nil;
    if (!kColorValue) {
        Byte value[] = {5, 5, 108, 109, 37, 114, 113, 95, 121, 109, 39};
        kColorValue = [self StringFromSizeData:value];
    }
    return kColorValue;
}

//: add_friend_request_fail
- (NSString *)userKeyTapContainerFormat {
    /* static */ NSString *userKeyTapContainerFormat = nil;
    if (!userKeyTapContainerFormat) {
        Byte value[] = {23, 5, 63, 242, 246, 108, 105, 97, 102, 95, 116, 115, 101, 117, 113, 101, 114, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 12};
        userKeyTapContainerFormat = [self StringFromSizeData:value];
    }
    return userKeyTapContainerFormat;
}

//: contact_tag_fragment_add_success
- (NSString *)kButtonInputValue {
    /* static */ NSString *kButtonInputValue = nil;
    if (!kButtonInputValue) {
        Byte value[] = {32, 10, 227, 79, 51, 173, 26, 134, 34, 141, 115, 115, 101, 99, 99, 117, 115, 95, 100, 100, 97, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 245};
        kButtonInputValue = [self StringFromSizeData:value];
    }
    return kButtonInputValue;
}

//: uid
- (NSString *)mainSizeText {
    /* static */ NSString *mainSizeText = nil;
    if (!mainSizeText) {
        Byte value[] = {3, 12, 172, 133, 219, 33, 1, 119, 87, 187, 45, 248, 100, 105, 117, 151};
        mainSizeText = [self StringFromSizeData:value];
    }
    return mainSizeText;
}

//: #05D481
- (NSString *)kContainerId {
    /* static */ NSString *kContainerId = nil;
    if (!kContainerId) {
        Byte value[] = {7, 11, 190, 56, 86, 61, 19, 122, 242, 164, 170, 49, 56, 52, 68, 53, 48, 35, 155};
        kContainerId = [self StringFromSizeData:value];
    }
    return kContainerId;
}

//: please_contact_your_administrator
- (NSString *)noti_contentFormat {
    /* static */ NSString *noti_contentFormat = nil;
    if (!noti_contentFormat) {
        Byte value[] = {33, 12, 72, 9, 161, 170, 91, 225, 110, 56, 234, 111, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 114, 117, 111, 121, 95, 116, 99, 97, 116, 110, 111, 99, 95, 101, 115, 97, 101, 108, 112, 31};
        noti_contentFormat = [self StringFromSizeData:value];
    }
    return noti_contentFormat;
}

//: back_arrow_bl
- (NSString *)showMaxViewValue {
    /* static */ NSString *showMaxViewValue = nil;
    if (!showMaxViewValue) {
        Byte value[] = {13, 2, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 200};
        showMaxViewValue = [self StringFromSizeData:value];
    }
    return showMaxViewValue;
}

//: add_friend_activity_input_account
- (NSString *)dreamVoiceKey {
    /* static */ NSString *dreamVoiceKey = nil;
    if (!dreamVoiceKey) {
        Byte value[] = {33, 6, 81, 3, 186, 223, 116, 110, 117, 111, 99, 99, 97, 95, 116, 117, 112, 110, 105, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 219};
        dreamVoiceKey = [self StringFromSizeData:value];
    }
    return dreamVoiceKey;
}

//: ic_scan
- (NSString *)kDeviceToData {
    /* static */ NSString *kDeviceToData = nil;
    if (!kDeviceToData) {
        Byte value[] = {7, 11, 121, 144, 151, 57, 224, 79, 251, 131, 223, 110, 97, 99, 115, 95, 99, 105, 118};
        kDeviceToData = [self StringFromSizeData:value];
    }
    return kDeviceToData;
}

//: code
- (NSString *)kInputPath {
    /* static */ NSString *kInputPath = nil;
    if (!kInputPath) {
        Byte value[] = {4, 10, 156, 165, 141, 186, 135, 74, 75, 84, 101, 100, 111, 99, 64};
        kInputPath = [self StringFromSizeData:value];
    }
    return kInputPath;
}

//: tuid
- (NSString *)notiCancelMessage {
    /* static */ NSString *notiCancelMessage = nil;
    if (!notiCancelMessage) {
        Byte value[] = {4, 4, 215, 8, 100, 105, 117, 116, 102};
        notiCancelMessage = [self StringFromSizeData:value];
    }
    return notiCancelMessage;
}

//: #333333
- (NSString *)show_pathText {
    /* static */ NSString *show_pathText = nil;
    if (!show_pathText) {
        Byte value[] = {7, 2, 51, 51, 51, 51, 51, 51, 35, 24};
        show_pathText = [self StringFromSizeData:value];
    }
    return show_pathText;
}

//: /user/search
- (NSString *)showContainerKey {
    /* static */ NSString *showContainerKey = nil;
    if (!showContainerKey) {
        Byte value[] = {12, 5, 168, 40, 54, 104, 99, 114, 97, 101, 115, 47, 114, 101, 115, 117, 47, 91};
        showContainerKey = [self StringFromSizeData:value];
    }
    return showContainerKey;
}

//: /user/checkAddFriendEx
- (NSString *)dream_iconId {
    /* static */ NSString *dream_iconId = nil;
    if (!dream_iconId) {
        Byte value[] = {22, 10, 176, 55, 52, 108, 82, 106, 236, 193, 120, 69, 100, 110, 101, 105, 114, 70, 100, 100, 65, 107, 99, 101, 104, 99, 47, 114, 101, 115, 117, 47, 11};
        dream_iconId = [self StringFromSizeData:value];
    }
    return dream_iconId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendViewController.h"
#import "TotalViewController.h"
//: #import "NTESContactAddFriendCell.h"
#import "HockeyTeamView.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "EnableViewController.h"
//: #import "SNDevice.h"
#import "DemonstrateDevice.h"
//: #import "CCCLoginManager.h"
#import "MessageImage.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "LCQRCodeUtil.h"
#import "ShouldTo.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "CCCContactScanViewController.h"
#import "MessageViewController.h"
//: #import "ZMONMyQRcodeView.h"
#import "ToView.h"
//: #import "ZMONFriendCardViewController.h"
#import "LabelViewController.h"
//: #import "RecommendfriendTableViewCell.h"
#import "MaxViewCell.h"

//: @interface NTESContactAddFriendViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,RecommendfriendCellDelegate>
@interface TotalViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,MessageDelegate>

//: @property (nonatomic ,strong) UITextField *textField;
@property (nonatomic ,strong) UITextField *textField;
//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;
//: @property (nonatomic ,strong) UIImageView *qrImgview;
@property (nonatomic ,strong) UIImageView *qrImgview;
//: @property (nonatomic ,strong) UILabel *tipsLabel;
@property (nonatomic ,strong) UILabel *tipsLabel;

//: @property (nonatomic ,strong) ZMONMyQRcodeView *MyQRcodeView;
@property (nonatomic ,strong) ToView *MyQRcodeView;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,copy) NSArray *friendList;
@property (nonatomic,copy) NSArray *friendList;

//: @end
@end

//: @implementation NTESContactAddFriendViewController
@implementation TotalViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice title], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(ranged:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[[SizeData sharedInstance] showMaxViewValue]] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

    //: UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice title], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: labNavtitle.textColor = [UIColor blackColor];
    labNavtitle.textColor = [UIColor blackColor];
    //: labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labNavtitle.text = [PushLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    labNavtitle.text = [BackgroundRandomAttribute content:[[SizeData sharedInstance] user_atMarginMsg]];
    //: labNavtitle.textAlignment = NSTextAlignmentCenter;
    labNavtitle.textAlignment = NSTextAlignmentCenter;
    //: [navview addSubview:labNavtitle];
    [navview addSubview:labNavtitle];

    //: UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice vg_statusBarHeight], 40, 40);
    myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice title], 40, 40);
    //: [myQrBtn addTarget:self action:@selector(QRCodeButtnClick) forControlEvents:UIControlEventTouchUpInside];
    [myQrBtn addTarget:self action:@selector(itemPlace) forControlEvents:UIControlEventTouchUpInside];
    //: [myQrBtn setImage:[UIImage imageNamed:@"my_qr"] forState:UIControlStateNormal];
    [myQrBtn setImage:[UIImage imageNamed:[[SizeData sharedInstance] kColorValue]] forState:UIControlStateNormal];
    //: [navview addSubview:myQrBtn];
    [navview addSubview:myQrBtn];


    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 80)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title]), [[UIScreen mainScreen] bounds].size.width, 80)];
    //: topview.backgroundColor = [UIColor whiteColor];
    topview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];


    //: UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: searchView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    searchView.backgroundColor = [UIColor user:[[SizeData sharedInstance] noti_coverId]];
    //: searchView.layer.cornerRadius = 28;
    searchView.layer.cornerRadius = 28;
    //: [topview addSubview:searchView];
    [topview addSubview:searchView];

    //: UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [btnScan addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    [btnScan addTarget:self action:@selector(progressMax) forControlEvents:UIControlEventTouchUpInside];
    //: btnScan.frame = CGRectMake(15, 8, 40, 40);
    btnScan.frame = CGRectMake(15, 8, 40, 40);
    //: [btnScan setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [btnScan setImage:[UIImage imageNamed:[[SizeData sharedInstance] kDeviceToData]] forState:UIControlStateNormal];
    //: [searchView addSubview:btnScan];
    [searchView addSubview:btnScan];


    //: [searchView addSubview:self.textField];
    [searchView addSubview:self.textField];
    //: self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);
    self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);


    //: UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    //: btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    //: [btnSearch setImage:[UIImage imageNamed:@"icon_search_w"] forState:UIControlStateNormal];
    [btnSearch setImage:[UIImage imageNamed:[[SizeData sharedInstance] k_completePath]] forState:UIControlStateNormal];
    //: [btnSearch addTarget:self action:@selector(doneSearch) forControlEvents:UIControlEventTouchUpInside];
    [btnSearch addTarget:self action:@selector(commentBy) forControlEvents:UIControlEventTouchUpInside];
    //: btnSearch.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    btnSearch.backgroundColor = [UIColor user:[[SizeData sharedInstance] kContainerId]];
    //: btnSearch.layer.cornerRadius = 20;
    btnSearch.layer.cornerRadius = 20;
    //: [searchView addSubview:btnSearch];
    [searchView addSubview:btnSearch];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor user:[[SizeData sharedInstance] appTapStr]];
    //: [topview addSubview:lineview];
    [topview addSubview:lineview];

    //: UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    //: labRecommended.font = [UIFont systemFontOfSize:14.f];
    labRecommended.font = [UIFont systemFontOfSize:14.f];
    //: labRecommended.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labRecommended.textColor = [UIColor user:[[SizeData sharedInstance] noti_viewMessage]];
    //: labRecommended.text = [PushLanguageManager getTextWithKey:@"hot_guys"];
    labRecommended.text = [BackgroundRandomAttribute content:[[SizeData sharedInstance] show_insideMsg]];
    //: [self.view addSubview:labRecommended];
    [self.view addSubview:labRecommended];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-110) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-110) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: [self.tableView registerClass:[RecommendfriendTableViewCell class] forCellReuseIdentifier:@"RecommendfriendTableViewCell"];
    [self.tableView registerClass:[MaxViewCell class] forCellReuseIdentifier:@"MaxViewCell"];

    //: [self getNetServer];
    [self inputAcross];
}

//: - (void)gotoBack:(id)sender {
- (void)ranged:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)QRCodeButtnClick
- (void)itemPlace
{
//    [self.view addSubview:self.MyQRcodeView];
//    [self.MyQRcodeView animationShow];

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc]init];
    EnableViewController *vc = [[EnableViewController alloc]init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)getNetServer{
- (void)inputAcross{

//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/recommend"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[SizeData sharedInstance] dream_tapSubMessage]] view:nil fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"%@",resultDict);
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[[SizeData sharedInstance] kInputPath]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: self.friendList = [resultDict valueObjectForKey:@"data"];
            self.friendList = [resultDict already:[[SizeData sharedInstance] dreamShowKey]];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)progressMax{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    MessageViewController *vc = [[MessageViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doneSearch{
- (void)commentBy{
    //: [self goSearch:_textField];
    [self infoBackground:_textField];
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [self goSearch:textField];
    [self infoBackground:textField];
    //: return YES;
    return YES;
}

//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //: return YES;
    return YES;
}

//: -(void)goSearch:(UITextField *)textField{
-(void)infoBackground:(UITextField *)textField{
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
    //: NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if (userId.length) {
    if (userId.length) {
        //: userId = [userId lowercaseString];
        userId = [userId lowercaseString];
        //: [self addFriend:userId];
        [self fit:userId];
    }
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.friendList.count;
    return self.friendList.count;
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
    //: return 12.f;
    return 12.f;
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
    //: return .1f;
    return .1f;
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

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: RecommendfriendTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RecommendfriendTableViewCell" forIndexPath:indexPath];
    MaxViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"MaxViewCell" forIndexPath:indexPath];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
//    NSString *uId = [dic newStringValueForKey:@"id"];

    //: [cell refreshWithModel:dic];
    [cell modelText:dic];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
    //: NSString *uId = [dic newStringValueForKey:@"id"];
    NSString *uId = [dic index:@"id"];

//    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:uId];
//    if (isMyFriend) {
        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
//    }else{
//        LabelViewController *vc = [[LabelViewController alloc] initWithUserId:uId];
//        [self.navigationController pushViewController:vc animated:YES];
//    }

}

//: - (void)didTouchAdddButton:(NSString *)memberId
- (void)eyeglasses:(NSString *)memberId
{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [CrossShouldBlock towardScaleOfMeasurement].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = memberId;
    request.userId = memberId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [PushLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [BackgroundRandomAttribute content:[[SizeData sharedInstance] kButtonInputValue]];//@"添加成功".
    //: NSString *request_successful = [PushLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [BackgroundRandomAttribute content:[[SizeData sharedInstance] notiMaxSizeStr]];//@"请求成功".
    //: NSString *add_friend_add_fail = [PushLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [BackgroundRandomAttribute content:[[SizeData sharedInstance] noti_centerButtonDisplayFormat]];//@"添加失败".
    //: NSString *add_friend_request_fail = [PushLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [BackgroundRandomAttribute content:[[SizeData sharedInstance] userKeyTapContainerFormat]];//@"请求失败".
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}


//: - (UITextField *)textField{
- (UITextField *)textField{
    //: if(!_textField){
    if(!_textField){
        //: _textField = [[UITextField alloc]init];
        _textField = [[UITextField alloc]init];
        //: _textField.placeholder = [PushLanguageManager getTextWithKey:@"add_friend_activity_input_account"];
        _textField.placeholder = [BackgroundRandomAttribute content:[[SizeData sharedInstance] dreamVoiceKey]];
        //: _textField.textColor = [UIColor colorWithHexString:@"#333333"];
        _textField.textColor = [UIColor user:[[SizeData sharedInstance] show_pathText]];
        //: _textField.font = [UIFont systemFontOfSize:14];
        _textField.font = [UIFont systemFontOfSize:14];
        //: _textField.delegate = self;
        _textField.delegate = self;
        //: _textField.returnKeyType = UIReturnKeyDone;
        _textField.returnKeyType = UIReturnKeyDone;
    }
    //: return _textField;
    return _textField;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addFriend:(NSString *)userId
- (void)fit:(NSString *)userId
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:[[SizeData sharedInstance] dreamUnderData]];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[SizeData sharedInstance] showContainerKey]] view:dict fort:YES generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[[SizeData sharedInstance] kInputPath]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict index:[[SizeData sharedInstance] dreamViewData]];

        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[[SizeData sharedInstance] dreamShowKey]];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data index:[[SizeData sharedInstance] mainSizeText]];
            //: [wself sendAddrequest:uid];
            [wself actuarialTable:uid];

        //: }else {
        }else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD packetMessage:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: -(void)sendAddrequest:(NSString *)uid{
-(void)actuarialTable:(NSString *)uid{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (users.count) {
        if (users.count) {
            //: [self checkIsAdmin:uid];
            [self user:uid];
        //: }else{
        }else{
            //: if (wself) {
            if (wself) {
                //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"group_info_activity_number_no"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[BackgroundRandomAttribute content:[[SizeData sharedInstance] appMarginTitleCropFormat]] duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}

//: -(void)checkIsAdmin:(NSString *)userId{
-(void)user:(NSString *)userId{

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"fuid"] = [[NIMSDK sharedSDK].loginManager currentAccount];
    dict[[[SizeData sharedInstance] app_nameEnableStr]] = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: dict[@"tuid"] = userId;
    dict[[[SizeData sharedInstance] notiCancelMessage]] = userId;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkAddFriendEx"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[SizeData sharedInstance] dream_iconId]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[[SizeData sharedInstance] kInputPath]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //跳转详情

            //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            //: if (isMyFriend) {
            if (isMyFriend) {
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
                AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            //: }else{
            }else{
                //: ZMONFriendCardViewController *vc = [[ZMONFriendCardViewController alloc] initWithUserId:userId];
                LabelViewController *vc = [[LabelViewController alloc] initWithColor:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            }


        //: }else{
        }else{
            //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
            [wself.view makeToast:[BackgroundRandomAttribute content:[[SizeData sharedInstance] noti_contentFormat]] duration:2.0 position:CSToastPositionCenter];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
        //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
        [wself.view makeToast:[BackgroundRandomAttribute content:[[SizeData sharedInstance] noti_contentFormat]] duration:2.0 position:CSToastPositionCenter];
    //: }];
    }];
}

//: - (ZMONMyQRcodeView *)MyQRcodeView
- (ToView *)MyQRcodeView
{
    //: if(!_MyQRcodeView){
    if(!_MyQRcodeView){
        //: _MyQRcodeView = [[ZMONMyQRcodeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _MyQRcodeView = [[ToView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _MyQRcodeView;
    return _MyQRcodeView;
}

//: @end
@end
