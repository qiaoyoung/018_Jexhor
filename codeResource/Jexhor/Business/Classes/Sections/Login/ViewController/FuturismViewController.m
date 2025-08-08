
#import <Foundation/Foundation.h>

typedef struct {
    Byte targetItem;
    Byte *romanFleuve;
    unsigned int planet;
	int accelerateMessage;
} StructPremiumData;

@interface PremiumData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PremiumData

+ (instancetype)sharedInstance {
    static PremiumData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PremiumDataToByte:(StructPremiumData *)data {
    for (int i = 0; i < data->planet; i++) {
        data->romanFleuve[i] ^= data->targetItem;
    }
    data->romanFleuve[data->planet] = 0;
	if (data->planet >= 1) {
		data->accelerateMessage = data->romanFleuve[0];
	}
    return data->romanFleuve;
}

- (NSString *)StringFromPremiumData:(StructPremiumData *)data {
    return [NSString stringWithUTF8String:(char *)[self PremiumDataToByte:data]];
}

//: login_bg
- (NSString *)appBrokerValue {
    /* static */ NSString *appBrokerValue = nil;
    if (!appBrokerValue) {
        StructPremiumData value = (StructPremiumData){190, (Byte []){210, 209, 217, 215, 208, 225, 220, 217, 76}, 8, 134};
        appBrokerValue = [self StringFromPremiumData:&value];
    }
    return appBrokerValue;
}

//: /user/modifyPass
- (NSString *)main_balanceData {
    /* static */ NSString *main_balanceData = nil;
    if (!main_balanceData) {
        StructPremiumData value = (StructPremiumData){13, (Byte []){34, 120, 126, 104, 127, 34, 96, 98, 105, 100, 107, 116, 93, 108, 126, 126, 157}, 16, 10};
        main_balanceData = [self StringFromPremiumData:&value];
    }
    return main_balanceData;
}

//: friend_verify_avtivity_net_error
- (NSString *)user_onContent {
    /* static */ NSString *user_onContent = nil;
    if (!user_onContent) {
        StructPremiumData value = (StructPremiumData){231, (Byte []){129, 149, 142, 130, 137, 131, 184, 145, 130, 149, 142, 129, 158, 184, 134, 145, 147, 142, 145, 142, 147, 158, 184, 137, 130, 147, 184, 130, 149, 149, 136, 149, 184}, 32, 237};
        user_onContent = [self StringFromPremiumData:&value];
    }
    return user_onContent;
}

//: back_arrow_bl
- (NSString *)dream_scaleTitle {
    /* static */ NSString *dream_scaleTitle = nil;
    if (!dream_scaleTitle) {
        StructPremiumData value = (StructPremiumData){103, (Byte []){5, 6, 4, 12, 56, 6, 21, 21, 8, 16, 56, 5, 11, 157}, 13, 122};
        dream_scaleTitle = [self StringFromPremiumData:&value];
    }
    return dream_scaleTitle;
}

//: register_account_activity_account
- (NSString *)userNovelTagData {
    /* static */ NSString *userNovelTagData = nil;
    if (!userNovelTagData) {
        StructPremiumData value = (StructPremiumData){15, (Byte []){125, 106, 104, 102, 124, 123, 106, 125, 80, 110, 108, 108, 96, 122, 97, 123, 80, 110, 108, 123, 102, 121, 102, 123, 118, 80, 110, 108, 108, 96, 122, 97, 123, 100}, 33, 95};
        userNovelTagData = [self StringFromPremiumData:&value];
    }
    return userNovelTagData;
}

//: activity_modify_new
- (NSString *)userCommentTitle {
    /* static */ NSString *userCommentTitle = nil;
    if (!userCommentTitle) {
        StructPremiumData value = (StructPremiumData){125, (Byte []){28, 30, 9, 20, 11, 20, 9, 4, 34, 16, 18, 25, 20, 27, 4, 34, 19, 24, 10, 186}, 19, 40};
        userCommentTitle = [self StringFromPremiumData:&value];
    }
    return userCommentTitle;
}

//: activity_modify_new_again
- (NSString *)mUniteText {
    /* static */ NSString *mUniteText = nil;
    if (!mUniteText) {
        StructPremiumData value = (StructPremiumData){162, (Byte []){195, 193, 214, 203, 212, 203, 214, 219, 253, 207, 205, 198, 203, 196, 219, 253, 204, 199, 213, 253, 195, 197, 195, 203, 204, 249}, 25, 245};
        mUniteText = [self StringFromPremiumData:&value];
    }
    return mUniteText;
}

//: #05D481
- (NSString *)app_highlightValue {
    /* static */ NSString *app_highlightValue = nil;
    if (!app_highlightValue) {
        StructPremiumData value = (StructPremiumData){8, (Byte []){43, 56, 61, 76, 60, 48, 57, 153}, 7, 60};
        app_highlightValue = [self StringFromPremiumData:&value];
    }
    return app_highlightValue;
}

//: type
- (NSString *)user_countData {
    /* static */ NSString *user_countData = nil;
    if (!user_countData) {
        StructPremiumData value = (StructPremiumData){232, (Byte []){156, 145, 152, 141, 246}, 4, 107};
        user_countData = [self StringFromPremiumData:&value];
    }
    return user_countData;
}

//: msg
- (NSString *)show_handleName {
    /* static */ NSString *show_handleName = nil;
    if (!show_handleName) {
        StructPremiumData value = (StructPremiumData){249, (Byte []){148, 138, 158, 222}, 3, 234};
        show_handleName = [self StringFromPremiumData:&value];
    }
    return show_handleName;
}

//: code
- (NSString *)m_fortunateTowerSuspectTitle {
    /* static */ NSString *m_fortunateTowerSuspectTitle = nil;
    if (!m_fortunateTowerSuspectTitle) {
        StructPremiumData value = (StructPremiumData){162, (Byte []){193, 205, 198, 199, 220}, 4, 220};
        m_fortunateTowerSuspectTitle = [self StringFromPremiumData:&value];
    }
    return m_fortunateTowerSuspectTitle;
}

//: activity_safe_setting_modify
- (NSString *)userUndertakeAccountShowData {
    /* static */ NSString *userUndertakeAccountShowData = nil;
    if (!userUndertakeAccountShowData) {
        StructPremiumData value = (StructPremiumData){33, (Byte []){64, 66, 85, 72, 87, 72, 85, 88, 126, 82, 64, 71, 68, 126, 82, 68, 85, 85, 72, 79, 70, 126, 76, 78, 69, 72, 71, 88, 113}, 28, 249};
        userUndertakeAccountShowData = [self StringFromPremiumData:&value];
    }
    return userUndertakeAccountShowData;
}

//: ic_visible
- (NSString *)mainAcceptableData {
    /* static */ NSString *mainAcceptableData = nil;
    if (!mainAcceptableData) {
        StructPremiumData value = (StructPremiumData){226, (Byte []){139, 129, 189, 148, 139, 145, 139, 128, 142, 135, 25}, 10, 202};
        mainAcceptableData = [self StringFromPremiumData:&value];
    }
    return mainAcceptableData;
}

//: saft_bind_account
- (NSString *)noti_appearTitle {
    /* static */ NSString *noti_appearTitle = nil;
    if (!noti_appearTitle) {
        StructPremiumData value = (StructPremiumData){40, (Byte []){91, 73, 78, 92, 119, 74, 65, 70, 76, 119, 73, 75, 75, 71, 93, 70, 92, 180}, 17, 113};
        noti_appearTitle = [self StringFromPremiumData:&value];
    }
    return noti_appearTitle;
}

//: login_error
- (NSString *)mainSuccessValue {
    /* static */ NSString *mainSuccessValue = nil;
    if (!mainSuccessValue) {
        StructPremiumData value = (StructPremiumData){194, (Byte []){174, 173, 165, 171, 172, 157, 167, 176, 176, 173, 176, 134}, 11, 26};
        mainSuccessValue = [self StringFromPremiumData:&value];
    }
    return mainSuccessValue;
}

//: modify_activity_psw_no_same
- (NSString *)appShouldTitle {
    /* static */ NSString *appShouldTitle = nil;
    if (!appShouldTitle) {
        StructPremiumData value = (StructPremiumData){34, (Byte []){79, 77, 70, 75, 68, 91, 125, 67, 65, 86, 75, 84, 75, 86, 91, 125, 82, 81, 85, 125, 76, 77, 125, 81, 67, 79, 71, 67}, 27, 173};
        appShouldTitle = [self StringFromPremiumData:&value];
    }
    return appShouldTitle;
}

//: login_success
- (NSString *)app_crowdedValue {
    /* static */ NSString *app_crowdedValue = nil;
    if (!app_crowdedValue) {
        StructPremiumData value = (StructPremiumData){232, (Byte []){132, 135, 143, 129, 134, 183, 155, 157, 139, 139, 141, 155, 155, 59}, 13, 155};
        app_crowdedValue = [self StringFromPremiumData:&value];
    }
    return app_crowdedValue;
}

//: #333333
- (NSString *)k_pursuitTitle {
    /* static */ NSString *k_pursuitTitle = nil;
    if (!k_pursuitTitle) {
        StructPremiumData value = (StructPremiumData){229, (Byte []){198, 214, 214, 214, 214, 214, 214, 69}, 7, 167};
        k_pursuitTitle = [self StringFromPremiumData:&value];
    }
    return k_pursuitTitle;
}

//: safe_bind_phone_icon
- (NSString *)kItsValue {
    /* static */ NSString *kItsValue = nil;
    if (!kItsValue) {
        StructPremiumData value = (StructPremiumData){197, (Byte []){182, 164, 163, 160, 154, 167, 172, 171, 161, 154, 181, 173, 170, 171, 160, 154, 172, 166, 170, 171, 22}, 20, 155};
        kItsValue = [self StringFromPremiumData:&value];
    }
    return kItsValue;
}

//: newpass
- (NSString *)notiTitleColorData {
    /* static */ NSString *notiTitleColorData = nil;
    if (!notiTitleColorData) {
        StructPremiumData value = (StructPremiumData){154, (Byte []){244, 255, 237, 234, 251, 233, 233, 13}, 7, 184};
        notiTitleColorData = [self StringFromPremiumData:&value];
    }
    return notiTitleColorData;
}

//: ic_invisible
- (NSString *)dream_accountModeData {
    /* static */ NSString *dream_accountModeData = nil;
    if (!dream_accountModeData) {
        StructPremiumData value = (StructPremiumData){44, (Byte []){69, 79, 115, 69, 66, 90, 69, 95, 69, 78, 64, 73, 204}, 12, 42};
        dream_accountModeData = [self StringFromPremiumData:&value];
    }
    return dream_accountModeData;
}

//: #5D5F66
- (NSString *)userReadSessionName {
    /* static */ NSString *userReadSessionName = nil;
    if (!userReadSessionName) {
        StructPremiumData value = (StructPremiumData){31, (Byte []){60, 42, 91, 42, 89, 41, 41, 239}, 7, 155};
        userReadSessionName = [self StringFromPremiumData:&value];
    }
    return userReadSessionName;
}

//: contact_list_activity_complete
- (NSString *)k_countData {
    /* static */ NSString *k_countData = nil;
    if (!k_countData) {
        StructPremiumData value = (StructPremiumData){113, (Byte []){18, 30, 31, 5, 16, 18, 5, 46, 29, 24, 2, 5, 46, 16, 18, 5, 24, 7, 24, 5, 8, 46, 18, 30, 28, 1, 29, 20, 5, 20, 87}, 30, 19};
        k_countData = [self StringFromPremiumData:&value];
    }
    return k_countData;
}

//: oldpass
- (NSString *)dreamAppearText {
    /* static */ NSString *dreamAppearText = nil;
    if (!dreamAppearText) {
        StructPremiumData value = (StructPremiumData){157, (Byte []){242, 241, 249, 237, 252, 238, 238, 198}, 7, 60};
        dreamAppearText = [self StringFromPremiumData:&value];
    }
    return dreamAppearText;
}

//: account
- (NSString *)user_mustName {
    /* static */ NSString *user_mustName = nil;
    if (!user_mustName) {
        StructPremiumData value = (StructPremiumData){108, (Byte []){13, 15, 15, 3, 25, 2, 24, 113}, 7, 198};
        user_mustName = [self StringFromPremiumData:&value];
    }
    return user_mustName;
}

//: renewpass
- (NSString *)dreamByName {
    /* static */ NSString *dreamByName = nil;
    if (!dreamByName) {
        StructPremiumData value = (StructPremiumData){123, (Byte []){9, 30, 21, 30, 12, 11, 26, 8, 8, 114}, 9, 38};
        dreamByName = [self StringFromPremiumData:&value];
    }
    return dreamByName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FuturismViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "GetBackPasswordViewController.h"
#import "FuturismViewController.h"

//: @interface GetBackPasswordViewController ()
@interface FuturismViewController ()

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;

//: @end
@end

//: @implementation GetBackPasswordViewController
@implementation FuturismViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
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

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[PremiumData sharedInstance] appBrokerValue]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[PremiumData sharedInstance] dream_scaleTitle]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [InputRed preserve:[[PremiumData sharedInstance] userUndertakeAccountShowData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice heightShowStop])+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view1.backgroundColor = [UIColor whiteColor];
    view1.backgroundColor = [UIColor whiteColor];
    //: view1.layer.cornerRadius = 24;
    view1.layer.cornerRadius = 24;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];

    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"saft_bind_account"];
    imgname.image = [UIImage imageNamed:[[PremiumData sharedInstance] noti_appearTitle]];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, [[UIScreen mainScreen] bounds].size.width-40-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, [[UIScreen mainScreen] bounds].size.width-40-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor ground:[[PremiumData sharedInstance] k_pursuitTitle]];
    //: self.textfile_1.placeholder = [WorkLanguageManager getTextWithKey:@"register_account_activity_account"];
    self.textfile_1.placeholder = [InputRed preserve:[[PremiumData sharedInstance] userNovelTagData]];
