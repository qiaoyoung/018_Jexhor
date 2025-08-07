
#import <Foundation/Foundation.h>

@interface ChartOnData : NSObject

@end

@implementation ChartOnData

+ (Byte *)ChartOnDataToCache:(Byte *)data {
    int side = data[0];
    Byte going = data[1];
    int titleCell = data[2];
    for (int i = titleCell; i < titleCell + side; i++) {
        int value = data[i] + going;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[titleCell + side] = 0;
    return data + titleCell;
}

+ (NSString *)StringFromChartOnData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChartOnDataToCache:data]];
}

//: /user/detail
+ (NSString *)m_buttonIdent {
    /* static */ NSString *m_buttonIdent = nil;
    if (!m_buttonIdent) {
        Byte value[] = {12, 14, 10, 11, 120, 79, 246, 126, 102, 83, 33, 103, 101, 87, 100, 33, 86, 87, 102, 83, 91, 94, 68};
        m_buttonIdent = [self StringFromChartOnData:value];
    }
    return m_buttonIdent;
}

//: gender
+ (NSString *)user_rageBornProfessionIdent {
    /* static */ NSString *user_rageBornProfessionIdent = nil;
    if (!user_rageBornProfessionIdent) {
        Byte value[] = {6, 78, 11, 202, 247, 215, 149, 152, 208, 47, 245, 25, 23, 32, 22, 23, 36, 15};
        user_rageBornProfessionIdent = [self StringFromChartOnData:value];
    }
    return user_rageBornProfessionIdent;
}

//: /user/edit
+ (NSString *)mViewMessage {
    /* static */ NSString *mViewMessage = nil;
    if (!mViewMessage) {
        Byte value[] = {10, 17, 9, 217, 221, 219, 104, 126, 48, 30, 100, 98, 84, 97, 30, 84, 83, 88, 99, 74};
        mViewMessage = [self StringFromChartOnData:value];
    }
    return mViewMessage;
}

//: friend_info_activity_nan
+ (NSString *)notiDepartUrl {
    /* static */ NSString *notiDepartUrl = nil;
    if (!notiDepartUrl) {
        Byte value[] = {24, 68, 4, 37, 34, 46, 37, 33, 42, 32, 27, 37, 42, 34, 43, 27, 29, 31, 48, 37, 50, 37, 48, 53, 27, 42, 29, 42, 147};
        notiDepartUrl = [self StringFromChartOnData:value];
    }
    return notiDepartUrl;
}

//: group_info_activity_update_failed
+ (NSString *)noti_versionStatusKey {
    /* static */ NSString *noti_versionStatusKey = nil;
    if (!noti_versionStatusKey) {
        Byte value[] = {33, 85, 5, 140, 250, 18, 29, 26, 32, 27, 10, 20, 25, 17, 26, 10, 12, 14, 31, 20, 33, 20, 31, 36, 10, 32, 27, 15, 12, 31, 16, 10, 17, 12, 20, 23, 16, 15, 119};
        noti_versionStatusKey = [self StringFromChartOnData:value];
    }
    return noti_versionStatusKey;
}

//: user_id
+ (NSString *)notiYinMessage {
    /* static */ NSString *notiYinMessage = nil;
    if (!notiYinMessage) {
        Byte value[] = {7, 10, 12, 61, 30, 231, 221, 106, 89, 110, 174, 56, 107, 105, 91, 104, 85, 95, 90, 61};
        notiYinMessage = [self StringFromChartOnData:value];
    }
    return notiYinMessage;
}

//: friend_info_activity_xu
+ (NSString *)dream_governName {
    /* static */ NSString *dream_governName = nil;
    if (!dream_governName) {
        Byte value[] = {23, 31, 11, 64, 120, 163, 207, 247, 241, 119, 154, 71, 83, 74, 70, 79, 69, 64, 74, 79, 71, 80, 64, 66, 68, 85, 74, 87, 74, 85, 90, 64, 89, 86, 171};
        dream_governName = [self StringFromChartOnData:value];
    }
    return dream_governName;
}

//: #5D5F66
+ (NSString *)appNuclearColorTitle {
    /* static */ NSString *appNuclearColorTitle = nil;
    if (!appNuclearColorTitle) {
        Byte value[] = {7, 18, 12, 213, 17, 31, 200, 214, 217, 27, 66, 119, 17, 35, 50, 35, 52, 36, 36, 210};
        appNuclearColorTitle = [self StringFromChartOnData:value];
    }
    return appNuclearColorTitle;
}

