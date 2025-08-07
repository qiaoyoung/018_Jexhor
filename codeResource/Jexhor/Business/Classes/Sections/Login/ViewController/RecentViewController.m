
#import <Foundation/Foundation.h>

@interface SyncretizeData : NSObject

+ (instancetype)sharedInstance;

//: activity_register_next
@property (nonatomic, copy) NSString *main_olaValue;

//: #333333
@property (nonatomic, copy) NSString *user_maxData;

//: activity_my_user_info_nick
@property (nonatomic, copy) NSString *m_withValue;

//: register_good_nick
@property (nonatomic, copy) NSString *app_withValue;

//: #05D481
@property (nonatomic, copy) NSString *notiAfternoonData;

//: #5D5F66
@property (nonatomic, copy) NSString *kThreadText;

//: back_arrow_bl
@property (nonatomic, copy) NSString *main_bubblePlaceData;

//: login_bg
@property (nonatomic, copy) NSString *showSeriesNameValue;

//: register_avtivity3_nick
@property (nonatomic, copy) NSString *showAcheNeedName;

//: nickname_same_account
@property (nonatomic, copy) NSString *dream_accelerateData;

@end

@implementation SyncretizeData

+ (instancetype)sharedInstance {
    static SyncretizeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SyncretizeDataToCache:(Byte *)data {
    int ola = data[0];
    Byte sizeTitle = data[1];
    int infoAppear = data[2];
    for (int i = infoAppear; i < infoAppear + ola; i++) {
        int value = data[i] - sizeTitle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[infoAppear + ola] = 0;
    return data + infoAppear;
}

- (NSString *)StringFromSyncretizeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SyncretizeDataToCache:data]];
}

//: nickname_same_account
- (NSString *)dream_accelerateData {
    if (!_dream_accelerateData) {
        Byte value[] = {21, 48, 11, 194, 219, 119, 185, 56, 183, 136, 50, 158, 153, 147, 155, 158, 145, 157, 149, 143, 163, 145, 157, 149, 143, 145, 147, 147, 159, 165, 158, 164, 209};
        _dream_accelerateData = [self StringFromSyncretizeData:value];
    }
    return _dream_accelerateData;
}

//: #05D481
- (NSString *)notiAfternoonData {
    if (!_notiAfternoonData) {
        Byte value[] = {7, 85, 13, 183, 206, 170, 248, 93, 255, 89, 168, 207, 210, 120, 133, 138, 153, 137, 141, 134, 198};
        _notiAfternoonData = [self StringFromSyncretizeData:value];
    }
    return _notiAfternoonData;
}

//: register_good_nick
- (NSString *)app_withValue {
    if (!_app_withValue) {
        Byte value[] = {18, 54, 13, 70, 173, 119, 221, 55, 71, 204, 238, 248, 132, 168, 155, 157, 159, 169, 170, 155, 168, 149, 157, 165, 165, 154, 149, 164, 159, 153, 161, 228};
        _app_withValue = [self StringFromSyncretizeData:value];
    }
    return _app_withValue;
}

//: #333333
- (NSString *)user_maxData {
    if (!_user_maxData) {
        Byte value[] = {7, 16, 9, 7, 241, 123, 138, 70, 91, 51, 67, 67, 67, 67, 67, 67, 142};
        _user_maxData = [self StringFromSyncretizeData:value];
    }
    return _user_maxData;
}

//: #5D5F66
- (NSString *)kThreadText {
    if (!_kThreadText) {
        Byte value[] = {7, 31, 8, 231, 170, 77, 126, 153, 66, 84, 99, 84, 101, 85, 85, 208};
        _kThreadText = [self StringFromSyncretizeData:value];
    }
    return _kThreadText;
}

//: login_bg
- (NSString *)showSeriesNameValue {
    if (!_showSeriesNameValue) {
        Byte value[] = {8, 76, 5, 45, 160, 184, 187, 179, 181, 186, 171, 174, 179, 108};
        _showSeriesNameValue = [self StringFromSyncretizeData:value];
    }
    return _showSeriesNameValue;
}

//: register_avtivity3_nick
- (NSString *)showAcheNeedName {
    if (!_showAcheNeedName) {
        Byte value[] = {23, 94, 4, 201, 208, 195, 197, 199, 209, 210, 195, 208, 189, 191, 212, 210, 199, 212, 199, 210, 215, 145, 189, 204, 199, 193, 201, 241};
        _showAcheNeedName = [self StringFromSyncretizeData:value];
    }
    return _showAcheNeedName;
}

//: activity_register_next
- (NSString *)main_olaValue {
    if (!_main_olaValue) {
        Byte value[] = {22, 92, 7, 33, 138, 154, 223, 189, 191, 208, 197, 210, 197, 208, 213, 187, 206, 193, 195, 197, 207, 208, 193, 206, 187, 202, 193, 212, 208, 170};
        _main_olaValue = [self StringFromSyncretizeData:value];
    }
    return _main_olaValue;
}

