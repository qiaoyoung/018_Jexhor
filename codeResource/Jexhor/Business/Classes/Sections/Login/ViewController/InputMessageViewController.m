
#import <Foundation/Foundation.h>

typedef struct {
    Byte filter;
    Byte *requirement;
    unsigned int itselfChief;
	int temperature;
	int worstedYarnEmotion;
} StructVileCustodyData;

@interface VileCustodyData : NSObject

@end

@implementation VileCustodyData

+ (Byte *)VileCustodyDataToByte:(StructVileCustodyData *)data {
    for (int i = 0; i < data->itselfChief; i++) {
        data->requirement[i] ^= data->filter;
    }
    data->requirement[data->itselfChief] = 0;
	if (data->itselfChief >= 2) {
		data->temperature = data->requirement[0];
		data->worstedYarnEmotion = data->requirement[1];
	}
    return data->requirement;
}

+ (NSString *)StringFromVileCustodyData:(StructVileCustodyData *)data {
    return [NSString stringWithUTF8String:(char *)[self VileCustodyDataToByte:data]];
}

//: #05D481
+ (NSString *)appStoragePath {
    /* static */ NSString *appStoragePath = nil;
    if (!appStoragePath) {
        StructVileCustodyData value = (StructVileCustodyData){254, (Byte []){221, 206, 203, 186, 202, 198, 207, 97}, 7, 16, 208};
        appStoragePath = [self StringFromVileCustodyData:&value];
    }
    return appStoragePath;
}

//: spa
+ (NSString *)user_withDoingMsg {
    /* static */ NSString *user_withDoingMsg = nil;
    if (!user_withDoingMsg) {
        StructVileCustodyData value = (StructVileCustodyData){127, (Byte []){12, 15, 30, 139}, 3, 233, 133};
        user_withDoingMsg = [self StringFromVileCustodyData:&value];
    }
    return user_withDoingMsg;
}

//: #5D5F66
+ (NSString *)showRandomMsg {
    /* static */ NSString *showRandomMsg = nil;
    if (!showRandomMsg) {
        StructVileCustodyData value = (StructVileCustodyData){70, (Byte []){101, 115, 2, 115, 0, 112, 112, 203}, 7, 63, 245};
        showRandomMsg = [self StringFromVileCustodyData:&value];
    }
    return showRandomMsg;
}

//: ko-KP
+ (NSString *)showStyleData {
    /* static */ NSString *showStyleData = nil;
    if (!showStyleData) {
        StructVileCustodyData value = (StructVileCustodyData){239, (Byte []){132, 128, 194, 164, 191, 21}, 5, 16, 145};
        showStyleData = [self StringFromVileCustodyData:&value];
    }
    return showStyleData;
}

//: zh-Hant
+ (NSString *)notiSaleMageStr {
    /* static */ NSString *notiSaleMageStr = nil;
    if (!notiSaleMageStr) {
        StructVileCustodyData value = (StructVileCustodyData){172, (Byte []){214, 196, 129, 228, 205, 194, 216, 19}, 7, 255, 30};
        notiSaleMageStr = [self StringFromVileCustodyData:&value];
    }
    return notiSaleMageStr;
}

//: #999999
+ (NSString *)userDisplayIdent {
    /* static */ NSString *userDisplayIdent = nil;
    if (!userDisplayIdent) {
        StructVileCustodyData value = (StructVileCustodyData){9, (Byte []){42, 48, 48, 48, 48, 48, 48, 241}, 7, 154, 50};
        userDisplayIdent = [self StringFromVileCustodyData:&value];
    }
    return userDisplayIdent;
}

//: zh-Hans
+ (NSString *)k_deadTitle {
    /* static */ NSString *k_deadTitle = nil;
    if (!k_deadTitle) {
        StructVileCustodyData value = (StructVileCustodyData){238, (Byte []){148, 134, 195, 166, 143, 128, 157, 26}, 7, 169, 156};
        k_deadTitle = [self StringFromVileCustodyData:&value];
    }
    return k_deadTitle;
}

//: nickname
+ (NSString *)kContentValue {
    /* static */ NSString *kContentValue = nil;
    if (!kContentValue) {
        StructVileCustodyData value = (StructVileCustodyData){103, (Byte []){9, 14, 4, 12, 9, 6, 10, 2, 251}, 8, 194, 87};
        kContentValue = [self StringFromVileCustodyData:&value];
    }
    return kContentValue;
}

