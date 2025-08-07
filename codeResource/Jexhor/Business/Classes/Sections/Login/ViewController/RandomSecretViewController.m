
#import <Foundation/Foundation.h>

@interface GovernData : NSObject

@end

@implementation GovernData

+ (Byte *)GovernDataToCache:(Byte *)data {
    int smart = data[0];
    Byte rule = data[1];
    int potent = data[2];
    for (int i = potent; i < potent + smart; i++) {
        int value = data[i] - rule;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[potent + smart] = 0;
    return data + potent;
}

+ (NSString *)StringFromGovernData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GovernDataToCache:data]];
}

//: login_bg
+ (NSString *)mainInsideStr {
    /* static */ NSString *mainInsideStr = nil;
    if (!mainInsideStr) {
        Byte value[] = {8, 63, 10, 29, 93, 163, 100, 148, 148, 211, 171, 174, 166, 168, 173, 158, 161, 166, 79};
        mainInsideStr = [self StringFromGovernData:value];
    }
    return mainInsideStr;
}

//: #05D481
+ (NSString *)main_nameMessage {
    /* static */ NSString *main_nameMessage = nil;
    if (!main_nameMessage) {
        Byte value[] = {7, 24, 7, 136, 247, 192, 45, 59, 72, 77, 92, 76, 80, 73, 127};
        main_nameMessage = [self StringFromGovernData:value];
    }
    return main_nameMessage;
}

//: activity_comment_setting_ys
+ (NSString *)notiYinData {
    /* static */ NSString *notiYinData = nil;
    if (!notiYinData) {
        Byte value[] = {27, 56, 8, 66, 151, 244, 132, 46, 153, 155, 172, 161, 174, 161, 172, 177, 151, 155, 167, 165, 165, 157, 166, 172, 151, 171, 157, 172, 172, 161, 166, 159, 151, 177, 171, 169};
        notiYinData = [self StringFromGovernData:value];
    }
    return notiYinData;
}

//: SELF MATCHES %@
+ (NSString *)kStatSizeIdent {
    /* static */ NSString *kStatSizeIdent = nil;
    if (!kStatSizeIdent) {
        Byte value[] = {15, 92, 11, 115, 12, 209, 54, 7, 165, 190, 199, 175, 161, 168, 162, 124, 169, 157, 176, 159, 164, 161, 175, 124, 129, 156, 119};
        kStatSizeIdent = [self StringFromGovernData:value];
    }
    return kStatSizeIdent;
}

//: client
+ (NSString *)noti_messageIdent {
    /* static */ NSString *noti_messageIdent = nil;
    if (!noti_messageIdent) {
        Byte value[] = {6, 68, 9, 7, 111, 85, 214, 130, 121, 167, 176, 173, 169, 178, 184, 41};
        noti_messageIdent = [self StringFromGovernData:value];
    }
    return noti_messageIdent;
}

//: activity_register_agree
+ (NSString *)userOnSpaceStr {
    /* static */ NSString *userOnSpaceStr = nil;
    if (!userOnSpaceStr) {
        Byte value[] = {23, 67, 6, 220, 136, 253, 164, 166, 183, 172, 185, 172, 183, 188, 162, 181, 168, 170, 172, 182, 183, 168, 181, 162, 164, 170, 181, 168, 168, 219};
        userOnSpaceStr = [self StringFromGovernData:value];
    }
    return userOnSpaceStr;
}

//: pass_tip
+ (NSString *)show_goingKeyId {
    /* static */ NSString *show_goingKeyId = nil;
    if (!show_goingKeyId) {
        Byte value[] = {8, 36, 4, 98, 148, 133, 151, 151, 131, 152, 141, 148, 132};
        show_goingKeyId = [self StringFromGovernData:value];
    }
    return show_goingKeyId;
}

//: account
+ (NSString *)main_tingKey {
    /* static */ NSString *main_tingKey = nil;
    if (!main_tingKey) {
        Byte value[] = {7, 98, 4, 202, 195, 197, 197, 209, 215, 208, 214, 243};
        main_tingKey = [self StringFromGovernData:value];
    }
    return main_tingKey;
}

