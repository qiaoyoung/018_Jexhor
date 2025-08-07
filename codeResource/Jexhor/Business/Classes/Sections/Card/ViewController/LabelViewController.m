
#import <Foundation/Foundation.h>

typedef struct {
    Byte dead;
    Byte *downCold;
    unsigned int nameSlat;
} StructMotData;

@interface MotData : NSObject

@end

@implementation MotData

+ (Byte *)MotDataToByte:(StructMotData *)data {
    for (int i = 0; i < data->nameSlat; i++) {
        data->downCold[i] ^= data->dead;
    }
    data->downCold[data->nameSlat] = 0;
    return data->downCold;
}

+ (NSString *)StringFromMotData:(StructMotData *)data {
    return [NSString stringWithUTF8String:(char *)[self MotDataToByte:data]];
}

//: common_bg
+ (NSString *)app_upIdent {
    /* static */ NSString *app_upIdent = nil;
    if (!app_upIdent) {
        StructMotData value = (StructMotData){234, (Byte []){137, 133, 135, 135, 133, 132, 181, 136, 141, 19}, 9};
        app_upIdent = [self StringFromMotData:&value];
    }
    return app_upIdent;
}

//: back_arrow_bl
+ (NSString *)app_atKey {
    /* static */ NSString *app_atKey = nil;
    if (!app_atKey) {
        StructMotData value = (StructMotData){137, (Byte []){235, 232, 234, 226, 214, 232, 251, 251, 230, 254, 214, 235, 229, 243}, 13};
        app_atKey = [self StringFromMotData:&value];
    }
    return app_atKey;
}

//: friend_info_activity_account
+ (NSString *)noti_buildMsg {
    /* static */ NSString *noti_buildMsg = nil;
    if (!noti_buildMsg) {
        StructMotData value = (StructMotData){231, (Byte []){129, 149, 142, 130, 137, 131, 184, 142, 137, 129, 136, 184, 134, 132, 147, 142, 145, 142, 147, 158, 184, 134, 132, 132, 136, 146, 137, 147, 131}, 28};
        noti_buildMsg = [self StringFromMotData:&value];
    }
    return noti_buildMsg;
}

//: account
+ (NSString *)userViewKey {
    /* static */ NSString *userViewKey = nil;
    if (!userViewKey) {
        StructMotData value = (StructMotData){226, (Byte []){131, 129, 129, 141, 151, 140, 150, 201}, 7};
        userViewKey = [self StringFromMotData:&value];
    }
    return userViewKey;
}

//: #05D481
+ (NSString *)user_centerName {
    /* static */ NSString *user_centerName = nil;
    if (!user_centerName) {
        StructMotData value = (StructMotData){95, (Byte []){124, 111, 106, 27, 107, 103, 110, 219}, 7};
        user_centerName = [self StringFromMotData:&value];
    }
    return user_centerName;
}

//: #999999
+ (NSString *)notiButtonRoughData {
    /* static */ NSString *notiButtonRoughData = nil;
    if (!notiButtonRoughData) {
        StructMotData value = (StructMotData){116, (Byte []){87, 77, 77, 77, 77, 77, 77, 138}, 7};
        notiButtonRoughData = [self StringFromMotData:&value];
    }
    return notiButtonRoughData;
}

//: code
+ (NSString *)noti_venueIconFormat {
    /* static */ NSString *noti_venueIconFormat = nil;
    if (!noti_venueIconFormat) {
        StructMotData value = (StructMotData){119, (Byte []){20, 24, 19, 18, 42}, 4};
        noti_venueIconFormat = [self StringFromMotData:&value];
    }
    return noti_venueIconFormat;
}

//: add_friend_add_fail
+ (NSString *)noti_infoMsg {
    /* static */ NSString *noti_infoMsg = nil;
    if (!noti_infoMsg) {
        StructMotData value = (StructMotData){209, (Byte []){176, 181, 181, 142, 183, 163, 184, 180, 191, 181, 142, 176, 181, 181, 142, 183, 176, 184, 189, 10}, 19};
        noti_infoMsg = [self StringFromMotData:&value];
    }
    return noti_infoMsg;
}

//: request_successful
+ (NSString *)user_chiefDistractName {
    /* static */ NSString *user_chiefDistractName = nil;
    if (!user_chiefDistractName) {
        StructMotData value = (StructMotData){224, (Byte []){146, 133, 145, 149, 133, 147, 148, 191, 147, 149, 131, 131, 133, 147, 147, 134, 149, 140, 180}, 18};
        user_chiefDistractName = [self StringFromMotData:&value];
    }
    return user_chiefDistractName;
}

//: add_friend_activity_add_friend
+ (NSString *)userJumpTheaterText {
    /* static */ NSString *userJumpTheaterText = nil;
    if (!userJumpTheaterText) {
        StructMotData value = (StructMotData){155, (Byte []){250, 255, 255, 196, 253, 233, 242, 254, 245, 255, 196, 250, 248, 239, 242, 237, 242, 239, 226, 196, 250, 255, 255, 196, 253, 233, 242, 254, 245, 255, 138}, 30};
        userJumpTheaterText = [self StringFromMotData:&value];
    }
    return userJumpTheaterText;
}

//: data
+ (NSString *)kMessageText {
    /* static */ NSString *kMessageText = nil;
    if (!kMessageText) {
        StructMotData value = (StructMotData){37, (Byte []){65, 68, 81, 68, 58}, 4};
        kMessageText = [self StringFromMotData:&value];
    }
    return kMessageText;
}

