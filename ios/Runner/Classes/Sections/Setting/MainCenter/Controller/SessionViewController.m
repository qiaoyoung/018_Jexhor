
#import <Foundation/Foundation.h>

@interface EndData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EndData

+ (instancetype)sharedInstance {
    static EndData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EndDataToCache:(Byte *)data {
    int commentMake = data[0];
    Byte glitter = data[1];
    int element = data[2];
    for (int i = element; i < element + commentMake; i++) {
        int value = data[i] + glitter;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[element + commentMake] = 0;
    return data + element;
}

- (NSString *)StringFromEndData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EndDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)k_removeSuccessTitle {
    /* static */ NSString *k_removeSuccessTitle = nil;
    if (!k_removeSuccessTitle) {
        Byte value[] = {13, 96, 10, 175, 77, 1, 255, 42, 209, 46, 2, 1, 3, 11, 255, 1, 18, 18, 15, 23, 255, 2, 12, 141};
        k_removeSuccessTitle = [self StringFromEndData:value];
    }
    return k_removeSuccessTitle;
}

//: account_gender
- (NSString *)dreamAtTitle {
    /* static */ NSString *dreamAtTitle = nil;
    if (!dreamAtTitle) {
        Byte value[] = {14, 80, 7, 144, 106, 44, 25, 17, 19, 19, 31, 37, 30, 36, 15, 23, 21, 30, 20, 21, 34, 195};
        dreamAtTitle = [self StringFromEndData:value];
    }
    return dreamAtTitle;
}

//: friend_info_activity_nan
- (NSString *)dream_bubbleAddValue {
    /* static */ NSString *dream_bubbleAddValue = nil;
    if (!dream_bubbleAddValue) {
        Byte value[] = {24, 98, 12, 191, 212, 82, 225, 249, 243, 165, 145, 167, 4, 16, 7, 3, 12, 2, 253, 7, 12, 4, 13, 253, 255, 1, 18, 7, 20, 7, 18, 23, 253, 12, 255, 12, 95};
        dream_bubbleAddValue = [self StringFromEndData:value];
    }
    return dream_bubbleAddValue;
}

//: user_profile_avtivity_account
- (NSString *)appChangeHideValue {
    /* static */ NSString *appChangeHideValue = nil;
    if (!appChangeHideValue) {
        Byte value[] = {29, 57, 8, 243, 116, 8, 117, 193, 60, 58, 44, 57, 38, 55, 57, 54, 45, 48, 51, 44, 38, 40, 61, 59, 48, 61, 48, 59, 64, 38, 40, 42, 42, 54, 60, 53, 59, 89};
        appChangeHideValue = [self StringFromEndData:value];
    }
    return appChangeHideValue;
}

//: jpg
- (NSString *)showLengthValue {
    /* static */ NSString *showLengthValue = nil;
    if (!showLengthValue) {
        Byte value[] = {3, 80, 5, 34, 69, 26, 32, 23, 193};
        showLengthValue = [self StringFromEndData:value];
    }
    return showLengthValue;
}

//: icon_options_grdefault
- (NSString *)showTagValue {
    /* static */ NSString *showTagValue = nil;
    if (!showTagValue) {
        Byte value[] = {22, 70, 11, 64, 61, 175, 229, 15, 235, 199, 193, 35, 29, 41, 40, 25, 41, 42, 46, 35, 41, 40, 45, 25, 33, 44, 30, 31, 32, 27, 47, 38, 46, 210};
        showTagValue = [self StringFromEndData:value];
    }
    return showTagValue;
}

//: friend_info_activity_xu
- (NSString *)dream_readData {
    /* static */ NSString *dream_readData = nil;
    if (!dream_readData) {
        Byte value[] = {23, 71, 8, 218, 252, 185, 82, 10, 31, 43, 34, 30, 39, 29, 24, 34, 39, 31, 40, 24, 26, 28, 45, 34, 47, 34, 45, 50, 24, 49, 46, 209};
        dream_readData = [self StringFromEndData:value];
    }
    return dream_readData;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)kValueMessageData {
    /* static */ NSString *kValueMessageData = nil;
    if (!kValueMessageData) {
        Byte value[] = {39, 30, 8, 6, 219, 83, 131, 163, 87, 85, 71, 84, 65, 75, 80, 72, 81, 65, 67, 88, 86, 75, 88, 75, 86, 91, 65, 87, 82, 78, 81, 67, 70, 65, 67, 88, 67, 86, 67, 84, 65, 72, 67, 75, 78, 71, 70, 170};
        kValueMessageData = [self StringFromEndData:value];
    }
    return kValueMessageData;
}

//: code
- (NSString *)show_imageValue {
    /* static */ NSString *show_imageValue = nil;
    if (!show_imageValue) {
        Byte value[] = {4, 7, 6, 55, 89, 107, 92, 104, 93, 94, 222};
        show_imageValue = [self StringFromEndData:value];
    }
    return show_imageValue;
}

//: activity_friend_info_sex
- (NSString *)showVideoName {
    /* static */ NSString *showVideoName = nil;
    if (!showVideoName) {
        Byte value[] = {24, 80, 9, 60, 158, 255, 188, 63, 33, 17, 19, 36, 25, 38, 25, 36, 41, 15, 22, 34, 25, 21, 30, 20, 15, 25, 30, 22, 31, 15, 35, 21, 40, 99};
        showVideoName = [self StringFromEndData:value];
    }
    return showVideoName;
}

//: setting_privacy
- (NSString *)k_viewData {
    /* static */ NSString *k_viewData = nil;
    if (!k_viewData) {
        Byte value[] = {15, 55, 6, 140, 252, 158, 60, 46, 61, 61, 50, 55, 48, 40, 57, 59, 50, 63, 42, 44, 66, 59};
        k_viewData = [self StringFromEndData:value];
    }
    return k_viewData;
}

//: zh-Hans
- (NSString *)mRowData {
    /* static */ NSString *mRowData = nil;
    if (!mRowData) {
        Byte value[] = {7, 93, 13, 124, 92, 149, 151, 161, 2, 13, 71, 101, 84, 29, 11, 208, 235, 4, 17, 22, 40};
        mRowData = [self StringFromEndData:value];
    }
    return mRowData;
}

//: data
- (NSString *)m_placeData {
    /* static */ NSString *m_placeData = nil;
    if (!m_placeData) {
        Byte value[] = {4, 33, 4, 177, 67, 64, 83, 64, 66};
        m_placeData = [self StringFromEndData:value];
    }
    return m_placeData;
}

//: icon_copy
- (NSString *)appColorData {
    /* static */ NSString *appColorData = nil;
    if (!appColorData) {
        Byte value[] = {9, 24, 12, 201, 94, 46, 10, 175, 34, 247, 173, 69, 81, 75, 87, 86, 71, 75, 87, 88, 97, 14};
        appColorData = [self StringFromEndData:value];
    }
    return appColorData;
}

//: user_id
- (NSString *)app_parentTitleName {
    /* static */ NSString *app_parentTitleName = nil;
    if (!app_parentTitleName) {
        Byte value[] = {7, 42, 8, 169, 51, 227, 182, 53, 75, 73, 59, 72, 53, 63, 58, 228};
        app_parentTitleName = [self StringFromEndData:value];
    }
    return app_parentTitleName;
}

//: setting_privacy_camera
- (NSString *)k_disableValue {
    /* static */ NSString *k_disableValue = nil;
    if (!k_disableValue) {
        Byte value[] = {22, 21, 7, 220, 154, 90, 45, 94, 80, 95, 95, 84, 89, 82, 74, 91, 93, 84, 97, 76, 78, 100, 74, 78, 76, 88, 80, 93, 76, 185};
        k_disableValue = [self StringFromEndData:value];
    }
    return k_disableValue;
}

//: userinfo_bg
- (NSString *)userSizeRowViewName {
    /* static */ NSString *userSizeRowViewName = nil;
    if (!userSizeRowViewName) {
        Byte value[] = {11, 27, 8, 251, 81, 38, 74, 56, 90, 88, 74, 87, 78, 83, 75, 84, 68, 71, 76, 103};
        userSizeRowViewName = [self StringFromEndData:value];
    }
    return userSizeRowViewName;
}

//: warm_prompt
- (NSString *)dreamLabelParentCanData {
    /* static */ NSString *dreamLabelParentCanData = nil;
    if (!dreamLabelParentCanData) {
        Byte value[] = {11, 20, 9, 148, 42, 55, 197, 22, 233, 99, 77, 94, 89, 75, 92, 94, 91, 89, 92, 96, 145};
        dreamLabelParentCanData = [self StringFromEndData:value];
    }
    return dreamLabelParentCanData;
}

//: spa
- (NSString *)mainDeleteHideName {
    /* static */ NSString *mainDeleteHideName = nil;
    if (!mainDeleteHideName) {
        Byte value[] = {3, 91, 5, 201, 130, 24, 21, 6, 54};
        mainDeleteHideName = [self StringFromEndData:value];
    }
    return mainDeleteHideName;
}

//: icon_photo
- (NSString *)app_limitContent {
    /* static */ NSString *app_limitContent = nil;
    if (!app_limitContent) {
        Byte value[] = {10, 10, 11, 89, 69, 240, 132, 142, 68, 135, 143, 95, 89, 101, 100, 85, 102, 94, 101, 106, 101, 129};
        app_limitContent = [self StringFromEndData:value];
    }
    return app_limitContent;
}

//: #5D5F66
- (NSString *)dreamTextAtData {
    /* static */ NSString *dreamTextAtData = nil;
    if (!dreamTextAtData) {
        Byte value[] = {7, 21, 12, 215, 25, 138, 220, 190, 106, 62, 46, 115, 14, 32, 47, 32, 49, 33, 33, 141};
        dreamTextAtData = [self StringFromEndData:value];
    }
    return dreamTextAtData;
}

//: icon_me_arrow
- (NSString *)notiScaleNeedInValue {
    /* static */ NSString *notiScaleNeedInValue = nil;
    if (!notiScaleNeedInValue) {
        Byte value[] = {13, 88, 5, 2, 30, 17, 11, 23, 22, 7, 21, 13, 7, 9, 26, 26, 23, 31, 123};
        notiScaleNeedInValue = [self StringFromEndData:value];
    }
    return notiScaleNeedInValue;
}

//: ko-KP
- (NSString *)dreamReadValue {
    /* static */ NSString *dreamReadValue = nil;
    if (!dreamReadValue) {
        Byte value[] = {5, 66, 10, 28, 198, 6, 72, 190, 222, 198, 41, 45, 235, 9, 14, 8};
        dreamReadValue = [self StringFromEndData:value];
    }
    return dreamReadValue;
}

//: gender
- (NSString *)show_countData {
    /* static */ NSString *show_countData = nil;
    if (!show_countData) {
        Byte value[] = {6, 48, 8, 246, 255, 1, 169, 157, 55, 53, 62, 52, 53, 66, 180};
        show_countData = [self StringFromEndData:value];
    }
    return show_countData;
}

//: photo_account_def
- (NSString *)showVideoValue {
    /* static */ NSString *showVideoValue = nil;
    if (!showVideoValue) {
        Byte value[] = {17, 58, 12, 205, 55, 102, 247, 175, 186, 76, 159, 190, 54, 46, 53, 58, 53, 37, 39, 41, 41, 53, 59, 52, 58, 37, 42, 43, 44, 255};
        showVideoValue = [self StringFromEndData:value];
    }
    return showVideoValue;
}

//: accout_nickname
- (NSString *)appViewText {
    /* static */ NSString *appViewText = nil;
    if (!appViewText) {
        Byte value[] = {15, 79, 8, 63, 224, 237, 38, 106, 18, 20, 20, 32, 38, 37, 16, 31, 26, 20, 28, 31, 18, 30, 22, 137};
        appViewText = [self StringFromEndData:value];
    }
    return appViewText;
}

//: my_user_info_activity_title
- (NSString *)app_hideData {
    /* static */ NSString *app_hideData = nil;
    if (!app_hideData) {
        Byte value[] = {27, 28, 3, 81, 93, 67, 89, 87, 73, 86, 67, 77, 82, 74, 83, 67, 69, 71, 88, 77, 90, 77, 88, 93, 67, 88, 77, 88, 80, 73, 36};
        app_hideData = [self StringFromEndData:value];
    }
    return app_hideData;
}

//: contact_tag_fragment_cancel
- (NSString *)user_pressData {
    /* static */ NSString *user_pressData = nil;
    if (!user_pressData) {
        Byte value[] = {27, 51, 5, 167, 223, 48, 60, 59, 65, 46, 48, 65, 44, 65, 46, 52, 44, 51, 63, 46, 52, 58, 50, 59, 65, 44, 48, 46, 59, 48, 50, 57, 69};
        user_pressData = [self StringFromEndData:value];
    }
    return user_pressData;
}

//: zh-Hant
- (NSString *)appTargetDisableData {
    /* static */ NSString *appTargetDisableData = nil;
    if (!appTargetDisableData) {
        Byte value[] = {7, 55, 12, 39, 3, 40, 79, 31, 254, 140, 238, 193, 67, 49, 246, 17, 42, 55, 61, 107};
        appTargetDisableData = [self StringFromEndData:value];
    }
    return appTargetDisableData;
}

//: account
- (NSString *)mainCanTagViewData {
    /* static */ NSString *mainCanTagViewData = nil;
    if (!mainCanTagViewData) {
        Byte value[] = {7, 40, 3, 57, 59, 59, 71, 77, 70, 76, 40};
        mainCanTagViewData = [self StringFromEndData:value];
    }
    return mainCanTagViewData;
}

//: group_info_activity_update_failed
- (NSString *)show_limitHandleName {
    /* static */ NSString *show_limitHandleName = nil;
    if (!show_limitHandleName) {
        Byte value[] = {33, 74, 8, 24, 27, 204, 112, 148, 29, 40, 37, 43, 38, 21, 31, 36, 28, 37, 21, 23, 25, 42, 31, 44, 31, 42, 47, 21, 43, 38, 26, 23, 42, 27, 21, 28, 23, 31, 34, 27, 26, 143};
        show_limitHandleName = [self StringFromEndData:value];
    }
    return show_limitHandleName;
}

//: /user/detail
- (NSString *)mainAddData {
    /* static */ NSString *mainAddData = nil;
    if (!mainAddData) {
        Byte value[] = {12, 92, 5, 252, 191, 211, 25, 23, 9, 22, 211, 8, 9, 24, 5, 13, 16, 129};
        mainAddData = [self StringFromEndData:value];
    }
    return mainAddData;
}

//: tag_activity_set
- (NSString *)userCountData {
    /* static */ NSString *userCountData = nil;
    if (!userCountData) {
        Byte value[] = {16, 63, 11, 95, 153, 162, 108, 106, 7, 82, 213, 53, 34, 40, 32, 34, 36, 53, 42, 55, 42, 53, 58, 32, 52, 38, 53, 13};
        userCountData = [self StringFromEndData:value];
    }
    return userCountData;
}

//: hant
- (NSString *)appMakeViewValue {
    /* static */ NSString *appMakeViewValue = nil;
    if (!appMakeViewValue) {
        Byte value[] = {4, 41, 13, 234, 125, 128, 59, 199, 73, 229, 142, 232, 144, 63, 56, 69, 75, 67};
        appMakeViewValue = [self StringFromEndData:value];
    }
    return appMakeViewValue;
}

//: activity_my_user_info_nick
- (NSString *)showInfoTitle {
    /* static */ NSString *showInfoTitle = nil;
    if (!showInfoTitle) {
        Byte value[] = {26, 82, 9, 255, 126, 149, 71, 144, 128, 15, 17, 34, 23, 36, 23, 34, 39, 13, 27, 39, 13, 35, 33, 19, 32, 13, 23, 28, 20, 29, 13, 28, 23, 17, 25, 58};
        showInfoTitle = [self StringFromEndData:value];
    }
    return showInfoTitle;
}

//: account_account
- (NSString *)user_canText {
    /* static */ NSString *user_canText = nil;
    if (!user_canText) {
        Byte value[] = {15, 92, 12, 186, 20, 38, 161, 114, 133, 94, 240, 14, 5, 7, 7, 19, 25, 18, 24, 3, 5, 7, 7, 19, 25, 18, 24, 185};
        user_canText = [self StringFromEndData:value];
    }
    return user_canText;
}

//: /user/edit
- (NSString *)app_mediaData {
    /* static */ NSString *app_mediaData = nil;
    if (!app_mediaData) {
        Byte value[] = {10, 6, 11, 45, 245, 61, 240, 172, 183, 71, 10, 41, 111, 109, 95, 108, 41, 95, 94, 99, 110, 155};
        app_mediaData = [self StringFromEndData:value];
    }
    return app_mediaData;
}

//: friend_info_activity_nv
- (NSString *)main_atText {
    /* static */ NSString *main_atText = nil;
    if (!main_atText) {
        Byte value[] = {23, 99, 11, 32, 1, 127, 207, 184, 135, 46, 29, 3, 15, 6, 2, 11, 1, 252, 6, 11, 3, 12, 252, 254, 0, 17, 6, 19, 6, 17, 22, 252, 11, 19, 13};
        main_atText = [self StringFromEndData:value];
    }
    return main_atText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionViewController.m
//  Riverla
//
//  Created by Yan Wang on 2024/12/30.
//  Copyright © 2024 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkUserInfoViewController.h"
#import "SessionViewController.h"
//: #import "NTESSignSettingViewController.h"
#import "ColorNameViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "KEKESetNickNameView.h"
#import "MagnitudeActivityView.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import "NSSetSexView.h"
#import "PerspectiveSexSetView.h"
//: #import "NSSetAvater.h"
#import "InfoView.h"

//: @interface WorkUserInfoViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface SessionViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,ViewMessageName,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

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
@property (nonatomic, strong) PerspectiveSexSetView *sexView;
//: @property (nonatomic, strong) KEKESetNickNameView *changeNickNameView;
@property (nonatomic, strong) MagnitudeActivityView *changeNickNameView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) InfoView *aleartView;


//: @end
@end

//: @implementation WorkUserInfoViewController
@implementation SessionViewController

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
    bg.image = [UIImage imageNamed:[[EndData sharedInstance] userSizeRowViewName]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[EndData sharedInstance] k_removeSuccessTitle]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice heightShowStop]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"my_user_info_activity_title"];
    labtitle.text = [InputRed preserve:[[EndData sharedInstance] app_hideData]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: [self loadUiView];
    [self withView];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [self refresh];
    [self input];
}