//: login_agreement_normal
+ (NSString *)mTingData {
    /* static */ NSString *mTingData = nil;
    if (!mTingData) {
        Byte value[] = {22, 69, 10, 45, 132, 90, 245, 219, 95, 202, 177, 180, 172, 174, 179, 164, 166, 172, 183, 170, 170, 178, 170, 179, 185, 164, 179, 180, 183, 178, 166, 177, 177};
        mTingData = [self StringFromGovernData:value];
    }
    return mTingData;
}

//: activity_register_next
+ (NSString *)m_emotionFormat {
    /* static */ NSString *m_emotionFormat = nil;
    if (!m_emotionFormat) {
        Byte value[] = {22, 57, 12, 173, 233, 54, 192, 106, 120, 249, 216, 250, 154, 156, 173, 162, 175, 162, 173, 178, 152, 171, 158, 160, 162, 172, 173, 158, 171, 152, 167, 158, 177, 173, 178};
        m_emotionFormat = [self StringFromGovernData:value];
    }
    return m_emotionFormat;
}

//: vpn
+ (NSString *)kDeviceCropFormat {
    /* static */ NSString *kDeviceCropFormat = nil;
    if (!kDeviceCropFormat) {
        Byte value[] = {3, 3, 13, 66, 47, 141, 204, 13, 63, 42, 93, 95, 242, 121, 115, 113, 79};
        kDeviceCropFormat = [self StringFromGovernData:value];
    }
    return kDeviceCropFormat;
}

//: ^[A-Za-z0-9_]{6,12}$
+ (NSString *)user_veteranMessage {
    /* static */ NSString *user_veteranMessage = nil;
    if (!user_veteranMessage) {
        Byte value[] = {20, 80, 5, 35, 159, 174, 171, 145, 125, 170, 177, 125, 202, 128, 125, 137, 175, 173, 203, 134, 124, 129, 130, 205, 116, 149};
        user_veteranMessage = [self StringFromGovernData:value];
    }
    return user_veteranMessage;
}

//: iOS
+ (NSString *)noti_imageValue {
    /* static */ NSString *noti_imageValue = nil;
    if (!noti_imageValue) {
        Byte value[] = {3, 92, 8, 236, 120, 46, 241, 201, 197, 171, 175, 9};
        noti_imageValue = [self StringFromGovernData:value];
    }
    return noti_imageValue;
}

//: login_icon_pwd
+ (NSString *)notiInfluentialId {
    /* static */ NSString *notiInfluentialId = nil;
    if (!notiInfluentialId) {
        Byte value[] = {14, 76, 11, 59, 45, 30, 226, 17, 72, 6, 47, 184, 187, 179, 181, 186, 171, 181, 175, 187, 186, 171, 188, 195, 176, 6};
        notiInfluentialId = [self StringFromGovernData:value];
    }
    return notiInfluentialId;
}

//: invitecode
+ (NSString *)mJuryId {
    /* static */ NSString *mJuryId = nil;
    if (!mJuryId) {
        Byte value[] = {10, 31, 12, 1, 247, 188, 224, 38, 112, 245, 19, 90, 136, 141, 149, 136, 147, 132, 130, 142, 131, 132, 239};
        mJuryId = [self StringFromGovernData:value];
    }
    return mJuryId;
}

//: register_account_activity_account
+ (NSString *)k_contentValue {
    /* static */ NSString *k_contentValue = nil;
    if (!k_contentValue) {
        Byte value[] = {33, 8, 3, 122, 109, 111, 113, 123, 124, 109, 122, 103, 105, 107, 107, 119, 125, 118, 124, 103, 105, 107, 124, 113, 126, 113, 124, 129, 103, 105, 107, 107, 119, 125, 118, 124, 210};
        k_contentValue = [self StringFromGovernData:value];
    }
    return k_contentValue;
}

