
#import <Foundation/Foundation.h>

@interface OlaData : NSObject

+ (instancetype)sharedInstance;

//: user_tip
@property (nonatomic, copy) NSString *mYaShowValue;

//: vpn
@property (nonatomic, copy) NSString *showAccelerateName;

//: register_account_activity_account
@property (nonatomic, copy) NSString *user_needAtChangeValue;

//: login_icon_pwd
@property (nonatomic, copy) NSString *main_towerHighlightValue;

//: register_account
@property (nonatomic, copy) NSString *mainAcceptableQuickData;

//: ^[A-Za-z0-9_]{6,12}$
@property (nonatomic, copy) NSString *app_successValue;

//: login_icon_user
@property (nonatomic, copy) NSString *show_quickText;

//: #05D481
@property (nonatomic, copy) NSString *mIllegalValue;

//: invitecode
@property (nonatomic, copy) NSString *app_showQuickName;

//: ic_visible
@property (nonatomic, copy) NSString *kDrugData;

//: tun
@property (nonatomic, copy) NSString *appTitleValue;

//: pass_tip
@property (nonatomic, copy) NSString *user_ambitionData;

//: #F6F6F6
@property (nonatomic, copy) NSString *noti_pressParentText;

//: activity_login_login
@property (nonatomic, copy) NSString *notiLabelName;

//: SELF MATCHES %@
@property (nonatomic, copy) NSString *showCrowdedTitlePlaceValue;

//: #999999
@property (nonatomic, copy) NSString *notiSeriesSessionTitle;

//: ic_invisible
@property (nonatomic, copy) NSString *userCongressionalText;

//: login_agreement_normal
@property (nonatomic, copy) NSString *appTowerTitle;

//: tap
@property (nonatomic, copy) NSString *main_pollutionCousinData;

//: __SCOPED__
@property (nonatomic, copy) NSString *k_itemOldName;

//: iOS
@property (nonatomic, copy) NSString *dream_targetText;

//: ic_close_b
@property (nonatomic, copy) NSString *kUndertakeData;

//: login_logo
@property (nonatomic, copy) NSString *show_atWithName;

//: #333333
@property (nonatomic, copy) NSString *show_valueUniteData;

//: password
@property (nonatomic, copy) NSString *main_viewEraseForText;

//: ppp
@property (nonatomic, copy) NSString *userHighlightName;

//: account
@property (nonatomic, copy) NSString *user_suspectData;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *user_milkContent;

//: pass_user
@property (nonatomic, copy) NSString *showSeverData;

//: login_agreement_press
@property (nonatomic, copy) NSString *kChangeName;

//: client
@property (nonatomic, copy) NSString *mTitleData;

//: ^[A-Za-z0-9_]{6,18}$
@property (nonatomic, copy) NSString *main_videoData;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *main_canName;

//: activity_register_agree
@property (nonatomic, copy) NSString *dreamScaleButtonEmergencyName;

//: login_bg
@property (nonatomic, copy) NSString *kPlaceHideName;

//: register_account_activity_psw
@property (nonatomic, copy) NSString *app_scaleData;

//: activity_register_next
@property (nonatomic, copy) NSString *show_earlName;

//: mobilecode
@property (nonatomic, copy) NSString *show_undertakeName;

@end

@implementation OlaData

+ (instancetype)sharedInstance {
    static OlaData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OlaDataToCache:(Byte *)data {
    int cousinHide = data[0];
    Byte scaleButton = data[1];
    int congressional = data[2];
    for (int i = congressional; i < congressional + cousinHide; i++) {
        int value = data[i] + scaleButton;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[congressional + cousinHide] = 0;
    return data + congressional;
}

- (NSString *)StringFromOlaData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OlaDataToCache:data]];
}

//: ic_visible
- (NSString *)kDrugData {
    if (!_kDrugData) {
        Byte value[] = {10, 85, 4, 61, 20, 14, 10, 33, 20, 30, 20, 13, 23, 16, 63};
        _kDrugData = [self StringFromOlaData:value];
    }
    return _kDrugData;
}

