
#import <Foundation/Foundation.h>

@interface AllyData : NSObject

+ (instancetype)sharedInstance;

//: bg_my
@property (nonatomic, copy) NSString *userEconomicalEthnicKey;

//: %lu/100
@property (nonatomic, copy) NSString *k_sessionId;

//: icon_checkbox_selected
@property (nonatomic, copy) NSString *mSustainAlienPath;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kWhichIdent;

//: activity_set_bio_title
@property (nonatomic, copy) NSString *kColorId;

//: user_profile_avtivity_user_info_update_failed
@property (nonatomic, copy) NSString *m_farIdent;

//: #333333
@property (nonatomic, copy) NSString *appExplosionId;

//: user_profile_avtivity_user_info_update_success
@property (nonatomic, copy) NSString *main_heavilyName;

//: #999999
@property (nonatomic, copy) NSString *dreamSpaceUrl;

@end

@implementation AllyData

+ (instancetype)sharedInstance {
    static AllyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AllyDataToCache:(Byte *)data {
    int buttonDead = data[0];
    Byte inputShow = data[1];
    int endUser = data[2];
    for (int i = endUser; i < endUser + buttonDead; i++) {
        int value = data[i] - inputShow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[endUser + buttonDead] = 0;
    return data + endUser;
}

- (NSString *)StringFromAllyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AllyDataToCache:data]];
}

//: #999999
- (NSString *)dreamSpaceUrl {
    if (!_dreamSpaceUrl) {
        Byte value[] = {7, 69, 8, 73, 176, 221, 242, 125, 104, 126, 126, 126, 126, 126, 126, 214};
        _dreamSpaceUrl = [self StringFromAllyData:value];
    }
    return _dreamSpaceUrl;
}

//: %lu/100
- (NSString *)k_sessionId {
    if (!_k_sessionId) {
        Byte value[] = {7, 26, 11, 153, 250, 159, 26, 57, 47, 210, 91, 63, 134, 143, 73, 75, 74, 74, 1};
        _k_sessionId = [self StringFromAllyData:value];
    }
    return _k_sessionId;
}

//: back_arrow_bl
- (NSString *)kWhichIdent {
    if (!_kWhichIdent) {
        Byte value[] = {13, 35, 3, 133, 132, 134, 142, 130, 132, 149, 149, 146, 154, 130, 133, 143, 14};
        _kWhichIdent = [self StringFromAllyData:value];
    }
    return _kWhichIdent;
}

//: activity_set_bio_title
- (NSString *)kColorId {
    if (!_kColorId) {
        Byte value[] = {22, 94, 12, 174, 63, 31, 55, 223, 182, 142, 25, 78, 191, 193, 210, 199, 212, 199, 210, 215, 189, 209, 195, 210, 189, 192, 199, 205, 189, 210, 199, 210, 202, 195, 255};
        _kColorId = [self StringFromAllyData:value];
    }
    return _kColorId;
}

//: bg_my
- (NSString *)userEconomicalEthnicKey {
    if (!_userEconomicalEthnicKey) {
        Byte value[] = {5, 74, 11, 131, 89, 249, 123, 181, 203, 99, 202, 172, 177, 169, 183, 195, 157};
        _userEconomicalEthnicKey = [self StringFromAllyData:value];
    }
    return _userEconomicalEthnicKey;
}

//: icon_checkbox_selected
- (NSString *)mSustainAlienPath {
    if (!_mSustainAlienPath) {
        Byte value[] = {22, 11, 10, 93, 253, 48, 229, 56, 133, 138, 116, 110, 122, 121, 106, 110, 115, 112, 110, 118, 109, 122, 131, 106, 126, 112, 119, 112, 110, 127, 112, 111, 170};
        _mSustainAlienPath = [self StringFromAllyData:value];
    }
    return _mSustainAlienPath;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)m_farIdent {
    if (!_m_farIdent) {
        Byte value[] = {45, 52, 4, 148, 169, 167, 153, 166, 147, 164, 166, 163, 154, 157, 160, 153, 147, 149, 170, 168, 157, 170, 157, 168, 173, 147, 169, 167, 153, 166, 147, 157, 162, 154, 163, 147, 169, 164, 152, 149, 168, 153, 147, 154, 149, 157, 160, 153, 152, 227};
        _m_farIdent = [self StringFromAllyData:value];
    }
    return _m_farIdent;
}

//: user_profile_avtivity_user_info_update_success
- (NSString *)main_heavilyName {
    if (!_main_heavilyName) {
        Byte value[] = {46, 94, 10, 6, 229, 62, 215, 69, 7, 132, 211, 209, 195, 208, 189, 206, 208, 205, 196, 199, 202, 195, 189, 191, 212, 210, 199, 212, 199, 210, 215, 189, 211, 209, 195, 208, 189, 199, 204, 196, 205, 189, 211, 206, 194, 191, 210, 195, 189, 209, 211, 193, 193, 195, 209, 209, 15};
        _main_heavilyName = [self StringFromAllyData:value];
    }
    return _main_heavilyName;
}

