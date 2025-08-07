
#import <Foundation/Foundation.h>

typedef struct {
    Byte lengthNameTarget;
    Byte *pressShow;
    unsigned int buttonHandle;
	int successComment;
} StructPictureData;

@interface PictureData : NSObject

@end

@implementation PictureData

+ (Byte *)PictureDataToByte:(StructPictureData *)data {
    for (int i = 0; i < data->buttonHandle; i++) {
        data->pressShow[i] ^= data->lengthNameTarget;
    }
    data->pressShow[data->buttonHandle] = 0;
	if (data->buttonHandle >= 1) {
		data->successComment = data->pressShow[0];
	}
    return data->pressShow;
}

+ (NSString *)StringFromPictureData:(StructPictureData *)data {
    return [NSString stringWithUTF8String:(char *)[self PictureDataToByte:data]];
}

//: bg_my
+ (NSString *)notiSessionName {
    /* static */ NSString *notiSessionName = nil;
    if (!notiSessionName) {
        StructPictureData value = (StructPictureData){73, (Byte []){43, 46, 22, 36, 48, 162}, 5, 110};
        notiSessionName = [self StringFromPictureData:&value];
    }
    return notiSessionName;
}

//: activity_set_bio_title
+ (NSString *)main_changeValue {
    /* static */ NSString *main_changeValue = nil;
    if (!main_changeValue) {
        StructPictureData value = (StructPictureData){213, (Byte []){180, 182, 161, 188, 163, 188, 161, 172, 138, 166, 176, 161, 138, 183, 188, 186, 138, 161, 188, 161, 185, 176, 248}, 22, 213};
        main_changeValue = [self StringFromPictureData:&value];
    }
    return main_changeValue;
}

//: icon_checkbox_selected
+ (NSString *)mainParentName {
    /* static */ NSString *mainParentName = nil;
    if (!mainParentName) {
        StructPictureData value = (StructPictureData){80, (Byte []){57, 51, 63, 62, 15, 51, 56, 53, 51, 59, 50, 63, 40, 15, 35, 53, 60, 53, 51, 36, 53, 52, 155}, 22, 65};
        mainParentName = [self StringFromPictureData:&value];
    }
    return mainParentName;
}

//: user_profile_avtivity_user_info_update_failed
+ (NSString *)mainChangeData {
    /* static */ NSString *mainChangeData = nil;
    if (!mainChangeData) {
        StructPictureData value = (StructPictureData){219, (Byte []){174, 168, 190, 169, 132, 171, 169, 180, 189, 178, 183, 190, 132, 186, 173, 175, 178, 173, 178, 175, 162, 132, 174, 168, 190, 169, 132, 178, 181, 189, 180, 132, 174, 171, 191, 186, 175, 190, 132, 189, 186, 178, 183, 190, 191, 58}, 45, 179};
        mainChangeData = [self StringFromPictureData:&value];
    }
    return mainChangeData;
}

//: #333333
+ (NSString *)dreamMessageText {
    /* static */ NSString *dreamMessageText = nil;
    if (!dreamMessageText) {
        StructPictureData value = (StructPictureData){109, (Byte []){78, 94, 94, 94, 94, 94, 94, 169}, 7, 103};
        dreamMessageText = [self StringFromPictureData:&value];
    }
    return dreamMessageText;
}

//: back_arrow_bl
+ (NSString *)dreamTextData {
    /* static */ NSString *dreamTextData = nil;
    if (!dreamTextData) {
        StructPictureData value = (StructPictureData){254, (Byte []){156, 159, 157, 149, 161, 159, 140, 140, 145, 137, 161, 156, 146, 225}, 13, 221};
        dreamTextData = [self StringFromPictureData:&value];
    }
    return dreamTextData;
}

//: #999999
+ (NSString *)noti_readTitle {
    /* static */ NSString *noti_readTitle = nil;
    if (!noti_readTitle) {
        StructPictureData value = (StructPictureData){88, (Byte []){123, 97, 97, 97, 97, 97, 97, 144}, 7, 127};
        noti_readTitle = [self StringFromPictureData:&value];
    }
    return noti_readTitle;
}

//: user_profile_avtivity_user_info_update_success
+ (NSString *)userSizeText {
    /* static */ NSString *userSizeText = nil;
    if (!userSizeText) {
        StructPictureData value = (StructPictureData){86, (Byte []){35, 37, 51, 36, 9, 38, 36, 57, 48, 63, 58, 51, 9, 55, 32, 34, 63, 32, 63, 34, 47, 9, 35, 37, 51, 36, 9, 63, 56, 48, 57, 9, 35, 38, 50, 55, 34, 51, 9, 37, 35, 53, 53, 51, 37, 37, 149}, 46, 12};
        userSizeText = [self StringFromPictureData:&value];
    }
    return userSizeText;
}

//: %lu/100
+ (NSString *)show_thanValue {
    /* static */ NSString *show_thanValue = nil;
    if (!show_thanValue) {
        StructPictureData value = (StructPictureData){244, (Byte []){209, 152, 129, 219, 197, 196, 196, 61}, 7, 223};
        show_thanValue = [self StringFromPictureData:&value];
    }
    return show_thanValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorNameViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSignSettingViewController.h"
#import "ColorNameViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface NTESSignSettingViewController ()<UITextViewDelegate>
@interface ColorNameViewController ()<UITextViewDelegate>

//: @property (nonatomic, strong) NSString *signStr;
@property (nonatomic, strong) NSString *signStr;
//: @property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UITextView *textView;
//: @property (nonatomic, strong) UILabel *numLabel;
@property (nonatomic, strong) UILabel *numLabel;

//: @end
@end

//: @implementation NTESSignSettingViewController
@implementation ColorNameViewController

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
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[PictureData notiSessionName]]];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[PictureData dreamTextData]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice heightShowStop]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_set_bio_title"];
    labtitle.text = [InputRed preserve:[PictureData main_changeValue]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice heightShowStop]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[PictureData mainParentName]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onDone:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(userPress:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: self.signStr = [[NIMSDK sharedSDK].userManager userInfo:userId].userInfo.sign ?: @"";
    self.signStr = [[NIMSDK sharedSDK].userManager userInfo:userId].userInfo.sign ?: @"";

    //: UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+16+15, [[UIScreen mainScreen] bounds].size.width-30, 150)];
    UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+16+15, [[UIScreen mainScreen] bounds].size.width-30, 150)];
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
    self.numLabel.text = [NSString stringWithFormat:[PictureData show_thanValue],self.signStr.length];
    //: self.numLabel.frame = CGRectMake(15, bgview.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.numLabel.frame = CGRectMake(15, bgview.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

}

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)onDone:(id)sender{
- (void)userPress:(id)sender{
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
            //: [vc.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [vc.view makeToast:[InputRed preserve:[PictureData userSizeText]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself.view makeToast:[InputRed preserve:[PictureData mainChangeData]]
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
    self.numLabel.text = [NSString stringWithFormat:[PictureData show_thanValue],genString.length+1];
    //: return YES;
    return YES;
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
    //: self.signStr = textView.text;
    self.signStr = textView.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",self.signStr.length];
    self.numLabel.text = [NSString stringWithFormat:[PictureData show_thanValue],self.signStr.length];
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
        _textView.textColor = [UIColor ground:[PictureData dreamMessageText]];
        //: _textView.placeholder = [FFFLanguageManager getTextWithKey:@"activity_set_bio_title"];
        _textView.placeholder = [InputRed preserve:[PictureData main_changeValue]];
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
        _numLabel.textColor = [UIColor ground:[PictureData noti_readTitle]];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end