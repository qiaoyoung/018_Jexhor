
#import <Foundation/Foundation.h>

@interface PlaceData : NSObject

@end

@implementation PlaceData

+ (Byte *)PlaceDataToCache:(Byte *)data {
    int deployTower = data[0];
    int bubbleCongressional = data[1];
    for (int i = 0; i < deployTower / 2; i++) {
        int begin = bubbleCongressional + i;
        int end = bubbleCongressional + deployTower - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[bubbleCongressional + deployTower] = 0;
    return data + bubbleCongressional;
}

+ (NSString *)StringFromPlaceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PlaceDataToCache:data]];
}  

//: nickname_tip
+ (NSString *)dream_suspectQuickContent {
    /* static */ NSString *dream_suspectQuickContent = nil;
    if (!dream_suspectQuickContent) {
        Byte value[] = {12, 12, 103, 178, 102, 200, 47, 170, 241, 73, 247, 16, 112, 105, 116, 95, 101, 109, 97, 110, 107, 99, 105, 110, 180};
        dream_suspectQuickContent = [self StringFromPlaceData:value];
    }
    return dream_suspectQuickContent;
}

//: activity_login_login
+ (NSString *)showChangeContent {
    /* static */ NSString *showChangeContent = nil;
    if (!showChangeContent) {
        Byte value[] = {20, 2, 110, 105, 103, 111, 108, 95, 110, 105, 103, 111, 108, 95, 121, 116, 105, 118, 105, 116, 99, 97, 168};
        showChangeContent = [self StringFromPlaceData:value];
    }
    return showChangeContent;
}

//: setting_privacy
+ (NSString *)m_handleValue {
    /* static */ NSString *m_handleValue = nil;
    if (!m_handleValue) {
        Byte value[] = {15, 4, 248, 97, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 51};
        m_handleValue = [self StringFromPlaceData:value];
    }
    return m_handleValue;
}

//: register_avtivity3_avatar
+ (NSString *)app_viewTargetName {
    /* static */ NSString *app_viewTargetName = nil;
    if (!app_viewTargetName) {
        Byte value[] = {25, 2, 114, 97, 116, 97, 118, 97, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 99};
        app_viewTargetName = [self StringFromPlaceData:value];
    }
    return app_viewTargetName;
}

//: spa
+ (NSString *)showItemName {
    /* static */ NSString *showItemName = nil;
    if (!showItemName) {
        Byte value[] = {3, 8, 45, 222, 253, 97, 122, 153, 97, 112, 115, 201};
        showItemName = [self StringFromPlaceData:value];
    }
    return showItemName;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)main_emergencyName {
    /* static */ NSString *main_emergencyName = nil;
    if (!main_emergencyName) {
        Byte value[] = {39, 10, 147, 255, 120, 10, 141, 199, 3, 88, 100, 101, 108, 105, 97, 102, 95, 114, 97, 116, 97, 118, 97, 95, 100, 97, 111, 108, 112, 117, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 230};
        main_emergencyName = [self StringFromPlaceData:value];
    }
    return main_emergencyName;
}

//: login_nickname
+ (NSString *)k_sendTitle {
    /* static */ NSString *k_sendTitle = nil;
    if (!k_sendTitle) {
        Byte value[] = {14, 11, 121, 162, 29, 163, 251, 250, 23, 163, 54, 101, 109, 97, 110, 107, 99, 105, 110, 95, 110, 105, 103, 111, 108, 212};
        k_sendTitle = [self StringFromPlaceData:value];
    }
    return k_sendTitle;
}

//: zh-Hans
+ (NSString *)appMaxPressWithData {
    /* static */ NSString *appMaxPressWithData = nil;
    if (!appMaxPressWithData) {
        Byte value[] = {7, 10, 236, 229, 27, 89, 130, 63, 209, 213, 115, 110, 97, 72, 45, 104, 122, 16};
        appMaxPressWithData = [self StringFromPlaceData:value];
    }
    return appMaxPressWithData;
}

//: #5D5F66
+ (NSString *)user_oldBrokerViewText {
    /* static */ NSString *user_oldBrokerViewText = nil;
    if (!user_oldBrokerViewText) {
        Byte value[] = {7, 2, 54, 54, 70, 53, 68, 53, 35, 81};
        user_oldBrokerViewText = [self StringFromPlaceData:value];
    }
    return user_oldBrokerViewText;
}