//: zh-Hant
+ (NSString *)appJumpData {
    /* static */ NSString *appJumpData = nil;
    if (!appJumpData) {
        Byte value[] = {7, 48, 11, 122, 184, 9, 92, 56, 144, 234, 87, 74, 56, 253, 24, 49, 62, 68, 189};
        appJumpData = [self StringFromChartOnData:value];
    }
    return appJumpData;
}

//: icon_copy
+ (NSString *)appSaleName {
    /* static */ NSString *appSaleName = nil;
    if (!appSaleName) {
        Byte value[] = {9, 61, 9, 18, 233, 244, 139, 191, 70, 44, 38, 50, 49, 34, 38, 50, 51, 60, 105};
        appSaleName = [self StringFromChartOnData:value];
    }
    return appSaleName;
}

//: contact_tag_fragment_cancel
+ (NSString *)dream_showUrl {
    /* static */ NSString *dream_showUrl = nil;
    if (!dream_showUrl) {
        Byte value[] = {27, 95, 12, 187, 237, 173, 189, 15, 94, 119, 98, 198, 4, 16, 15, 21, 2, 4, 21, 0, 21, 2, 8, 0, 7, 19, 2, 8, 14, 6, 15, 21, 0, 4, 2, 15, 4, 6, 13, 213};
        dream_showUrl = [self StringFromChartOnData:value];
    }
    return dream_showUrl;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)noti_coldIconStr {
    /* static */ NSString *noti_coldIconStr = nil;
    if (!noti_coldIconStr) {
        Byte value[] = {39, 86, 6, 27, 159, 150, 31, 29, 15, 28, 9, 19, 24, 16, 25, 9, 11, 32, 30, 19, 32, 19, 30, 35, 9, 31, 26, 22, 25, 11, 14, 9, 11, 32, 11, 30, 11, 28, 9, 16, 11, 19, 22, 15, 14, 145};
        noti_coldIconStr = [self StringFromChartOnData:value];
    }
    return noti_coldIconStr;
}

//: back_arrow_bl
+ (NSString *)app_keyFormat {
    /* static */ NSString *app_keyFormat = nil;
    if (!app_keyFormat) {
        Byte value[] = {13, 90, 4, 77, 8, 7, 9, 17, 5, 7, 24, 24, 21, 29, 5, 8, 18, 150};
        app_keyFormat = [self StringFromChartOnData:value];
    }
    return app_keyFormat;
}

//: account_gender
+ (NSString *)show_imageId {
    /* static */ NSString *show_imageId = nil;
    if (!show_imageId) {
        Byte value[] = {14, 94, 8, 40, 38, 220, 53, 87, 3, 5, 5, 17, 23, 16, 22, 1, 9, 7, 16, 6, 7, 20, 199};
        show_imageId = [self StringFromChartOnData:value];
    }
    return show_imageId;
}

//: hant
+ (NSString *)mainButtonData {
    /* static */ NSString *mainButtonData = nil;
    if (!mainButtonData) {
        Byte value[] = {4, 93, 9, 20, 67, 67, 21, 103, 153, 11, 4, 17, 23, 214};
        mainButtonData = [self StringFromChartOnData:value];
    }
    return mainButtonData;
}

//: tag_activity_set
+ (NSString *)appParticipateFormat {
    /* static */ NSString *appParticipateFormat = nil;
    if (!appParticipateFormat) {
        Byte value[] = {16, 25, 8, 247, 57, 146, 244, 20, 91, 72, 78, 70, 72, 74, 91, 80, 93, 80, 91, 96, 70, 90, 76, 91, 79};
        appParticipateFormat = [self StringFromChartOnData:value];
    }
    return appParticipateFormat;
}

//: data
+ (NSString *)appCellText {
    /* static */ NSString *appCellText = nil;
    if (!appCellText) {
        Byte value[] = {4, 53, 8, 237, 157, 113, 248, 181, 47, 44, 63, 44, 19};
        appCellText = [self StringFromChartOnData:value];
    }
    return appCellText;
}

//: spa
+ (NSString *)mPullName {
    /* static */ NSString *mPullName = nil;
    if (!mPullName) {
        Byte value[] = {3, 84, 4, 255, 31, 28, 13, 145};
        mPullName = [self StringFromChartOnData:value];
    }
    return mPullName;
}

