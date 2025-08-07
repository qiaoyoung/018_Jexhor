
#import <Foundation/Foundation.h>

typedef struct {
    Byte airburst;
    Byte *withNim;
    unsigned int packet;
} StructImagePractitionerData;

@interface ImagePractitionerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ImagePractitionerData

+ (instancetype)sharedInstance {
    static ImagePractitionerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ImagePractitionerDataToByte:(StructImagePractitionerData *)data {
    for (int i = 0; i < data->packet; i++) {
        data->withNim[i] ^= data->airburst;
    }
    data->withNim[data->packet] = 0;
    return data->withNim;
}

- (NSString *)StringFromImagePractitionerData:(StructImagePractitionerData *)data {
    return [NSString stringWithUTF8String:(char *)[self ImagePractitionerDataToByte:data]];
}

//: safe_blacklist
- (NSString *)showResemblePath {
    /* static */ NSString *showResemblePath = nil;
    if (!showResemblePath) {
        StructImagePractitionerData value = (StructImagePractitionerData){234, (Byte []){153, 139, 140, 143, 181, 136, 134, 139, 137, 129, 134, 131, 153, 158, 208}, 14};
        showResemblePath = [self StringFromImagePractitionerData:&value];
    }
    return showResemblePath;
}

//: #F6F7FA
- (NSString *)main_chiefMageKey {
    /* static */ NSString *main_chiefMageKey = nil;
    if (!main_chiefMageKey) {
        StructImagePractitionerData value = (StructImagePractitionerData){46, (Byte []){13, 104, 24, 104, 25, 104, 111, 235}, 7};
        main_chiefMageKey = [self StringFromImagePractitionerData:&value];
    }
    return main_chiefMageKey;
}

//: modify_activity_title
- (NSString *)mVersionTitle {
    /* static */ NSString *mVersionTitle = nil;
    if (!mVersionTitle) {
        StructImagePractitionerData value = (StructImagePractitionerData){113, (Byte []){28, 30, 21, 24, 23, 8, 46, 16, 18, 5, 24, 7, 24, 5, 8, 46, 5, 24, 5, 29, 20, 83}, 21};
        mVersionTitle = [self StringFromImagePractitionerData:&value];
    }
    return mVersionTitle;
}

//: AccountDeletion_ja.html
- (NSString *)noti_rangeEconomicId {
    /* static */ NSString *noti_rangeEconomicId = nil;
    if (!noti_rangeEconomicId) {
        StructImagePractitionerData value = (StructImagePractitionerData){67, (Byte []){2, 32, 32, 44, 54, 45, 55, 7, 38, 47, 38, 55, 42, 44, 45, 28, 41, 34, 109, 43, 55, 46, 47, 50}, 23};
        noti_rangeEconomicId = [self StringFromImagePractitionerData:&value];
    }
    return noti_rangeEconomicId;
}

//: activity_comment_setting_cancel_account
- (NSString *)mainPractitionerMsg {
    /* static */ NSString *mainPractitionerMsg = nil;
    if (!mainPractitionerMsg) {
        StructImagePractitionerData value = (StructImagePractitionerData){100, (Byte []){5, 7, 16, 13, 18, 13, 16, 29, 59, 7, 11, 9, 9, 1, 10, 16, 59, 23, 1, 16, 16, 13, 10, 3, 59, 7, 5, 10, 7, 1, 8, 59, 5, 7, 7, 11, 17, 10, 16, 127}, 39};
        mainPractitionerMsg = [self StringFromImagePractitionerData:&value];
    }
    return mainPractitionerMsg;
}

//: hant
- (NSString *)user_rageMsg {
    /* static */ NSString *user_rageMsg = nil;
    if (!user_rageMsg) {
        StructImagePractitionerData value = (StructImagePractitionerData){57, (Byte []){81, 88, 87, 77, 163}, 4};
        user_rageMsg = [self StringFromImagePractitionerData:&value];
    }
    return user_rageMsg;
}

//: back_arrow_bl
- (NSString *)show_territoryKey {
    /* static */ NSString *show_territoryKey = nil;
    if (!show_territoryKey) {
        StructImagePractitionerData value = (StructImagePractitionerData){19, (Byte []){113, 114, 112, 120, 76, 114, 97, 97, 124, 100, 76, 113, 127, 104}, 13};
        show_territoryKey = [self StringFromImagePractitionerData:&value];
    }
    return show_territoryKey;
}

//: PrivacyPolicy.html
- (NSString *)notiGovernValue {
    /* static */ NSString *notiGovernValue = nil;
    if (!notiGovernValue) {
        StructImagePractitionerData value = (StructImagePractitionerData){211, (Byte []){131, 161, 186, 165, 178, 176, 170, 131, 188, 191, 186, 176, 170, 253, 187, 167, 190, 191, 51}, 18};
        notiGovernValue = [self StringFromImagePractitionerData:&value];
    }
    return notiGovernValue;
}

//: AccountDeletion_ko.html
- (NSString *)k_delicatePickLightMessage {
    /* static */ NSString *k_delicatePickLightMessage = nil;
    if (!k_delicatePickLightMessage) {
        StructImagePractitionerData value = (StructImagePractitionerData){40, (Byte []){105, 75, 75, 71, 93, 70, 92, 108, 77, 68, 77, 92, 65, 71, 70, 119, 67, 71, 6, 64, 92, 69, 68, 140}, 23};
        k_delicatePickLightMessage = [self StringFromImagePractitionerData:&value];
    }
    return k_delicatePickLightMessage;
}

//: deactivate_account
- (NSString *)app_inputId {
    /* static */ NSString *app_inputId = nil;
    if (!app_inputId) {
        StructImagePractitionerData value = (StructImagePractitionerData){151, (Byte []){243, 242, 246, 244, 227, 254, 225, 246, 227, 242, 200, 246, 244, 244, 248, 226, 249, 227, 210}, 18};
        app_inputId = [self StringFromImagePractitionerData:&value];
    }
    return app_inputId;
}

//: AccountDeletion_hant.html
- (NSString *)appTextFormat {
    /* static */ NSString *appTextFormat = nil;
    if (!appTextFormat) {
        StructImagePractitionerData value = (StructImagePractitionerData){190, (Byte []){255, 221, 221, 209, 203, 208, 202, 250, 219, 210, 219, 202, 215, 209, 208, 225, 214, 223, 208, 202, 144, 214, 202, 211, 210, 89}, 25};
        appTextFormat = [self StringFromImagePractitionerData:&value];
    }
    return appTextFormat;
}

//: safe_changepsd
- (NSString *)show_collectionIdent {
    /* static */ NSString *show_collectionIdent = nil;
    if (!show_collectionIdent) {
        StructImagePractitionerData value = (StructImagePractitionerData){198, (Byte []){181, 167, 160, 163, 153, 165, 174, 167, 168, 161, 163, 182, 181, 162, 6}, 14};
        show_collectionIdent = [self StringFromImagePractitionerData:&value];
    }
    return show_collectionIdent;
}

//: AccountDeletion_en.html
- (NSString *)user_randomText {
    /* static */ NSString *user_randomText = nil;
    if (!user_randomText) {
        StructImagePractitionerData value = (StructImagePractitionerData){188, (Byte []){253, 223, 223, 211, 201, 210, 200, 248, 217, 208, 217, 200, 213, 211, 210, 227, 217, 210, 146, 212, 200, 209, 208, 192}, 23};
        user_randomText = [self StringFromImagePractitionerData:&value];
    }
    return user_randomText;
}

//: NotificationLogout
- (NSString *)dream_bornIdent {
    /* static */ NSString *dream_bornIdent = nil;
    if (!dream_bornIdent) {
        StructImagePractitionerData value = (StructImagePractitionerData){211, (Byte []){157, 188, 167, 186, 181, 186, 176, 178, 167, 186, 188, 189, 159, 188, 180, 188, 166, 167, 169}, 18};
        dream_bornIdent = [self StringFromImagePractitionerData:&value];
    }
    return dream_bornIdent;
}

//: safe_accountdelete
- (NSString *)appPenaltyStr {
    /* static */ NSString *appPenaltyStr = nil;
    if (!appPenaltyStr) {
        StructImagePractitionerData value = (StructImagePractitionerData){241, (Byte []){130, 144, 151, 148, 174, 144, 146, 146, 158, 132, 159, 133, 149, 148, 157, 148, 133, 148, 130}, 18};
        appPenaltyStr = [self StringFromImagePractitionerData:&value];
    }
    return appPenaltyStr;
}

//: black_list_activity_black
- (NSString *)m_errPath {
    /* static */ NSString *m_errPath = nil;
    if (!m_errPath) {
        StructImagePractitionerData value = (StructImagePractitionerData){210, (Byte []){176, 190, 179, 177, 185, 141, 190, 187, 161, 166, 141, 179, 177, 166, 187, 164, 187, 166, 171, 141, 176, 190, 179, 177, 185, 139}, 25};
        m_errPath = [self StringFromImagePractitionerData:&value];
    }
    return m_errPath;
}

//: safe_setting_activity_title
- (NSString *)dreamIconViewData {
    /* static */ NSString *dreamIconViewData = nil;
    if (!dreamIconViewData) {
        StructImagePractitionerData value = (StructImagePractitionerData){67, (Byte []){48, 34, 37, 38, 28, 48, 38, 55, 55, 42, 45, 36, 28, 34, 32, 55, 42, 53, 42, 55, 58, 28, 55, 42, 55, 47, 38, 13}, 27};
        dreamIconViewData = [self StringFromImagePractitionerData:&value];
    }
    return dreamIconViewData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NeedViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingController.h"
#import "NeedViewController.h"
//: #import "NTESSafetySetingCell.h"
#import "CoverImpregnabilityViewCell.h"
//: #import "NTESChangePasswordController.h"
#import "TempViewController.h"
//: #import "NTESSafetyTableViewCell.h"
#import "BlockView.h"
//: #import "LEEAlert.h"
#import "BubbleAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "MakeShowViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "StraddleView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "AncientHistoryView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "HeadingView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "ChangeView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "BlockMagnitudeView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "SharedViewController.h"
//: #import "DeleteAccountTipView.h"
#import "BubbleWithView.h"
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"

//: @interface NTESSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,NTESDeactivateAccountDelegate,NTESDeleteAccountDelegate,NTESDeleteAccountTIPDelegate>
@interface NeedViewController ()<UITableViewDataSource,UITableViewDelegate,SecretNeed,TaskVoice,IndexTipdelegate>

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) StraddleView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) AncientHistoryView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) HeadingView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) ChangeView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) BlockMagnitudeView *deactivateSuccessView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) BubbleWithView *deactivateTipView;



