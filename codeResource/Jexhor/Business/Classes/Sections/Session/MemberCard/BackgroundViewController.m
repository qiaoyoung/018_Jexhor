
#import <Foundation/Foundation.h>

typedef struct {
    Byte titleMage;
    Byte *tingCoverStat;
    unsigned int forefront;
	int fastener;
} StructLaverData;

@interface LaverData : NSObject

@end

@implementation LaverData

+ (Byte *)LaverDataToByte:(StructLaverData *)data {
    for (int i = 0; i < data->forefront; i++) {
        data->tingCoverStat[i] ^= data->titleMage;
    }
    data->tingCoverStat[data->forefront] = 0;
	if (data->forefront >= 1) {
		data->fastener = data->tingCoverStat[0];
	}
    return data->tingCoverStat;
}

+ (NSString *)StringFromLaverData:(StructLaverData *)data {
    return [NSString stringWithUTF8String:(char *)[self LaverDataToByte:data]];
}

//: /team/getTeamSetting
+ (NSString *)userSessionUrl {
    /* static */ NSString *userSessionUrl = nil;
    if (!userSessionUrl) {
        StructLaverData value = (StructLaverData){33, (Byte []){14, 85, 68, 64, 76, 14, 70, 68, 85, 117, 68, 64, 76, 114, 68, 85, 85, 72, 79, 70, 153}, 20, 159};
        userSessionUrl = [self StringFromLaverData:&value];
    }
    return userSessionUrl;
}

//: 邀请你加入超大群
+ (NSString *)appPhotographyValue {
    /* static */ NSString *appPhotographyValue = nil;
    if (!appPhotographyValue) {
        StructLaverData value = (StructLaverData){49, (Byte []){216, 179, 177, 217, 158, 134, 213, 140, 145, 212, 187, 145, 212, 180, 148, 217, 135, 180, 212, 149, 150, 214, 143, 149, 156}, 24, 9};
        appPhotographyValue = [self StringFromLaverData:&value];
    }
    return appPhotographyValue;
}

//: code
+ (NSString *)mainSodPath {
    /* static */ NSString *mainSodPath = nil;
    if (!mainSodPath) {
        StructLaverData value = (StructLaverData){69, (Byte []){38, 42, 33, 32, 194}, 4, 3};
        mainSodPath = [self StringFromLaverData:&value];
    }
    return mainSodPath;
}

//: canAddFriend
+ (NSString *)k_infoUrl {
    /* static */ NSString *k_infoUrl = nil;
    if (!k_infoUrl) {
        StructLaverData value = (StructLaverData){217, (Byte []){186, 184, 183, 152, 189, 189, 159, 171, 176, 188, 183, 189, 110}, 12, 117};
        k_infoUrl = [self StringFromLaverData:&value];
    }
    return k_infoUrl;
}

//: attach
+ (NSString *)dreamDirectStr {
    /* static */ NSString *dreamDirectStr = nil;
    if (!dreamDirectStr) {
        StructLaverData value = (StructLaverData){121, (Byte []){24, 13, 13, 24, 26, 17, 227}, 6, 39};
        dreamDirectStr = [self StringFromLaverData:&value];
    }
    return dreamDirectStr;
}

//: head_default
+ (NSString *)userVersionId {
    /* static */ NSString *userVersionId = nil;
    if (!userVersionId) {
        StructLaverData value = (StructLaverData){196, (Byte []){172, 161, 165, 160, 155, 160, 161, 162, 165, 177, 168, 176, 68}, 12, 246};
        userVersionId = [self StringFromLaverData:&value];
    }
    return userVersionId;
}

//: #000000
+ (NSString *)userFarNuclearFormat {
    /* static */ NSString *userFarNuclearFormat = nil;
    if (!userFarNuclearFormat) {
        StructLaverData value = (StructLaverData){57, (Byte []){26, 9, 9, 9, 9, 9, 9, 182}, 7, 81};
        userFarNuclearFormat = [self StringFromLaverData:&value];
    }
    return userFarNuclearFormat;
}

//: 邀请你加入高级群
+ (NSString *)notiSlatId {
    /* static */ NSString *notiSlatId = nil;
    if (!notiSlatId) {
        StructLaverData value = (StructLaverData){2, (Byte []){235, 128, 130, 234, 173, 181, 230, 191, 162, 231, 136, 162, 231, 135, 167, 235, 169, 154, 229, 184, 165, 229, 188, 166, 210}, 24, 165};
        notiSlatId = [self StringFromLaverData:&value];
    }
    return notiSlatId;
}