//: Read_agree_agreement
- (NSString *)user_milkContent {
    if (!_user_milkContent) {
        Byte value[] = {20, 70, 9, 220, 38, 121, 160, 57, 81, 12, 31, 27, 30, 25, 27, 33, 44, 31, 31, 25, 27, 33, 44, 31, 31, 39, 31, 40, 46, 252};
        _user_milkContent = [self StringFromOlaData:value];
    }
    return _user_milkContent;
}

//: tap
- (NSString *)main_pollutionCousinData {
    if (!_main_pollutionCousinData) {
        Byte value[] = {3, 63, 3, 53, 34, 49, 40};
        _main_pollutionCousinData = [self StringFromOlaData:value];
    }
    return _main_pollutionCousinData;
}

//: login_logo
- (NSString *)show_atWithName {
    if (!_show_atWithName) {
        Byte value[] = {10, 54, 13, 67, 202, 132, 43, 225, 163, 144, 229, 27, 38, 54, 57, 49, 51, 56, 41, 54, 57, 49, 57, 174};
        _show_atWithName = [self StringFromOlaData:value];
    }
    return _show_atWithName;
}

//: login_bg
- (NSString *)kPlaceHideName {
    if (!_kPlaceHideName) {
        Byte value[] = {8, 56, 5, 246, 150, 52, 55, 47, 49, 54, 39, 42, 47, 74};
        _kPlaceHideName = [self StringFromOlaData:value];
    }
    return _kPlaceHideName;
}

//: ic_invisible
- (NSString *)userCongressionalText {
    if (!_userCongressionalText) {
        Byte value[] = {12, 15, 9, 156, 47, 215, 141, 182, 158, 90, 84, 80, 90, 95, 103, 90, 100, 90, 83, 93, 86, 208};
        _userCongressionalText = [self StringFromOlaData:value];
    }
    return _userCongressionalText;
}

//: activity_register_next
- (NSString *)show_earlName {
    if (!_show_earlName) {
        Byte value[] = {22, 23, 11, 69, 252, 132, 128, 64, 229, 72, 87, 74, 76, 93, 82, 95, 82, 93, 98, 72, 91, 78, 80, 82, 92, 93, 78, 91, 72, 87, 78, 97, 93, 232};
        _show_earlName = [self StringFromOlaData:value];
    }
    return _show_earlName;
}

//: login_icon_pwd
- (NSString *)main_towerHighlightValue {
    if (!_main_towerHighlightValue) {
        Byte value[] = {14, 84, 10, 233, 3, 90, 122, 17, 176, 194, 24, 27, 19, 21, 26, 11, 21, 15, 27, 26, 11, 28, 35, 16, 219};
        _main_towerHighlightValue = [self StringFromOlaData:value];
    }
    return _main_towerHighlightValue;
}

//: ^[A-Za-z0-9_]{6,18}$
- (NSString *)main_videoData {
    if (!_main_videoData) {
        Byte value[] = {20, 57, 12, 231, 220, 236, 241, 143, 247, 33, 78, 209, 37, 34, 8, 244, 33, 40, 244, 65, 247, 244, 0, 38, 36, 66, 253, 243, 248, 255, 68, 235, 221};
        _main_videoData = [self StringFromOlaData:value];
    }
    return _main_videoData;
}

//: login_icon_user
- (NSString *)show_quickText {
    if (!_show_quickText) {
        Byte value[] = {15, 15, 11, 193, 189, 176, 198, 18, 240, 149, 227, 93, 96, 88, 90, 95, 80, 90, 84, 96, 95, 80, 102, 100, 86, 99, 16};
        _show_quickText = [self StringFromOlaData:value];
    }
    return _show_quickText;
}

//: tun
- (NSString *)appTitleValue {
    if (!_appTitleValue) {
        Byte value[] = {3, 43, 12, 162, 17, 57, 239, 75, 176, 182, 12, 22, 73, 74, 67, 98};
        _appTitleValue = [self StringFromOlaData:value];
    }
    return _appTitleValue;
}

