
#import <Foundation/Foundation.h>

@interface SessionViewData : NSObject

@end

@implementation SessionViewData

+ (Byte *)SessionViewDataToCache:(Byte *)data {
    int colorRead = data[0];
    Byte enucleate = data[1];
    int along = data[2];
    for (int i = along; i < along + colorRead; i++) {
        int value = data[i] + enucleate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[along + colorRead] = 0;
    return data + along;
}

+ (NSString *)StringFromSessionViewData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SessionViewDataToCache:data]];
}

//: newpass
+ (NSString *)noti_messageThreadData {
    /* static */ NSString *noti_messageThreadData = nil;
    if (!noti_messageThreadData) {
        Byte value[] = {7, 19, 7, 170, 69, 23, 77, 91, 82, 100, 93, 78, 96, 96, 22};
        noti_messageThreadData = [self StringFromSessionViewData:value];
    }
    return noti_messageThreadData;
}

//: account
+ (NSString *)mTitleText {
    /* static */ NSString *mTitleText = nil;
    if (!mTitleText) {
        Byte value[] = {7, 98, 7, 142, 151, 168, 180, 255, 1, 1, 13, 19, 12, 18, 181};
        mTitleText = [self StringFromSessionViewData:value];
    }
    return mTitleText;
}

//: msg
+ (NSString *)showRowName {
    /* static */ NSString *showRowName = nil;
    if (!showRowName) {
        Byte value[] = {3, 39, 12, 223, 109, 109, 36, 215, 139, 89, 41, 67, 70, 76, 64, 44};
        showRowName = [self StringFromSessionViewData:value];
    }
    return showRowName;
}

//: renewpass
+ (NSString *)noti_oldRemoveData {
    /* static */ NSString *noti_oldRemoveData = nil;
    if (!noti_oldRemoveData) {
        Byte value[] = {9, 42, 10, 98, 51, 112, 113, 159, 45, 66, 72, 59, 68, 59, 77, 70, 55, 73, 73, 208};
        noti_oldRemoveData = [self StringFromSessionViewData:value];
    }
    return noti_oldRemoveData;
}

//: safe_bind_phone_icon
+ (NSString *)showColorTitle {
    /* static */ NSString *showColorTitle = nil;
    if (!showColorTitle) {
        Byte value[] = {20, 6, 5, 231, 115, 109, 91, 96, 95, 89, 92, 99, 104, 94, 89, 106, 98, 105, 104, 95, 89, 99, 93, 105, 104, 86};
        showColorTitle = [self StringFromSessionViewData:value];
    }
    return showColorTitle;
}

//: oldpass
+ (NSString *)main_hideName {
    /* static */ NSString *main_hideName = nil;
    if (!main_hideName) {
        Byte value[] = {7, 68, 8, 174, 29, 32, 191, 105, 43, 40, 32, 44, 29, 47, 47, 73};
        main_hideName = [self StringFromSessionViewData:value];
    }
    return main_hideName;
}

//: activity_modify_new
+ (NSString *)dreamAddData {
    /* static */ NSString *dreamAddData = nil;
    if (!dreamAddData) {
        Byte value[] = {19, 43, 11, 212, 179, 23, 31, 45, 40, 100, 92, 54, 56, 73, 62, 75, 62, 73, 78, 52, 66, 68, 57, 62, 59, 78, 52, 67, 58, 76, 224};
        dreamAddData = [self StringFromSessionViewData:value];
    }
    return dreamAddData;
}

//: back_arrow_bl
+ (NSString *)main_valueTitle {
    /* static */ NSString *main_valueTitle = nil;
    if (!main_valueTitle) {
        Byte value[] = {13, 15, 10, 90, 194, 212, 101, 166, 82, 16, 83, 82, 84, 92, 80, 82, 99, 99, 96, 104, 80, 83, 93, 93};
        main_valueTitle = [self StringFromSessionViewData:value];
    }
    return main_valueTitle;
}

//: #333333
+ (NSString *)user_sizeValue {
    /* static */ NSString *user_sizeValue = nil;
    if (!user_sizeValue) {
        Byte value[] = {7, 90, 10, 80, 72, 73, 213, 99, 220, 105, 201, 217, 217, 217, 217, 217, 217, 66};
        user_sizeValue = [self StringFromSessionViewData:value];
    }
    return user_sizeValue;
}

//: sure_edit
+ (NSString *)mainColorText {
    /* static */ NSString *mainColorText = nil;
    if (!mainColorText) {
        Byte value[] = {9, 2, 6, 179, 228, 99, 113, 115, 112, 99, 93, 99, 98, 103, 114, 145};
        mainColorText = [self StringFromSessionViewData:value];
    }
    return mainColorText;
}