//: back_arrow_bl
- (NSString *)main_bubblePlaceData {
    if (!_main_bubblePlaceData) {
        Byte value[] = {13, 14, 12, 1, 150, 191, 229, 143, 144, 89, 77, 55, 112, 111, 113, 121, 109, 111, 128, 128, 125, 133, 109, 112, 122, 60};
        _main_bubblePlaceData = [self StringFromSyncretizeData:value];
    }
    return _main_bubblePlaceData;
}

//: activity_my_user_info_nick
- (NSString *)m_withValue {
    if (!_m_withValue) {
        Byte value[] = {26, 21, 13, 10, 204, 100, 42, 120, 197, 57, 50, 226, 168, 118, 120, 137, 126, 139, 126, 137, 142, 116, 130, 142, 116, 138, 136, 122, 135, 116, 126, 131, 123, 132, 116, 131, 126, 120, 128, 6};
        _m_withValue = [self StringFromSyncretizeData:value];
    }
    return _m_withValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterNickNameViewController.h"
#import "RecentViewController.h"
//: #import "FFFRegisterAvatarViewController.h"
#import "FixingViewController.h"

//: @interface FFFRegisterNickNameViewController ()<UITextFieldDelegate>
@interface RecentViewController ()<UITextFieldDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @property (nonatomic, strong) UIImageView *backGroundImgView;
@property (nonatomic, strong) UIImageView *backGroundImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;

//: @property (nonatomic, strong) UIView *usernameView;
@property (nonatomic, strong) UIView *usernameView;

//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UITextField *accountTextfield;
@property (nonatomic, strong) UITextField *accountTextfield;

//: @property (nonatomic, strong) UILabel *tipsLabel;
@property (nonatomic, strong) UILabel *tipsLabel;
//: @property (nonatomic, strong) UILabel *tipsLabel1;
@property (nonatomic, strong) UILabel *tipsLabel1;

//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (strong, nonatomic) NSString *loginbgCode;
@property (strong, nonatomic) NSString *loginbgCode;
//: @property (strong, nonatomic) UIColor *defColor;
@property (strong, nonatomic) UIColor *defColor;

//: @end
@end

//: @implementation FFFRegisterNickNameViewController
@implementation RecentViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[SyncretizeData sharedInstance].showSeriesNameValue];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initBlue];

}

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initBlue
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice heightShowStop]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[SyncretizeData sharedInstance].main_bubblePlaceData] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice heightShowStop], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [InputRed preserve:[SyncretizeData sharedInstance].m_withValue];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor ground:[SyncretizeData sharedInstance].kThreadText];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [InputRed preserve:[SyncretizeData sharedInstance].app_withValue];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

//    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(20, self.accountLabel.bottom+30, SCREEN_WIDTH-40, 40)];
//    tip.font = [UIFont systemFontOfSize:14];
//    tip.textColor = TextColor_2;
//    tip.text = LangKey(@"nickname_same_account");
//    tip.numberOfLines = 2;
//    [self.view addSubview:tip];

    //: _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    //: _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: _usernameView.layer.cornerRadius = 8;
    _usernameView.layer.cornerRadius = 8;
    //: _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    //: _usernameView.layer.shadowOpacity = 1;
    _usernameView.layer.shadowOpacity = 1;
    //: _usernameView.layer.shadowRadius = 0;
    _usernameView.layer.shadowRadius = 0;
    //: [self.view addSubview:_usernameView];
    [self.view addSubview:_usernameView];


    //: self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    //: self.accountTextfield.font = [UIFont systemFontOfSize:16];
    self.accountTextfield.font = [UIFont systemFontOfSize:16];
    //: self.accountTextfield.textColor = [UIColor colorWithHexString:@"#333333"];
    self.accountTextfield.textColor = [UIColor ground:[SyncretizeData sharedInstance].user_maxData];
    //: self.accountTextfield.placeholder = [FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [InputRed preserve:[SyncretizeData sharedInstance].showAcheNeedName];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    self.registButton.backgroundColor = [UIColor ground:[SyncretizeData sharedInstance].notiAfternoonData];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
    self.registButton.layer.shadowColor = [UIColor ground:[SyncretizeData sharedInstance].notiAfternoonData].CGColor;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [self.registButton setTitle:[InputRed preserve:[SyncretizeData sharedInstance].main_olaValue] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(bottomClick) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)bottomClick
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[InputRed preserve:[SyncretizeData sharedInstance].showAcheNeedName]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_accountTextfield.text isEqualToString:self.accountName]) {
    if ([_accountTextfield.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[InputRed preserve:[SyncretizeData sharedInstance].dream_accelerateData]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: FFFRegisterAvatarViewController *vc = [[FFFRegisterAvatarViewController alloc]init];
    FixingViewController *vc = [[FixingViewController alloc]init];
    //: vc.nickName = self.accountTextfield.text;
    vc.nickName = self.accountTextfield.text;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_accountTextfield resignFirstResponder];
    [_accountTextfield resignFirstResponder];
}

//: @end
@end