//: ^[A-Za-z0-9_]{6,12}$
- (NSString *)app_successValue {
    if (!_app_successValue) {
        Byte value[] = {20, 25, 3, 69, 66, 40, 20, 65, 72, 20, 97, 23, 20, 32, 70, 68, 98, 29, 19, 24, 25, 100, 11, 217};
        _app_successValue = [self StringFromOlaData:value];
    }
    return _app_successValue;
}

//: register_account_activity_account
- (NSString *)user_needAtChangeValue {
    if (!_user_needAtChangeValue) {
        Byte value[] = {33, 86, 9, 220, 212, 221, 59, 232, 70, 28, 15, 17, 19, 29, 30, 15, 28, 9, 11, 13, 13, 25, 31, 24, 30, 9, 11, 13, 30, 19, 32, 19, 30, 35, 9, 11, 13, 13, 25, 31, 24, 30, 11};
        _user_needAtChangeValue = [self StringFromOlaData:value];
    }
    return _user_needAtChangeValue;
}

//: client
- (NSString *)mTitleData {
    if (!_mTitleData) {
        Byte value[] = {6, 70, 4, 56, 29, 38, 35, 31, 40, 46, 47};
        _mTitleData = [self StringFromOlaData:value];
    }
    return _mTitleData;
}

//: register_account
- (NSString *)mainAcceptableQuickData {
    if (!_mainAcceptableQuickData) {
        Byte value[] = {16, 65, 10, 47, 54, 113, 69, 120, 224, 149, 49, 36, 38, 40, 50, 51, 36, 49, 30, 32, 34, 34, 46, 52, 45, 51, 222};
        _mainAcceptableQuickData = [self StringFromOlaData:value];
    }
    return _mainAcceptableQuickData;
}

//: login_agreement_normal
- (NSString *)appTowerTitle {
    if (!_appTowerTitle) {
        Byte value[] = {22, 71, 11, 196, 153, 87, 107, 170, 203, 138, 101, 37, 40, 32, 34, 39, 24, 26, 32, 43, 30, 30, 38, 30, 39, 45, 24, 39, 40, 43, 38, 26, 37, 49};
        _appTowerTitle = [self StringFromOlaData:value];
    }
    return _appTowerTitle;
}

//: #333333
- (NSString *)show_valueUniteData {
    if (!_show_valueUniteData) {
        Byte value[] = {7, 86, 9, 122, 18, 34, 188, 9, 116, 205, 221, 221, 221, 221, 221, 221, 36};
        _show_valueUniteData = [self StringFromOlaData:value];
    }
    return _show_valueUniteData;
}

//: user_tip
- (NSString *)mYaShowValue {
    if (!_mYaShowValue) {
        Byte value[] = {8, 75, 12, 152, 18, 205, 133, 6, 54, 203, 250, 135, 42, 40, 26, 39, 20, 41, 30, 37, 25};
        _mYaShowValue = [self StringFromOlaData:value];
    }
    return _mYaShowValue;
}

//: activity_comment_setting_ys
- (NSString *)main_canName {
    if (!_main_canName) {
        Byte value[] = {27, 45, 10, 149, 212, 77, 22, 84, 199, 95, 52, 54, 71, 60, 73, 60, 71, 76, 50, 54, 66, 64, 64, 56, 65, 71, 50, 70, 56, 71, 71, 60, 65, 58, 50, 76, 70, 216};
        _main_canName = [self StringFromOlaData:value];
    }
    return _main_canName;
}

//: password
- (NSString *)main_viewEraseForText {
    if (!_main_viewEraseForText) {
        Byte value[] = {8, 35, 12, 50, 220, 145, 21, 72, 145, 51, 230, 107, 77, 62, 80, 80, 84, 76, 79, 65, 161};
        _main_viewEraseForText = [self StringFromOlaData:value];
    }
    return _main_viewEraseForText;
}

//: #05D481
- (NSString *)mIllegalValue {
    if (!_mIllegalValue) {
        Byte value[] = {7, 31, 3, 4, 17, 22, 37, 21, 25, 18, 228};
        _mIllegalValue = [self StringFromOlaData:value];
    }
    return _mIllegalValue;
}