//: group_info_activity_team_member
+ (NSString *)mButtonName {
    /* static */ NSString *mButtonName = nil;
    if (!mButtonName) {
        StructLaverData value = (StructLaverData){34, (Byte []){69, 80, 77, 87, 82, 125, 75, 76, 68, 77, 125, 67, 65, 86, 75, 84, 75, 86, 91, 125, 86, 71, 67, 79, 125, 79, 71, 79, 64, 71, 80, 17}, 31, 117};
        mButtonName = [self StringFromLaverData:&value];
    }
    return mButtonName;
}

//: #05D481
+ (NSString *)notiTerritoryMsg {
    /* static */ NSString *notiTerritoryMsg = nil;
    if (!notiTerritoryMsg) {
        StructLaverData value = (StructLaverData){51, (Byte []){16, 3, 6, 119, 7, 11, 2, 107}, 7, 240};
        notiTerritoryMsg = [self StringFromLaverData:&value];
    }
    return notiTerritoryMsg;
}

//: #F6F6F6
+ (NSString *)mTemperatureWarIdent {
    /* static */ NSString *mTemperatureWarIdent = nil;
    if (!mTemperatureWarIdent) {
        StructLaverData value = (StructLaverData){167, (Byte []){132, 225, 145, 225, 145, 225, 145, 219}, 7, 234};
        mTemperatureWarIdent = [self StringFromLaverData:&value];
    }
    return mTemperatureWarIdent;
}

//: 5D5F66
+ (NSString *)notiUpName {
    /* static */ NSString *notiUpName = nil;
    if (!notiUpName) {
        StructLaverData value = (StructLaverData){249, (Byte []){204, 189, 204, 191, 207, 207, 202}, 6, 161};
        notiUpName = [self StringFromLaverData:&value];
    }
    return notiUpName;
}

//: data
+ (NSString *)notiFabricStr {
    /* static */ NSString *notiFabricStr = nil;
    if (!notiFabricStr) {
        StructLaverData value = (StructLaverData){251, (Byte []){159, 154, 143, 154, 94}, 4, 252};
        notiFabricStr = [self StringFromLaverData:&value];
    }
    return notiFabricStr;
}

//: 邀请你加入讨论组
+ (NSString *)noti_messageValue {
    /* static */ NSString *noti_messageValue = nil;
    if (!noti_messageValue) {
        StructLaverData value = (StructLaverData){196, (Byte []){45, 70, 68, 44, 107, 115, 32, 121, 100, 33, 78, 100, 33, 65, 97, 44, 106, 108, 44, 106, 126, 35, 127, 64, 68}, 24, 155};
        noti_messageValue = [self StringFromLaverData:&value];
    }
    return noti_messageValue;
}

//: ic_group_addmember
+ (NSString *)kWithYinMessage {
    /* static */ NSString *kWithYinMessage = nil;
    if (!kWithYinMessage) {
        StructLaverData value = (StructLaverData){2, (Byte []){107, 97, 93, 101, 112, 109, 119, 114, 93, 99, 102, 102, 111, 103, 111, 96, 103, 112, 192}, 18, 177};
        kWithYinMessage = [self StringFromLaverData:&value];
    }
    return kWithYinMessage;
}

//: back_arrow_bl
+ (NSString *)dreamRandomUserText {
    /* static */ NSString *dreamRandomUserText = nil;
    if (!dreamRandomUserText) {
        StructLaverData value = (StructLaverData){210, (Byte []){176, 179, 177, 185, 141, 179, 160, 160, 189, 165, 141, 176, 190, 125}, 13, 134};
        dreamRandomUserText = [self StringFromLaverData:&value];
    }
    return dreamRandomUserText;
}

//: 扩展消息
+ (NSString *)showSlatIdent {
    /* static */ NSString *showSlatIdent = nil;
    if (!showSlatIdent) {
        StructLaverData value = (StructLaverData){193, (Byte []){39, 72, 104, 36, 112, 84, 39, 119, 73, 39, 64, 110, 139}, 12, 35};
        showSlatIdent = [self StringFromLaverData:&value];
    }
    return showSlatIdent;
}