//: @end
@end

//: @implementation NTESSafetySetingController
@implementation NeedViewController

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
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor user:[[ImagePractitionerData sharedInstance] main_chiefMageKey]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[ImagePractitionerData sharedInstance] show_territoryKey]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [BackgroundRandomAttribute content:[[ImagePractitionerData sharedInstance] dreamIconViewData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initCommentView];
}

//: - (void)initTableView{
- (void)initCommentView{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])) style:UITableViewStyleGrouped];
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
    BlockView *cell = [BlockView message:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:[[ImagePractitionerData sharedInstance] showResemblePath]];
        //: cell.titleLabel.text = [PushLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [BackgroundRandomAttribute content:[[ImagePractitionerData sharedInstance] m_errPath]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:[[ImagePractitionerData sharedInstance] show_collectionIdent]];
        //: cell.titleLabel.text = [PushLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [BackgroundRandomAttribute content:[[ImagePractitionerData sharedInstance] mVersionTitle]];
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
        cell.iconImageView.image = [UIImage imageNamed:[[ImagePractitionerData sharedInstance] appPenaltyStr]];
        //: cell.titleLabel.text = [PushLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [BackgroundRandomAttribute content:[[ImagePractitionerData sharedInstance] mainPractitionerMsg]];
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
        [self year];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self atTo];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self sizeColor];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: - (void)didTouchNextButton