//: activity_login_login
+ (NSString *)kProfessionValue {
    /* static */ NSString *kProfessionValue = nil;
    if (!kProfessionValue) {
        StructVileCustodyData value = (StructVileCustodyData){8, (Byte []){105, 107, 124, 97, 126, 97, 124, 113, 87, 100, 103, 111, 97, 102, 87, 100, 103, 111, 97, 102, 74}, 20, 179, 7};
        kProfessionValue = [self StringFromVileCustodyData:&value];
    }
    return kProfessionValue;
}

//: icon_photo
+ (NSString *)app_disappointedMsg {
    /* static */ NSString *app_disappointedMsg = nil;
    if (!app_disappointedMsg) {
        StructVileCustodyData value = (StructVileCustodyData){243, (Byte []){154, 144, 156, 157, 172, 131, 155, 156, 135, 156, 74}, 10, 226, 167};
        app_disappointedMsg = [self StringFromVileCustodyData:&value];
    }
    return app_disappointedMsg;
}

//: register_good_nick
+ (NSString *)main_empireMessage {
    /* static */ NSString *main_empireMessage = nil;
    if (!main_empireMessage) {
        StructVileCustodyData value = (StructVileCustodyData){19, (Byte []){97, 118, 116, 122, 96, 103, 118, 97, 76, 116, 124, 124, 119, 76, 125, 122, 112, 120, 126}, 18, 122, 16};
        main_empireMessage = [self StringFromVileCustodyData:&value];
    }
    return main_empireMessage;
}

//: login_nickname
+ (NSString *)mWhichId {
    /* static */ NSString *mWhichId = nil;
    if (!mWhichId) {
        StructVileCustodyData value = (StructVileCustodyData){166, (Byte []){202, 201, 193, 207, 200, 249, 200, 207, 197, 205, 200, 199, 203, 195, 45}, 14, 193, 231};
        mWhichId = [self StringFromVileCustodyData:&value];
    }
    return mWhichId;
}

//: contact_list_activity_complete
+ (NSString *)show_roughIdent {
    /* static */ NSString *show_roughIdent = nil;
    if (!show_roughIdent) {
        StructVileCustodyData value = (StructVileCustodyData){89, (Byte []){58, 54, 55, 45, 56, 58, 45, 6, 53, 48, 42, 45, 6, 56, 58, 45, 48, 47, 48, 45, 32, 6, 58, 54, 52, 41, 53, 60, 45, 60, 86}, 30, 32, 75};
        show_roughIdent = [self StringFromVileCustodyData:&value];
    }
    return show_roughIdent;
}

//: register_avtivity3_avatar
+ (NSString *)app_allyIdent {
    /* static */ NSString *app_allyIdent = nil;
    if (!app_allyIdent) {
        StructVileCustodyData value = (StructVileCustodyData){103, (Byte []){21, 2, 0, 14, 20, 19, 2, 21, 56, 6, 17, 19, 14, 17, 14, 19, 30, 84, 56, 6, 17, 6, 19, 6, 21, 92}, 25, 238, 142};
        app_allyIdent = [self StringFromVileCustodyData:&value];
    }
    return app_allyIdent;
}

//: jpg
+ (NSString *)showLeaveData {
    /* static */ NSString *showLeaveData = nil;
    if (!showLeaveData) {
        StructVileCustodyData value = (StructVileCustodyData){90, (Byte []){48, 42, 61, 104}, 3, 86, 232};
        showLeaveData = [self StringFromVileCustodyData:&value];
    }
    return showLeaveData;
}

//: #ffffff
+ (NSString *)noti_sessionPenaltyKey {
    /* static */ NSString *noti_sessionPenaltyKey = nil;
    if (!noti_sessionPenaltyKey) {
        StructVileCustodyData value = (StructVileCustodyData){101, (Byte []){70, 3, 3, 3, 3, 3, 3, 122}, 7, 49, 109};
        noti_sessionPenaltyKey = [self StringFromVileCustodyData:&value];
    }
    return noti_sessionPenaltyKey;
}

//: group_info_activity_update_failed
+ (NSString *)mViewAspectHeroName {
    /* static */ NSString *mViewAspectHeroName = nil;
    if (!mViewAspectHeroName) {
        StructVileCustodyData value = (StructVileCustodyData){193, (Byte []){166, 179, 174, 180, 177, 158, 168, 175, 167, 174, 158, 160, 162, 181, 168, 183, 168, 181, 184, 158, 180, 177, 165, 160, 181, 164, 158, 167, 160, 168, 173, 164, 165, 84}, 33, 144, 68};
        mViewAspectHeroName = [self StringFromVileCustodyData:&value];
    }
    return mViewAspectHeroName;
}