//: vpn
- (NSString *)showAccelerateName {
    if (!_showAccelerateName) {
        Byte value[] = {3, 6, 13, 194, 205, 8, 123, 51, 39, 226, 101, 226, 224, 112, 106, 104, 16};
        _showAccelerateName = [self StringFromOlaData:value];
    }
    return _showAccelerateName;
}

//: activity_register_agree
- (NSString *)dreamScaleButtonEmergencyName {
    if (!_dreamScaleButtonEmergencyName) {
        Byte value[] = {23, 33, 4, 58, 64, 66, 83, 72, 85, 72, 83, 88, 62, 81, 68, 70, 72, 82, 83, 68, 81, 62, 64, 70, 81, 68, 68, 144};
        _dreamScaleButtonEmergencyName = [self StringFromOlaData:value];
    }
    return _dreamScaleButtonEmergencyName;
}

//: register_account_activity_psw
- (NSString *)app_scaleData {
    if (!_app_scaleData) {
        Byte value[] = {29, 90, 8, 15, 230, 222, 37, 206, 24, 11, 13, 15, 25, 26, 11, 24, 5, 7, 9, 9, 21, 27, 20, 26, 5, 7, 9, 26, 15, 28, 15, 26, 31, 5, 22, 25, 29, 230};
        _app_scaleData = [self StringFromOlaData:value];
    }
    return _app_scaleData;
}

//: ppp
- (NSString *)userHighlightName {
    if (!_userHighlightName) {
        Byte value[] = {3, 94, 9, 247, 83, 34, 36, 227, 91, 18, 18, 18, 3};
        _userHighlightName = [self StringFromOlaData:value];
    }
    return _userHighlightName;
}

//: #999999
- (NSString *)notiSeriesSessionTitle {
    if (!_notiSeriesSessionTitle) {
        Byte value[] = {7, 72, 12, 158, 137, 132, 235, 6, 173, 207, 195, 161, 219, 241, 241, 241, 241, 241, 241, 93};
        _notiSeriesSessionTitle = [self StringFromOlaData:value];
    }
    return _notiSeriesSessionTitle;
}

//: #F6F6F6
- (NSString *)noti_pressParentText {
    if (!_noti_pressParentText) {
        Byte value[] = {7, 75, 7, 87, 121, 103, 52, 216, 251, 235, 251, 235, 251, 235, 32};
        _noti_pressParentText = [self StringFromOlaData:value];
    }
    return _noti_pressParentText;
}

//: pass_tip
- (NSString *)user_ambitionData {
    if (!_user_ambitionData) {
        Byte value[] = {8, 51, 5, 140, 129, 61, 46, 64, 64, 44, 65, 54, 61, 206};
        _user_ambitionData = [self StringFromOlaData:value];
    }
    return _user_ambitionData;
}

//: login_agreement_press
- (NSString *)kChangeName {
    if (!_kChangeName) {
        Byte value[] = {21, 84, 13, 75, 85, 29, 174, 247, 2, 63, 239, 183, 56, 24, 27, 19, 21, 26, 11, 13, 19, 30, 17, 17, 25, 17, 26, 32, 11, 28, 30, 17, 31, 31, 64};
        _kChangeName = [self StringFromOlaData:value];
    }
    return _kChangeName;
}

//: ic_close_b
- (NSString *)kUndertakeData {
    if (!_kUndertakeData) {
        Byte value[] = {10, 14, 8, 129, 154, 1, 246, 100, 91, 85, 81, 85, 94, 97, 101, 87, 81, 84, 60};
        _kUndertakeData = [self StringFromOlaData:value];
    }
    return _kUndertakeData;
}

//: pass_user
- (NSString *)showSeverData {
    if (!_showSeverData) {
        Byte value[] = {9, 89, 6, 122, 86, 26, 23, 8, 26, 26, 6, 28, 26, 12, 25, 210};
        _showSeverData = [self StringFromOlaData:value];
    }
    return _showSeverData;
}