//: #999999
+ (NSString *)kEliteLightName {
    /* static */ NSString *kEliteLightName = nil;
    if (!kEliteLightName) {
        Byte value[] = {7, 27, 9, 223, 6, 75, 153, 214, 251, 62, 84, 84, 84, 84, 84, 84, 204};
        kEliteLightName = [self StringFromGovernData:value];
    }
    return kEliteLightName;
}

//: pass_user
+ (NSString *)show_viewKey {
    /* static */ NSString *show_viewKey = nil;
    if (!show_viewKey) {
        Byte value[] = {9, 87, 6, 55, 112, 225, 199, 184, 202, 202, 182, 204, 202, 188, 201, 194};
        show_viewKey = [self StringFromGovernData:value];
    }
    return show_viewKey;
}

//: ic_close_b
+ (NSString *)dreamParticipateName {
    /* static */ NSString *dreamParticipateName = nil;
    if (!dreamParticipateName) {
        Byte value[] = {10, 46, 4, 99, 151, 145, 141, 145, 154, 157, 161, 147, 141, 144, 97};
        dreamParticipateName = [self StringFromGovernData:value];
    }
    return dreamParticipateName;
}

//: activity_login_login
+ (NSString *)appParticipatePath {
    /* static */ NSString *appParticipatePath = nil;
    if (!appParticipatePath) {
        Byte value[] = {20, 83, 13, 184, 191, 195, 209, 12, 240, 114, 255, 199, 149, 180, 182, 199, 188, 201, 188, 199, 204, 178, 191, 194, 186, 188, 193, 178, 191, 194, 186, 188, 193, 181};
        appParticipatePath = [self StringFromGovernData:value];
    }
    return appParticipatePath;
}

//: #F6F6F6
+ (NSString *)user_inputId {
    /* static */ NSString *user_inputId = nil;
    if (!user_inputId) {
        Byte value[] = {7, 15, 5, 112, 172, 50, 85, 69, 85, 69, 85, 69, 27};
        user_inputId = [self StringFromGovernData:value];
    }
    return user_inputId;
}

//: user_tip
+ (NSString *)userWarIdent {
    /* static */ NSString *userWarIdent = nil;
    if (!userWarIdent) {
        Byte value[] = {8, 88, 6, 104, 2, 78, 205, 203, 189, 202, 183, 204, 193, 200, 22};
        userWarIdent = [self StringFromGovernData:value];
    }
    return userWarIdent;
}

//: ic_invisible
+ (NSString *)kPressedTitleContent {
    /* static */ NSString *kPressedTitleContent = nil;
    if (!kPressedTitleContent) {
        Byte value[] = {12, 87, 10, 22, 193, 62, 92, 193, 223, 246, 192, 186, 182, 192, 197, 205, 192, 202, 192, 185, 195, 188, 24};
        kPressedTitleContent = [self StringFromGovernData:value];
    }
    return kPressedTitleContent;
}

//: login_agreement_press
+ (NSString *)k_distinctionStr {
    /* static */ NSString *k_distinctionStr = nil;
    if (!k_distinctionStr) {
        Byte value[] = {21, 98, 6, 240, 70, 148, 206, 209, 201, 203, 208, 193, 195, 201, 212, 199, 199, 207, 199, 208, 214, 193, 210, 212, 199, 213, 213, 98};
        k_distinctionStr = [self StringFromGovernData:value];
    }
    return k_distinctionStr;
}

//: ic_visible
+ (NSString *)k_insideValue {
    /* static */ NSString *k_insideValue = nil;
    if (!k_insideValue) {
        Byte value[] = {10, 35, 11, 159, 139, 212, 228, 151, 151, 194, 249, 140, 134, 130, 153, 140, 150, 140, 133, 143, 136, 234};
        k_insideValue = [self StringFromGovernData:value];
    }
    return k_insideValue;
}

//: register_account
+ (NSString *)dreamNameUrl {
    /* static */ NSString *dreamNameUrl = nil;
    if (!dreamNameUrl) {
        Byte value[] = {16, 73, 8, 222, 80, 48, 43, 125, 187, 174, 176, 178, 188, 189, 174, 187, 168, 170, 172, 172, 184, 190, 183, 189, 177};
        dreamNameUrl = [self StringFromGovernData:value];
    }
    return dreamNameUrl;
}