//: - (void)loadUiView
- (void)withView
{
    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice vg_statusBarHeight])+15, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice heightShowStop])+15, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.imgHeader.image = [UIImage imageNamed:@"photo_account_def"];
    self.imgHeader.image = [UIImage imageNamed:[[EndData sharedInstance] showVideoValue]];
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
    [self.btnPhoto setImage:[UIImage imageNamed:[[EndData sharedInstance] app_limitContent]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(handleThePhoto) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(fromThan) forControlEvents:UIControlEventTouchUpInside];
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
    accountImg.image = [UIImage imageNamed:[[EndData sharedInstance] user_canText]];
    //: [accountView addSubview:accountImg];
    [accountView addSubview:accountImg];
    //: self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labAccount.font = [UIFont systemFontOfSize:16.f];
    self.labAccount.font = [UIFont systemFontOfSize:16.f];
    //: self.labAccount.textColor = [UIColor blackColor];
    self.labAccount.textColor = [UIColor blackColor];
    //: self.labAccount.text = [WorkLanguageManager getTextWithKey:@"user_profile_avtivity_account"];
    self.labAccount.text = [InputRed preserve:[[EndData sharedInstance] appChangeHideValue]];
    //: [accountView addSubview:self.labAccount];
    [accountView addSubview:self.labAccount];
    //: self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.account.font = [UIFont systemFontOfSize:14.f];
    self.account.font = [UIFont systemFontOfSize:14.f];
    //: self.account.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.account.textColor = [UIColor ground:[[EndData sharedInstance] dreamTextAtData]];
    //: self.account.textAlignment = NSTextAlignmentRight;
    self.account.textAlignment = NSTextAlignmentRight;
    //: [accountView addSubview:self.account];
    [accountView addSubview:self.account];
    //: self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    //: [self.btnCopy setImage:[UIImage imageNamed:@"icon_copy"] forState:(UIControlStateNormal)];
    [self.btnCopy setImage:[UIImage imageNamed:[[EndData sharedInstance] appColorData]] forState:(UIControlStateNormal)];
    //: [self.btnCopy addTarget:self action:@selector(handleTheCopy) forControlEvents:UIControlEventTouchUpInside];
    [self.btnCopy addTarget:self action:@selector(sizeLight) forControlEvents:UIControlEventTouchUpInside];
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
    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(textIndex)];
    //: [nameView addGestureRecognizer:panGesture];
    [nameView addGestureRecognizer:panGesture];
    //: UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: nameImg.image = [UIImage imageNamed:@"accout_nickname"];
    nameImg.image = [UIImage imageNamed:[[EndData sharedInstance] appViewText]];
    //: [nameView addSubview:nameImg];
    [nameView addSubview:nameImg];
    //: self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labNickname.font = [UIFont systemFontOfSize:16.f];
    self.labNickname.font = [UIFont systemFontOfSize:16.f];
    //: self.labNickname.textColor = [UIColor blackColor];
    self.labNickname.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labNickname.text = [WorkLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    self.labNickname.text = [InputRed preserve:[[EndData sharedInstance] showInfoTitle]];
    //: [nameView addSubview:self.labNickname];
    [nameView addSubview:self.labNickname];
    //: self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.nickName.font = [UIFont systemFontOfSize:14.f];
    self.nickName.font = [UIFont systemFontOfSize:14.f];
    //: self.nickName.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.nickName.textColor = [UIColor ground:[[EndData sharedInstance] dreamTextAtData]];
    //: self.nickName.textAlignment = NSTextAlignmentRight;
    self.nickName.textAlignment = NSTextAlignmentRight;
    //: [nameView addSubview:self.nickName];
    [nameView addSubview:self.nickName];
    //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    arrow.image = [UIImage imageNamed:[[EndData sharedInstance] notiScaleNeedInValue]];
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
    UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jointSend)];
    //: [sexView addGestureRecognizer:sexGesture];
    [sexView addGestureRecognizer:sexGesture];
    //: UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: sexImg.image = [UIImage imageNamed:@"account_gender"];
    sexImg.image = [UIImage imageNamed:[[EndData sharedInstance] dreamAtTitle]];
    //: [sexView addSubview:sexImg];
    [sexView addSubview:sexImg];
    //: self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labSex.font = [UIFont systemFontOfSize:16.f];
    self.labSex.font = [UIFont systemFontOfSize:16.f];
    //: self.labSex.textColor = [UIColor blackColor];
    self.labSex.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labSex.text = [WorkLanguageManager getTextWithKey:@"activity_friend_info_sex"];
    self.labSex.text = [InputRed preserve:[[EndData sharedInstance] showVideoName]];
    //: [sexView addSubview:self.labSex];
    [sexView addSubview:self.labSex];
    //: self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.sex.font = [UIFont systemFontOfSize:14.f];
    self.sex.font = [UIFont systemFontOfSize:14.f];
    //: self.sex.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.sex.textColor = [UIColor ground:[[EndData sharedInstance] dreamTextAtData]];
    //: self.sex.textAlignment = NSTextAlignmentRight;
    self.sex.textAlignment = NSTextAlignmentRight;
    //: [sexView addSubview:self.sex];
    [sexView addSubview:self.sex];
    //: UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: sexarrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    sexarrow.image = [UIImage imageNamed:[[EndData sharedInstance] notiScaleNeedInValue]];
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
- (void)input {
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"icon_options_grdefault"]];
    [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[EndData sharedInstance] showTagValue]]];

    //: self.nickName.text = me.userInfo.nickName;
    self.nickName.text = me.userInfo.nickName;
