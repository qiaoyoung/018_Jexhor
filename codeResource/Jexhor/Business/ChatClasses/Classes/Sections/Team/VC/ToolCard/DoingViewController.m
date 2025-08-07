
#import <Foundation/Foundation.h>

@interface QuipData : NSObject

+ (instancetype)sharedInstance;

//: back_arrow_bl
@property (nonatomic, copy) NSString *dream_sizeStr;

//: #EEEEEE
@property (nonatomic, copy) NSString *show_commandUrl;

//: Group_description
@property (nonatomic, copy) NSString *k_weaknessMsg;

//: #F6F7FA
@property (nonatomic, copy) NSString *noti_upData;

//: 2B2F36
@property (nonatomic, copy) NSString *k_satelliteUrl;

//: Please_enter_content
@property (nonatomic, copy) NSString *mWinnerConstitutionTitle;

//: #999999
@property (nonatomic, copy) NSString *dream_hisName;

//: #2B2F36
@property (nonatomic, copy) NSString *show_legendIdent;

//: Announcement_title
@property (nonatomic, copy) NSString *mInputTitle;

//: #05D481
@property (nonatomic, copy) NSString *main_complainMessage;

//: feedback_activity_submit
@property (nonatomic, copy) NSString *dream_stickUrl;

@end

@implementation QuipData

+ (instancetype)sharedInstance {
    static QuipData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)QuipDataToCache:(Byte *)data {
    int warDoing = data[0];
    Byte acknowledgeAuthority = data[1];
    int attorn = data[2];
    for (int i = attorn; i < attorn + warDoing; i++) {
        int value = data[i] - acknowledgeAuthority;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[attorn + warDoing] = 0;
    return data + attorn;
}

- (NSString *)StringFromQuipData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self QuipDataToCache:data]];
}

//: 2B2F36
- (NSString *)k_satelliteUrl {
    if (!_k_satelliteUrl) {
        Byte value[] = {6, 90, 6, 113, 12, 76, 140, 156, 140, 160, 141, 144, 28};
        _k_satelliteUrl = [self StringFromQuipData:value];
    }
    return _k_satelliteUrl;
}

//: Announcement_title
- (NSString *)mInputTitle {
    if (!_mInputTitle) {
        Byte value[] = {18, 90, 9, 141, 187, 144, 105, 137, 141, 155, 200, 200, 201, 207, 200, 189, 191, 199, 191, 200, 206, 185, 206, 195, 206, 198, 191, 149};
        _mInputTitle = [self StringFromQuipData:value];
    }
    return _mInputTitle;
}

//: feedback_activity_submit
- (NSString *)dream_stickUrl {
    if (!_dream_stickUrl) {
        Byte value[] = {24, 14, 7, 156, 238, 221, 241, 116, 115, 115, 114, 112, 111, 113, 121, 109, 111, 113, 130, 119, 132, 119, 130, 135, 109, 129, 131, 112, 123, 119, 130, 18};
        _dream_stickUrl = [self StringFromQuipData:value];
    }
    return _dream_stickUrl;
}

//: #2B2F36
- (NSString *)show_legendIdent {
    if (!_show_legendIdent) {
        Byte value[] = {7, 24, 10, 173, 177, 92, 220, 80, 231, 219, 59, 74, 90, 74, 94, 75, 78, 198};
        _show_legendIdent = [self StringFromQuipData:value];
    }
    return _show_legendIdent;
}

//: Group_description
- (NSString *)k_weaknessMsg {
    if (!_k_weaknessMsg) {
        Byte value[] = {17, 61, 4, 130, 132, 175, 172, 178, 173, 156, 161, 162, 176, 160, 175, 166, 173, 177, 166, 172, 171, 102};
        _k_weaknessMsg = [self StringFromQuipData:value];
    }
    return _k_weaknessMsg;
}

//: Please_enter_content
- (NSString *)mWinnerConstitutionTitle {
    if (!_mWinnerConstitutionTitle) {
        Byte value[] = {20, 86, 10, 168, 64, 152, 145, 15, 4, 181, 166, 194, 187, 183, 201, 187, 181, 187, 196, 202, 187, 200, 181, 185, 197, 196, 202, 187, 196, 202, 244};
        _mWinnerConstitutionTitle = [self StringFromQuipData:value];
    }
    return _mWinnerConstitutionTitle;
}

//: back_arrow_bl
- (NSString *)dream_sizeStr {
    if (!_dream_sizeStr) {
        Byte value[] = {13, 70, 4, 78, 168, 167, 169, 177, 165, 167, 184, 184, 181, 189, 165, 168, 178, 142};
        _dream_sizeStr = [self StringFromQuipData:value];
    }
    return _dream_sizeStr;
}

//: #F6F7FA
- (NSString *)noti_upData {
    if (!_noti_upData) {
        Byte value[] = {7, 18, 9, 207, 133, 229, 131, 234, 80, 53, 88, 72, 88, 73, 88, 83, 196};
        _noti_upData = [self StringFromQuipData:value];
    }
    return _noti_upData;
}

