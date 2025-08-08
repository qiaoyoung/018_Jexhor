
#import <Foundation/Foundation.h>

NSString *StringFromSuccessData(Byte *data);


//: safe_setting_activity_title
Byte userSessionTitle[] = {61, 27, 15, 14, 130, 138, 57, 202, 50, 199, 85, 229, 209, 150, 130, 112, 117, 116, 110, 130, 116, 131, 131, 120, 125, 118, 110, 112, 114, 131, 120, 133, 120, 131, 136, 110, 131, 120, 131, 123, 116, 139};

//: AccountDeletion_ja.html
Byte k_tagText[] = {12, 23, 90, 12, 25, 243, 188, 37, 223, 252, 165, 33, 155, 189, 189, 201, 207, 200, 206, 158, 191, 198, 191, 206, 195, 201, 200, 185, 196, 187, 136, 194, 206, 199, 198, 149};

//: safe_accountdelete
Byte noti_commentTitle[] = {66, 18, 58, 4, 173, 155, 160, 159, 153, 155, 157, 157, 169, 175, 168, 174, 158, 159, 166, 159, 174, 159, 107};

//: deactivate_account
Byte dreamScaleShowCanData[] = {22, 18, 3, 10, 235, 109, 195, 77, 88, 168, 103, 104, 100, 102, 119, 108, 121, 100, 119, 104, 98, 100, 102, 102, 114, 120, 113, 119, 153};

//: NotificationLogout
Byte m_changeName[] = {62, 18, 5, 11, 21, 34, 20, 112, 44, 72, 207, 83, 116, 121, 110, 107, 110, 104, 102, 121, 110, 116, 115, 81, 116, 108, 116, 122, 121, 19};

//: safe_blacklist
Byte userTextValue[] = {48, 14, 50, 5, 29, 165, 147, 152, 151, 145, 148, 158, 147, 149, 157, 158, 155, 165, 166, 248};

//: safe_changepsd
Byte kSessionName[] = {96, 14, 12, 10, 115, 85, 21, 195, 233, 44, 127, 109, 114, 113, 107, 111, 116, 109, 122, 115, 113, 124, 127, 112, 189};

//: activity_comment_setting_cancel_account
Byte kNeedValue[] = {29, 39, 51, 11, 64, 117, 147, 35, 10, 214, 244, 148, 150, 167, 156, 169, 156, 167, 172, 146, 150, 162, 160, 160, 152, 161, 167, 146, 166, 152, 167, 167, 156, 161, 154, 146, 150, 148, 161, 150, 152, 159, 146, 148, 150, 150, 162, 168, 161, 167, 183};

//: AccountDeletion_en.html
Byte userBubbleValue[] = {36, 23, 54, 11, 197, 67, 148, 188, 88, 21, 217, 119, 153, 153, 165, 171, 164, 170, 122, 155, 162, 155, 170, 159, 165, 164, 149, 155, 164, 100, 158, 170, 163, 162, 248};

//: AccountDeletion_ko.html
Byte app_addWithName[] = {3, 23, 6, 12, 212, 116, 171, 17, 25, 130, 80, 12, 71, 105, 105, 117, 123, 116, 122, 74, 107, 114, 107, 122, 111, 117, 116, 101, 113, 117, 52, 110, 122, 115, 114, 222};

//: back_arrow_bl
Byte noti_accountMessageData[] = {51, 13, 36, 6, 205, 137, 134, 133, 135, 143, 131, 133, 150, 150, 147, 155, 131, 134, 144, 80};

//: PrivacyPolicy.html
Byte k_handleContent[] = {8, 18, 56, 8, 137, 143, 253, 184, 136, 170, 161, 174, 153, 155, 177, 136, 167, 164, 161, 155, 177, 102, 160, 172, 165, 164, 189};

//: hant
Byte appScaleText[] = {15, 4, 13, 4, 117, 110, 123, 129, 135};

//: modify_activity_title
Byte main_byName[] = {51, 21, 77, 8, 91, 32, 245, 186, 186, 188, 177, 182, 179, 198, 172, 174, 176, 193, 182, 195, 182, 193, 198, 172, 193, 182, 193, 185, 178, 135};