//: login_icon_user
+ (NSString *)m_veteranShowKey {
    /* static */ NSString *m_veteranShowKey = nil;
    if (!m_veteranShowKey) {
        Byte value[] = {15, 25, 4, 166, 133, 136, 128, 130, 135, 120, 130, 124, 136, 135, 120, 142, 140, 126, 139, 150};
        m_veteranShowKey = [self StringFromGovernData:value];
    }
    return m_veteranShowKey;
}

//: tap
+ (NSString *)noti_versionId {
    /* static */ NSString *noti_versionId = nil;
    if (!noti_versionId) {
        Byte value[] = {3, 43, 4, 200, 159, 140, 155, 160};
        noti_versionId = [self StringFromGovernData:value];
    }
    return noti_versionId;
}

//: #333333
+ (NSString *)mEnableFormat {
    /* static */ NSString *mEnableFormat = nil;
    if (!mEnableFormat) {
        Byte value[] = {7, 99, 4, 70, 134, 150, 150, 150, 150, 150, 150, 41};
        mEnableFormat = [self StringFromGovernData:value];
    }
    return mEnableFormat;
}

//: password
+ (NSString *)mainUserData {
    /* static */ NSString *mainUserData = nil;
    if (!mainUserData) {
        Byte value[] = {8, 78, 9, 45, 72, 193, 255, 30, 45, 190, 175, 193, 193, 197, 189, 192, 178, 187};
        mainUserData = [self StringFromGovernData:value];
    }
    return mainUserData;
}

//: register_account_activity_psw
+ (NSString *)mLaverUrl {
    /* static */ NSString *mLaverUrl = nil;
    if (!mLaverUrl) {
        Byte value[] = {29, 44, 9, 202, 105, 146, 144, 57, 173, 158, 145, 147, 149, 159, 160, 145, 158, 139, 141, 143, 143, 155, 161, 154, 160, 139, 141, 143, 160, 149, 162, 149, 160, 165, 139, 156, 159, 163, 55};
        mLaverUrl = [self StringFromGovernData:value];
    }
    return mLaverUrl;
}

//: ppp
+ (NSString *)appTingKey {
    /* static */ NSString *appTingKey = nil;
    if (!appTingKey) {
        Byte value[] = {3, 62, 5, 224, 155, 174, 174, 174, 110};
        appTingKey = [self StringFromGovernData:value];
    }
    return appTingKey;
}

//: mobilecode
+ (NSString *)appTextUrl {
    /* static */ NSString *appTextUrl = nil;
    if (!appTextUrl) {
        Byte value[] = {10, 33, 13, 15, 245, 236, 23, 156, 92, 95, 51, 245, 111, 142, 144, 131, 138, 141, 134, 132, 144, 133, 134, 204};
        appTextUrl = [self StringFromGovernData:value];
    }
    return appTextUrl;
}

//: login_logo
+ (NSString *)app_bornId {
    /* static */ NSString *app_bornId = nil;
    if (!app_bornId) {
        Byte value[] = {10, 49, 8, 117, 52, 40, 246, 248, 157, 160, 152, 154, 159, 144, 157, 160, 152, 160, 107};
        app_bornId = [self StringFromGovernData:value];
    }
    return app_bornId;
}

//: tun
+ (NSString *)mPositionJuryItemData {
    /* static */ NSString *mPositionJuryItemData = nil;
    if (!mPositionJuryItemData) {
        Byte value[] = {3, 71, 4, 141, 187, 188, 181, 55};
        mPositionJuryItemData = [self StringFromGovernData:value];
    }
    return mPositionJuryItemData;
}