//: user_profile_avtivity_account
+ (NSString *)app_directPath {
    /* static */ NSString *app_directPath = nil;
    if (!app_directPath) {
        Byte value[] = {29, 91, 11, 53, 127, 194, 96, 97, 46, 251, 47, 26, 24, 10, 23, 4, 21, 23, 20, 11, 14, 17, 10, 4, 6, 27, 25, 14, 27, 14, 25, 30, 4, 6, 8, 8, 20, 26, 19, 25, 69};
        app_directPath = [self StringFromChartOnData:value];
    }
    return app_directPath;
}

//: userinfo_bg
+ (NSString *)appColorMessage {
    /* static */ NSString *appColorMessage = nil;
    if (!appColorMessage) {
        Byte value[] = {11, 57, 11, 223, 12, 177, 101, 70, 152, 178, 197, 60, 58, 44, 57, 48, 53, 45, 54, 38, 41, 46, 165};
        appColorMessage = [self StringFromChartOnData:value];
    }
    return appColorMessage;
}

//: zh-Hans
+ (NSString *)appVileErrUrl {
    /* static */ NSString *appVileErrUrl = nil;
    if (!appVileErrUrl) {
        Byte value[] = {7, 2, 13, 99, 42, 17, 33, 78, 65, 134, 34, 93, 130, 120, 102, 43, 70, 95, 108, 113, 150};
        appVileErrUrl = [self StringFromChartOnData:value];
    }
    return appVileErrUrl;
}

//: warm_prompt
+ (NSString *)k_showName {
    /* static */ NSString *k_showName = nil;
    if (!k_showName) {
        Byte value[] = {11, 47, 9, 85, 186, 204, 128, 106, 214, 72, 50, 67, 62, 48, 65, 67, 64, 62, 65, 69, 199};
        k_showName = [self StringFromChartOnData:value];
    }
    return k_showName;
}

//: account_account
+ (NSString *)userWarRangeDisappointedName {
    /* static */ NSString *userWarRangeDisappointedName = nil;
    if (!userWarRangeDisappointedName) {
        Byte value[] = {15, 66, 5, 157, 159, 31, 33, 33, 45, 51, 44, 50, 29, 31, 33, 33, 45, 51, 44, 50, 65};
        userWarRangeDisappointedName = [self StringFromChartOnData:value];
    }
    return userWarRangeDisappointedName;
}

//: friend_info_activity_nv
+ (NSString *)main_teamKey {
    /* static */ NSString *main_teamKey = nil;
    if (!main_teamKey) {
        Byte value[] = {23, 49, 9, 32, 242, 225, 22, 225, 120, 53, 65, 56, 52, 61, 51, 46, 56, 61, 53, 62, 46, 48, 50, 67, 56, 69, 56, 67, 72, 46, 61, 69, 95};
        main_teamKey = [self StringFromChartOnData:value];
    }
    return main_teamKey;
}

//: activity_my_user_info_nick
+ (NSString *)m_saleStr {
    /* static */ NSString *m_saleStr = nil;
    if (!m_saleStr) {
        Byte value[] = {26, 45, 4, 190, 52, 54, 71, 60, 73, 60, 71, 76, 50, 64, 76, 50, 72, 70, 56, 69, 50, 60, 65, 57, 66, 50, 65, 60, 54, 62, 126};
        m_saleStr = [self StringFromChartOnData:value];
    }
    return m_saleStr;
}

//: jpg
+ (NSString *)notiJuryUrl {
    /* static */ NSString *notiJuryUrl = nil;
    if (!notiJuryUrl) {
        Byte value[] = {3, 12, 5, 41, 253, 94, 100, 91, 175};
        notiJuryUrl = [self StringFromChartOnData:value];
    }
    return notiJuryUrl;
}

//: setting_privacy
+ (NSString *)showChiefKey {
    /* static */ NSString *showChiefKey = nil;
    if (!showChiefKey) {
        Byte value[] = {15, 42, 8, 112, 187, 59, 94, 227, 73, 59, 74, 74, 63, 68, 61, 53, 70, 72, 63, 76, 55, 57, 79, 161};
        showChiefKey = [self StringFromChartOnData:value];
    }
    return showChiefKey;
}

//: icon_options_grdefault
+ (NSString *)kTapName {
    /* static */ NSString *kTapName = nil;
    if (!kTapName) {
        Byte value[] = {22, 5, 10, 233, 93, 107, 35, 64, 103, 9, 100, 94, 106, 105, 90, 106, 107, 111, 100, 106, 105, 110, 90, 98, 109, 95, 96, 97, 92, 112, 103, 111, 80};
        kTapName = [self StringFromChartOnData:value];
    }
    return kTapName;
}