//    self.textfile_1.delegate = self;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view2.backgroundColor = [UIColor whiteColor];
    view2.backgroundColor = [UIColor whiteColor];
    //: view2.layer.cornerRadius = 24;
    view2.layer.cornerRadius = 24;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:[[PremiumData sharedInstance] kItsValue]];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor ground:[[PremiumData sharedInstance] k_pursuitTitle]];
    //: self.textfile_2.placeholder = [WorkLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [InputRed preserve:[[PremiumData sharedInstance] userCommentTitle]];
//    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

    //: UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: secureButton1.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    secureButton1.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    //: [secureButton1 addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton1 addTarget:self action:@selector(hiddening:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [secureButton1 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton1 setImage:[UIImage imageNamed:[[PremiumData sharedInstance] dream_accountModeData]] forState:UIControlStateNormal];
    //: [secureButton1 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
    [secureButton1 setImage:[UIImage imageNamed:[[PremiumData sharedInstance] mainAcceptableData]] forState:UIControlStateSelected];
//    secureButton1.hidden = YES;
    //: [view2 addSubview:secureButton1];
    [view2 addSubview:secureButton1];


    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view3.backgroundColor = [UIColor whiteColor];
    view3.backgroundColor = [UIColor whiteColor];
    //: view3.layer.cornerRadius = 24;
    view3.layer.cornerRadius = 24;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:[[PremiumData sharedInstance] kItsValue]];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-60, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-60, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor ground:[[PremiumData sharedInstance] k_pursuitTitle]];
    //: self.textfile_3.placeholder = [WorkLanguageManager getTextWithKey:@"activity_modify_new_again"];
    self.textfile_3.placeholder = [InputRed preserve:[[PremiumData sharedInstance] mUniteText]];
