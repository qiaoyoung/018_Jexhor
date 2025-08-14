
#import <Foundation/Foundation.h>

@interface MakeAccountData : NSObject

@end

@implementation MakeAccountData

+ (Byte *)MakeAccountDataToCache:(Byte *)data {
    int makeSize = data[0];
    Byte scaleItem = data[1];
    int characteristicRootOfASquareMatrix = data[2];
    for (int i = characteristicRootOfASquareMatrix; i < characteristicRootOfASquareMatrix + makeSize; i++) {
        int value = data[i] + scaleItem;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[characteristicRootOfASquareMatrix + makeSize] = 0;
    return data + characteristicRootOfASquareMatrix;
}

+ (NSString *)StringFromMakeAccountData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MakeAccountDataToCache:data]];
}

//: data
+ (NSString *)show_appearValue {
    /* static */ NSString *show_appearValue = nil;
    if (!show_appearValue) {
        Byte value[] = {4, 62, 7, 134, 134, 142, 244, 38, 35, 54, 35, 153};
        show_appearValue = [self StringFromMakeAccountData:value];
    }
    return show_appearValue;
}

//: contact_user_default_header
+ (NSString *)noti_videoData {
    /* static */ NSString *noti_videoData = nil;
    if (!noti_videoData) {
        Byte value[] = {27, 80, 4, 82, 19, 31, 30, 36, 17, 19, 36, 15, 37, 35, 21, 34, 15, 20, 21, 22, 17, 37, 28, 36, 15, 24, 21, 17, 20, 21, 34, 159};
        noti_videoData = [self StringFromMakeAccountData:value];
    }
    return noti_videoData;
}

//: account
+ (NSString *)showVideoData {
    /* static */ NSString *showVideoData = nil;
    if (!showVideoData) {
        Byte value[] = {7, 10, 7, 148, 115, 77, 37, 87, 89, 89, 101, 107, 100, 106, 124};
        showVideoData = [self StringFromMakeAccountData:value];
    }
    return showVideoData;
}

//: common_bg
+ (NSString *)dreamReadContent {
    /* static */ NSString *dreamReadContent = nil;
    if (!dreamReadContent) {
        Byte value[] = {9, 40, 4, 143, 59, 71, 69, 69, 71, 70, 55, 58, 63, 255};
        dreamReadContent = [self StringFromMakeAccountData:value];
    }
    return dreamReadContent;
}

//: code
+ (NSString *)app_parentValue {
    /* static */ NSString *app_parentValue = nil;
    if (!app_parentValue) {
        Byte value[] = {4, 98, 13, 192, 131, 236, 138, 1, 167, 27, 190, 189, 42, 1, 13, 2, 3, 85};
        app_parentValue = [self StringFromMakeAccountData:value];
    }
    return app_parentValue;
}

//: /user/detail
+ (NSString *)appTagName {
    /* static */ NSString *appTagName = nil;
    if (!appTagName) {
        Byte value[] = {12, 45, 7, 234, 132, 100, 193, 2, 72, 70, 56, 69, 2, 55, 56, 71, 52, 60, 63, 51};
        appTagName = [self StringFromMakeAccountData:value];
    }
    return appTagName;
}

//: contact_tag_fragment_add_success
+ (NSString *)notiDisableSendName {
    /* static */ NSString *notiDisableSendName = nil;
    if (!notiDisableSendName) {
        Byte value[] = {32, 34, 3, 65, 77, 76, 82, 63, 65, 82, 61, 82, 63, 69, 61, 68, 80, 63, 69, 75, 67, 76, 82, 61, 63, 66, 66, 61, 81, 83, 65, 65, 67, 81, 81, 37};
        notiDisableSendName = [self StringFromMakeAccountData:value];
    }
    return notiDisableSendName;
}

//: add_friend_add_fail
+ (NSString *)mainSessionData {
    /* static */ NSString *mainSessionData = nil;
    if (!mainSessionData) {
        Byte value[] = {19, 43, 11, 148, 119, 255, 8, 56, 168, 85, 130, 54, 57, 57, 52, 59, 71, 62, 58, 67, 57, 52, 54, 57, 57, 52, 59, 54, 62, 65, 90};
        mainSessionData = [self StringFromMakeAccountData:value];
    }
    return mainSessionData;
}

//: friend_info_activity_account
+ (NSString *)appTitleData {
    /* static */ NSString *appTitleData = nil;
    if (!appTitleData) {
        Byte value[] = {28, 99, 10, 211, 150, 219, 180, 244, 171, 62, 3, 15, 6, 2, 11, 1, 252, 6, 11, 3, 12, 252, 254, 0, 17, 6, 19, 6, 17, 22, 252, 254, 0, 0, 12, 18, 11, 17, 15};
        appTitleData = [self StringFromMakeAccountData:value];
    }
    return appTitleData;
}

