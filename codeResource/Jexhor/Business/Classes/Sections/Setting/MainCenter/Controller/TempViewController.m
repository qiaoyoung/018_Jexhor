
#import <Foundation/Foundation.h>

NSString *StringFromPhotographyData(Byte *data);


//: #05D481
Byte main_sodMaxName[] = {88, 7, 44, 11, 158, 92, 64, 51, 17, 100, 128, 79, 92, 97, 112, 96, 100, 93, 222};

//: login_bg
Byte noti_randomName[] = {49, 8, 73, 10, 241, 72, 164, 155, 135, 100, 181, 184, 176, 178, 183, 168, 171, 176, 144};

//: activity_modify_new
Byte dream_versionFormat[] = {21, 19, 6, 11, 79, 90, 136, 239, 123, 94, 134, 103, 105, 122, 111, 124, 111, 122, 127, 101, 115, 117, 106, 111, 108, 127, 101, 116, 107, 125, 53};

//: newpass
Byte m_disappointedSlatFormat[] = {53, 7, 83, 7, 76, 121, 205, 193, 184, 202, 195, 180, 198, 198, 7};

//: renewpass
Byte noti_allyExplosionFormat[] = {20, 9, 79, 12, 51, 96, 119, 30, 61, 110, 115, 14, 193, 180, 189, 180, 198, 191, 176, 194, 194, 248};

//: activity_safe_setting_modify
Byte notiWithPath[] = {14, 28, 21, 8, 194, 249, 120, 179, 118, 120, 137, 126, 139, 126, 137, 142, 116, 136, 118, 123, 122, 116, 136, 122, 137, 137, 126, 131, 124, 116, 130, 132, 121, 126, 123, 142, 127};

//: back_arrow_bl
Byte app_imageText[] = {87, 13, 83, 9, 66, 38, 255, 123, 7, 181, 180, 182, 190, 178, 180, 197, 197, 194, 202, 178, 181, 191, 162};

//: activity_modify_old
Byte main_deadHeroIdent[] = {96, 19, 52, 14, 113, 64, 170, 176, 117, 128, 202, 208, 53, 59, 149, 151, 168, 157, 170, 157, 168, 173, 147, 161, 163, 152, 157, 154, 173, 147, 163, 160, 152, 2};

//: msg
Byte kSlatValue[] = {77, 3, 15, 13, 237, 251, 41, 150, 42, 159, 161, 89, 172, 124, 130, 118, 136};

//: #333333
Byte mTermsId[] = {51, 7, 53, 8, 47, 94, 154, 219, 88, 104, 104, 104, 104, 104, 104, 254};

//: sure_edit
Byte mDistinctionKey[] = {33, 9, 12, 5, 139, 127, 129, 126, 113, 107, 113, 112, 117, 128, 124};

//: account
Byte mainCompleteMessage[] = {49, 7, 25, 5, 115, 122, 124, 124, 136, 142, 135, 141, 152};

//: /user/modifyPass
Byte mAspectMessage[] = {64, 16, 70, 11, 195, 38, 13, 153, 70, 45, 196, 117, 187, 185, 171, 184, 117, 179, 181, 170, 175, 172, 191, 150, 167, 185, 185, 86};

//: safe_bind_phone_icon
Byte mRageValue[] = {92, 20, 76, 14, 169, 112, 120, 184, 187, 190, 199, 179, 220, 84, 191, 173, 178, 177, 171, 174, 181, 186, 176, 171, 188, 180, 187, 186, 177, 171, 181, 175, 187, 186, 92};

//: oldpass
Byte mTheaterGenerateMessage[] = {38, 7, 32, 8, 85, 2, 121, 25, 143, 140, 132, 144, 129, 147, 147, 248};

//: type
Byte k_equalKey[] = {77, 4, 32, 10, 30, 4, 58, 134, 245, 64, 148, 153, 144, 133, 106};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TempViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordController.h"
#import "TempViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "TeamViewCell.h"

//: @interface NTESChangePasswordController ()<UITextFieldDelegate>
@interface TempViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation NTESChangePasswordController
@implementation TempViewController

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
- (void)atSelected{
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
    bg.image = [UIImage imageNamed:StringFromPhotographyData(noti_randomName)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromPhotographyData(app_imageText)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [BackgroundRandomAttribute content:StringFromPhotographyData(notiWithPath)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    view1.layer.borderWidth = 0.5;
//    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 25;
    view1.layer.cornerRadius = 25;
//    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    view1.layer.shadowOffset = CGSizeMake(0,3);
//    view1.layer.shadowOpacity = 1;
//    view1.layer.shadowRadius = 0;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];


    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname.image = [UIImage imageNamed:StringFromPhotographyData(mRageValue)];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor user:StringFromPhotographyData(mTermsId)];
    //: self.textfile_1.placeholder = [PushLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [BackgroundRandomAttribute content:StringFromPhotographyData(main_deadHeroIdent)];
    //: self.textfile_1.delegate = self;
    self.textfile_1.delegate = self;
    //: self.textfile_1.secureTextEntry = YES;
    self.textfile_1.secureTextEntry = YES;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view2.layer.cornerRadius = 25;
    view2.layer.cornerRadius = 25;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:StringFromPhotographyData(mRageValue)];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor user:StringFromPhotographyData(mTermsId)];
    //: self.textfile_2.placeholder = [PushLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [BackgroundRandomAttribute content:StringFromPhotographyData(dream_versionFormat)];
    //: self.textfile_2.delegate = self;
    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

//    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, SCREEN_WIDTH-60, 20)];
//    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
//    labphone3.textColor = TextColor_4;
//    labphone3.textAlignment = NSTextAlignmentLeft;
//    labphone3.text = LangKey(@"psw_again");
//    [self.view addSubview:labphone3];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view3.layer.cornerRadius = 25;
    view3.layer.cornerRadius = 25;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:StringFromPhotographyData(mRageValue)];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor user:StringFromPhotographyData(mTermsId)];
    //: self.textfile_3.placeholder = [PushLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [BackgroundRandomAttribute content:StringFromPhotographyData(dream_versionFormat)];
    //: self.textfile_3.delegate = self;
    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[PushLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[BackgroundRandomAttribute content:StringFromPhotographyData(mDistinctionKey)] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(clickText) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    emptyButton.backgroundColor = [UIColor user:StringFromPhotographyData(main_sodMaxName)];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: -(void)commitButtonClick{
-(void)clickText{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:StringFromPhotographyData(mainCompleteMessage)];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:StringFromPhotographyData(k_equalKey)];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:StringFromPhotographyData(mTheaterGenerateMessage)];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:StringFromPhotographyData(m_disappointedSlatFormat)];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:StringFromPhotographyData(noti_allyExplosionFormat)];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:StringFromPhotographyData(mAspectMessage)] view:dict fort:YES generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict index:StringFromPhotographyData(kSlatValue)];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end

Byte * PhotographyDataToCache(Byte *data) {
    int consignee = data[0];
    int demonstrate = data[1];
    Byte far = data[2];
    int wondrous = data[3];
    if (!consignee) return data + wondrous;
    for (int i = wondrous; i < wondrous + demonstrate; i++) {
        int value = data[i] - far;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[wondrous + demonstrate] = 0;
    return data + wondrous;
}

NSString *StringFromPhotographyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PhotographyDataToCache(data)];
}