//: group_info_activity_update_failed
+ (NSString *)mMustPlanetData {
    /* static */ NSString *mMustPlanetData = nil;
    if (!mMustPlanetData) {
        Byte value[] = {33, 12, 192, 246, 66, 218, 224, 162, 92, 177, 129, 188, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 100, 112, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 223};
        mMustPlanetData = [self StringFromPlaceData:value];
    }
    return mMustPlanetData;
}

//: login_bg
+ (NSString *)app_towerName {
    /* static */ NSString *app_towerName = nil;
    if (!app_towerName) {
        Byte value[] = {8, 10, 164, 148, 54, 196, 246, 113, 12, 217, 103, 98, 95, 110, 105, 103, 111, 108, 141};
        app_towerName = [self StringFromPlaceData:value];
    }
    return app_towerName;
}

//: contact_list_activity_complete
+ (NSString *)main_pursuitAcheQuickTitle {
    /* static */ NSString *main_pursuitAcheQuickTitle = nil;
    if (!main_pursuitAcheQuickTitle) {
        Byte value[] = {30, 3, 54, 101, 116, 101, 108, 112, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 116, 99, 97, 116, 110, 111, 99, 204};
        main_pursuitAcheQuickTitle = [self StringFromPlaceData:value];
    }
    return main_pursuitAcheQuickTitle;
}

//: photo_account_def
+ (NSString *)notiAmbitionTitle {
    /* static */ NSString *notiAmbitionTitle = nil;
    if (!notiAmbitionTitle) {
        Byte value[] = {17, 12, 50, 228, 103, 31, 40, 91, 57, 211, 209, 146, 102, 101, 100, 95, 116, 110, 117, 111, 99, 99, 97, 95, 111, 116, 111, 104, 112, 195};
        notiAmbitionTitle = [self StringFromPlaceData:value];
    }
    return notiAmbitionTitle;
}

//: nickname
+ (NSString *)kSessionValue {
    /* static */ NSString *kSessionValue = nil;
    if (!kSessionValue) {
        Byte value[] = {8, 2, 101, 109, 97, 110, 107, 99, 105, 110, 206};
        kSessionValue = [self StringFromPlaceData:value];
    }
    return kSessionValue;
}

//: #fffWork
+ (NSString *)dream_quickContent {
    /* static */ NSString *dream_quickContent = nil;
    if (!dream_quickContent) {
        Byte value[] = {7, 8, 3, 255, 76, 169, 95, 84, 102, 102, 102, 102, 102, 102, 35, 74};
        dream_quickContent = [self StringFromPlaceData:value];
    }
    return dream_quickContent;
}

//: ic_close_b
+ (NSString *)k_novelText {
    /* static */ NSString *k_novelText = nil;
    if (!k_novelText) {
        Byte value[] = {10, 2, 98, 95, 101, 115, 111, 108, 99, 95, 99, 105, 169};
        k_novelText = [self StringFromPlaceData:value];
    }
    return k_novelText;
}

//: activity_register_account_has_account
+ (NSString *)k_mustName {
    /* static */ NSString *k_mustName = nil;
    if (!k_mustName) {
        Byte value[] = {37, 4, 40, 184, 116, 110, 117, 111, 99, 99, 97, 95, 115, 97, 104, 95, 116, 110, 117, 111, 99, 99, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 95, 121, 116, 105, 118, 105, 116, 99, 97, 172};
        k_mustName = [self StringFromPlaceData:value];
    }
    return k_mustName;
}

//: ko-KP
+ (NSString *)main_highlightData {
    /* static */ NSString *main_highlightData = nil;
    if (!main_highlightData) {
        Byte value[] = {5, 6, 4, 34, 92, 218, 80, 75, 45, 111, 107, 27};
        main_highlightData = [self StringFromPlaceData:value];
    }
    return main_highlightData;
}

//: nickname_same_account
+ (NSString *)appGivingData {
    /* static */ NSString *appGivingData = nil;
    if (!appGivingData) {
        Byte value[] = {21, 8, 12, 83, 43, 192, 26, 86, 116, 110, 117, 111, 99, 99, 97, 95, 101, 109, 97, 115, 95, 101, 109, 97, 110, 107, 99, 105, 110, 201};
        appGivingData = [self StringFromPlaceData:value];
    }
    return appGivingData;
}

