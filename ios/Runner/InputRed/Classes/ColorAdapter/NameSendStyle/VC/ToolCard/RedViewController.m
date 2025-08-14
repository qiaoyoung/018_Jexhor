
#import <Foundation/Foundation.h>

@interface NationalData : NSObject

+ (instancetype)sharedInstance;

//: #999999
@property (nonatomic, copy) NSString *userWithData;

//: Please_enter_content
@property (nonatomic, copy) NSString *kAssaultNapName;

//: #F6F7FA
@property (nonatomic, copy) NSString *dream_comfortableContent;

//: back_arrow_bl
@property (nonatomic, copy) NSString *showKaData;

//: #05D481
@property (nonatomic, copy) NSString *mainBuildTitValue;

//: Group_description
@property (nonatomic, copy) NSString *dream_schoolData;

//: feedback_activity_submit
@property (nonatomic, copy) NSString *show_needData;

@end

@implementation NationalData

+ (instancetype)sharedInstance {
    static NationalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NationalDataToCache:(Byte *)data {
    int promote = data[0];
    int card = data[1];
    for (int i = 0; i < promote / 2; i++) {
        int begin = card + i;
        int end = card + promote - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[card + promote] = 0;
    return data + card;
}

- (NSString *)StringFromNationalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NationalDataToCache:data]];
}  

//: #F6F7FA
- (NSString *)dream_comfortableContent {
    if (!_dream_comfortableContent) {
        Byte value[] = {7, 4, 24, 249, 65, 70, 55, 70, 54, 70, 35, 243};
        _dream_comfortableContent = [self StringFromNationalData:value];
    }
    return _dream_comfortableContent;
}

//: Group_description
- (NSString *)dream_schoolData {
    if (!_dream_schoolData) {
        Byte value[] = {17, 11, 53, 125, 133, 89, 163, 66, 124, 120, 85, 110, 111, 105, 116, 112, 105, 114, 99, 115, 101, 100, 95, 112, 117, 111, 114, 71, 132};
        _dream_schoolData = [self StringFromNationalData:value];
    }
    return _dream_schoolData;
}

//: #999999
- (NSString *)userWithData {
    if (!_userWithData) {
        Byte value[] = {7, 5, 250, 31, 157, 57, 57, 57, 57, 57, 57, 35, 142};
        _userWithData = [self StringFromNationalData:value];
    }
    return _userWithData;
}

//: feedback_activity_submit
- (NSString *)show_needData {
    if (!_show_needData) {
        Byte value[] = {24, 11, 76, 84, 57, 151, 103, 11, 12, 197, 132, 116, 105, 109, 98, 117, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 107, 99, 97, 98, 100, 101, 101, 102, 224};
        _show_needData = [self StringFromNationalData:value];
    }
    return _show_needData;
}

//: Please_enter_content
- (NSString *)kAssaultNapName {
    if (!_kAssaultNapName) {
        Byte value[] = {20, 11, 102, 175, 129, 117, 236, 107, 204, 168, 145, 116, 110, 101, 116, 110, 111, 99, 95, 114, 101, 116, 110, 101, 95, 101, 115, 97, 101, 108, 80, 243};
        _kAssaultNapName = [self StringFromNationalData:value];
    }
    return _kAssaultNapName;
}

//: #05D481
- (NSString *)mainBuildTitValue {
    if (!_mainBuildTitValue) {
        Byte value[] = {7, 5, 4, 41, 132, 49, 56, 52, 68, 53, 48, 35, 253};
        _mainBuildTitValue = [self StringFromNationalData:value];
    }
    return _mainBuildTitValue;
}

//: back_arrow_bl
- (NSString *)showKaData {
    if (!_showKaData) {
        Byte value[] = {13, 12, 187, 93, 44, 191, 185, 214, 229, 100, 36, 172, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 134};
        _showKaData = [self StringFromNationalData:value];
    }
    return _showKaData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkTeamIntroduceViewController.h"
#import "RedViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface WorkTeamIntroduceViewController ()<UITextFieldDelegate, UITextViewDelegate>
@interface RedViewController ()<UITextFieldDelegate, UITextViewDelegate>


//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic, strong) UIButton *submitButton;
@property (nonatomic, strong) UIButton *submitButton;

//: @property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation WorkTeamIntroduceViewController
@implementation RedViewController

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
    self.view.backgroundColor = [UIColor ground:[NationalData sharedInstance].dream_comfortableContent];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[NationalData sharedInstance].showKaData] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [InputRed preserve:[NationalData sharedInstance].dream_schoolData];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
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

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    //: self.contentTextView.textColor = [UIColor blackColor];
    self.contentTextView.textColor = [UIColor blackColor];
    //: self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [WorkLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [InputRed preserve:[NationalData sharedInstance].kAssaultNapName];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: if (self.canEdit) {
    if (self.canEdit) {
        //: self.contentTextView.editable = YES;
        self.contentTextView.editable = YES;

        //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [submitButton setTitle:[WorkLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
        [submitButton setTitle:[InputRed preserve:[NationalData sharedInstance].show_needData] forState:UIControlStateNormal];
        //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
        [submitButton addTarget:self action:@selector(centerred:) forControlEvents:UIControlEventTouchUpInside];
        //: submitButton.layer.cornerRadius = 24;
        submitButton.layer.cornerRadius = 24;
        //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        submitButton.backgroundColor = [UIColor ground:[NationalData sharedInstance].mainBuildTitValue];
        //: [self.view addSubview:submitButton];
        [self.view addSubview:submitButton];
    //: }else{
    }else{
        //: self.contentTextView.editable = NO;
        self.contentTextView.editable = NO;
    }

}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)centerred:(id)sender {
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];

    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    //: self.speiceBackBlock(content);
    self.speiceBackBlock(content);

    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
//    if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
//        [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
//    }
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
        _numLabel.textColor = [UIColor ground:[NationalData sharedInstance].userWithData];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end