//: account
- (NSString *)user_suspectData {
    if (!_user_suspectData) {
        Byte value[] = {7, 25, 3, 72, 74, 74, 86, 92, 85, 91, 248};
        _user_suspectData = [self StringFromOlaData:value];
    }
    return _user_suspectData;
}

//: iOS
- (NSString *)dream_targetText {
    if (!_dream_targetText) {
        Byte value[] = {3, 73, 12, 10, 9, 108, 121, 246, 108, 198, 164, 152, 32, 6, 10, 226};
        _dream_targetText = [self StringFromOlaData:value];
    }
    return _dream_targetText;
}

//: mobilecode
- (NSString *)show_undertakeName {
    if (!_show_undertakeName) {
        Byte value[] = {10, 70, 3, 39, 41, 28, 35, 38, 31, 29, 41, 30, 31, 37};
        _show_undertakeName = [self StringFromOlaData:value];
    }
    return _show_undertakeName;
}

//: invitecode
- (NSString *)app_showQuickName {
    if (!_app_showQuickName) {
        Byte value[] = {10, 39, 9, 66, 97, 4, 135, 22, 197, 66, 71, 79, 66, 77, 62, 60, 72, 61, 62, 247};
        _app_showQuickName = [self StringFromOlaData:value];
    }
    return _app_showQuickName;
}

//: activity_login_login
- (NSString *)notiLabelName {
    if (!_notiLabelName) {
        Byte value[] = {20, 9, 8, 103, 151, 108, 49, 71, 88, 90, 107, 96, 109, 96, 107, 112, 86, 99, 102, 94, 96, 101, 86, 99, 102, 94, 96, 101, 81};
        _notiLabelName = [self StringFromOlaData:value];
    }
    return _notiLabelName;
}

//: SELF MATCHES %@
- (NSString *)showCrowdedTitlePlaceValue {
    if (!_showCrowdedTitlePlaceValue) {
        Byte value[] = {15, 12, 7, 131, 5, 152, 92, 71, 57, 64, 58, 20, 65, 53, 72, 55, 60, 57, 71, 20, 25, 52, 138};
        _showCrowdedTitlePlaceValue = [self StringFromOlaData:value];
    }
    return _showCrowdedTitlePlaceValue;
}