//: /user/modifyPass
+ (NSString *)noti_showSessionValue {
    /* static */ NSString *noti_showSessionValue = nil;
    if (!noti_showSessionValue) {
        Byte value[] = {16, 54, 6, 223, 162, 76, 249, 63, 61, 47, 60, 249, 55, 57, 46, 51, 48, 67, 26, 43, 61, 61, 7};
        noti_showSessionValue = [self StringFromSessionViewData:value];
    }
    return noti_showSessionValue;
}

//: activity_safe_setting_modify
+ (NSString *)showSendData {
    /* static */ NSString *showSendData = nil;
    if (!showSendData) {
        Byte value[] = {28, 2, 8, 125, 29, 83, 35, 151, 95, 97, 114, 103, 116, 103, 114, 119, 93, 113, 95, 100, 99, 93, 113, 99, 114, 114, 103, 108, 101, 93, 107, 109, 98, 103, 100, 119, 88};
        showSendData = [self StringFromSessionViewData:value];
    }
    return showSendData;
}

//: #05D481
+ (NSString *)m_placeContent {
    /* static */ NSString *m_placeContent = nil;
    if (!m_placeContent) {
        Byte value[] = {7, 99, 13, 251, 117, 19, 153, 20, 60, 161, 244, 209, 18, 192, 205, 210, 225, 209, 213, 206, 27};
        m_placeContent = [self StringFromSessionViewData:value];
    }
    return m_placeContent;
}

//: activity_modify_old
+ (NSString *)app_limitData {
    /* static */ NSString *app_limitData = nil;
    if (!app_limitData) {
        Byte value[] = {19, 56, 10, 19, 136, 142, 140, 33, 41, 244, 41, 43, 60, 49, 62, 49, 60, 65, 39, 53, 55, 44, 49, 46, 65, 39, 55, 52, 44, 79};
        app_limitData = [self StringFromSessionViewData:value];
    }
    return app_limitData;
}

//: login_bg
+ (NSString *)m_colorData {
    /* static */ NSString *m_colorData = nil;
    if (!m_colorData) {
        Byte value[] = {8, 78, 12, 93, 103, 25, 158, 131, 222, 124, 72, 20, 30, 33, 25, 27, 32, 17, 20, 25, 207};
        m_colorData = [self StringFromSessionViewData:value];
    }
    return m_colorData;
}

//: type
+ (NSString *)m_addReadNameValue {
    /* static */ NSString *m_addReadNameValue = nil;
    if (!m_addReadNameValue) {
        Byte value[] = {4, 52, 4, 28, 64, 69, 60, 49, 163};
        m_addReadNameValue = [self StringFromSessionViewData:value];
    }
    return m_addReadNameValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  LineViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordController.h"
#import "LineViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "TingViewCell.h"

//: @interface NTESChangePasswordController ()<UITextFieldDelegate>
@interface LineViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation NTESChangePasswordController
@implementation LineViewController

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
    bg.image = [UIImage imageNamed:[SessionViewData m_colorData]];
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
    [backButton setImage:[UIImage imageNamed:[SessionViewData main_valueTitle]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [InputRed preserve:[SessionViewData showSendData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
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
    imgname.image = [UIImage imageNamed:[SessionViewData showColorTitle]];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor ground:[SessionViewData user_sizeValue]];
    //: self.textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [InputRed preserve:[SessionViewData app_limitData]];
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
    imgname2.image = [UIImage imageNamed:[SessionViewData showColorTitle]];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor ground:[SessionViewData user_sizeValue]];
    //: self.textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [InputRed preserve:[SessionViewData dreamAddData]];
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
    imgname3.image = [UIImage imageNamed:[SessionViewData showColorTitle]];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor ground:[SessionViewData user_sizeValue]];
    //: self.textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [InputRed preserve:[SessionViewData dreamAddData]];
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
    //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[InputRed preserve:[SessionViewData mainColorText]] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(sessionTitle) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    emptyButton.backgroundColor = [UIColor ground:[SessionViewData m_placeContent]];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: -(void)commitButtonClick{
-(void)sessionTitle{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:[SessionViewData mTitleText]];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[SessionViewData m_addReadNameValue]];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[SessionViewData main_hideName]];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[SessionViewData noti_messageThreadData]];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[SessionViewData noti_oldRemoveData]];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[SessionViewData noti_showSessionValue]] queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict route:[SessionViewData showRowName]];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end