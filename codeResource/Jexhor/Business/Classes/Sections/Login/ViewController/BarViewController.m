
#import <Foundation/Foundation.h>

@interface ChartTingData : NSObject

@end

@implementation ChartTingData

+ (Byte *)ChartTingDataToCache:(Byte *)data {
    int cultural = data[0];
    Byte toAGreatExtent = data[1];
    int wakeExplosion = data[2];
    for (int i = wakeExplosion; i < wakeExplosion + cultural; i++) {
        int value = data[i] + toAGreatExtent;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[wakeExplosion + cultural] = 0;
    return data + wakeExplosion;
}

+ (NSString *)StringFromChartTingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChartTingDataToCache:data]];
}

//: activity_my_user_info_nick
+ (NSString *)dream_tapId {
    /* static */ NSString *dream_tapId = nil;
    if (!dream_tapId) {
        Byte value[] = {26, 63, 5, 14, 79, 34, 36, 53, 42, 55, 42, 53, 58, 32, 46, 58, 32, 54, 52, 38, 51, 32, 42, 47, 39, 48, 32, 47, 42, 36, 44, 206};
        dream_tapId = [self StringFromChartTingData:value];
    }
    return dream_tapId;
}

//: back_arrow_bl
+ (NSString *)mainRageData {
    /* static */ NSString *mainRageData = nil;
    if (!mainRageData) {
        Byte value[] = {13, 79, 12, 51, 230, 5, 82, 80, 10, 210, 58, 162, 19, 18, 20, 28, 16, 18, 35, 35, 32, 40, 16, 19, 29, 112};
        mainRageData = [self StringFromChartTingData:value];
    }
    return mainRageData;
}

//: login_bg
+ (NSString *)show_alienName {
    /* static */ NSString *show_alienName = nil;
    if (!show_alienName) {
        Byte value[] = {8, 74, 4, 201, 34, 37, 29, 31, 36, 21, 24, 29, 115};
        show_alienName = [self StringFromChartTingData:value];
    }
    return show_alienName;
}

//: nickname_same_account
+ (NSString *)dreamReinforceFormat {
    /* static */ NSString *dreamReinforceFormat = nil;
    if (!dreamReinforceFormat) {
        Byte value[] = {21, 76, 12, 105, 181, 118, 70, 136, 125, 32, 222, 121, 34, 29, 23, 31, 34, 21, 33, 25, 19, 39, 21, 33, 25, 19, 21, 23, 23, 35, 41, 34, 40, 7};
        dreamReinforceFormat = [self StringFromChartTingData:value];
    }
    return dreamReinforceFormat;
}

//: register_avtivity3_nick
+ (NSString *)showStandingMessage {
    /* static */ NSString *showStandingMessage = nil;
    if (!showStandingMessage) {
        Byte value[] = {23, 60, 3, 54, 41, 43, 45, 55, 56, 41, 54, 35, 37, 58, 56, 45, 58, 45, 56, 61, 247, 35, 50, 45, 39, 47, 79};
        showStandingMessage = [self StringFromChartTingData:value];
    }
    return showStandingMessage;
}

//: #333333
+ (NSString *)notiHeroName {
    /* static */ NSString *notiHeroName = nil;
    if (!notiHeroName) {
        Byte value[] = {7, 43, 12, 199, 255, 98, 122, 134, 2, 27, 82, 7, 248, 8, 8, 8, 8, 8, 8, 135};
        notiHeroName = [self StringFromChartTingData:value];
    }
    return notiHeroName;
}

//: register_good_nick
+ (NSString *)k_hostileMessage {
    /* static */ NSString *k_hostileMessage = nil;
    if (!k_hostileMessage) {
        Byte value[] = {18, 64, 7, 189, 98, 153, 18, 50, 37, 39, 41, 51, 52, 37, 50, 31, 39, 47, 47, 36, 31, 46, 41, 35, 43, 249};
        k_hostileMessage = [self StringFromChartTingData:value];
    }
    return k_hostileMessage;
}

//: #5D5F66
+ (NSString *)dreamYinTitle {
    /* static */ NSString *dreamYinTitle = nil;
    if (!dreamYinTitle) {
        Byte value[] = {7, 77, 13, 115, 29, 8, 126, 2, 20, 208, 238, 144, 153, 214, 232, 247, 232, 249, 233, 233, 48};
        dreamYinTitle = [self StringFromChartTingData:value];
    }
    return dreamYinTitle;
}

//: activity_register_next
+ (NSString *)app_userText {
    /* static */ NSString *app_userText = nil;
    if (!app_userText) {
        Byte value[] = {22, 55, 3, 42, 44, 61, 50, 63, 50, 61, 66, 40, 59, 46, 48, 50, 60, 61, 46, 59, 40, 55, 46, 65, 61, 106};
        app_userText = [self StringFromChartTingData:value];
    }
    return app_userText;
}

//: #05D481
+ (NSString *)show_holderName {
    /* static */ NSString *show_holderName = nil;
    if (!show_holderName) {
        Byte value[] = {7, 96, 6, 32, 239, 96, 195, 208, 213, 228, 212, 216, 209, 60};
        show_holderName = [self StringFromChartTingData:value];
    }
    return show_holderName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterNickNameViewController.h"
#import "BarViewController.h"
//: #import "FFFRegisterAvatarViewController.h"
#import "AttributeViewController.h"

//: @interface FFFRegisterNickNameViewController ()<UITextFieldDelegate>
@interface BarViewController ()<UITextFieldDelegate>

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
@implementation BarViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[ChartTingData show_alienName]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initTitleUp];

}

//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initTitleUp
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice title]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[ChartTingData mainRageData]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice title], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [BackgroundRandomAttribute content:[ChartTingData dream_tapId]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor user:[ChartTingData dreamYinTitle]];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [BackgroundRandomAttribute content:[ChartTingData k_hostileMessage]];
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
    self.accountTextfield.textColor = [UIColor user:[ChartTingData notiHeroName]];
    //: self.accountTextfield.placeholder = [FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [BackgroundRandomAttribute content:[ChartTingData showStandingMessage]];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    self.registButton.backgroundColor = [UIColor user:[ChartTingData show_holderName]];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
    self.registButton.layer.shadowColor = [UIColor user:[ChartTingData show_holderName]].CGColor;
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
    [self.registButton setTitle:[BackgroundRandomAttribute content:[ChartTingData app_userText]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(rangeDown) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)rangeDown
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[BackgroundRandomAttribute content:[ChartTingData showStandingMessage]]
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
        [self.view makeToast:[BackgroundRandomAttribute content:[ChartTingData dreamReinforceFormat]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: FFFRegisterAvatarViewController *vc = [[FFFRegisterAvatarViewController alloc]init];
    AttributeViewController *vc = [[AttributeViewController alloc]init];
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