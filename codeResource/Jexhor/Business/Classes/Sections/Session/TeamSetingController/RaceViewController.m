
#import <Foundation/Foundation.h>

typedef struct {
    Byte pathItemBelowHero;
    Byte *buttonWith;
    unsigned int nanVoting;
} StructSaveData;

@interface SaveData : NSObject

@end

@implementation SaveData

+ (Byte *)SaveDataToByte:(StructSaveData *)data {
    for (int i = 0; i < data->nanVoting; i++) {
        data->buttonWith[i] ^= data->pathItemBelowHero;
    }
    data->buttonWith[data->nanVoting] = 0;
    return data->buttonWith;
}

+ (NSString *)StringFromSaveData:(StructSaveData *)data {
    return [NSString stringWithUTF8String:(char *)[self SaveDataToByte:data]];
}

//: ko-KP
+ (NSString *)app_feePath {
    /* static */ NSString *app_feePath = nil;
    if (!app_feePath) {
        StructSaveData value = (StructSaveData){11, (Byte []){96, 100, 38, 64, 91, 200}, 5};
        app_feePath = [self StringFromSaveData:&value];
    }
    return app_feePath;
}

//: register_good_avater
+ (NSString *)m_blackName {
    /* static */ NSString *m_blackName = nil;
    if (!m_blackName) {
        StructSaveData value = (StructSaveData){250, (Byte []){136, 159, 157, 147, 137, 142, 159, 136, 165, 157, 149, 149, 158, 165, 155, 140, 155, 142, 159, 136, 105}, 20};
        m_blackName = [self StringFromSaveData:&value];
    }
    return m_blackName;
}

//: #FAF8FD
+ (NSString *)showSpaceMsg {
    /* static */ NSString *showSpaceMsg = nil;
    if (!showSpaceMsg) {
        StructSaveData value = (StructSaveData){214, (Byte []){245, 144, 151, 144, 238, 144, 146, 239}, 7};
        showSpaceMsg = [self StringFromSaveData:&value];
    }
    return showSpaceMsg;
}

//: head_default
+ (NSString *)k_commissionPath {
    /* static */ NSString *k_commissionPath = nil;
    if (!k_commissionPath) {
        StructSaveData value = (StructSaveData){160, (Byte []){200, 197, 193, 196, 255, 196, 197, 198, 193, 213, 204, 212, 49}, 12};
        k_commissionPath = [self StringFromSaveData:&value];
    }
    return k_commissionPath;
}

//: #5D5F66
+ (NSString *)noti_horrorUrl {
    /* static */ NSString *noti_horrorUrl = nil;
    if (!noti_horrorUrl) {
        StructSaveData value = (StructSaveData){73, (Byte []){106, 124, 13, 124, 15, 127, 127, 149}, 7};
        noti_horrorUrl = [self StringFromSaveData:&value];
    }
    return noti_horrorUrl;
}

//: #F6F7FA
+ (NSString *)app_tingStr {
    /* static */ NSString *app_tingStr = nil;
    if (!app_tingStr) {
        StructSaveData value = (StructSaveData){114, (Byte []){81, 52, 68, 52, 69, 52, 51, 166}, 7};
        app_tingStr = [self StringFromSaveData:&value];
    }
    return app_tingStr;
}

//: zh-Hant
+ (NSString *)dream_pickName {
    /* static */ NSString *dream_pickName = nil;
    if (!dream_pickName) {
        StructSaveData value = (StructSaveData){152, (Byte []){226, 240, 181, 208, 249, 246, 236, 37}, 7};
        dream_pickName = [self StringFromSaveData:&value];
    }
    return dream_pickName;
}

//: spa
+ (NSString *)app_deviceData {
    /* static */ NSString *app_deviceData = nil;
    if (!app_deviceData) {
        StructSaveData value = (StructSaveData){147, (Byte []){224, 227, 242, 15}, 3};
        app_deviceData = [self StringFromSaveData:&value];
    }
    return app_deviceData;
}

//: set_group_avater
+ (NSString *)main_generallyName {
    /* static */ NSString *main_generallyName = nil;
    if (!main_generallyName) {
        StructSaveData value = (StructSaveData){42, (Byte []){89, 79, 94, 117, 77, 88, 69, 95, 90, 117, 75, 92, 75, 94, 79, 88, 35}, 16};
        main_generallyName = [self StringFromSaveData:&value];
    }
    return main_generallyName;
}

//: icon_photo
+ (NSString *)dream_directKey {
    /* static */ NSString *dream_directKey = nil;
    if (!dream_directKey) {
        StructSaveData value = (StructSaveData){179, (Byte []){218, 208, 220, 221, 236, 195, 219, 220, 199, 220, 16}, 10};
        dream_directKey = [self StringFromSaveData:&value];
    }
    return dream_directKey;
}

//: hant
+ (NSString *)mShowData {
    /* static */ NSString *mShowData = nil;
    if (!mShowData) {
        StructSaveData value = (StructSaveData){58, (Byte []){82, 91, 84, 78, 77}, 4};
        mShowData = [self StringFromSaveData:&value];
    }
    return mShowData;
}

//: #05D481
+ (NSString *)mTermFormat {
    /* static */ NSString *mTermFormat = nil;
    if (!mTermFormat) {
        StructSaveData value = (StructSaveData){96, (Byte []){67, 80, 85, 36, 84, 88, 81, 123}, 7};
        mTermFormat = [self StringFromSaveData:&value];
    }
    return mTermFormat;
}

//: zh-Hans
+ (NSString *)appGovernWarValue {
    /* static */ NSString *appGovernWarValue = nil;
    if (!appGovernWarValue) {
        StructSaveData value = (StructSaveData){64, (Byte []){58, 40, 109, 8, 33, 46, 51, 106}, 7};
        appGovernWarValue = [self StringFromSaveData:&value];
    }
    return appGovernWarValue;
}