//    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: secureButton2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    secureButton2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    //: [secureButton2 addTarget:self action:@selector(pwdAginaTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton2 addTarget:self action:@selector(blueished:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [secureButton2 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton2 setImage:[UIImage imageNamed:[[PremiumData sharedInstance] dream_accountModeData]] forState:UIControlStateNormal];
    //: [secureButton2 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
    [secureButton2 setImage:[UIImage imageNamed:[[PremiumData sharedInstance] mainAcceptableData]] forState:UIControlStateSelected];
//    secureButton2.hidden = YES;
    //: [view3 addSubview:secureButton2];
    [view3 addSubview:secureButton2];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(20, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 44);
    emptyButton.frame = CGRectMake(20, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[WorkLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [emptyButton setTitle:[InputRed preserve:[[PremiumData sharedInstance] k_countData]] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(sessionTitle) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    emptyButton.backgroundColor = [UIColor ground:[[PremiumData sharedInstance] app_highlightValue]];
    //: emptyButton.layer.cornerRadius = 22;
    emptyButton.layer.cornerRadius = 22;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];


}

//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)hiddening:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文
        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[[PremiumData sharedInstance] mainAcceptableData]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_2.secureTextEntry = NO;
            self.textfile_2.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文
        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[[PremiumData sharedInstance] dream_accountModeData]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_2.secureTextEntry = YES;
            self.textfile_2.secureTextEntry = YES;
        //: }];
        }];
    }
}
//: - (void)pwdAginaTextSwitch:(UIButton *)sender
- (void)blueished:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文
        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[[PremiumData sharedInstance] dream_accountModeData]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_3.secureTextEntry = NO;
            self.textfile_3.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文
        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[[PremiumData sharedInstance] mainAcceptableData]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_3.secureTextEntry = YES;
            self.textfile_3.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: -(void)commitButtonClick