//: #05D481
- (NSString *)main_complainMessage {
    if (!_main_complainMessage) {
        Byte value[] = {7, 15, 11, 17, 108, 248, 199, 66, 197, 214, 235, 50, 63, 68, 83, 67, 71, 64, 38};
        _main_complainMessage = [self StringFromQuipData:value];
    }
    return _main_complainMessage;
}

//: #EEEEEE
- (NSString *)show_commandUrl {
    if (!_show_commandUrl) {
        Byte value[] = {7, 38, 11, 41, 155, 254, 24, 173, 218, 144, 177, 73, 107, 107, 107, 107, 107, 107, 46};
        _show_commandUrl = [self StringFromQuipData:value];
    }
    return _show_commandUrl;
}

//: #999999
- (NSString *)dream_hisName {
    if (!_dream_hisName) {
        Byte value[] = {7, 2, 10, 40, 185, 227, 82, 121, 117, 199, 37, 59, 59, 59, 59, 59, 59, 135};
        _dream_hisName = [self StringFromQuipData:value];
    }
    return _dream_hisName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCreateTeamAnnouncement.h"
#import "DoingViewController.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitKeyboardInfo.h"
#import "TitleRandom.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface FFFCreateTeamAnnouncement () <UITextFieldDelegate, UITextViewDelegate>
@interface DoingViewController () <UITextFieldDelegate, UITextViewDelegate>
//: @property (strong, nonatomic) UITextField *titleTextField;
@property (strong, nonatomic) UITextField *titleTextField;
//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation FFFCreateTeamAnnouncement
@implementation DoingViewController

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
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor user:[QuipData sharedInstance].noti_upData];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[QuipData sharedInstance].dream_sizeStr] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice title]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [BackgroundRandomAttribute content:[QuipData sharedInstance].k_weaknessMsg];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];



//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];


//    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH-30, 50)];
////    titleView.backgroundColor = [UIColor whiteColor];
////    titleView.layer.cornerRadius = 8;
//    [self.view addSubview:titleView];
//    titleView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    titleView.layer.cornerRadius = 8;
//    titleView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    titleView.layer.shadowOffset = CGSizeMake(0,3);
//    titleView.layer.shadowOpacity = 1;
//    titleView.layer.shadowRadius = 0;




    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    //: contentView.backgroundColor = [UIColor whiteColor];
    contentView.backgroundColor = [UIColor whiteColor];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
//    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    contentView.layer.cornerRadius = 8;
//    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    contentView.layer.shadowOffset = CGSizeMake(0,3);
//    contentView.layer.shadowOpacity = 1;
//    contentView.layer.shadowRadius = 0;

    //: self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    //: self.titleTextField.placeholder = [FFFLanguageManager getTextWithKey:@"Announcement_title"];
    self.titleTextField.placeholder = [BackgroundRandomAttribute content:[QuipData sharedInstance].mInputTitle];
    //: self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    //: self.titleTextField.textColor = [UIColor colorWithHexString:@"2B2F36"];
    self.titleTextField.textColor = [UIColor user:[QuipData sharedInstance].k_satelliteUrl];
    //: self.titleTextField.text = self.defaultTitle;
    self.titleTextField.text = self.defaultTitle;
    //: self.titleTextField.delegate = self;
    self.titleTextField.delegate = self;
    //: [contentView addSubview:self.titleTextField];
    [contentView addSubview:self.titleTextField];

    //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    line.backgroundColor = [UIColor user:[QuipData sharedInstance].show_commandUrl];
    //: [contentView addSubview:line];
    [contentView addSubview:line];

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    //: self.contentTextView.textColor = [UIColor colorWithHexString:@"#2B2F36"];
    self.contentTextView.textColor = [UIColor user:[QuipData sharedInstance].show_legendIdent];
    //: self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [FFFLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [BackgroundRandomAttribute content:[QuipData sharedInstance].mWinnerConstitutionTitle];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [submitButton setTitle:[FFFLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
    [submitButton setTitle:[BackgroundRandomAttribute content:[QuipData sharedInstance].dream_stickUrl] forState:UIControlStateNormal];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(mediaed:) forControlEvents:UIControlEventTouchUpInside];
    //: submitButton.layer.cornerRadius = 24;
    submitButton.layer.cornerRadius = 24;
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    submitButton.backgroundColor = [UIColor user:[QuipData sharedInstance].main_complainMessage];
    //: [self.view addSubview:submitButton];
    [self.view addSubview:submitButton];



}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)mediaed:(id)sender {
    //: [self.titleTextField endEditing:YES];
    [self.titleTextField endEditing:YES];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
    //: if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
    if([self.delegate respondsToSelector:@selector(quick:doing:)]) {
        //: [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
        [self.delegate quick:title doing:content];
    }
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
        _numLabel.textColor = [UIColor user:[QuipData sharedInstance].dream_hisName];
    }
    //: return _numLabel;
    return _numLabel;
}



//: @end
@end