//: accout_nickname
+ (NSString *)userWonderfulContent {
    /* static */ NSString *userWonderfulContent = nil;
    if (!userWonderfulContent) {
        Byte value[] = {15, 14, 3, 83, 85, 85, 97, 103, 102, 81, 96, 91, 85, 93, 96, 83, 95, 87, 74};
        userWonderfulContent = [self StringFromChartOnData:value];
    }
    return userWonderfulContent;
}

//: icon_photo
+ (NSString *)user_departMessage {
    /* static */ NSString *user_departMessage = nil;
    if (!user_departMessage) {
        Byte value[] = {10, 55, 3, 50, 44, 56, 55, 40, 57, 49, 56, 61, 56, 113};
        user_departMessage = [self StringFromChartOnData:value];
    }
    return user_departMessage;
}

//: icon_me_arrow
+ (NSString *)dreamSessionStr {
    /* static */ NSString *dreamSessionStr = nil;
    if (!dreamSessionStr) {
        Byte value[] = {13, 50, 12, 18, 150, 70, 137, 83, 105, 118, 184, 221, 55, 49, 61, 60, 45, 59, 51, 45, 47, 64, 64, 61, 69, 245};
        dreamSessionStr = [self StringFromChartOnData:value];
    }
    return dreamSessionStr;
}

//: activity_friend_info_sex
+ (NSString *)mNameText {
    /* static */ NSString *mNameText = nil;
    if (!mNameText) {
        Byte value[] = {24, 14, 5, 151, 30, 83, 85, 102, 91, 104, 91, 102, 107, 81, 88, 100, 91, 87, 96, 86, 81, 91, 96, 88, 97, 81, 101, 87, 106, 235};
        mNameText = [self StringFromChartOnData:value];
    }
    return mNameText;
}

//: setting_privacy_camera
+ (NSString *)kTermsPath {
    /* static */ NSString *kTermsPath = nil;
    if (!kTermsPath) {
        Byte value[] = {22, 50, 10, 100, 117, 1, 210, 211, 250, 233, 65, 51, 66, 66, 55, 60, 53, 45, 62, 64, 55, 68, 47, 49, 71, 45, 49, 47, 59, 51, 64, 47, 85};
        kTermsPath = [self StringFromChartOnData:value];
    }
    return kTermsPath;
}

//: photo_account_def
+ (NSString *)show_inputMessage {
    /* static */ NSString *show_inputMessage = nil;
    if (!show_inputMessage) {
        Byte value[] = {17, 2, 9, 222, 119, 211, 191, 243, 158, 110, 102, 109, 114, 109, 93, 95, 97, 97, 109, 115, 108, 114, 93, 98, 99, 100, 24};
        show_inputMessage = [self StringFromChartOnData:value];
    }
    return show_inputMessage;
}

//: my_user_info_activity_title
+ (NSString *)show_upTitle {
    /* static */ NSString *show_upTitle = nil;
    if (!show_upTitle) {
        Byte value[] = {27, 1, 8, 162, 17, 54, 113, 39, 108, 120, 94, 116, 114, 100, 113, 94, 104, 109, 101, 110, 94, 96, 98, 115, 104, 117, 104, 115, 120, 94, 115, 104, 115, 107, 100, 55};
        show_upTitle = [self StringFromChartOnData:value];
    }
    return show_upTitle;
}

//: account
+ (NSString *)noti_coldUrl {
    /* static */ NSString *noti_coldUrl = nil;
    if (!noti_coldUrl) {
        Byte value[] = {7, 26, 5, 11, 58, 71, 73, 73, 85, 91, 84, 90, 185};
        noti_coldUrl = [self StringFromChartOnData:value];
    }
    return noti_coldUrl;
}

//: code
+ (NSString *)kItemStr {
    /* static */ NSString *kItemStr = nil;
    if (!kItemStr) {
        Byte value[] = {4, 9, 9, 1, 114, 47, 137, 35, 193, 90, 102, 91, 92, 187};
        kItemStr = [self StringFromChartOnData:value];
    }
    return kItemStr;
}