//: #999999
+ (NSString *)main_cousinTitle {
    /* static */ NSString *main_cousinTitle = nil;
    if (!main_cousinTitle) {
        Byte value[] = {7, 8, 38, 108, 242, 162, 89, 116, 57, 57, 57, 57, 57, 57, 35, 115};
        main_cousinTitle = [self StringFromPlaceData:value];
    }
    return main_cousinTitle;
}

//: #05D481
+ (NSString *)m_drugCongressionalData {
    /* static */ NSString *m_drugCongressionalData = nil;
    if (!m_drugCongressionalData) {
        Byte value[] = {7, 4, 133, 150, 49, 56, 52, 68, 53, 48, 35, 212};
        m_drugCongressionalData = [self StringFromPlaceData:value];
    }
    return m_drugCongressionalData;
}

//: warm_prompt
+ (NSString *)showAfternoonMakeContent {
    /* static */ NSString *showAfternoonMakeContent = nil;
    if (!showAfternoonMakeContent) {
        Byte value[] = {11, 4, 142, 44, 116, 112, 109, 111, 114, 112, 95, 109, 114, 97, 119, 179};
        showAfternoonMakeContent = [self StringFromPlaceData:value];
    }
    return showAfternoonMakeContent;
}

//: zh-Hant
+ (NSString *)userTitleEndData {
    /* static */ NSString *userTitleEndData = nil;
    if (!userTitleEndData) {
        Byte value[] = {7, 6, 147, 71, 170, 242, 116, 110, 97, 72, 45, 104, 122, 235};
        userTitleEndData = [self StringFromPlaceData:value];
    }
    return userTitleEndData;
}

//: contact_tag_fragment_cancel
+ (NSString *)appWithData {
    /* static */ NSString *appWithData = nil;
    if (!appWithData) {
        Byte value[] = {27, 6, 167, 198, 242, 23, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 27};
        appWithData = [self StringFromPlaceData:value];
    }
    return appWithData;
}

//: hant
+ (NSString *)k_sessionName {
    /* static */ NSString *k_sessionName = nil;
    if (!k_sessionName) {
        Byte value[] = {4, 10, 247, 185, 127, 242, 174, 160, 138, 176, 116, 110, 97, 104, 24};
        k_sessionName = [self StringFromPlaceData:value];
    }
    return k_sessionName;
}

//: jpg
+ (NSString *)notiDeployTitle {
    /* static */ NSString *notiDeployTitle = nil;
    if (!notiDeployTitle) {
        Byte value[] = {3, 2, 103, 112, 106, 221};
        notiDeployTitle = [self StringFromPlaceData:value];
    }
    return notiDeployTitle;
}

//: setting_privacy_camera
+ (NSString *)notiCongressionalName {
    /* static */ NSString *notiCongressionalName = nil;
    if (!notiCongressionalName) {
        Byte value[] = {22, 8, 36, 131, 255, 110, 83, 51, 97, 114, 101, 109, 97, 99, 95, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 193};
        notiCongressionalName = [self StringFromPlaceData:value];
    }
    return notiCongressionalName;
}

//: register_avtivity3_nick
+ (NSString *)app_labelData {
    /* static */ NSString *app_labelData = nil;
    if (!app_labelData) {
        Byte value[] = {23, 9, 160, 24, 241, 187, 152, 104, 202, 107, 99, 105, 110, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 137};
        app_labelData = [self StringFromPlaceData:value];
    }
    return app_labelData;
}

//: tag_activity_set
+ (NSString *)noti_completeRowData {
    /* static */ NSString *noti_completeRowData = nil;
    if (!noti_completeRowData) {
        Byte value[] = {16, 7, 109, 187, 35, 194, 159, 116, 101, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 156};
        noti_completeRowData = [self StringFromPlaceData:value];
    }
    return noti_completeRowData;
}

//: #F6F6F6
+ (NSString *)m_byContent {
    /* static */ NSString *m_byContent = nil;
    if (!m_byContent) {
        Byte value[] = {7, 5, 100, 52, 14, 54, 70, 54, 70, 54, 70, 35, 31};
        m_byContent = [self StringFromPlaceData:value];
    }
    return m_byContent;
}

