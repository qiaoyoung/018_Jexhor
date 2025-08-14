
#import <Foundation/Foundation.h>

@interface DropTextData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DropTextData

+ (instancetype)sharedInstance {
    static DropTextData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DropTextDataToCache:(Byte *)data {
    int count = data[0];
    Byte hideEnable = data[1];
    int auditoryImage = data[2];
    for (int i = auditoryImage; i < auditoryImage + count; i++) {
        int value = data[i] - hideEnable;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[auditoryImage + count] = 0;
    return data + auditoryImage;
}

- (NSString *)StringFromDropTextData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DropTextDataToCache:data]];
}

//: #DCCCFF
- (NSString *)app_withTagValue {
    /* static */ NSString *app_withTagValue = nil;
    if (!app_withTagValue) {
        Byte value[] = {7, 81, 8, 99, 236, 129, 171, 230, 116, 149, 148, 148, 148, 151, 151, 23};
        app_withTagValue = [self StringFromDropTextData:value];
    }
    return app_withTagValue;
}

//: group_info_activity_update_failed
- (NSString *)noti_sizeContent {
    /* static */ NSString *noti_sizeContent = nil;
    if (!noti_sizeContent) {
        Byte value[] = {33, 27, 10, 36, 181, 32, 161, 224, 165, 85, 130, 141, 138, 144, 139, 122, 132, 137, 129, 138, 122, 124, 126, 143, 132, 145, 132, 143, 148, 122, 144, 139, 127, 124, 143, 128, 122, 129, 124, 132, 135, 128, 127, 207};
        noti_sizeContent = [self StringFromDropTextData:value];
    }
    return noti_sizeContent;
}

//: head_default
- (NSString *)userRowTitle {
    /* static */ NSString *userRowTitle = nil;
    if (!userRowTitle) {
        Byte value[] = {12, 82, 5, 181, 57, 186, 183, 179, 182, 177, 182, 183, 184, 179, 199, 190, 198, 172};
        userRowTitle = [self StringFromDropTextData:value];
    }
    return userRowTitle;
}

//: #999999
- (NSString *)user_pressValue {
    /* static */ NSString *user_pressValue = nil;
    if (!user_pressValue) {
        Byte value[] = {7, 31, 3, 66, 88, 88, 88, 88, 88, 88, 62};
        user_pressValue = [self StringFromDropTextData:value];
    }
    return user_pressValue;
}

//: activity_qrcode_scan_me
- (NSString *)notiShowData {
    /* static */ NSString *notiShowData = nil;
    if (!notiShowData) {
        Byte value[] = {23, 53, 8, 117, 104, 107, 213, 234, 150, 152, 169, 158, 171, 158, 169, 174, 148, 166, 167, 152, 164, 153, 154, 148, 168, 152, 150, 163, 148, 162, 154, 142};
        notiShowData = [self StringFromDropTextData:value];
    }
    return notiShowData;
}

//: ic_share
- (NSString *)k_sizeValue {
    /* static */ NSString *k_sizeValue = nil;
    if (!k_sizeValue) {
        Byte value[] = {8, 92, 11, 30, 232, 94, 3, 229, 48, 136, 52, 197, 191, 187, 207, 196, 189, 206, 193, 131};
        k_sizeValue = [self StringFromDropTextData:value];
    }
    return k_sizeValue;
}

//: ic_down
- (NSString *)mInfoName {
    /* static */ NSString *mInfoName = nil;
    if (!mInfoName) {
        Byte value[] = {7, 29, 3, 134, 128, 124, 129, 140, 148, 139, 48};
        mInfoName = [self StringFromDropTextData:value];
    }
    return mInfoName;
}

//: back_arrow_bl
- (NSString *)userLimitValue {
    /* static */ NSString *userLimitValue = nil;
    if (!userLimitValue) {
        Byte value[] = {13, 97, 13, 176, 120, 91, 196, 71, 177, 110, 124, 25, 139, 195, 194, 196, 204, 192, 194, 211, 211, 208, 216, 192, 195, 205, 47};
        userLimitValue = [self StringFromDropTextData:value];
    }
    return userLimitValue;
}

//: #05D481
- (NSString *)userTitleNeedName {
    /* static */ NSString *userTitleNeedName = nil;
    if (!userTitleNeedName) {
        Byte value[] = {7, 26, 12, 126, 40, 227, 52, 160, 174, 37, 75, 103, 61, 74, 79, 94, 78, 82, 75, 203};
        userTitleNeedName = [self StringFromDropTextData:value];
    }
    return userTitleNeedName;
}

//: common_bg
- (NSString *)dream_parentShowTitle {
    /* static */ NSString *dream_parentShowTitle = nil;
    if (!dream_parentShowTitle) {
        Byte value[] = {9, 20, 6, 115, 28, 252, 119, 131, 129, 129, 131, 130, 115, 118, 123, 30};
        dream_parentShowTitle = [self StringFromDropTextData:value];
    }
    return dream_parentShowTitle;
}