//: ko-KP
+ (NSString *)dreamLeaveAspectText {
    /* static */ NSString *dreamLeaveAspectText = nil;
    if (!dreamLeaveAspectText) {
        Byte value[] = {5, 31, 11, 57, 128, 9, 167, 234, 90, 144, 159, 76, 80, 14, 44, 49, 32};
        dreamLeaveAspectText = [self StringFromChartOnData:value];
    }
    return dreamLeaveAspectText;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomViewController.m
//  Riverla
//
//  Created by Yan Wang on 2024/12/30.
//  Copyright © 2024 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFUserInfoViewController.h"
#import "RandomViewController.h"
//: #import "NTESSignSettingViewController.h"
#import "NameViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "KEKESetNickNameView.h"
#import "TradeNameView.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import "NSSetSexView.h"
#import "CenterMainView.h"
//: #import "NSSetAvater.h"
#import "SearchedView.h"

//: @interface FFFUserInfoViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface RandomViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,EasyLayDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (strong, nonatomic) UIImageView *imgHeader;
@property (strong, nonatomic) UIImageView *imgHeader;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;

//: @property (strong, nonatomic) UILabel *labNickname;
@property (strong, nonatomic) UILabel *labNickname;
//: @property (strong, nonatomic) UILabel *nickName;
@property (strong, nonatomic) UILabel *nickName;
//: @property (strong, nonatomic) UIButton *btnNickname;
@property (strong, nonatomic) UIButton *btnNickname;
//: @property (strong, nonatomic) UILabel *labAccount;
@property (strong, nonatomic) UILabel *labAccount;
//: @property (strong, nonatomic) UILabel *account;
@property (strong, nonatomic) UILabel *account;
//: @property (strong, nonatomic) UIButton *btnCopy;
@property (strong, nonatomic) UIButton *btnCopy;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *sign;
@property (strong, nonatomic) UILabel *sign;
//: @property (strong, nonatomic) UIButton *btnSign;
@property (strong, nonatomic) UIButton *btnSign;
//: @property (strong, nonatomic) UILabel *labSex;
@property (strong, nonatomic) UILabel *labSex;
//: @property (strong, nonatomic) UILabel *sex;
@property (strong, nonatomic) UILabel *sex;

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;
//: @property (nonatomic, strong) UIView *cropView;
@property (nonatomic, strong) UIView *cropView;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;
//: @property (nonatomic, strong) NSSetSexView *sexView;
@property (nonatomic, strong) CenterMainView *sexView;
//: @property (nonatomic, strong) KEKESetNickNameView *changeNickNameView;
@property (nonatomic, strong) TradeNameView *changeNickNameView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) SearchedView *aleartView;


//: @end
@end

//: @implementation FFFUserInfoViewController
@implementation RandomViewController

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
//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = RGB_COLOR_String(@"#F6F7FA");
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"userinfo_bg"];
    bg.image = [UIImage imageNamed:[ChartOnData appColorMessage]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ChartOnData app_keyFormat]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice title]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"my_user_info_activity_title"];
    labtitle.text = [BackgroundRandomAttribute content:[ChartOnData show_upTitle]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: [self loadUiView];
    [self bringHome];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [self refresh];
    [self sizeDown];
}