-(void)sessionTitle
{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
    if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor ground:[[PremiumData sharedInstance] userReadSessionName]];
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"modify_activity_psw_no_same"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[InputRed preserve:[[PremiumData sharedInstance] appShouldTitle]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[PremiumData sharedInstance] mainSuccessValue]] style:style completion:nil];
        //: return;
        return;
    }


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:[[PremiumData sharedInstance] user_mustName]];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[[PremiumData sharedInstance] user_countData]];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[[PremiumData sharedInstance] dreamAppearText]];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[[PremiumData sharedInstance] notiTitleColorData]];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[[PremiumData sharedInstance] dreamByName]];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[PremiumData sharedInstance] main_balanceData]] queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict route:[[PremiumData sharedInstance] show_handleName]];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[[PremiumData sharedInstance] m_fortunateTowerSuspectTitle]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor ground:[[PremiumData sharedInstance] userReadSessionName]];
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[PremiumData sharedInstance] app_crowdedValue]] style:style completion:nil];

            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }else{
        }else{
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor ground:[[PremiumData sharedInstance] userReadSessionName]];
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[PremiumData sharedInstance] mainSuccessValue]] style:style completion:nil];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor ground:[[PremiumData sharedInstance] userReadSessionName]];
        //: [self.view makeToast:[WorkLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[InputRed preserve:[[PremiumData sharedInstance] user_onContent]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[PremiumData sharedInstance] mainSuccessValue]] style:style completion:nil];
    //: }];
    }];

}

//: @end
@end