//: ^[A-Za-z0-9_]{6,18}$
+ (NSString *)main_pathMotKey {
    /* static */ NSString *main_pathMotKey = nil;
    if (!main_pathMotKey) {
        Byte value[] = {20, 86, 4, 16, 180, 177, 151, 131, 176, 183, 131, 208, 134, 131, 143, 181, 179, 209, 140, 130, 135, 142, 211, 122, 200};
        main_pathMotKey = [self StringFromGovernData:value];
    }
    return main_pathMotKey;
}

//: __SCOPED__
+ (NSString *)dreamAffairBelowStr {
    /* static */ NSString *dreamAffairBelowStr = nil;
    if (!dreamAffairBelowStr) {
        Byte value[] = {10, 12, 12, 253, 177, 143, 91, 29, 104, 250, 9, 175, 107, 107, 95, 79, 91, 92, 81, 80, 107, 107, 21};
        dreamAffairBelowStr = [self StringFromGovernData:value];
    }
    return dreamAffairBelowStr;
}

//: Read_agree_agreement
+ (NSString *)mainSlatPath {
    /* static */ NSString *mainSlatPath = nil;
    if (!mainSlatPath) {
        Byte value[] = {20, 19, 11, 7, 80, 207, 22, 118, 111, 176, 203, 101, 120, 116, 119, 114, 116, 122, 133, 120, 120, 114, 116, 122, 133, 120, 120, 128, 120, 129, 135, 186};
        mainSlatPath = [self StringFromGovernData:value];
    }
    return mainSlatPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomSecretViewController.m
//  NIM
//
//  Created by taricher on 2024/5/24.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterViewController.h"
#import "RandomSecretViewController.h"
//: #import "NTESMainTabController.h"
#import "BecharmBarController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NSString+NTES.h"
#import "NSString+SearchedTeam.h"
//: #import "CCCLoginManager.h"
#import "MessageImage.h"
//: #import "NTESNotificationCenter.h"
#import "SizeCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Collection.h"
//: #import "FFFRegisterViewController.h"
#import "RandomSecretViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "MakeManager.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "ColorCounterval.h"
//: #import "SNDevice.h"
#import "DemonstrateDevice.h"
//: #import "RegisterInfoViewController.h"
#import "InputMessageViewController.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "MarginViewController.h"

//: @interface FFFRegisterViewController () <UITextFieldDelegate>
@interface RandomSecretViewController () <UITextFieldDelegate>

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

//: @implementation FFFRegisterViewController
@implementation RandomSecretViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[GovernData mainInsideStr]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initAnyFormat];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI
- (void)initAnyFormat
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[GovernData dreamParticipateName]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(stickDisable) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice vg_statusBarHeight]+50, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice title]+50, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[GovernData app_bornId]];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"register_account"];
    labtitle.text = [BackgroundRandomAttribute content:[GovernData dreamNameUrl]];
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
    usernameView.backgroundColor = [UIColor user:[GovernData user_inputId]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[GovernData m_veteranShowKey]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor user:[GovernData mEnableFormat]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"user_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[BackgroundRandomAttribute content:[GovernData userWarIdent]] attributes:@{NSForegroundColorAttributeName:[UIColor user:[GovernData kEliteLightName]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    psdView.backgroundColor = [UIColor user:[GovernData user_inputId]];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[GovernData notiInfluentialId]];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor user:[GovernData mEnableFormat]];
//    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"pass_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[BackgroundRandomAttribute content:[GovernData show_goingKeyId]] attributes:@{NSForegroundColorAttributeName:[UIColor user:[GovernData kEliteLightName]]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(enableInstallment:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[GovernData k_insideValue]] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[GovernData kPressedTitleContent]] forState:UIControlStateSelected];
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
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [_loginButton setTitle:[BackgroundRandomAttribute content:[GovernData m_emotionFormat]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(fromLogin) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _loginButton.backgroundColor = [UIColor user:[GovernData main_nameMessage]];
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
    [_registerButton setTitleColor:[UIColor user:[GovernData main_nameMessage]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(stickDisable) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"activity_login_login"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[BackgroundRandomAttribute content:[GovernData appParticipatePath]] attributes:attributes];
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
    [_agreementButton setImage:[UIImage imageNamed:[GovernData mTingData]] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[GovernData k_distinctionStr]] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(colorCell:) forControlEvents:UIControlEventTouchUpInside];
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
//    [_registerButton setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",LangKey(@"activity_register_account_has_account"),LangKey(@"activity_login_login")] forState:UIControlStateNormal];
//    [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;
}


//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)enableInstallment:(UIButton *)sender
{
    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[GovernData kPressedTitleContent]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[GovernData k_insideValue]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];
    }
}