//: - (void)loadUiView
- (void)bringHome
{
    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice vg_statusBarHeight])+15, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice title])+15, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.imgHeader.image = [UIImage imageNamed:@"photo_account_def"];
    self.imgHeader.image = [UIImage imageNamed:[ChartOnData show_inputMessage]];
    //: self.imgHeader.layer.cornerRadius = 70;
    self.imgHeader.layer.cornerRadius = 70;
    //: self.imgHeader.layer.masksToBounds = YES;
    self.imgHeader.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.imgHeader];
    [avaterView addSubview:self.imgHeader];
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
    [self.btnPhoto setImage:[UIImage imageNamed:[ChartOnData user_departMessage]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(handleThePhoto) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(terracePressed) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *accountView = [[UIView alloc]initWithFrame:CGRectMake(15, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *accountView = [[UIView alloc]initWithFrame:CGRectMake(15, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: accountView.backgroundColor = [UIColor whiteColor];
    accountView.backgroundColor = [UIColor whiteColor];
    //: accountView.layer.cornerRadius = 12;
    accountView.layer.cornerRadius = 12;
    //: [self.view addSubview:accountView];
    [self.view addSubview:accountView];
    //: UIImageView *accountImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *accountImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: accountImg.image = [UIImage imageNamed:@"account_account"];
    accountImg.image = [UIImage imageNamed:[ChartOnData userWarRangeDisappointedName]];
    //: [accountView addSubview:accountImg];
    [accountView addSubview:accountImg];
    //: self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labAccount.font = [UIFont systemFontOfSize:16.f];
    self.labAccount.font = [UIFont systemFontOfSize:16.f];
    //: self.labAccount.textColor = [UIColor blackColor];
    self.labAccount.textColor = [UIColor blackColor];
    //: self.labAccount.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_account"];
    self.labAccount.text = [BackgroundRandomAttribute content:[ChartOnData app_directPath]];
    //: [accountView addSubview:self.labAccount];
    [accountView addSubview:self.labAccount];
    //: self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.account.font = [UIFont systemFontOfSize:14.f];
    self.account.font = [UIFont systemFontOfSize:14.f];
    //: self.account.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.account.textColor = [UIColor user:[ChartOnData appNuclearColorTitle]];
    //: self.account.textAlignment = NSTextAlignmentRight;
    self.account.textAlignment = NSTextAlignmentRight;
    //: [accountView addSubview:self.account];
    [accountView addSubview:self.account];
    //: self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    //: [self.btnCopy setImage:[UIImage imageNamed:@"icon_copy"] forState:(UIControlStateNormal)];
    [self.btnCopy setImage:[UIImage imageNamed:[ChartOnData appSaleName]] forState:(UIControlStateNormal)];
    //: [self.btnCopy addTarget:self action:@selector(handleTheCopy) forControlEvents:UIControlEventTouchUpInside];
    [self.btnCopy addTarget:self action:@selector(mismanageValue) forControlEvents:UIControlEventTouchUpInside];
    //: [accountView addSubview:self.btnCopy];
    [accountView addSubview:self.btnCopy];

    //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: nameView.backgroundColor = [UIColor whiteColor];
    nameView.backgroundColor = [UIColor whiteColor];
    //: nameView.layer.cornerRadius = 12;
    nameView.layer.cornerRadius = 12;
    //: [self.view addSubview:nameView];
    [self.view addSubview:nameView];
    //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheNickName)];
    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ironedPull)];
    //: [nameView addGestureRecognizer:panGesture];
    [nameView addGestureRecognizer:panGesture];
    //: UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: nameImg.image = [UIImage imageNamed:@"accout_nickname"];
    nameImg.image = [UIImage imageNamed:[ChartOnData userWonderfulContent]];
    //: [nameView addSubview:nameImg];
    [nameView addSubview:nameImg];
    //: self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labNickname.font = [UIFont systemFontOfSize:16.f];
    self.labNickname.font = [UIFont systemFontOfSize:16.f];
    //: self.labNickname.textColor = [UIColor blackColor];
    self.labNickname.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labNickname.text = [FFFLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    self.labNickname.text = [BackgroundRandomAttribute content:[ChartOnData m_saleStr]];
    //: [nameView addSubview:self.labNickname];
    [nameView addSubview:self.labNickname];
    //: self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.nickName.font = [UIFont systemFontOfSize:14.f];
    self.nickName.font = [UIFont systemFontOfSize:14.f];
    //: self.nickName.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.nickName.textColor = [UIColor user:[ChartOnData appNuclearColorTitle]];
    //: self.nickName.textAlignment = NSTextAlignmentRight;
    self.nickName.textAlignment = NSTextAlignmentRight;
    //: [nameView addSubview:self.nickName];
    [nameView addSubview:self.nickName];
    //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    arrow.image = [UIImage imageNamed:[ChartOnData dreamSessionStr]];
    //: [nameView addSubview:arrow];
    [nameView addSubview:arrow];

    //: UIView *sexView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *sexView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: sexView.backgroundColor = [UIColor whiteColor];
    sexView.backgroundColor = [UIColor whiteColor];
    //: sexView.layer.cornerRadius = 12;
    sexView.layer.cornerRadius = 12;
    //: [self.view addSubview:sexView];
    [self.view addSubview:sexView];
    //: UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheSex)];
    UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(barTap)];
    //: [sexView addGestureRecognizer:sexGesture];
    [sexView addGestureRecognizer:sexGesture];
    //: UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: sexImg.image = [UIImage imageNamed:@"account_gender"];
    sexImg.image = [UIImage imageNamed:[ChartOnData show_imageId]];
    //: [sexView addSubview:sexImg];
    [sexView addSubview:sexImg];
    //: self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labSex.font = [UIFont systemFontOfSize:16.f];
    self.labSex.font = [UIFont systemFontOfSize:16.f];
    //: self.labSex.textColor = [UIColor blackColor];
    self.labSex.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labSex.text = [FFFLanguageManager getTextWithKey:@"activity_friend_info_sex"];
    self.labSex.text = [BackgroundRandomAttribute content:[ChartOnData mNameText]];
    //: [sexView addSubview:self.labSex];
    [sexView addSubview:self.labSex];
    //: self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.sex.font = [UIFont systemFontOfSize:14.f];
    self.sex.font = [UIFont systemFontOfSize:14.f];
    //: self.sex.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.sex.textColor = [UIColor user:[ChartOnData appNuclearColorTitle]];
    //: self.sex.textAlignment = NSTextAlignmentRight;
    self.sex.textAlignment = NSTextAlignmentRight;
    //: [sexView addSubview:self.sex];
    [sexView addSubview:self.sex];
    //: UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: sexarrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    sexarrow.image = [UIImage imageNamed:[ChartOnData dreamSessionStr]];
    //: [sexView addSubview:sexarrow];
    [sexView addSubview:sexarrow];

//    UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom, SCREEN_WIDTH-30, 80)];
//    [self.view addSubview:signView];
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheSign)];
//    [signView addGestureRecognizer:tapGesture];
//    self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
//    self.labSign.font = [UIFont systemFontOfSize:16.f];
//    self.labSign.textColor = [UIColor blackColor];
//    self.labSign.text = LangKey(@"user_profile_avtivity_signature");
//    [signView addSubview:self.labSign];
//    UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-30-12, 14, 12, 12)];
//    arrow1.image = [UIImage imageNamed:@"icon_me_arrow"];
//    [signView addSubview:arrow1];
//    self.sign = [[UILabel alloc]initWithFrame:CGRectMake(0, self.labSign.bottom, SCREEN_WIDTH-30, 40)];
//    self.sign.font = [UIFont systemFontOfSize:14.f];
//    self.sign.textColor = TextColor_2;
//    self.sign.numberOfLines = 0;
//    [signView addSubview:self.sign];

}
//: - (void)refresh {
- (void)sizeDown {
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"icon_options_grdefault"]];
    [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[ChartOnData kTapName]]];

    //: self.nickName.text = me.userInfo.nickName;
    self.nickName.text = me.userInfo.nickName;