- (void)numberWith
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[PushLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView downwards:[BackgroundRandomAttribute content:[[ImagePractitionerData sharedInstance] app_inputId]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView image];
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
- (void)disableButton
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[PushLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView downwards:[BackgroundRandomAttribute content:[[ImagePractitionerData sharedInstance] mainPractitionerMsg]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView image];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView nearAdd];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [TouchShowMessage comment:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:[[ImagePractitionerData sharedInstance] dream_bornIdent] object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
}

//: - (void)didTouchProtocolButton
- (void)atHandButton
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    SharedViewController *vc = [[SharedViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[SharedContentView manager] bottom] stringByAppendingPathComponent:[NSString stringWithFormat:[[ImagePractitionerData sharedInstance] notiGovernValue]]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)didTouchDeleteNextButton
- (void)buttonDoing
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView version];
}
//: - (void)didTouchDeleteProtocolButton
- (void)tapContent
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    SharedViewController *vc = [[SharedViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = [[ImagePractitionerData sharedInstance] user_randomText];
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = [[ImagePractitionerData sharedInstance] noti_rangeEconomicId];
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = [[ImagePractitionerData sharedInstance] k_delicatePickLightMessage];
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:[[ImagePractitionerData sharedInstance] user_rageMsg]]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = [[ImagePractitionerData sharedInstance] appTextFormat];
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = [[ImagePractitionerData sharedInstance] user_randomText];
        }

    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[SharedContentView manager] bottom] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)blacklist {
- (void)year {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    MakeShowViewController *vc = [[MakeShowViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)changedpwd {
- (void)atTo {
    //: NTESChangePasswordController *vc = [[NTESChangePasswordController alloc] init];
    TempViewController *vc = [[TempViewController alloc] init];
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
- (void)recital {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView video];

}


//: - (void)cancelaccount {
- (void)sizeColor {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView at];

}


//-(void)changePassWord{
//    TempViewController *vc = [[TempViewController alloc] init];
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
- (StraddleView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[StraddleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (AncientHistoryView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[AncientHistoryView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}
//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (ChangeView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[ChangeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (BlockMagnitudeView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[BlockMagnitudeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}
//: - (ZMONPrivacyPolicyView *)policyView
- (HeadingView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[HeadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: - (DeleteAccountTipView *)deactivateTipView
- (BubbleWithView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[BubbleWithView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
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