//: hant
+ (NSString *)showTapName {
    /* static */ NSString *showTapName = nil;
    if (!showTapName) {
        StructVileCustodyData value = (StructVileCustodyData){21, (Byte []){125, 116, 123, 97, 103}, 4, 153, 203};
        showTapName = [self StringFromVileCustodyData:&value];
    }
    return showTapName;
}

//: nickname_same_account
+ (NSString *)appSlatMsg {
    /* static */ NSString *appSlatMsg = nil;
    if (!appSlatMsg) {
        StructVileCustodyData value = (StructVileCustodyData){97, (Byte []){15, 8, 2, 10, 15, 0, 12, 4, 62, 18, 0, 12, 4, 62, 0, 2, 2, 14, 20, 15, 21, 140}, 21, 157, 236};
        appSlatMsg = [self StringFromVileCustodyData:&value];
    }
    return appSlatMsg;
}

//: ic_close_b
+ (NSString *)show_leaveUserText {
    /* static */ NSString *show_leaveUserText = nil;
    if (!show_leaveUserText) {
        StructVileCustodyData value = (StructVileCustodyData){87, (Byte []){62, 52, 8, 52, 59, 56, 36, 50, 8, 53, 144}, 10, 243, 122};
        show_leaveUserText = [self StringFromVileCustodyData:&value];
    }
    return show_leaveUserText;
}

//: setting_privacy_camera
+ (NSString *)kTheaterSodData {
    /* static */ NSString *kTheaterSodData = nil;
    if (!kTheaterSodData) {
        StructVileCustodyData value = (StructVileCustodyData){239, (Byte []){156, 138, 155, 155, 134, 129, 136, 176, 159, 157, 134, 153, 142, 140, 150, 176, 140, 142, 130, 138, 157, 142, 42}, 22, 66, 224};
        kTheaterSodData = [self StringFromVileCustodyData:&value];
    }
    return kTheaterSodData;
}

//: register_avtivity3_nick
+ (NSString *)noti_resembleStr {
    /* static */ NSString *noti_resembleStr = nil;
    if (!noti_resembleStr) {
        StructVileCustodyData value = (StructVileCustodyData){77, (Byte []){63, 40, 42, 36, 62, 57, 40, 63, 18, 44, 59, 57, 36, 59, 36, 57, 52, 126, 18, 35, 36, 46, 38, 247}, 23, 78, 111};
        noti_resembleStr = [self StringFromVileCustodyData:&value];
    }
    return noti_resembleStr;
}

//: setting_privacy
+ (NSString *)dreamButtPath {
    /* static */ NSString *dreamButtPath = nil;
    if (!dreamButtPath) {
        StructVileCustodyData value = (StructVileCustodyData){221, (Byte []){174, 184, 169, 169, 180, 179, 186, 130, 173, 175, 180, 171, 188, 190, 164, 10}, 15, 166, 9};
        dreamButtPath = [self StringFromVileCustodyData:&value];
    }
    return dreamButtPath;
}

//: message_send_album
+ (NSString *)notiCellUpKey {
    /* static */ NSString *notiCellUpKey = nil;
    if (!notiCellUpKey) {
        StructVileCustodyData value = (StructVileCustodyData){193, (Byte []){172, 164, 178, 178, 160, 166, 164, 158, 178, 164, 175, 165, 158, 160, 173, 163, 180, 172, 204}, 18, 241, 146};
        notiCellUpKey = [self StringFromVileCustodyData:&value];
    }
    return notiCellUpKey;
}

//: contact_tag_fragment_cancel
+ (NSString *)noti_messageMsg {
    /* static */ NSString *noti_messageMsg = nil;
    if (!noti_messageMsg) {
        StructVileCustodyData value = (StructVileCustodyData){62, (Byte []){93, 81, 80, 74, 95, 93, 74, 97, 74, 95, 89, 97, 88, 76, 95, 89, 83, 91, 80, 74, 97, 93, 95, 80, 93, 91, 82, 226}, 27, 55, 41};
        noti_messageMsg = [self StringFromVileCustodyData:&value];
    }
    return noti_messageMsg;
}

