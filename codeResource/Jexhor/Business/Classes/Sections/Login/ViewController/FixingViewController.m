
#import <Foundation/Foundation.h>

@interface TalipotData : NSObject

@end

@implementation TalipotData

+ (Byte *)TalipotDataToCache:(Byte *)data {
    int memoryImage = data[0];
    Byte brokerShowDrug = data[1];
    int canTarget = data[2];
    for (int i = canTarget; i < canTarget + memoryImage; i++) {
        int value = data[i] + brokerShowDrug;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[canTarget + memoryImage] = 0;
    return data + canTarget;
}

+ (NSString *)StringFromTalipotData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TalipotDataToCache:data]];
}

//: head_default
+ (NSString *)show_byValue {
    /* static */ NSString *show_byValue = nil;
    if (!show_byValue) {
        Byte value[] = {12, 15, 9, 158, 81, 190, 59, 216, 56, 89, 86, 82, 85, 80, 85, 86, 87, 82, 102, 93, 101, 34};
        show_byValue = [self StringFromTalipotData:value];
    }
    return show_byValue;
}

//: login_bg
+ (NSString *)show_removeName {
    /* static */ NSString *show_removeName = nil;
    if (!show_removeName) {
        Byte value[] = {8, 41, 9, 147, 142, 160, 66, 90, 100, 67, 70, 62, 64, 69, 54, 57, 62, 213};
        show_removeName = [self StringFromTalipotData:value];
    }
    return show_removeName;
}

//: #000000
+ (NSString *)show_byText {
    /* static */ NSString *show_byText = nil;
    if (!show_byText) {
        Byte value[] = {7, 72, 4, 31, 219, 232, 232, 232, 232, 232, 232, 188};
        show_byText = [self StringFromTalipotData:value];
    }
    return show_byText;
}

//: zh-Hant
+ (NSString *)app_rowData {
    /* static */ NSString *app_rowData = nil;
    if (!app_rowData) {
        Byte value[] = {7, 90, 12, 188, 242, 59, 158, 200, 28, 38, 125, 89, 32, 14, 211, 238, 7, 20, 26, 148};
        app_rowData = [self StringFromTalipotData:value];
    }
    return app_rowData;
}

//: warm_prompt
+ (NSString *)dream_balanceAtData {
    /* static */ NSString *dream_balanceAtData = nil;
    if (!dream_balanceAtData) {
        Byte value[] = {11, 57, 5, 133, 81, 62, 40, 57, 52, 38, 55, 57, 54, 52, 55, 59, 23};
        dream_balanceAtData = [self StringFromTalipotData:value];
    }
    return dream_balanceAtData;
}

//: spa
+ (NSString *)dream_novelAccelerateData {
    /* static */ NSString *dream_novelAccelerateData = nil;
    if (!dream_novelAccelerateData) {
        Byte value[] = {3, 95, 13, 114, 189, 155, 99, 133, 70, 195, 38, 249, 222, 20, 17, 2, 222};
        dream_novelAccelerateData = [self StringFromTalipotData:value];
    }
    return dream_novelAccelerateData;
}

//: ko-KP
+ (NSString *)k_cousinItsContent {
    /* static */ NSString *k_cousinItsContent = nil;
    if (!k_cousinItsContent) {
        Byte value[] = {5, 3, 6, 27, 56, 122, 104, 108, 42, 72, 77, 84};
        k_cousinItsContent = [self StringFromTalipotData:value];
    }
    return k_cousinItsContent;
}

//: #05D481
+ (NSString *)show_infoName {
    /* static */ NSString *show_infoName = nil;
    if (!show_infoName) {
        Byte value[] = {7, 29, 9, 153, 250, 50, 168, 235, 196, 6, 19, 24, 39, 23, 27, 20, 253};
        show_infoName = [self StringFromTalipotData:value];
    }
    return show_infoName;
}

//: nickname
+ (NSString *)k_severData {
    /* static */ NSString *k_severData = nil;
    if (!k_severData) {
        Byte value[] = {8, 35, 10, 21, 200, 84, 102, 75, 176, 228, 75, 70, 64, 72, 75, 62, 74, 66, 170};
        k_severData = [self StringFromTalipotData:value];
    }
    return k_severData;
}

//: #5D5F66
+ (NSString *)k_acceptableValue {
    /* static */ NSString *k_acceptableValue = nil;
    if (!k_acceptableValue) {
        Byte value[] = {7, 3, 5, 128, 135, 32, 50, 65, 50, 67, 51, 51, 69};
        k_acceptableValue = [self StringFromTalipotData:value];
    }
    return k_acceptableValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)dream_accountingValue {
    /* static */ NSString *dream_accountingValue = nil;
    if (!dream_accountingValue) {
        Byte value[] = {27, 25, 11, 35, 71, 158, 211, 201, 3, 20, 23, 74, 86, 85, 91, 72, 74, 91, 70, 91, 72, 78, 70, 77, 89, 72, 78, 84, 76, 85, 91, 70, 74, 72, 85, 74, 76, 83, 207};
        dream_accountingValue = [self StringFromTalipotData:value];
    }
    return dream_accountingValue;
}