//: AccountDeletion_hant.html
Byte mainSizeData[] = {35, 25, 9, 5, 172, 74, 108, 108, 120, 126, 119, 125, 77, 110, 117, 110, 125, 114, 120, 119, 104, 113, 106, 119, 125, 55, 113, 125, 118, 117, 109};

//: black_list_activity_black
Byte userHandleButtonName[] = {82, 25, 94, 10, 129, 133, 154, 185, 67, 2, 192, 202, 191, 193, 201, 189, 202, 199, 209, 210, 189, 191, 193, 210, 199, 212, 199, 210, 215, 189, 192, 202, 191, 193, 201, 68};

//: #F6F7FA
Byte mainOnButtonName[] = {87, 7, 80, 8, 72, 228, 11, 108, 115, 150, 134, 150, 135, 150, 145, 178};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemCircleViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingController.h"
#import "ItemCircleViewController.h"
//: #import "NTESSafetySetingCell.h"
#import "PhoneMessageView.h"
//: #import "NTESChangePasswordController.h"
#import "LineViewController.h"
//: #import "NTESSafetyTableViewCell.h"
#import "CorrelationTableView.h"
//: #import "LEEAlert.h"
#import "SendAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "ColorViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "AccountView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "AmmunitionView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "PolicyView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "CreateView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "SendView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "AccountSameSendViewController.h"
//: #import "DeleteAccountTipView.h"
#import "FrameView.h"
//: #import "SSZipArchiveManager.h"
#import "ButtonManager.h"

//: @interface NTESSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,NTESDeactivateAccountDelegate,NTESDeleteAccountDelegate,NTESDeleteAccountTIPDelegate>
@interface ItemCircleViewController ()<UITableViewDataSource,UITableViewDelegate,BottomVideo,DisplayDropDelegate,LabTipdelegate>

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) AccountView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) AmmunitionView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) PolicyView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) CreateView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) SendView *deactivateSuccessView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) FrameView *deactivateTipView;



//: @end
@end

//: @implementation NTESSafetySetingController
@implementation ItemCircleViewController

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
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor ground:StringFromSuccessData(mainOnButtonName)];
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
    [backButton setImage:[UIImage imageNamed:StringFromSuccessData(noti_accountMessageData)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [InputRed preserve:StringFromSuccessData(userSessionTitle)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initOf];
}

//: - (void)initTableView{
- (void)initOf{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice heightShowStop])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;


}



//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return 3;
    return 3;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 16.f;
    return 16.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSafetyTableViewCell *cell = [NTESSafetyTableViewCell cellWithTableView:tableView];
    CorrelationTableView *cell = [CorrelationTableView session:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromSuccessData(userTextValue)];
        //: cell.titleLabel.text = [WorkLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [InputRed preserve:StringFromSuccessData(userHandleButtonName)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromSuccessData(kSessionName)];
        //: cell.titleLabel.text = [WorkLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [InputRed preserve:StringFromSuccessData(main_byName)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 2){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_accountDeactivate"];
//        cell.titleLabel.text = LangKey(@"deactivate_account");
//        cell.labSubtitle.hidden = YES;
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_accountdelete"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromSuccessData(noti_commentTitle)];
        //: cell.titleLabel.text = [WorkLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [InputRed preserve:StringFromSuccessData(kNeedValue)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 4){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_email"];
//        cell.titleLabel.text = LangKey(@"user_profile_avtivity_email");
//        cell.labSubtitle.hidden = NO;
//        cell.labSubtitle.text = self.bindEmail;
//    }

    //: return cell;
    return cell;


}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: [self blacklist];
        [self selected];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self duringBack];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self recordingCancelaccount];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: - (void)didTouchNextButton
- (void)allowTouch
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[WorkLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView press:[InputRed preserve:StringFromSuccessData(dreamScaleShowCanData)]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView file];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
//        [self.deactivateNextView animationClose];
//        [self.view addSubview:self.deactivateSuccessView];
//        [self.deactivateSuccessView reloadWithNickname:LangKey(@"deactivated_success")];
//        [self.deactivateSuccessView animationShow];

    //: };
    };
}