//: #333333
- (NSString *)appExplosionId {
    if (!_appExplosionId) {
        Byte value[] = {7, 61, 10, 2, 244, 199, 19, 142, 20, 202, 96, 112, 112, 112, 112, 112, 112, 44};
        _appExplosionId = [self StringFromAllyData:value];
    }
    return _appExplosionId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSignSettingViewController.h"
#import "NameViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface NTESSignSettingViewController ()<UITextViewDelegate>
@interface NameViewController ()<UITextViewDelegate>

//: @property (nonatomic, strong) NSString *signStr;
@property (nonatomic, strong) NSString *signStr;
//: @property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UITextView *textView;
//: @property (nonatomic, strong) UILabel *numLabel;
@property (nonatomic, strong) UILabel *numLabel;

//: @end
@end

//: @implementation NTESSignSettingViewController
@implementation NameViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1.0];
    //: self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_my"]];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[AllyData sharedInstance].userEconomicalEthnicKey]];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[AllyData sharedInstance].kWhichIdent] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice title]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"activity_set_bio_title"];
    labtitle.text = [BackgroundRandomAttribute content:[AllyData sharedInstance].kColorId];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice title]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[AllyData sharedInstance].mSustainAlienPath] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onDone:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(offs:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: self.signStr = [[NIMSDK sharedSDK].userManager userInfo:userId].userInfo.sign ?: @"";
    self.signStr = [[NIMSDK sharedSDK].userManager userInfo:userId].userInfo.sign ?: @"";

    //: UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+16+15, [[UIScreen mainScreen] bounds].size.width-30, 150)];
    UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+16+15, [[UIScreen mainScreen] bounds].size.width-30, 150)];
    //: bgview.layer.borderWidth = 0.5;
    bgview.layer.borderWidth = 0.5;
    //: bgview.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    bgview.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: bgview.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    bgview.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: bgview.layer.cornerRadius = 8;
    bgview.layer.cornerRadius = 8;
    //: bgview.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    bgview.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: bgview.layer.shadowOffset = CGSizeMake(0,3);
    bgview.layer.shadowOffset = CGSizeMake(0,3);
    //: bgview.layer.shadowOpacity = 1;
    bgview.layer.shadowOpacity = 1;
    //: bgview.layer.shadowRadius = 0;
    bgview.layer.shadowRadius = 0;
    //: [self.view addSubview:bgview];
    [self.view addSubview:bgview];


    //: [bgview addSubview:self.textView];
    [bgview addSubview:self.textView];
    //: self.textView.text = self.signStr;
    self.textView.text = self.signStr;
    //: self.textView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 120);
    self.textView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 120);


    //: [self.view addSubview:self.numLabel];
    [self.view addSubview:self.numLabel];
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",self.signStr.length];
    self.numLabel.text = [NSString stringWithFormat:[AllyData sharedInstance].k_sessionId,self.signStr.length];
    //: self.numLabel.frame = CGRectMake(15, bgview.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.numLabel.frame = CGRectMake(15, bgview.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

}

//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)onDone:(id)sender{
- (void)offs:(id)sender{
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
//    if (self.signStr.length > 100) {
//        [self.view makeToast:@"签名过长".nim_localized duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagSign) : self.signStr} completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagSign) : self.signStr} completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: UINavigationController *nav = wself.navigationController;
            UINavigationController *nav = wself.navigationController;
            //: [nav popViewControllerAnimated:NO];
            [nav popViewControllerAnimated:NO];
            //: UIViewController *vc = nav.topViewController;
            UIViewController *vc = nav.topViewController;
            //: [vc.view makeToast:[PushLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [vc.view makeToast:[BackgroundRandomAttribute content:[AllyData sharedInstance].main_heavilyName]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        //: }else{
        }else{
            //: [wself.view makeToast:[PushLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself.view makeToast:[BackgroundRandomAttribute content:[AllyData sharedInstance].m_farIdent]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}



//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {

    //: NSString *genString = [textView.text stringByReplacingCharactersInRange:range withString:text];
    NSString *genString = [textView.text stringByReplacingCharactersInRange:range withString:text];
    //: if (genString.length > 100) {
    if (genString.length > 100) {
        //: return NO;
        return NO;
    }
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",genString.length+1];
    self.numLabel.text = [NSString stringWithFormat:[AllyData sharedInstance].k_sessionId,genString.length+1];
    //: return YES;
    return YES;
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
    //: self.signStr = textView.text;
    self.signStr = textView.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",self.signStr.length];
    self.numLabel.text = [NSString stringWithFormat:[AllyData sharedInstance].k_sessionId,self.signStr.length];
}

//: - (UITextView *)textView{
- (UITextView *)textView{
    //: if(!_textView){
    if(!_textView){
        //: _textView = [[UITextView alloc]init];
        _textView = [[UITextView alloc]init];
        //: _textView.font = [UIFont systemFontOfSize:16.0];
        _textView.font = [UIFont systemFontOfSize:16.0];
        //: _textView.textColor = [UIColor colorWithHexString:@"#333333"];
        _textView.textColor = [UIColor user:[AllyData sharedInstance].appExplosionId];
        //: _textView.placeholder = [PushLanguageManager getTextWithKey:@"activity_set_bio_title"];
        _textView.placeholder = [BackgroundRandomAttribute content:[AllyData sharedInstance].kColorId];
        //: _textView.delegate = self;
        _textView.delegate = self;
//        _textView.textContainerInset = UIEdgeInsetsMake(20, 20, 20, 20);

    }
    //: return _textView;
    return _textView;
}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor user:[AllyData sharedInstance].dreamSpaceUrl];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end