//    self.account.text = me.userId;
//    self.sign.text = me.userInfo.sign.length ? me.userInfo.sign : LangKey(@"未设置");
    //: self.sex.text = [self genderString:me.userInfo.gender];
    self.sex.text = [self language:me.userInfo.gender];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = me.userId;
    dict[[ChartOnData notiYinMessage]] = me.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[ChartOnData m_buttonIdent]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[ChartOnData kItemStr]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[ChartOnData appCellText]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data index:[ChartOnData noti_coldUrl]];

            //: self.account.text = account;
            self.account.text = account;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}
//: - (void)handleTheNickName
- (void)ironedPull
{
    //: [self.view addSubview:self.changeNickNameView];
    [self.view addSubview:self.changeNickNameView];
    //: [ self.changeNickNameView reloadWithNickname: self.nickName.text];
    [ self.changeNickNameView name: self.nickName.text];
    //: [self.changeNickNameView animationShow];
    [self.changeNickNameView demonstrateColor];
}
//: - (void)handleTheSign
- (void)plundered
{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    NameViewController *vc = [[NameViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handleTheSex
- (void)barTap
{
    //: [self.view addSubview:self.sexView];
    [self.view addSubview:self.sexView];
    //: [self.sexView reloadWithGender: self.selectedGender];
    [self.sexView complete: self.selectedGender];
    //: [self.sexView animationShow];
    [self.sexView targetShow];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.sexView.speiceBackBlock = ^(NSInteger selectedGender){
    self.sexView.speiceBackBlock = ^(NSInteger selectedGender){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: self.selectedGender = selectedGender;
        self.selectedGender = selectedGender;
        //: [self remoteUpdateGender];
        [self cell];
    //: };
    };
}
//: - (void)remoteUpdateGender{
- (void)cell{
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"gender"] = @(self.selectedGender);
    dict[[ChartOnData user_rageBornProfessionIdent]] = @(self.selectedGender);
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/edit"] params:dict isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[ChartOnData mViewMessage]] view:dict fort:YES generate:^(id responseObject) {

        //: [wself.sexView animationClose];
        [wself.sexView nearAdd];
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: self.sex.text = [self genderString:self.selectedGender];
    self.sex.text = [self language:self.selectedGender];

}

//: - (NSString *)genderString:(NSInteger )gender{
- (NSString *)language:(NSInteger )gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case 1:
        case 1:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [BackgroundRandomAttribute content:[ChartOnData notiDepartUrl]];
            //: break;
            break;
        //: case 2:
        case 2:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [BackgroundRandomAttribute content:[ChartOnData main_teamKey]];
            //: break;
            break;
        //: case 0:
        case 0:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [BackgroundRandomAttribute content:[ChartOnData dream_governName]];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: - (void)handleTheCopy
- (void)mismanageValue
{
    //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    //: pasteboard.string = self.account.text;
    pasteboard.string = self.account.text;
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"复制"]
    [self.view makeToast:[BackgroundRandomAttribute content:@"复制"]
                     //: duration:2
                     duration:2
                     //: position:CSToastPositionCenter];
                     position:CSToastPositionCenter];
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)itemGenerate {

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
                        [self drag:nil];

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
            [self drag:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[ChartOnData k_showName]] message:[BackgroundRandomAttribute content:[ChartOnData kTermsPath]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ChartOnData dream_showUrl]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ChartOnData appParticipateFormat]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)locationShould
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
                    [self drag:nil];
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
        [self drag:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[ChartOnData k_showName]] message:[BackgroundRandomAttribute content:[ChartOnData showChiefKey]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ChartOnData dream_showUrl]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ChartOnData appParticipateFormat]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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