//: postscript
+ (NSString *)show_abortTitleVenueMessage {
    /* static */ NSString *show_abortTitleVenueMessage = nil;
    if (!show_abortTitleVenueMessage) {
        StructLaverData value = (StructLaverData){20, (Byte []){100, 123, 103, 96, 103, 119, 102, 125, 100, 96, 115}, 10, 227};
        show_abortTitleVenueMessage = [self StringFromLaverData:&value];
    }
    return show_abortTitleVenueMessage;
}

//: kNIMTeamListDataTeamMembersChanged
+ (NSString *)app_snapTitle {
    /* static */ NSString *app_snapTitle = nil;
    if (!app_snapTitle) {
        StructLaverData value = (StructLaverData){169, (Byte []){194, 231, 224, 228, 253, 204, 200, 196, 229, 192, 218, 221, 237, 200, 221, 200, 253, 204, 200, 196, 228, 204, 196, 203, 204, 219, 218, 234, 193, 200, 199, 206, 204, 205, 37}, 34, 152};
        app_snapTitle = [self StringFromLaverData:&value];
    }
    return app_snapTitle;
}

//: group_member_info_activity_team_creator
+ (NSString *)dreamEthnicBlueTitle {
    /* static */ NSString *dreamEthnicBlueTitle = nil;
    if (!dreamEthnicBlueTitle) {
        StructLaverData value = (StructLaverData){30, (Byte []){121, 108, 113, 107, 110, 65, 115, 123, 115, 124, 123, 108, 65, 119, 112, 120, 113, 65, 127, 125, 106, 119, 104, 119, 106, 103, 65, 106, 123, 127, 115, 65, 125, 108, 123, 127, 106, 113, 108, 141}, 39, 254};
        dreamEthnicBlueTitle = [self StringFromLaverData:&value];
    }
    return dreamEthnicBlueTitle;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundViewController.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalViewController.h"
#import "BackgroundViewController.h"
//: #import "PushContactSelectViewController.h"
#import "SwitchlyViewController.h"
//: #import "PushCardHeaderCell.h"
#import "CompartmentReusableView.h"
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "ShouldReusableView.h"
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "PushTeamMemberCardViewController.h"
#import "StraddleViewController.h"

//: @interface TeamMemberNormalViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NIMContactSelectDelegate>
@interface BackgroundViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,BackgroundDelegate>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, strong) NSMutableArray *memberList;
@property (nonatomic, strong) NSMutableArray *memberList;
//: @property (nonatomic, strong) NIMTeamMember *owerInfo;
@property (nonatomic, strong) NIMTeamMember *owerInfo;
//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @end
@end