//: activity_register_account_has_account
+ (NSString *)dreamThreadLightPath {
    /* static */ NSString *dreamThreadLightPath = nil;
    if (!dreamThreadLightPath) {
        StructVileCustodyData value = (StructVileCustodyData){65, (Byte []){32, 34, 53, 40, 55, 40, 53, 56, 30, 51, 36, 38, 40, 50, 53, 36, 51, 30, 32, 34, 34, 46, 52, 47, 53, 30, 41, 32, 50, 30, 32, 34, 34, 46, 52, 47, 53, 203}, 37, 1, 214};
        dreamThreadLightPath = [self StringFromVileCustodyData:&value];
    }
    return dreamThreadLightPath;
}

//: #333333
+ (NSString *)mainIconMessage {
    /* static */ NSString *mainIconMessage = nil;
    if (!mainIconMessage) {
        StructVileCustodyData value = (StructVileCustodyData){180, (Byte []){151, 135, 135, 135, 135, 135, 135, 244}, 7, 102, 91};
        mainIconMessage = [self StringFromVileCustodyData:&value];
    }
    return mainIconMessage;
}

//: photo_account_def
+ (NSString *)mTheaterIdent {
    /* static */ NSString *mTheaterIdent = nil;
    if (!mTheaterIdent) {
        StructVileCustodyData value = (StructVileCustodyData){4, (Byte []){116, 108, 107, 112, 107, 91, 101, 103, 103, 107, 113, 106, 112, 91, 96, 97, 98, 33}, 17, 245, 219};
        mTheaterIdent = [self StringFromVileCustodyData:&value];
    }
    return mTheaterIdent;
}

//: warm_prompt
+ (NSString *)mainSustainMsg {
    /* static */ NSString *mainSustainMsg = nil;
    if (!mainSustainMsg) {
        StructVileCustodyData value = (StructVileCustodyData){110, (Byte []){25, 15, 28, 3, 49, 30, 28, 1, 3, 30, 26, 246}, 11, 130, 156};
        mainSustainMsg = [self StringFromVileCustodyData:&value];
    }
    return mainSustainMsg;
}

//: #F6F6F6
+ (NSString *)dream_goingFormat {
    /* static */ NSString *dream_goingFormat = nil;
    if (!dream_goingFormat) {
        StructVileCustodyData value = (StructVileCustodyData){148, (Byte []){183, 210, 162, 210, 162, 210, 162, 104}, 7, 80, 53};
        dream_goingFormat = [self StringFromVileCustodyData:&value];
    }
    return dream_goingFormat;
}

//: login_bg
+ (NSString *)mainRageLightData {
    /* static */ NSString *mainRageLightData = nil;
    if (!mainRageLightData) {
        StructVileCustodyData value = (StructVileCustodyData){30, (Byte []){114, 113, 121, 119, 112, 65, 124, 121, 6}, 8, 96, 56};
        mainRageLightData = [self StringFromVileCustodyData:&value];
    }
    return mainRageLightData;
}

//: nickname_tip
+ (NSString *)show_slatVersionData {
    /* static */ NSString *show_slatVersionData = nil;
    if (!show_slatVersionData) {
        StructVileCustodyData value = (StructVileCustodyData){58, (Byte []){84, 83, 89, 81, 84, 91, 87, 95, 101, 78, 83, 74, 140}, 12, 210, 236};
        show_slatVersionData = [self StringFromVileCustodyData:&value];
    }
    return show_slatVersionData;
}