//: register_good_avater
+ (NSString *)mainSendVideoValue {
    /* static */ NSString *mainSendVideoValue = nil;
    if (!mainSendVideoValue) {
        Byte value[] = {20, 75, 12, 227, 111, 203, 142, 2, 8, 203, 179, 38, 39, 26, 28, 30, 40, 41, 26, 39, 20, 28, 36, 36, 25, 20, 22, 43, 22, 41, 26, 39, 215};
        mainSendVideoValue = [self StringFromTalipotData:value];
    }
    return mainSendVideoValue;
}

//: user_profile_avtivity_head
+ (NSString *)dreamAccelerateTitle {
    /* static */ NSString *dreamAccelerateTitle = nil;
    if (!dreamAccelerateTitle) {
        Byte value[] = {26, 4, 7, 122, 232, 199, 252, 113, 111, 97, 110, 91, 108, 110, 107, 98, 101, 104, 97, 91, 93, 114, 112, 101, 114, 101, 112, 117, 91, 100, 97, 93, 96, 202};
        dreamAccelerateTitle = [self StringFromTalipotData:value];
    }
    return dreamAccelerateTitle;
}

//: back_arrow_bl
+ (NSString *)dream_maxName {
    /* static */ NSString *dream_maxName = nil;
    if (!dream_maxName) {
        Byte value[] = {13, 51, 9, 129, 180, 171, 192, 77, 72, 47, 46, 48, 56, 44, 46, 63, 63, 60, 68, 44, 47, 57, 124};
        dream_maxName = [self StringFromTalipotData:value];
    }
    return dream_maxName;
}

//: register_avtivity3_avatar
+ (NSString *)kButtonData {
    /* static */ NSString *kButtonData = nil;
    if (!kButtonData) {
        Byte value[] = {25, 1, 7, 135, 179, 205, 75, 113, 100, 102, 104, 114, 115, 100, 113, 94, 96, 117, 115, 104, 117, 104, 115, 120, 50, 94, 96, 117, 96, 115, 96, 113, 211};
        kButtonData = [self StringFromTalipotData:value];
    }
    return kButtonData;
}

//: contact_list_activity_complete
+ (NSString *)appCompleteData {
    /* static */ NSString *appCompleteData = nil;
    if (!appCompleteData) {
        Byte value[] = {30, 40, 5, 39, 127, 59, 71, 70, 76, 57, 59, 76, 55, 68, 65, 75, 76, 55, 57, 59, 76, 65, 78, 65, 76, 81, 55, 59, 71, 69, 72, 68, 61, 76, 61, 121};
        appCompleteData = [self StringFromTalipotData:value];
    }
    return appCompleteData;
}

//: ic_hi
+ (NSString *)m_colorValue {
    /* static */ NSString *m_colorValue = nil;
    if (!m_colorValue) {
        Byte value[] = {5, 60, 11, 152, 44, 53, 113, 233, 231, 163, 202, 45, 39, 35, 44, 45, 13};
        m_colorValue = [self StringFromTalipotData:value];
    }
    return m_colorValue;
}

//: tag_activity_set
+ (NSString *)mainWithValue {
    /* static */ NSString *mainWithValue = nil;
    if (!mainWithValue) {
        Byte value[] = {16, 88, 8, 182, 231, 156, 152, 39, 28, 9, 15, 7, 9, 11, 28, 17, 30, 17, 28, 33, 7, 27, 13, 28, 147};
        mainWithValue = [self StringFromTalipotData:value];
    }
    return mainWithValue;
}

//: icon_photo
+ (NSString *)user_givingCousinValue {
    /* static */ NSString *user_givingCousinValue = nil;
    if (!user_givingCousinValue) {
        Byte value[] = {10, 15, 10, 124, 75, 62, 199, 35, 208, 212, 90, 84, 96, 95, 80, 97, 89, 96, 101, 96, 154};
        user_givingCousinValue = [self StringFromTalipotData:value];
    }
    return user_givingCousinValue;
}

//: setting_privacy
+ (NSString *)mEnableValue {
    /* static */ NSString *mEnableValue = nil;
    if (!mEnableValue) {
        Byte value[] = {15, 54, 8, 43, 22, 107, 182, 202, 61, 47, 62, 62, 51, 56, 49, 41, 58, 60, 51, 64, 43, 45, 67, 161};
        mEnableValue = [self StringFromTalipotData:value];
    }
    return mEnableValue;
}