//: add_friend_request_fail
+ (NSString *)m_limitValue {
    /* static */ NSString *m_limitValue = nil;
    if (!m_limitValue) {
        Byte value[] = {23, 41, 12, 231, 4, 113, 54, 241, 9, 235, 4, 159, 56, 59, 59, 54, 61, 73, 64, 60, 69, 59, 54, 73, 60, 72, 76, 60, 74, 75, 54, 61, 56, 64, 67, 73};
        m_limitValue = [self StringFromMakeAccountData:value];
    }
    return m_limitValue;
}

//: request_successful
+ (NSString *)showPressData {
    /* static */ NSString *showPressData = nil;
    if (!showPressData) {
        Byte value[] = {18, 42, 5, 36, 197, 72, 59, 71, 75, 59, 73, 74, 53, 73, 75, 57, 57, 59, 73, 73, 60, 75, 66, 248};
        showPressData = [self StringFromMakeAccountData:value];
    }
    return showPressData;
}

//: user_id
+ (NSString *)kDoingName {
    /* static */ NSString *kDoingName = nil;
    if (!kDoingName) {
        Byte value[] = {7, 70, 6, 181, 131, 240, 47, 45, 31, 44, 25, 35, 30, 191};
        kDoingName = [self StringFromMakeAccountData:value];
    }
    return kDoingName;
}

//: #05D481
+ (NSString *)m_oldThreadText {
    /* static */ NSString *m_oldThreadText = nil;
    if (!m_oldThreadText) {
        Byte value[] = {7, 59, 10, 224, 36, 15, 86, 118, 41, 7, 232, 245, 250, 9, 249, 253, 246, 19};
        m_oldThreadText = [self StringFromMakeAccountData:value];
    }
    return m_oldThreadText;
}

//: back_arrow_bl
+ (NSString *)main_onValue {
    /* static */ NSString *main_onValue = nil;
    if (!main_onValue) {
        Byte value[] = {13, 42, 10, 43, 170, 219, 117, 113, 123, 50, 56, 55, 57, 65, 53, 55, 72, 72, 69, 77, 53, 56, 66, 236};
        main_onValue = [self StringFromMakeAccountData:value];
    }
    return main_onValue;
}

//: add_friend_activity_add_friend
+ (NSString *)noti_makeContent {
    /* static */ NSString *noti_makeContent = nil;
    if (!noti_makeContent) {
        Byte value[] = {30, 77, 11, 1, 213, 43, 231, 136, 221, 17, 197, 20, 23, 23, 18, 25, 37, 28, 24, 33, 23, 18, 20, 22, 39, 28, 41, 28, 39, 44, 18, 20, 23, 23, 18, 25, 37, 28, 24, 33, 23, 65};
        noti_makeContent = [self StringFromMakeAccountData:value];
    }
    return noti_makeContent;
}

//: #999999
+ (NSString *)appHandleData {
    /* static */ NSString *appHandleData = nil;
    if (!appHandleData) {
        Byte value[] = {7, 75, 8, 106, 118, 174, 8, 60, 216, 238, 238, 238, 238, 238, 238, 58};
        appHandleData = [self StringFromMakeAccountData:value];
    }
    return appHandleData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsertViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "InsertViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "RecentViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+BottomMagnitude.h"
//: #import "NTESUserUtil.h"
#import "CellVideo.h"
//: #import "HMDataPicker.h"
#import "RawDataView.h"
//: #import "NTESOpinionBackViewController.h"
#import "ShankViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface InsertViewController ()<NIMUserManagerDelegate>


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
@implementation InsertViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithImage:(NSString *)userId{
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
- (void)shouldUser{
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
    bg.image = [UIImage imageNamed:[MakeAccountData dreamReadContent]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[MakeAccountData main_onValue]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice heightShowStop], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice heightShowStop])+30, 120, 120)];
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
    self.account.textColor = [UIColor ground:[MakeAccountData appHandleData]];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(standardPath) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[WorkLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[InputRed preserve:[MakeAccountData noti_makeContent]] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    addBtn.backgroundColor = [UIColor ground:[MakeAccountData m_oldThreadText]];
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
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[MakeAccountData noti_videoData]]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[MakeAccountData kDoingName]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[MakeAccountData appTagName]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[MakeAccountData app_parentValue]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[MakeAccountData show_appearValue]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data route:[MakeAccountData showVideoData]];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[WorkLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[InputRed preserve:[MakeAccountData appTitleData]], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)standardPath{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [SessionRecord afterUser].tempVerificationInfo;
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

    //: NSString *contact_tag_fragment_add_success = [WorkLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [InputRed preserve:[MakeAccountData notiDisableSendName]];//@"添加成功".ntes_localized
    //: NSString *request_successful = [WorkLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [InputRed preserve:[MakeAccountData showPressData]];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [WorkLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [InputRed preserve:[MakeAccountData mainSessionData]];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [WorkLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [InputRed preserve:[MakeAccountData m_limitValue]];//@"请求失败".ntes_localized
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