//: - (void)goBack{
- (void)stickDisable{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (YYLabel *)protocolLabel {
- (YYLabel *)protocolLabel {
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [FFFLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [BackgroundRandomAttribute content:[GovernData userOnSpaceStr]];
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
                                  color:[UIColor user:[GovernData main_nameMessage]]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {
            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            MarginViewController *vc = [[MarginViewController alloc] init];
            //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [BackgroundRandomAttribute content:[GovernData notiYinData]];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [CrossShouldBlock towardScaleOfMeasurement].yshref;
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
-(void)colorCell:(UIButton *)senderBtn
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
- (BOOL)margin
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
    NSArray *keys = [dict[[GovernData dreamAffairBelowStr]]allKeys];
    //: for (NSString *key in keys) {
    for (NSString *key in keys) {
        //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
        if ([key rangeOfString:[GovernData noti_versionId]].location != NSNotFound ||
            //: [key rangeOfString:@"tun"].location != NSNotFound ||
            [key rangeOfString:[GovernData mPositionJuryItemData]].location != NSNotFound ||
            //: [key rangeOfString:@"ppp"].location != NSNotFound){
            [key rangeOfString:[GovernData appTingKey]].location != NSNotFound){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)error:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [GovernData user_veteranMessage];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[GovernData kStatSizeIdent], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)max:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [GovernData main_pathMotKey];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[GovernData kStatSizeIdent], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}


//: - (void)doLogin{
- (void)fromLogin{

    //: if (self.agreementButton.selected == NO) {
    if (self.agreementButton.selected == NO) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[BackgroundRandomAttribute content:[GovernData mainSlatPath]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[BackgroundRandomAttribute content:[GovernData k_contentValue]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[BackgroundRandomAttribute content:[GovernData mLaverUrl]] duration:2.0 position:CSToastPositionCenter];
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
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"pass_user"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[BackgroundRandomAttribute content:[GovernData show_viewKey]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    MakeManager *manager = [MakeManager should];
    //: [manager.registDict setObject:@"iOS" forKey:@"client"];
    [manager.registDict setObject:[GovernData noti_imageValue] forKey:[GovernData noti_messageIdent]];
    //: [manager.registDict setObject:_usernameTextField.text forKey:@"account"];
    [manager.registDict setObject:_usernameTextField.text forKey:[GovernData main_tingKey]];
    //: [manager.registDict setObject:_passwordTextField.text forKey:@"password"];
    [manager.registDict setObject:_passwordTextField.text forKey:[GovernData mainUserData]];
    //: [manager.registDict setObject:@"" forKey:@"mobilecode"];
    [manager.registDict setObject:@"" forKey:[GovernData appTextUrl]];
    //: [manager.registDict setObject:@"" forKey:@"invitecode"];
    [manager.registDict setObject:@"" forKey:[GovernData mJuryId]];
    //: [manager.registDict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [manager.registDict setObject:[self margin]?@"1":@"0" forKey:[GovernData kDeviceCropFormat]];

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [NTESRegistConfigManager firstSendRegistName:_usernameTextField.text pd:_passwordTextField.text RequestWithComplete:^(BOOL sucess, NSString *msg) {
    [MakeManager airt:_usernameTextField.text message:_passwordTextField.text applicationWith:^(BOOL sucess, NSString *msg) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (sucess) {
        if (sucess) {
            //: RegisterInfoViewController *vc = [[RegisterInfoViewController alloc]init];
            InputMessageViewController *vc = [[InputMessageViewController alloc]init];
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