//: register_good_nick
+ (NSString *)kInfoSessionName {
    /* static */ NSString *kInfoSessionName = nil;
    if (!kInfoSessionName) {
        Byte value[] = {18, 10, 196, 124, 78, 174, 50, 160, 172, 161, 107, 99, 105, 110, 95, 100, 111, 111, 103, 95, 114, 101, 116, 115, 105, 103, 101, 114, 111};
        kInfoSessionName = [self StringFromPlaceData:value];
    }
    return kInfoSessionName;
}

//: icon_photo
+ (NSString *)noti_assaultTitle {
    /* static */ NSString *noti_assaultTitle = nil;
    if (!noti_assaultTitle) {
        Byte value[] = {10, 8, 175, 151, 66, 40, 8, 141, 111, 116, 111, 104, 112, 95, 110, 111, 99, 105, 1};
        noti_assaultTitle = [self StringFromPlaceData:value];
    }
    return noti_assaultTitle;
}

//: #333333
+ (NSString *)app_accountFileName {
    /* static */ NSString *app_accountFileName = nil;
    if (!app_accountFileName) {
        Byte value[] = {7, 5, 215, 119, 7, 51, 51, 51, 51, 51, 51, 35, 117};
        app_accountFileName = [self StringFromPlaceData:value];
    }
    return app_accountFileName;
}

//: message_send_album
+ (NSString *)user_viewText {
    /* static */ NSString *user_viewText = nil;
    if (!user_viewText) {
        Byte value[] = {18, 2, 109, 117, 98, 108, 97, 95, 100, 110, 101, 115, 95, 101, 103, 97, 115, 115, 101, 109, 106};
        user_viewText = [self StringFromPlaceData:value];
    }
    return user_viewText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RegisterInfoViewController.h"
#import "ValueViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "NTESRegistConfigManager.h"
#import "Manager.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"

//: @interface RegisterInfoViewController ()
@interface ValueViewController ()

//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;

//: @property (nonatomic, strong) NSString *avaterUrl;
@property (nonatomic, strong) NSString *avaterUrl;

//: @end
@end

//: @implementation RegisterInfoViewController
@implementation ValueViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[PlaceData app_towerName]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initShould];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}
//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)initUI
- (void)initShould
{
    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    closeBtn.frame = CGRectMake(15, [UIDevice heightShowStop]+2, 40, 40);
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:[PlaceData k_novelText]] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:closeBtn];
    [self.view addSubview:closeBtn];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"register_good_nick"];
    labtitle.text = [InputRed preserve:[PlaceData kInfoSessionName]];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labtitle.textColor = [UIColor ground:[PlaceData user_oldBrokerViewText]];
    //: labtitle.font = [UIFont systemFontOfSize:14];
    labtitle.font = [UIFont systemFontOfSize:14];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.aratarImgView.image = [UIImage imageNamed:@"photo_account_def"];
    self.aratarImgView.image = [UIImage imageNamed:[PlaceData notiAmbitionTitle]];
    //: self.aratarImgView.layer.cornerRadius = 70;
    self.aratarImgView.layer.cornerRadius = 70;
    //: self.aratarImgView.layer.masksToBounds = YES;
    self.aratarImgView.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.aratarImgView];
    [avaterView addSubview:self.aratarImgView];
    //: self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.btnPhoto.backgroundColor = [UIColor whiteColor];
    //: self.btnPhoto.layer.cornerRadius = 24;
    self.btnPhoto.layer.cornerRadius = 24;
    //: self.btnPhoto.layer.masksToBounds = YES;
    self.btnPhoto.layer.masksToBounds = YES;
    //: self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    //: [self.btnPhoto setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [self.btnPhoto setImage:[UIImage imageNamed:[PlaceData noti_assaultTitle]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(beyondDisable) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor ground:[PlaceData m_byContent]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    self.titleImg.image = [UIImage imageNamed:[PlaceData k_sendTitle]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor ground:[PlaceData app_accountFileName]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[WorkLanguageManager getTextWithKey:@"nickname_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[InputRed preserve:[PlaceData dream_suspectQuickContent]] attributes:@{NSForegroundColorAttributeName:[UIColor ground:[PlaceData main_cousinTitle]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[WorkLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [_loginButton setTitle:[InputRed preserve:[PlaceData main_pursuitAcheQuickTitle]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(bottomClick) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _loginButton.backgroundColor = [UIColor ground:[PlaceData m_drugCongressionalData]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice vg_statusBarHeight]+20, 146, 32);
    _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice heightShowStop]+20, 146, 32);
    //: _registerButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _registerButton.backgroundColor = [UIColor ground:[PlaceData m_drugCongressionalData]];
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#fffWork"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor ground:[PlaceData dream_quickContent]] forState:UIControlStateNormal];
    //: [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[WorkLanguageManager getTextWithKey:@"activity_register_account_has_account"],[WorkLanguageManager getTextWithKey:@"activity_login_login"]] forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[InputRed preserve:[PlaceData k_mustName]],[InputRed preserve:[PlaceData showChangeContent]]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(searchedSuper) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
    //: _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.masksToBounds = YES;
    //: _registerButton.layer.cornerRadius = 16;
    _registerButton.layer.cornerRadius = 16;
}