//: #000000
+ (NSString *)mSubBlankValue {
    /* static */ NSString *mSubBlankValue = nil;
    if (!mSubBlankValue) {
        StructSaveData value = (StructSaveData){105, (Byte []){74, 89, 89, 89, 89, 89, 89, 14}, 7};
        mSubBlankValue = [self StringFromSaveData:&value];
    }
    return mSubBlankValue;
}

//: back_arrow_bl
+ (NSString *)dream_styleData {
    /* static */ NSString *dream_styleData = nil;
    if (!dream_styleData) {
        StructSaveData value = (StructSaveData){14, (Byte []){108, 111, 109, 101, 81, 111, 124, 124, 97, 121, 81, 108, 98, 34}, 13};
        dream_styleData = [self StringFromSaveData:&value];
    }
    return dream_styleData;
}

//: contact_list_activity_complete
+ (NSString *)showTeamTitle {
    /* static */ NSString *showTeamTitle = nil;
    if (!showTeamTitle) {
        StructSaveData value = (StructSaveData){197, (Byte []){166, 170, 171, 177, 164, 166, 177, 154, 169, 172, 182, 177, 154, 164, 166, 177, 172, 179, 172, 177, 188, 154, 166, 170, 168, 181, 169, 160, 177, 160, 9}, 30};
        showTeamTitle = [self StringFromSaveData:&value];
    }
    return showTeamTitle;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  RaceViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushGroupAvatarViewController.h"
#import "RaceViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Collection.h"
//: #import "KEKESetNickNameView.h"
#import "TradeNameView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "MakeManager.h"
//: #import "PushKitProgressHUD.h"
#import "CoverView.h"
//: #import "PushKitDependency.h"
#import "PushKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "NSSetAvater.h"
#import "SearchedView.h"

//: @interface PushGroupAvatarViewController ()<NTESCustomUIAlertDelegate>
@interface RaceViewController ()<EasyLayDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) SearchedView *aleartView;

//: @end
@end

//: @implementation PushGroupAvatarViewController
@implementation RaceViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor user:[SaveData app_tingStr]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"login_bg"];
//        [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[SaveData dream_styleData]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice title], 40, 40);

    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice title], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:16];
    titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: titleLabel.text = [PushLanguageManager getTextWithKey:@"set_group_avater"];
    titleLabel.text = [BackgroundRandomAttribute content:[SaveData main_generallyName]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: [self initUI];
    [self initRemote];




}
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

//: - (void)initUI
- (void)initRemote
{
    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title]))];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    bodyView.backgroundColor = [UIColor user:[SaveData showSpaceMsg]];
    //: [self.view addSubview:bodyView];
    [self.view addSubview:bodyView];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor user:[SaveData noti_horrorUrl]];
    //: self.accountLabel.text = [PushLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [BackgroundRandomAttribute content:[SaveData m_blackName]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [bodyView addSubview:self.accountLabel];
    [bodyView addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    //: [bodyView addSubview:imgView];
    [bodyView addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 70;
    _aratarImgView.layer.cornerRadius = 70;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[SaveData k_commissionPath]];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

//    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
//    usericon.image = [UIImage imageNamed:@"ic_hi"];
//    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
//    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[SaveData dream_directKey]] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(imageLabel) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.groupName;
    tita.text = self.groupName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor user:[SaveData mSubBlankValue]];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:20];
    tita.font = [UIFont systemFontOfSize:20];
    //: [bodyView addSubview:tita];
    [bodyView addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
    self.registButton.backgroundColor = [UIColor user:[SaveData mTermFormat]];
    //: self.registButton.layer.masksToBounds = YES;
    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 24;
    self.registButton.layer.cornerRadius = 24;
//    self.registButton.layer.shadowColor = DeepBtnColor.CGColor;
//    self.registButton.layer.shadowOpacity = 1;
//    self.registButton.layer.shadowRadius = 0;
//    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[PushLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[BackgroundRandomAttribute content:[SaveData showTeamTitle]] forState:UIControlStateNormal];
    //: [bodyView addSubview:self.registButton];
    [bodyView addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(rangeDown) forControlEvents:UIControlEventTouchUpInside];


}

//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)blues:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
//        [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self viewAsset:nil];
    //: }else if (tag == 102){
    }else if (tag == 102){
//        [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self viewAsset:nil];
    }
}

//: - (void)showPicker {
- (void)imageLabel {

    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView record];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//            }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
//
//    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)viewAsset:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = [SaveData app_feePath];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[SaveData app_deviceData]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [SaveData appGovernWarValue];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[SaveData mShowData]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [SaveData dream_pickName];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)rangeDown{

    //: self.speiceBackBlock(self.headerImage);
    self.speiceBackBlock(self.headerImage);

//    UIImage *imageForAvatarUpload = [self.headerImage nim_imageForAvatarUpload];
//    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
//    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
//    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
//    BOOL success = data && [data writeToFile:filePath atomically:YES];
//    __weak typeof(self) wself = self;
//    if (success) {
//        [CoverView show];
//        __weak typeof(self) weakSelf = self;
//        [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//            [CoverView dismiss];
//            if (!error) {
//                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
//                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
//                [sdManager.imageCache storeImage:imageForAvatarUpload
//                                       imageData:data
//                                          forKey:urlString
//                                       cacheType:SDImageCacheTypeAll
//                                      completion:nil];
//                [wself.navigationController popViewControllerAnimated:NO];
//            }
////            [wself showToastMsg:msg];
//        }];
//    }

}

//: - (NSSetAvater *)aleartView{
- (SearchedView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[SearchedView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end