//: - (void)didTouchDeleteSureButton
- (void)colorButton
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[WorkLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView press:[InputRed preserve:StringFromSuccessData(kNeedValue)]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView file];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView animationWithEnableAtHand];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [TitleManager doing:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromSuccessData(m_changeName) object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
}

//: - (void)didTouchProtocolButton
- (void)touchOn
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    AccountSameSendViewController *vc = [[AccountSameSendViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[ButtonManager examineedManager] aggregationWith] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromSuccessData(k_handleContent)]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)didTouchDeleteNextButton
- (void)dateTitle
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView message];
}
//: - (void)didTouchDeleteProtocolButton
- (void)voiceEmpty
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    AccountSameSendViewController *vc = [[AccountSameSendViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = emptyString([SessionRecord afterUser].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = StringFromSuccessData(userBubbleValue);
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = StringFromSuccessData(k_tagText);
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = StringFromSuccessData(app_addWithName);
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:StringFromSuccessData(appScaleText)]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = StringFromSuccessData(mainSizeData);
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = StringFromSuccessData(userBubbleValue);
        }

    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[ButtonManager examineedManager] aggregationWith] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)blacklist {
- (void)selected {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    ColorViewController *vc = [[ColorViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)changedpwd {
- (void)duringBack {
    //: NTESChangePasswordController *vc = [[NTESChangePasswordController alloc] init];
    LineViewController *vc = [[LineViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)bindPhoneVC {
//    KEKEBindPhoneViewController *vc = [[KEKEBindPhoneViewController alloc] init];
//    vc.bindPhone = self.bindPhone;
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (void)bindEmailVC {
//    KEKEBindEmailViewController *vc = [[KEKEBindEmailViewController alloc] init];
//    vc.bindEmail = self.bindEmail;
//    [self.navigationController pushViewController:vc animated:YES];
//}

//: - (void)deactivateAccount {
- (void)action {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView to];

}


//: - (void)cancelaccount {
- (void)recordingCancelaccount {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView appear];

}


//-(void)changePassWord{
//    LineViewController *vc = [[LineViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//
//}
//
//-(void)resetQuestion{
//    NTESChangeQuestionViewController *vc = [[NTESChangeQuestionViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//-(void)findPayPassWord{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"contact_customer_service") preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *alertA = [UIAlertAction actionWithTitle:LangKey(@"got_it") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//    }];
//    [alert addAction:alertA];
//    [self.navigationController presentViewController:alert animated:YES completion:nil];
//}
//
//-(void)changePayPassword{
//
//    NTESVerifyPayPasswordController *vc = [[NTESVerifyPayPasswordController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [vc inputPassword:^(NSString *passwordString) {
//        NTESChangePayPasswordController *vc = [[NTESChangePayPasswordController alloc] initWithType:NTESPayPassword_Change];
//        vc.oldpassword = passwordString;
//        [self.navigationController pushViewController:vc animated:YES];
//    }];
//}

//: - (ZMONDeleteAccountView *)deleteAccountView
- (AccountView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[AccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (AmmunitionView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[AmmunitionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}
//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (CreateView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[CreateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (SendView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[SendView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}
//: - (ZMONPrivacyPolicyView *)policyView
- (PolicyView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[PolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: - (DeleteAccountTipView *)deactivateTipView
- (FrameView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[FrameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateTipView.hidden = YES;
        _deactivateTipView.hidden = YES;
        //: _deactivateTipView.delegate = self;
        _deactivateTipView.delegate = self;
    }
    //: return _deactivateTipView;
    return _deactivateTipView;
}

//: @end
@end

Byte * SuccessDataToCache(Byte *data) {
    int appearMedia = data[0];
    int disableOldPlace = data[1];
    Byte instalment = data[2];
    int visualCommunicationAt = data[3];
    if (!appearMedia) return data + visualCommunicationAt;
    for (int i = visualCommunicationAt; i < visualCommunicationAt + disableOldPlace; i++) {
        int value = data[i] - instalment;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[visualCommunicationAt + disableOldPlace] = 0;
    return data + visualCommunicationAt;
}

NSString *StringFromSuccessData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SuccessDataToCache(data)];
}