//: - (void)requestAuthorizationForVideo {
- (void)withStandard {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [self pushTZImagePickerControllerWithAsset:nil];
                        [self holder:nil];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [self pushTZImagePickerControllerWithAsset:nil];
            [self holder:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WorkLanguageManager getTextWithKey:@"warm_prompt"] message:[WorkLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[PlaceData showAfternoonMakeContent]] message:[InputRed preserve:[PlaceData notiCongressionalName]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[PlaceData appWithData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[PlaceData noti_completeRowData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)beforeContent
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self pushTZImagePickerControllerWithAsset:nil];
                    [self holder:nil];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self holder:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WorkLanguageManager getTextWithKey:@"warm_prompt"] message:[WorkLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[PlaceData showAfternoonMakeContent]] message:[InputRed preserve:[PlaceData m_handleValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[PlaceData appWithData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[PlaceData noti_completeRowData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];
    }
}







//: - (void)showPicker {
- (void)beyondDisable {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[InputRed preserve:[PlaceData user_viewText]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self beforeContent];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[InputRed preserve:[PlaceData appWithData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   //: }];
   }];


//    [alertVc addAction:camera];
    //: [alertVc addAction:picture];
    [alertVc addAction:picture];
    //: [alertVc addAction:cancle];
    [alertVc addAction:cancle];

    //: [self presentViewController:alertVc animated:YES completion:nil];
    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)holder:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.width - 2 * left;
    NSInteger widthHeight = self.view.width - 2 * left;
    //: NSInteger top = (self.view.height - widthHeight) / 2;
    NSInteger top = (self.view.height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = emptyString([SessionRecord afterUser].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = [PlaceData main_highlightData];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[PlaceData showItemName]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [PlaceData appMaxPressWithData];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[PlaceData k_sessionName]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [PlaceData userTitleEndData];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//    [NSSet setWithObjects:@"zh-Hans", @"zh-Hant", @"en", @"ar", @"de", @"es", @"fr", @"ja", @"ko-KP", @"pt", @"ru", @"vi", nil];
    // 设置首选语言 / Set preferred language
//         imagePickerVc.preferredLanguage = @"zh-Hans";
        // 设置languageBundle以使用其它语言 / Set languageBundle to use other language
//         imagePickerVc.languageBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"tz-ru" ofType:@"lproj"]];

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;
//            [self uploadImage:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)messageFrom:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image byName:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [LineHelper message:[PlaceData notiDeployTitle]];
    //: NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[LineHelper icon] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error && wself) {
            if (!error && wself) {
                //: NSLog(@"urlString：%@",urlString);
                //: self.avaterUrl = urlString;
                self.avaterUrl = urlString;
            //: }else{
            }else{
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[InputRed preserve:[PlaceData main_emergencyName]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"group_info_activity_update_failed"]
        [self.view makeToast:[InputRed preserve:[PlaceData mMustPlanetData]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}


//: - (void)gotologin
- (void)searchedSuper
{
    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
}
//: - (void)nextButtonClick
- (void)bottomClick
{
    //: if (_usernameTextField.text.length == 0) {
    if (_usernameTextField.text.length == 0) {
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[InputRed preserve:[PlaceData app_labelData]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_usernameTextField.text isEqualToString:self.accountName]) {
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[InputRed preserve:[PlaceData appGivingData]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    Manager *manager = [Manager managingDirector];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[WorkLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD text:[InputRed preserve:[PlaceData app_viewTargetName]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
    [manager.registDict setObject:self.usernameTextField.text forKey:[PlaceData kSessionValue]];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [Manager regist:self.navigationController];
}

//: @end
@end