//: __SCOPED__
- (NSString *)k_itemOldName {
    if (!_k_itemOldName) {
        Byte value[] = {10, 43, 12, 10, 205, 97, 6, 172, 174, 249, 147, 54, 52, 52, 40, 24, 36, 37, 26, 25, 52, 52, 25};
        _k_itemOldName = [self StringFromOlaData:value];
    }
    return _k_itemOldName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResearchLabViewController.m
//  NIM
//
//  Created by taricher on 2024/5/24.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkRegisterViewController.h"
#import "ResearchLabViewController.h"
//: #import "NTESMainTabController.h"
#import "ManagerBarController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NSString+NTES.h"
#import "NSString+Recent.h"
//: #import "CCCLoginManager.h"
#import "NameForwardMessage.h"
//: #import "NTESNotificationCenter.h"
#import "ClickCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+BottomMagnitude.h"
//: #import "WorkRegisterViewController.h"
#import "ResearchLabViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "Manager.h"
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "RedSame.h"
//: #import "SNDevice.h"
#import "ModeWith.h"
//: #import "RegisterInfoViewController.h"
#import "ValueViewController.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "SumViewController.h"

//: @interface WorkRegisterViewController () <UITextFieldDelegate>
@interface ResearchLabViewController () <UITextFieldDelegate>

//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;

//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;
//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;
//: @property (nonatomic, strong) YYLabel *protocolLabel;
@property (nonatomic, strong) YYLabel *protocolLabel;

//: @end
@end

//: @implementation WorkRegisterViewController
@implementation ResearchLabViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[OlaData sharedInstance].kPlaceHideName];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initBar];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI
- (void)initBar
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[OlaData sharedInstance].kUndertakeData] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(tingBodyPart) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice vg_statusBarHeight]+50, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice heightShowStop]+50, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[OlaData sharedInstance].show_atWithName];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"register_account"];
    labtitle.text = [InputRed preserve:[OlaData sharedInstance].mainAcceptableQuickData];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor ground:[OlaData sharedInstance].noti_pressParentText];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[OlaData sharedInstance].show_quickText];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor ground:[OlaData sharedInstance].show_valueUniteData];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[WorkLanguageManager getTextWithKey:@"user_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[InputRed preserve:[OlaData sharedInstance].mYaShowValue] attributes:@{NSForegroundColorAttributeName:[UIColor ground:[OlaData sharedInstance].notiSeriesSessionTitle]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    psdView.backgroundColor = [UIColor ground:[OlaData sharedInstance].noti_pressParentText];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[OlaData sharedInstance].main_towerHighlightValue];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor ground:[OlaData sharedInstance].show_valueUniteData];
//    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[WorkLanguageManager getTextWithKey:@"pass_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[InputRed preserve:[OlaData sharedInstance].user_ambitionData] attributes:@{NSForegroundColorAttributeName:[UIColor ground:[OlaData sharedInstance].notiSeriesSessionTitle]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(hiddening:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[OlaData sharedInstance].kDrugData] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[OlaData sharedInstance].userCongressionalText] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    //: [psdView addSubview:self.secureButton];
    [psdView addSubview:self.secureButton];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[WorkLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [_loginButton setTitle:[InputRed preserve:[OlaData sharedInstance].show_earlName] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(redTitle) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _loginButton.backgroundColor = [UIColor ground:[OlaData sharedInstance].mIllegalValue];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;
//    _loginButton.layer.shadowColor = DeepBtnColor.CGColor;
//    _loginButton.layer.shadowOffset = CGSizeMake(0,3);
//    _loginButton.layer.shadowOpacity = 1;
//    _loginButton.layer.shadowRadius = 0;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#05D481"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor ground:[OlaData sharedInstance].mIllegalValue] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(tingBodyPart) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[WorkLanguageManager getTextWithKey:@"activity_login_login"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[InputRed preserve:[OlaData sharedInstance].notiLabelName] attributes:attributes];
    //: [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];


    //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    //: _agreementButton.selected = YES;
    _agreementButton.selected = YES;
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:[OlaData sharedInstance].appTowerTitle] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[OlaData sharedInstance].kChangeName] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(voxes:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_agreementButton];
    [self.view addSubview:_agreementButton];

    //: [self.view addSubview:self.protocolLabel];
    [self.view addSubview:self.protocolLabel];
    //: self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);

//    UILabel *subtitle = [[UILabel alloc]initWithFrame:CGRectMake(30, SCREEN_HEIGHT-SCREEN_BOTTOM_HEIGHT-80-20, SCREEN_WIDTH-60, 20)];
//    subtitle.textColor = RGB_COLOR_String(@"#8282A7");
//    subtitle.font = [UIFont systemFontOfSize:14];
//    subtitle.textAlignment = NSTextAlignmentCenter;
//    subtitle.text = LangKey(@"activity_register_account_has_account");
//    [self.view addSubview:subtitle];

//    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    _registerButton.frame = CGRectMake(SCREEN_WIDTH-136, SCREEN_STATUS_HEIGHT+20, 146, 32);
//    _registerButton.backgroundColor = ThemeColor;
//    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
//    [_registerButton setTitleColor:RGB_COLOR_String(@"#fffWork") forState:UIControlStateNormal];
//    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",LangKey(@"activity_register_account_has_account"),LangKey(@"activity_login_login")] forState:UIControlStateNormal];
//    [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;
}


//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)hiddening:(UIButton *)sender
{
    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[OlaData sharedInstance].userCongressionalText] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[OlaData sharedInstance].kDrugData] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];
    }
}