//: setting_privacy_camera
+ (NSString *)dreamUndertakeText {
    /* static */ NSString *dreamUndertakeText = nil;
    if (!dreamUndertakeText) {
        Byte value[] = {22, 10, 6, 149, 11, 220, 105, 91, 106, 106, 95, 100, 93, 85, 102, 104, 95, 108, 87, 89, 111, 85, 89, 87, 99, 91, 104, 87, 149};
        dreamUndertakeText = [self StringFromTalipotData:value];
    }
    return dreamUndertakeText;
}

//: zh-Hans
+ (NSString *)mVideoSuspectText {
    /* static */ NSString *mVideoSuspectText = nil;
    if (!mVideoSuspectText) {
        Byte value[] = {7, 75, 13, 238, 129, 142, 50, 251, 237, 201, 157, 143, 76, 47, 29, 226, 253, 22, 35, 40, 15};
        mVideoSuspectText = [self StringFromTalipotData:value];
    }
    return mVideoSuspectText;
}

//: hant
+ (NSString *)m_accountingText {
    /* static */ NSString *m_accountingText = nil;
    if (!m_accountingText) {
        Byte value[] = {4, 89, 4, 15, 15, 8, 21, 27, 185};
        m_accountingText = [self StringFromTalipotData:value];
    }
    return m_accountingText;
}

//: message_send_album
+ (NSString *)mAtName {
    /* static */ NSString *mAtName = nil;
    if (!mAtName) {
        Byte value[] = {18, 49, 5, 151, 243, 60, 52, 66, 66, 48, 54, 52, 46, 66, 52, 61, 51, 46, 48, 59, 49, 68, 60, 70};
        mAtName = [self StringFromTalipotData:value];
    }
    return mAtName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  FixingViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterAvatarViewController.h"
#import "FixingViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+BottomMagnitude.h"
//: #import "KEKESetNickNameView.h"
#import "MagnitudeActivityView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "Manager.h"

//: @interface FFFRegisterAvatarViewController ()
@interface FixingViewController ()


//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;


//: @end
@end

//: @implementation FFFRegisterAvatarViewController
@implementation FixingViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[TalipotData show_removeName]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initAnyView];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[TalipotData dream_maxName]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice heightShowStop], 40, 40);


}

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initAnyView
{


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice heightShowStop], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_head"];
    titleLabel.text = [InputRed preserve:[TalipotData dreamAccelerateTitle]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor ground:[TalipotData k_acceptableValue]];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [InputRed preserve:[TalipotData mainSendVideoValue]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    //: [self.view addSubview:imgView];
    [self.view addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 75;
    _aratarImgView.layer.cornerRadius = 75;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[TalipotData show_byValue]];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

    //: UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    //: usericon.image = [UIImage imageNamed:@"ic_hi"];
    usericon.image = [UIImage imageNamed:[TalipotData m_colorValue]];
    //: [imgView addSubview:usericon];
    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    //: cameraicon.backgroundColor = [UIColor whiteColor];
    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[TalipotData user_givingCousinValue]] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(beyondDisable) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.nickName;
    tita.text = self.nickName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor ground:[TalipotData show_byText]];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:16];
    tita.font = [UIFont systemFontOfSize:16];
    //: [self.view addSubview:tita];
    [self.view addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    self.registButton.backgroundColor = [UIColor ground:[TalipotData show_infoName]];
//    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
    self.registButton.layer.shadowColor = [UIColor ground:[TalipotData show_infoName]].CGColor;
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[InputRed preserve:[TalipotData appCompleteData]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(bottomClick) forControlEvents:UIControlEventTouchUpInside];


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
                        [self pressed:nil];

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
            [self pressed:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[TalipotData dream_balanceAtData]] message:[InputRed preserve:[TalipotData dreamUndertakeText]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[TalipotData dream_accountingValue]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[TalipotData mainWithValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self pressed:nil];
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
        [self pressed:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[InputRed preserve:[TalipotData dream_balanceAtData]] message:[InputRed preserve:[TalipotData mEnableValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[TalipotData dream_accountingValue]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[InputRed preserve:[TalipotData mainWithValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[InputRed preserve:[TalipotData mAtName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self beforeContent];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[InputRed preserve:[TalipotData dream_accountingValue]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
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
- (void)pressed:(PHAsset *)asset {

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
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
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
        preferredlang = [TalipotData k_cousinItsContent];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[TalipotData dream_novelAccelerateData]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [TalipotData mVideoSuspectText];
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
    }else if ([langType containsString:[TalipotData m_accountingText]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [TalipotData app_rowData];
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

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)bottomClick{

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    Manager *manager = [Manager managingDirector];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD text:[InputRed preserve:[TalipotData kButtonData]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.nickName forKey:@"nickname"];
    [manager.registDict setObject:self.nickName forKey:[TalipotData k_severData]];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [Manager regist:self.navigationController];
}


//: @end
@end