//: head_default_group
- (NSString *)app_needTitle {
    /* static */ NSString *app_needTitle = nil;
    if (!app_needTitle) {
        Byte value[] = {18, 17, 13, 3, 255, 220, 146, 19, 53, 232, 34, 59, 47, 121, 118, 114, 117, 112, 117, 118, 119, 114, 134, 125, 133, 112, 120, 131, 128, 134, 129, 250};
        app_needTitle = [self StringFromDropTextData:value];
    }
    return app_needTitle;
}

//: group_info_activity_update_success
- (NSString *)mCompleteTableRowData {
    /* static */ NSString *mCompleteTableRowData = nil;
    if (!mCompleteTableRowData) {
        Byte value[] = {34, 15, 8, 24, 150, 16, 195, 19, 118, 129, 126, 132, 127, 110, 120, 125, 117, 126, 110, 112, 114, 131, 120, 133, 120, 131, 136, 110, 132, 127, 115, 112, 131, 116, 110, 130, 132, 114, 114, 116, 130, 130, 94};
        mCompleteTableRowData = [self StringFromDropTextData:value];
    }
    return mCompleteTableRowData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SameViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/15.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserQRCodeViewController.h"
#import "SameViewController.h"
//: #import "LCQRCodeUtil.h"
#import "ChangeUtil.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "NTESShareCardAttachment.h"
#import "InputAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "ManagerViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "ViewLine.h"

//: @interface NTESUserQRCodeViewController ()
@interface SameViewController ()

//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *downBtn;
@property (nonatomic,strong) UIButton *downBtn;
//: @property (nonatomic,strong) UIButton *shareBtn;
@property (nonatomic,strong) UIButton *shareBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @end
@end

//: @implementation NTESUserQRCodeViewController
@implementation SameViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)gotoBack:(id)sender {
- (void)commentsed:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[[DropTextData sharedInstance] dream_parentShowTitle]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice heightShowStop]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice heightShowStop], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(commentsed:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[[DropTextData sharedInstance] userLimitValue]] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

//    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
//    labNavtitle.textColor = [UIColor blackColor];
//    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
//    labNavtitle.text = LangKey(@"qrcode_activity_title");
//    labNavtitle.textAlignment = NSTextAlignmentCenter;
//    [navview addSubview:labNavtitle];

    //: [self initUI];
    [self initFile];
}

//: -(void)initUI{
-(void)initFile{

    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: UIImage *defImg = [UIImage imageNamed:@"head_default"];
    UIImage *defImg = [UIImage imageNamed:[[DropTextData sharedInstance] userRowTitle]];
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: defImg = [UIImage imageNamed:@"head_default_group"];
        defImg = [UIImage imageNamed:[[DropTextData sharedInstance] app_needTitle]];
    //: }else{
    }else{
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        //: name = user.userInfo.nickName;
        name = user.userInfo.nickName;
        //: avater = user.userInfo.avatarUrl;
        avater = user.userInfo.avatarUrl;

    }



    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice vg_statusBarHeight])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice heightShowStop])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#DCCCFF"];
    contentView.backgroundColor = [UIColor ground:[[DropTextData sharedInstance] app_withTagValue]];
    //: contentView.layer.cornerRadius = 32;
    contentView.layer.cornerRadius = 32;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [contentView addSubview:self.iconImageView];
    [contentView addSubview:self.iconImageView];
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    //: self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, -40, 100, 100);
    self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, -40, 100, 100);

    //: [contentView addSubview:self.titleLabel];
    [contentView addSubview:self.titleLabel];
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
    //: self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-284)/2, self.titleLabel.bottom+20, 244, 244)];
    UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-284)/2, self.titleLabel.bottom+20, 244, 244)];
    //: [contentView addSubview:qrView];
    [contentView addSubview:qrView];
    //: qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    qrView.layer.borderWidth = 1;
//    qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: qrView.layer.cornerRadius = 32;
    qrView.layer.cornerRadius = 32;
//    qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    qrView.layer.shadowOffset = CGSizeMake(0,3);
//    qrView.layer.shadowOpacity = 1;
//    qrView.layer.shadowRadius = 0;

    //: UIImage *qrImage = [LCQRCodeUtil createQRimageString:_userID sizeWidth:220 fillColor:[UIColor blackColor]];
    UIImage *qrImage = [ChangeUtil childColor:_userID image:220 title:[UIColor blackColor]];
    //: UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    //: qrImageView.image = qrImage;
    qrImageView.image = qrImage;
    //: [qrView addSubview:qrImageView];
    [qrView addSubview:qrImageView];

    //: UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: contentLabel.font = [UIFont systemFontOfSize:12];
    contentLabel.font = [UIFont systemFontOfSize:12];
    //: contentLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    contentLabel.textColor = [UIColor ground:[[DropTextData sharedInstance] user_pressValue]];
    //: contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    //: contentLabel.text = [WorkLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
    contentLabel.text = [InputRed preserve:[[DropTextData sharedInstance] notiShowData]];//@"扫描二维码，加我为好友";
    //: [contentView addSubview:contentLabel];
    [contentView addSubview:contentLabel];