//: - (void)goBack{
- (void)tingBodyPart{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (YYLabel *)protocolLabel {
- (YYLabel *)protocolLabel {
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [WorkLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [InputRed preserve:[OlaData sharedInstance].dreamScaleButtonEmergencyName];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_alignment = NSTextAlignmentLeft;
        //: text1.yy_lineSpacing = 3;
        text1.yy_lineSpacing = 3;
        //: [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  //: color:[UIColor colorWithHexString:@"#05D481"]
                                  color:[UIColor ground:[OlaData sharedInstance].mIllegalValue]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {
            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            SumViewController *vc = [[SumViewController alloc] init];
            //: vc.webTitle = [WorkLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [InputRed preserve:[OlaData sharedInstance].main_canName];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [SessionRecord afterUser].yshref;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }];
        }];

        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: _protocolLabel = titleLb;
        _protocolLabel = titleLb;
    }
    //: return _protocolLabel;
    return _protocolLabel;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)voxes:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//
//    if ([string isEqualToString:@"\n"]) {
//        [self doLogin];
//        return NO;
//    }
//    return YES;
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    self.secureButton.hidden = YES;
//}
//
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    self.secureButton.hidden = NO;
//    [textField bringSubviewToFront:self.secureButton];
//}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}


//: - (BOOL)isVPNConnected
- (BOOL)name
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
    NSArray *keys = [dict[[OlaData sharedInstance].k_itemOldName]allKeys];
    //: for (NSString *key in keys) {
    for (NSString *key in keys) {
        //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
        if ([key rangeOfString:[OlaData sharedInstance].main_pollutionCousinData].location != NSNotFound ||
            //: [key rangeOfString:@"tun"].location != NSNotFound ||
            [key rangeOfString:[OlaData sharedInstance].appTitleValue].location != NSNotFound ||
            //: [key rangeOfString:@"ppp"].location != NSNotFound){
            [key rangeOfString:[OlaData sharedInstance].userHighlightName].location != NSNotFound){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)bar:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [OlaData sharedInstance].app_successValue;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[OlaData sharedInstance].showCrowdedTitlePlaceValue, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)insertRed:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [OlaData sharedInstance].main_videoData;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[OlaData sharedInstance].showCrowdedTitlePlaceValue, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}


//: - (void)doLogin{
- (void)redTitle{

    //: if (self.agreementButton.selected == NO) {
    if (self.agreementButton.selected == NO) {
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[OlaData sharedInstance].user_milkContent] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[OlaData sharedInstance].user_needAtChangeValue] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[OlaData sharedInstance].app_scaleData] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
    if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"pass_user"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[InputRed preserve:[OlaData sharedInstance].showSeverData] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    Manager *manager = [Manager managingDirector];
    //: [manager.registDict setObject:@"iOS" forKey:@"client"];
    [manager.registDict setObject:[OlaData sharedInstance].dream_targetText forKey:[OlaData sharedInstance].mTitleData];
    //: [manager.registDict setObject:_usernameTextField.text forKey:@"account"];
    [manager.registDict setObject:_usernameTextField.text forKey:[OlaData sharedInstance].user_suspectData];
    //: [manager.registDict setObject:_passwordTextField.text forKey:@"password"];
    [manager.registDict setObject:_passwordTextField.text forKey:[OlaData sharedInstance].main_viewEraseForText];
    //: [manager.registDict setObject:@"" forKey:@"mobilecode"];
    [manager.registDict setObject:@"" forKey:[OlaData sharedInstance].show_undertakeName];
    //: [manager.registDict setObject:@"" forKey:@"invitecode"];
    [manager.registDict setObject:@"" forKey:[OlaData sharedInstance].app_showQuickName];
    //: [manager.registDict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [manager.registDict setObject:[self name]?@"1":@"0" forKey:[OlaData sharedInstance].showAccelerateName];

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [NTESRegistConfigManager firstSendRegistName:_usernameTextField.text pd:_passwordTextField.text RequestWithComplete:^(BOOL sucess, NSString *msg) {
    [Manager by:_usernameTextField.text account:_passwordTextField.text unneededImage:^(BOOL sucess, NSString *msg) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (sucess) {
        if (sucess) {
            //: RegisterInfoViewController *vc = [[RegisterInfoViewController alloc]init];
            ValueViewController *vc = [[ValueViewController alloc]init];
            //: vc.accountName = _usernameTextField.text;
            vc.accountName = _usernameTextField.text;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    //: }];
    }];
}


//: @end
@end