//: @implementation TeamMemberNormalViewController
@implementation BackgroundViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self eventList];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self message];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[LaverData userSessionUrl]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[LaverData mainSodPath]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[LaverData notiFabricStr]];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
    //: }];
    }];


    //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
    NSString *kNIMTeamListDataTeamMembersChanged = [LaverData app_snapTitle];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(liped:) name:kNIMTeamListDataTeamMembersChanged object:nil];
}
//: - (void)setupUI {
- (void)message {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice title]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[LaverData dreamRandomUserText]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [BackgroundRandomAttribute content:[LaverData mButtonName]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice title]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    submitButton.backgroundColor = [UIColor user:[LaverData notiTerritoryMsg]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[LaverData kWithYinMessage]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(allBlue) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: owerView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    owerView.backgroundColor = [UIColor user:[LaverData mTemperatureWarIdent]];
    //: owerView.layer.masksToBounds = YES;
    owerView.layer.masksToBounds = YES;
    //: owerView.layer.cornerRadius = 16;
    owerView.layer.cornerRadius = 16;
    //: [self.view addSubview:owerView];
    [self.view addSubview:owerView];
    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [owerView addSubview:_roleImageView];
    [owerView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor user:[LaverData userFarNuclearFormat]];
    //: [owerView addSubview:_titleLabel];
    [owerView addSubview:_titleLabel];

    //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    subtitleLabel.textColor = [UIColor user:[LaverData notiUpName]];
    //: subtitleLabel.textAlignment = NSTextAlignmentRight;
    subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: subtitleLabel.text = [PushLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    subtitleLabel.text = [BackgroundRandomAttribute content:[LaverData dreamEthnicBlueTitle]];
    //: [owerView addSubview:subtitleLabel];
    [owerView addSubview:subtitleLabel];

    // 设置 UICollectionView 的布局
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.itemSize = CGSizeMake(width, 70); 
    layout.itemSize = CGSizeMake(width, 70); // 每个 item 的大小
    //: layout.minimumInteritemSpacing = 0; 
    layout.minimumInteritemSpacing = 0; // item 之间的水平间距
    //: layout.minimumLineSpacing = 5; 
    layout.minimumLineSpacing = 5; // item 之间的垂直间距
    //: layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); 
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距

    // 初始化 UICollectionView 并设置布局
    //: self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-90) collectionViewLayout:layout];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-90) collectionViewLayout:layout];
    //: self.collectionView.delegate = self; 
    self.collectionView.delegate = self; // 设置代理
    //: self.collectionView.dataSource = self; 
    self.collectionView.dataSource = self; // 设置数据源
    //: self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    //: self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //: [self.collectionView registerClass:[TeamMemberNormalCollectionViewCell class] forCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell"];
    [self.collectionView registerClass:[ShouldReusableView class] forCellWithReuseIdentifier:@"ShouldReusableView"];
    //: self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView];

}
//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)rightNavButtonClick{
- (void)allBlue{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        CheckedConfig *config = [[CheckedConfig alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: PushContactSelectViewController *vc = [[PushContactSelectViewController alloc] initWithConfig:config];
        SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc metadata];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)endSelect:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self greenLabel:selectedContacts complete:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)greenLabel:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            complete:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[LaverData dreamDirectStr]] = [LaverData showSlatIdent];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[LaverData show_abortTitleVenueMessage]] = [LaverData noti_messageValue].minIn;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[LaverData show_abortTitleVenueMessage]] = [LaverData notiSlatId].minIn;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[LaverData show_abortTitleVenueMessage]] = [LaverData appPhotographyValue].minIn;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [CoverView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager complete:userIds alongTing:info net:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [CoverView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}


//: - (void)teamMemberUpdate:(NSNotification *)note
- (void)liped:(NSNotification *)note
{
    //: [self loadTeamManageList];
    [self eventList];
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)loadTeamManageList
- (void)eventList
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: for (NIMTeamMember *member in members) {
            for (NIMTeamMember *member in members) {
                //: if (member.type == NIMTeamMemberTypeNormal) {
                if (member.type == NIMTeamMemberTypeNormal) {
                    //: [self.memberList addObject:member];
                    [self.memberList addObject:member];

                //: }else if (member.type == NIMTeamMemberTypeOwner){
                }else if (member.type == NIMTeamMemberTypeOwner){
                    //: self.owerInfo = member;
                    self.owerInfo = member;

                    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
                    DataTeam *info = [[Secret highlight] infoAndStraddleOption:member.userId item:nil];
                    //: self.titleLabel.text = info.showName;
                    self.titleLabel.text = info.showName;
                    //: [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[LaverData userVersionId]]];
                }
            }
            //: [self.collectionView reloadData];
            [self.collectionView reloadData];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}
//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
// 返回 section 的数量
//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //: return 1;
    return 1;
}

// 返回每个 section 中的 item 数量
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.memberList.count;
    return self.memberList.count;
}

// 配置每个 item 的 cell
//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: TeamMemberNormalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell" forIndexPath:indexPath];
    ShouldReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ShouldReusableView" forIndexPath:indexPath];
    //    cell.delegate = self;
//    cell.backgroundColor  = RGB_COLOR_String(@"#fffPush");

    //: NIMTeamMember *member = self.memberList[indexPath.row];
    NIMTeamMember *member = self.memberList[indexPath.row];
    //: [cell refreshWithModel:member];
    [cell enableView:member];


    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

// 选择 item 时触发的事件
//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: NSLog(@"Item at index %ld selected", indexPath.row);

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig index:[LaverData k_infoUrl]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {

        //: NIMTeamMember *member = self.memberList[indexPath.row];
        NIMTeamMember *member = self.memberList[indexPath.row];
//        StraddleViewController *vc = [[StraddleViewController alloc] init];
//        vc.teamListManager = self.teamListManager;
//        vc.memberId = member.userId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.userId];
        AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:member.userId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}



//: @end
@end