//: - (void)handleThePhoto
- (void)terracePressed
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView record];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
////    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
////        [self requestAuthorizationForVideo];
////
////    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        [self requestAuthorizationForPhotoLibrary];
//    }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
////    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}
//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)drag:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

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
    //裁剪
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;//YES和NO不影响选择视频 但是视频也不能裁剪
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;//是否是圆形裁剪 YES 则是圆形裁剪 NO 方形
//    // 设置竖屏下的裁剪尺寸
//    NSInteger left = 30;
//    NSInteger widthHeight = self.view.tz_width - 2 * left;
//    NSInteger top = (self.view.tz_height - widthHeight) / 2;
//    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
//    imagePickerVc.scaleAspectFillCrop = YES;

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
    NSString *langType = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);
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
        preferredlang = [ChartOnData dreamLeaveAspectText];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[ChartOnData mPullName]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [ChartOnData appVileErrUrl];
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
    }else if ([langType containsString:[ChartOnData mainButtonData]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [ChartOnData appJumpData];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

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
            //: [self uploadImage:photos.firstObject];
            [self time:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}


//: - (void)onTouchSignSetting:(id)sender{
- (void)fullValue:(id)sender{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    NameViewController *vc = [[NameViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NIMUserManagerDelagate
#pragma mark - NIMUserManagerDelagate
//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: if ([user.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([user.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: [self refresh];
        [self sizeDown];
    }
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)blues:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self underColor:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self underColor:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)underColor:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf time:image];
//    weakSelf.aratarImgView.image = image;

    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)time:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image disableSize:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [BarVideo point:[ChartOnData notiJuryUrl]];
    //: NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[BarVideo findAdd] stringByAppendingPathComponent:fileName];
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
                //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagAvatar):urlString} completion:^(NSError *error) {
                [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagAvatar):urlString} completion:^(NSError *error) {
                    //: if (!error) {
                    if (!error) {
                        //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                        SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                        //: [sdManager.imageCache storeImage:imageForAvatarUpload
                        [sdManager.imageCache storeImage:imageForAvatarUpload
                                               //: imageData:data
                                               imageData:data
                                                  //: forKey:urlString
                                                  forKey:urlString
                                               //: cacheType:SDImageCacheTypeAll
                                               cacheType:SDImageCacheTypeAll
                                              //: completion:nil];
                                              completion:nil];
                        //: [wself refresh];
                        [wself sizeDown];
                    //: }else{
                    }else{
                        //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                        [wself.view makeToast:[BackgroundRandomAttribute content:[ChartOnData noti_coldIconStr]]
                                     //: duration:2
                                     duration:2
                                     //: position:CSToastPositionCenter];
                                     position:CSToastPositionCenter];
                    }
                //: }];
                }];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[BackgroundRandomAttribute content:[ChartOnData noti_coldIconStr]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]
        [self.view makeToast:[BackgroundRandomAttribute content:[ChartOnData noti_versionStatusKey]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}
//: - (KEKESetNickNameView *)changeNickNameView
- (TradeNameView *)changeNickNameView
{
    //: if(!_changeNickNameView){
    if(!_changeNickNameView){
        //: _changeNickNameView = [[KEKESetNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeNickNameView = [[TradeNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeNickNameView.hidden = YES;
    }
    //: return _changeNickNameView;
    return _changeNickNameView;
}

//: - (NSSetSexView *)sexView
- (CenterMainView *)sexView
{
    //: if(!_sexView){
    if(!_sexView){
        //: _sexView = [[NSSetSexView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _sexView = [[CenterMainView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _sexView.hidden = YES;
    }
    //: return _sexView;
    return _sexView;
}

//: - (NSSetAvater *)aleartView{
- (SearchedView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[SearchedView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end