//    CGFloat width = (SCREEN_WIDTH-60)/2;
//    [self.view addSubview:self.shareBtn];
//    self.shareBtn.frame = CGRectMake(20, contentView.bottom+20, width, 48);
    //: [self.view addSubview:self.downBtn];
    [self.view addSubview:self.downBtn];
    //: self.downBtn.frame = CGRectMake(20, contentView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    self.downBtn.frame = CGRectMake(20, contentView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 50;
        _iconImageView.layer.cornerRadius = 50;
        //: _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        //: _iconImageView.layer.borderWidth = 1;
        _iconImageView.layer.borderWidth = 1;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}



//: - (UIButton *)downBtn {
- (UIButton *)downBtn {
    //: if (!_downBtn) {
    if (!_downBtn) {
        //: _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_downBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_downBtn addTarget:self action:@selector(sumervalDate) forControlEvents:UIControlEventTouchUpInside];
        //: [_downBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        [_downBtn setImage:[UIImage imageNamed:[[DropTextData sharedInstance] mInfoName]] forState:UIControlStateNormal];
        //: _downBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _downBtn.backgroundColor = [UIColor ground:[[DropTextData sharedInstance] userTitleNeedName]];
        //: _downBtn.layer.cornerRadius = 24;
        _downBtn.layer.cornerRadius = 24;

    }
    //: return _downBtn;
    return _downBtn;
}
//: - (UIButton *)shareBtn {
- (UIButton *)shareBtn {
    //: if (!_shareBtn) {
    if (!_shareBtn) {
        //: _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_shareBtn addTarget:self action:@selector(shareQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_shareBtn addTarget:self action:@selector(shouldImage) forControlEvents:UIControlEventTouchUpInside];
        //: [_shareBtn setImage:[UIImage imageNamed:@"ic_share"] forState:UIControlStateNormal];
        [_shareBtn setImage:[UIImage imageNamed:[[DropTextData sharedInstance] k_sizeValue]] forState:UIControlStateNormal];
        //: _shareBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _shareBtn.backgroundColor = [UIColor ground:[[DropTextData sharedInstance] userTitleNeedName]];
        //: _shareBtn.layer.cornerRadius = 24;
        _shareBtn.layer.cornerRadius = 24;

    }
    //: return _shareBtn;
    return _shareBtn;
}

//: - (void)shareQcImage
- (void)shouldImage
{
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: type = @"1";
        type = @"1";
    //: }else{
    }else{
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        //: name = user.userInfo.nickName;
        name = user.userInfo.nickName;
        //: avater = user.userInfo.avatarUrl;
        avater = user.userInfo.avatarUrl;
        //: type = @"0";
        type = @"0";
    }

    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    InputAttachment *attachment = [[InputAttachment alloc] init];
    //: attachment.title = name;
    attachment.title = name;
    //: attachment.type = type;
    attachment.type = type;
    //: attachment.personCardId = self.userID;
    attachment.personCardId = self.userID;
    //: attachment.content = self.userID;
    attachment.content = self.userID;
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [ViewLine locationBottom:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    ManagerViewController *vc = [[ManagerViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)saveQcImage{
-(void)sumervalDate{

    //: CGFloat f = [UIScreen mainScreen].scale;
    CGFloat f = [UIScreen mainScreen].scale;
    //: CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    //: UIImage *image = [self takeScreenshot:rect];
    UIImage *image = [self show:rect];

    //: [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
    [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
          //: [PHAssetChangeRequest creationRequestForAssetFromImage:image];
          [PHAssetChangeRequest creationRequestForAssetFromImage:image];
      //: } completionHandler:^(BOOL success, NSError * _Nullable error) {
      } completionHandler:^(BOOL success, NSError * _Nullable error) {
          //: if (error) {
          if (error) {
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: NSString *failed = [WorkLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
                  NSString *failed = [InputRed preserve:[[DropTextData sharedInstance] noti_sizeContent]];//@"保存失败"
                  //: [SVProgressHUD showMessage:failed];
                  [SVProgressHUD text:failed];
              //: });
              });
          //: } else {
          } else {
              //: NSString *success = [WorkLanguageManager getTextWithKey:@"group_info_activity_update_success"];
              NSString *success = [InputRed preserve:[[DropTextData sharedInstance] mCompleteTableRowData]];//保存成功
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: [SVProgressHUD showMessage:success];
                  [SVProgressHUD text:success];
              //: });
              });
          }
      //: }];
      }];
}

//: -(UIImage *)takeScreenshot:(CGRect)rect{
-(UIImage *)show:(CGRect)rect{

    //: UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    //设置截屏大小
    //: [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: CGImageRef imageRef = viewImage.CGImage;
    CGImageRef imageRef = viewImage.CGImage;
    //CGRect rect = CGRectMake(0, 0, 300, 300);//这里可以设置想要截图的区域
    //: CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    //: UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    //: CGImageRelease(imageRefRect);
    CGImageRelease(imageRefRect);
    //: return sendImage;
    return sendImage;


}

//: @end
@end