//: contact_tag_fragment_add_success
+ (NSString *)m_custodyVoiceMsg {
    /* static */ NSString *m_custodyVoiceMsg = nil;
    if (!m_custodyVoiceMsg) {
        StructMotData value = (StructMotData){93, (Byte []){62, 50, 51, 41, 60, 62, 41, 2, 41, 60, 58, 2, 59, 47, 60, 58, 48, 56, 51, 41, 2, 60, 57, 57, 2, 46, 40, 62, 62, 56, 46, 46, 67}, 32};
        m_custodyVoiceMsg = [self StringFromMotData:&value];
    }
    return m_custodyVoiceMsg;
}

//: user_id
+ (NSString *)dreamNameText {
    /* static */ NSString *dreamNameText = nil;
    if (!dreamNameText) {
        StructMotData value = (StructMotData){158, (Byte []){235, 237, 251, 236, 193, 247, 250, 253}, 7};
        dreamNameText = [self StringFromMotData:&value];
    }
    return dreamNameText;
}

//: contact_user_default_header
+ (NSString *)appVoiceItValue {
    /* static */ NSString *appVoiceItValue = nil;
    if (!appVoiceItValue) {
        StructMotData value = (StructMotData){144, (Byte []){243, 255, 254, 228, 241, 243, 228, 207, 229, 227, 245, 226, 207, 244, 245, 246, 241, 229, 252, 228, 207, 248, 245, 241, 244, 245, 226, 61}, 27};
        appVoiceItValue = [self StringFromMotData:&value];
    }
    return appVoiceItValue;
}

//: add_friend_request_fail
+ (NSString *)mainContainerPath {
    /* static */ NSString *mainContainerPath = nil;
    if (!mainContainerPath) {
        StructMotData value = (StructMotData){95, (Byte []){62, 59, 59, 0, 57, 45, 54, 58, 49, 59, 0, 45, 58, 46, 42, 58, 44, 43, 0, 57, 62, 54, 51, 69}, 23};
        mainContainerPath = [self StringFromMotData:&value];
    }
    return mainContainerPath;
}

//: /user/detail
+ (NSString *)dream_textUrl {
    /* static */ NSString *dream_textUrl = nil;
    if (!dream_textUrl) {
        StructMotData value = (StructMotData){241, (Byte []){222, 132, 130, 148, 131, 222, 149, 148, 133, 144, 152, 157, 169}, 12};
        dream_textUrl = [self StringFromMotData:&value];
    }
    return dream_textUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "LabelViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "CompartmentViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESSessionViewController.h"
#import "BlockViewController.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "NTESUserUtil.h"
#import "BackgroundUtil.h"
//: #import "HMDataPicker.h"
#import "DeviceView.h"
//: #import "NTESOpinionBackViewController.h"
#import "MaxViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface LabelViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,copy ) NSString *userId;
@property (nonatomic,copy ) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;

//: @end
@end

//: @implementation ZMONFriendCardViewController
@implementation LabelViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithColor:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

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

//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)dealloc{
- (void)dealloc{

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[MotData app_upIdent]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[MotData app_atKey]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice title], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice title])+30, 120, 120)];
    //: self.accountheadImg.layer.cornerRadius = 60;
    self.accountheadImg.layer.cornerRadius = 60;
    //: self.accountheadImg.layer.masksToBounds = YES;
    self.accountheadImg.layer.masksToBounds = YES;
    //: [self.view addSubview:self.accountheadImg];
    [self.view addSubview:self.accountheadImg];

    //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    //: self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    //: self.accountNickname.textColor = [UIColor blackColor];
    self.accountNickname.textColor = [UIColor blackColor];
    //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
    self.accountNickname.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountNickname];
    [self.view addSubview:self.accountNickname];

    //: self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    //: self.account.font = [UIFont systemFontOfSize:12];
    self.account.font = [UIFont systemFontOfSize:12];
    //: self.account.textColor = [UIColor colorWithHexString:@"#999999"];
    self.account.textColor = [UIColor user:[MotData notiButtonRoughData]];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(sendCell) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[BackgroundRandomAttribute content:[MotData userJumpTheaterText]] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    addBtn.backgroundColor = [UIColor user:[MotData user_centerName]];
    //: addBtn.layer.cornerRadius = 22;
    addBtn.layer.cornerRadius = 22;
    //: [self.view addSubview:addBtn];
    [self.view addSubview:addBtn];


    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            //: if (users.count) {
            if (users.count) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: self.user = users.firstObject;
                self.user = users.firstObject;

                //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"contact_user_default_header"]];
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[MotData appVoiceItValue]]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[MotData dreamNameText]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[MotData dream_textUrl]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[MotData noti_venueIconFormat]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[MotData kMessageText]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data index:[MotData userViewKey]];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[BackgroundRandomAttribute content:[MotData noti_buildMsg]], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)sendCell{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [CrossShouldBlock towardScaleOfMeasurement].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [BackgroundRandomAttribute content:[MotData m_custodyVoiceMsg]];//@"添加成功".ntes_localized
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [BackgroundRandomAttribute content:[MotData user_chiefDistractName]];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [BackgroundRandomAttribute content:[MotData noti_infoMsg]];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [BackgroundRandomAttribute content:[MotData mainContainerPath]];//@"请求失败".ntes_localized
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];

        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: @end
@end