//    self.account.text = me.userId;
//    self.sign.text = me.userInfo.sign.length ? me.userInfo.sign : LangKey(@"未设置");
    //: self.sex.text = [self genderString:me.userInfo.gender];
    self.sex.text = [self messageText:me.userInfo.gender];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = me.userId;
    dict[[[EndData sharedInstance] app_parentTitleName]] = me.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[EndData sharedInstance] mainAddData]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[[EndData sharedInstance] show_imageValue]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[[EndData sharedInstance] m_placeData]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data route:[[EndData sharedInstance] mainCanTagViewData]];

            //: self.account.text = account;
            self.account.text = account;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}
//: - (void)handleTheNickName
- (void)textIndex
{
    //: [self.view addSubview:self.changeNickNameView];
    [self.view addSubview:self.changeNickNameView];
    //: [ self.changeNickNameView reloadWithNickname: self.nickName.text];
    [ self.changeNickNameView of: self.nickName.text];
    //: [self.changeNickNameView animationShow];
    [self.changeNickNameView animation];
}
//: - (void)handleTheSign
- (void)the
{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    ColorNameViewController *vc = [[ColorNameViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handleTheSex
- (void)jointSend
{
    //: [self.view addSubview:self.sexView];
    [self.view addSubview:self.sexView];
    //: [self.sexView reloadWithGender: self.selectedGender];
    [self.sexView gender: self.selectedGender];
    //: [self.sexView animationShow];
    [self.sexView with];
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
        [self ting];
    //: };
    };
}
//: - (void)remoteUpdateGender{
- (void)ting{
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"gender"] = @(self.selectedGender);
    dict[[[EndData sharedInstance] show_countData]] = @(self.selectedGender);
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/edit"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[EndData sharedInstance] app_mediaData]] queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {

        //: [wself.sexView animationClose];
        [wself.sexView animationWithEnableAtHand];
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: self.sex.text = [self genderString:self.selectedGender];
    self.sex.text = [self messageText:self.selectedGender];

}

//: - (NSString *)genderString:(NSInteger )gender{
- (NSString *)messageText:(NSInteger )gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case 1:
        case 1:
            //: genderStr = [WorkLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [InputRed preserve:[[EndData sharedInstance] dream_bubbleAddValue]];
            //: break;
            break;
        //: case 2:
        case 2:
            //: genderStr = [WorkLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [InputRed preserve:[[EndData sharedInstance] main_atText]];
            //: break;
            break;
        //: case 0:
        case 0:
            //: genderStr = [WorkLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [InputRed preserve:[[EndData sharedInstance] dream_readData]];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: - (void)handleTheCopy
- (void)sizeLight
{
    //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    //: pasteboard.string = self.account.text;
    pasteboard.string = self.account.text;
    //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"复制"]
    [self.view makeToast:[InputRed preserve:@"复制"]
                     //: duration:2
                     duration:2
                     //: position:CSToastPositionCenter];
                     position:CSToastPositionCenter];
}


/**
 *  请求相机权限
 */
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
                        [self info:nil];

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
            [self info:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WorkLanguageManager getTextWithKey:@"warm_prompt"] message:[WorkLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[[EndData sharedInstance] dreamLabelParentCanData]] message:[InputRed preserve:[[EndData sharedInstance] k_disableValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[[EndData sharedInstance] user_pressData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[[EndData sharedInstance] userCountData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self info:nil];
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
        [self info:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WorkLanguageManager getTextWithKey:@"warm_prompt"] message:[WorkLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[[EndData sharedInstance] dreamLabelParentCanData]] message:[InputRed preserve:[[EndData sharedInstance] k_viewData]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[[EndData sharedInstance] user_pressData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WorkLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[[EndData sharedInstance] userCountData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)fromThan
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView button];

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
- (void)info:(PHAsset *)asset {

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
        preferredlang = [[EndData sharedInstance] dreamReadValue];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[[EndData sharedInstance] mainDeleteHideName]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [[EndData sharedInstance] mRowData];
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
    }else if ([langType containsString:[[EndData sharedInstance] appMakeViewValue]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [[EndData sharedInstance] appTargetDisableData];
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
            [self utiliser:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}


//: - (void)onTouchSignSetting:(id)sender{
- (void)image:(id)sender{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    ColorNameViewController *vc = [[ColorNameViewController alloc] initWithNibName:nil bundle:nil];
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
        [self input];
    }
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)completing:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self requestShould:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self requestShould:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)requestShould:(UIImagePickerControllerSourceType)type{

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
    [weakSelf utiliser:image];
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
- (void)utiliser:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image byName:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [LineHelper message:[[EndData sharedInstance] showLengthValue]];
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
                        [wself input];
                    //: }else{
                    }else{
                        //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                        [wself.view makeToast:[InputRed preserve:[[EndData sharedInstance] kValueMessageData]]
                                     //: duration:2
                                     duration:2
                                     //: position:CSToastPositionCenter];
                                     position:CSToastPositionCenter];
                    }
                //: }];
                }];
            //: }else{
            }else{
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[InputRed preserve:[[EndData sharedInstance] kValueMessageData]]
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
        [self.view makeToast:[InputRed preserve:[[EndData sharedInstance] show_limitHandleName]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}
//: - (KEKESetNickNameView *)changeNickNameView
- (MagnitudeActivityView *)changeNickNameView
{
    //: if(!_changeNickNameView){
    if(!_changeNickNameView){
        //: _changeNickNameView = [[KEKESetNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeNickNameView = [[MagnitudeActivityView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeNickNameView.hidden = YES;
    }
    //: return _changeNickNameView;
    return _changeNickNameView;
}

//: - (NSSetSexView *)sexView
- (PerspectiveSexSetView *)sexView
{
    //: if(!_sexView){
    if(!_sexView){
        //: _sexView = [[NSSetSexView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _sexView = [[PerspectiveSexSetView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _sexView.hidden = YES;
    }
    //: return _sexView;
    return _sexView;
}

//: - (NSSetAvater *)aleartView{
- (InfoView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[InfoView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end