//: tag_activity_set
+ (NSString *)app_teamIdent {
    /* static */ NSString *app_teamIdent = nil;
    if (!app_teamIdent) {
        StructVileCustodyData value = (StructVileCustodyData){3, (Byte []){119, 98, 100, 92, 98, 96, 119, 106, 117, 106, 119, 122, 92, 112, 102, 119, 29}, 16, 22, 117};
        app_teamIdent = [self StringFromVileCustodyData:&value];
    }
    return app_teamIdent;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)appTemperatureIdent {
    /* static */ NSString *appTemperatureIdent = nil;
    if (!appTemperatureIdent) {
        StructVileCustodyData value = (StructVileCustodyData){143, (Byte []){250, 252, 234, 253, 208, 230, 225, 233, 224, 208, 238, 249, 251, 230, 249, 230, 251, 246, 208, 250, 255, 227, 224, 238, 235, 208, 238, 249, 238, 251, 238, 253, 208, 233, 238, 230, 227, 234, 235, 254}, 39, 55, 28};
        appTemperatureIdent = [self StringFromVileCustodyData:&value];
    }
    return appTemperatureIdent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputMessageViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RegisterInfoViewController.h"
#import "InputMessageViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "NTESRegistConfigManager.h"
#import "MakeManager.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"

//: @interface RegisterInfoViewController ()
@interface InputMessageViewController ()

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
@implementation InputMessageViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[VileCustodyData mainRageLightData]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initBetweenCellTing];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}
//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)initUI
- (void)initBetweenCellTing
{
    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    closeBtn.frame = CGRectMake(15, [UIDevice title]+2, 40, 40);
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:[VileCustodyData show_leaveUserText]] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:closeBtn];
    [self.view addSubview:closeBtn];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    labtitle.text = [BackgroundRandomAttribute content:[VileCustodyData main_empireMessage]];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labtitle.textColor = [UIColor user:[VileCustodyData showRandomMsg]];
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
    self.aratarImgView.image = [UIImage imageNamed:[VileCustodyData mTheaterIdent]];
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
    [self.btnPhoto setImage:[UIImage imageNamed:[VileCustodyData app_disappointedMsg]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(imageLabel) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor user:[VileCustodyData dream_goingFormat]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    self.titleImg.image = [UIImage imageNamed:[VileCustodyData mWhichId]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor user:[VileCustodyData mainIconMessage]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"nickname_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[BackgroundRandomAttribute content:[VileCustodyData show_slatVersionData]] attributes:@{NSForegroundColorAttributeName:[UIColor user:[VileCustodyData userDisplayIdent]]}];
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
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [_loginButton setTitle:[BackgroundRandomAttribute content:[VileCustodyData show_roughIdent]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(rangeDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _loginButton.backgroundColor = [UIColor user:[VileCustodyData appStoragePath]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice vg_statusBarHeight]+20, 146, 32);
    _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice title]+20, 146, 32);
    //: _registerButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    _registerButton.backgroundColor = [UIColor user:[VileCustodyData appStoragePath]];
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor user:[VileCustodyData noti_sessionPenaltyKey]] forState:UIControlStateNormal];
    //: [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[FFFLanguageManager getTextWithKey:@"activity_register_account_has_account"],[FFFLanguageManager getTextWithKey:@"activity_login_login"]] forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[BackgroundRandomAttribute content:[VileCustodyData dreamThreadLightPath]],[BackgroundRandomAttribute content:[VileCustodyData kProfessionValue]]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(speakerphonePin) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
    //: _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.masksToBounds = YES;
    //: _registerButton.layer.cornerRadius = 16;
    _registerButton.layer.cornerRadius = 16;
}


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
                        [self tagBy:nil];

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
            [self tagBy:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[VileCustodyData mainSustainMsg]] message:[BackgroundRandomAttribute content:[VileCustodyData kTheaterSodData]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[VileCustodyData noti_messageMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[VileCustodyData app_teamIdent]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self tagBy:nil];
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
        [self tagBy:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[VileCustodyData mainSustainMsg]] message:[BackgroundRandomAttribute content:[VileCustodyData dreamButtPath]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[VileCustodyData noti_messageMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[VileCustodyData app_teamIdent]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)imageLabel {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[VileCustodyData notiCellUpKey]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self locationShould];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[VileCustodyData noti_messageMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
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
- (void)tagBy:(PHAsset *)asset {

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
        preferredlang = [VileCustodyData showStyleData];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[VileCustodyData user_withDoingMsg]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [VileCustodyData k_deadTitle];
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
    }else if ([langType containsString:[VileCustodyData showTapName]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [VileCustodyData notiSaleMageStr];
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
- (void)inside:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image disableSize:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [BarVideo point:[VileCustodyData showLeaveData]];
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
                //: self.avaterUrl = urlString;
                self.avaterUrl = urlString;
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[BackgroundRandomAttribute content:[VileCustodyData appTemperatureIdent]]
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
        [self.view makeToast:[BackgroundRandomAttribute content:[VileCustodyData mViewAspectHeroName]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}


//: - (void)gotologin
- (void)speakerphonePin
{
    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
}
//: - (void)nextButtonClick
- (void)rangeDown
{
    //: if (_usernameTextField.text.length == 0) {
    if (_usernameTextField.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[BackgroundRandomAttribute content:[VileCustodyData noti_resembleStr]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_usernameTextField.text isEqualToString:self.accountName]) {
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[BackgroundRandomAttribute content:[VileCustodyData appSlatMsg]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    MakeManager *manager = [MakeManager should];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD packetMessage:[BackgroundRandomAttribute content:[VileCustodyData app_allyIdent]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
    [manager.registDict setObject:self.usernameTextField.text forKey:[VileCustodyData kContentValue]];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [MakeManager than:self.navigationController];
}

//: @end
@end