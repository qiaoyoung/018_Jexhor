
#import <Foundation/Foundation.h>

@interface NameInfoData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NameInfoData

+ (instancetype)sharedInstance {
    static NameInfoData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NameInfoDataToCache:(Byte *)data {
    int size = data[0];
    Byte nameShow = data[1];
    int centerEnable = data[2];
    for (int i = centerEnable; i < centerEnable + size; i++) {
        int value = data[i] - nameShow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[centerEnable + size] = 0;
    return data + centerEnable;
}

- (NSString *)StringFromNameInfoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NameInfoDataToCache:data]];
}

//: ic_down
- (NSString *)noti_spaceTitle {
    /* static */ NSString *noti_spaceTitle = nil;
    if (!noti_spaceTitle) {
        Byte value[] = {7, 71, 3, 176, 170, 166, 171, 182, 190, 181, 70};
        noti_spaceTitle = [self StringFromNameInfoData:value];
    }
    return noti_spaceTitle;
}

//: #999999
- (NSString *)dreamVersionCropKey {
    /* static */ NSString *dreamVersionCropKey = nil;
    if (!dreamVersionCropKey) {
        Byte value[] = {7, 48, 6, 44, 195, 48, 83, 105, 105, 105, 105, 105, 105, 228};
        dreamVersionCropKey = [self StringFromNameInfoData:value];
    }
    return dreamVersionCropKey;
}

//: #05D481
- (NSString *)notiThreadUrl {
    /* static */ NSString *notiThreadUrl = nil;
    if (!notiThreadUrl) {
        Byte value[] = {7, 58, 9, 56, 53, 185, 94, 207, 176, 93, 106, 111, 126, 110, 114, 107, 243};
        notiThreadUrl = [self StringFromNameInfoData:value];
    }
    return notiThreadUrl;
}

//: group_info_activity_update_failed
- (NSString *)kCellHolderMainText {
    /* static */ NSString *kCellHolderMainText = nil;
    if (!kCellHolderMainText) {
        Byte value[] = {33, 35, 11, 180, 153, 55, 184, 104, 185, 185, 213, 138, 149, 146, 152, 147, 130, 140, 145, 137, 146, 130, 132, 134, 151, 140, 153, 140, 151, 156, 130, 152, 147, 135, 132, 151, 136, 130, 137, 132, 140, 143, 136, 135, 203};
        kCellHolderMainText = [self StringFromNameInfoData:value];
    }
    return kCellHolderMainText;
}

//: chat_bg
- (NSString *)app_centerName {
    /* static */ NSString *app_centerName = nil;
    if (!app_centerName) {
        Byte value[] = {7, 7, 7, 58, 194, 120, 26, 106, 111, 104, 123, 102, 105, 110, 28};
        app_centerName = [self StringFromNameInfoData:value];
    }
    return app_centerName;
}

//: group_info_activity_update_success
- (NSString *)noti_cancelTitle {
    /* static */ NSString *noti_cancelTitle = nil;
    if (!noti_cancelTitle) {
        Byte value[] = {34, 72, 4, 216, 175, 186, 183, 189, 184, 167, 177, 182, 174, 183, 167, 169, 171, 188, 177, 190, 177, 188, 193, 167, 189, 184, 172, 169, 188, 173, 167, 187, 189, 171, 171, 173, 187, 187, 92};
        noti_cancelTitle = [self StringFromNameInfoData:value];
    }
    return noti_cancelTitle;
}

//: ic_close
- (NSString *)appVoiceInputFormat {
    /* static */ NSString *appVoiceInputFormat = nil;
    if (!appVoiceInputFormat) {
        Byte value[] = {8, 71, 8, 43, 68, 226, 170, 121, 176, 170, 166, 170, 179, 182, 186, 172, 83};
        appVoiceInputFormat = [self StringFromNameInfoData:value];
    }
    return appVoiceInputFormat;
}

//: activity_qrcode_save_code
- (NSString *)appButtonStr {
    /* static */ NSString *appButtonStr = nil;
    if (!appButtonStr) {
        Byte value[] = {25, 49, 9, 190, 142, 149, 238, 21, 197, 146, 148, 165, 154, 167, 154, 165, 170, 144, 162, 163, 148, 160, 149, 150, 144, 164, 146, 167, 150, 144, 148, 160, 149, 150, 220};
        appButtonStr = [self StringFromNameInfoData:value];
    }
    return appButtonStr;
}

//: activity_qrcode_scan_me
- (NSString *)appCancelData {
    /* static */ NSString *appCancelData = nil;
    if (!appCancelData) {
        Byte value[] = {23, 87, 8, 131, 155, 43, 203, 23, 184, 186, 203, 192, 205, 192, 203, 208, 182, 200, 201, 186, 198, 187, 188, 182, 202, 186, 184, 197, 182, 196, 188, 118};
        appCancelData = [self StringFromNameInfoData:value];
    }
    return appCancelData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONMyQRcodeView.h"
#import "ToView.h"
//: #import "LCQRCodeUtil.h"
#import "ShouldTo.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

//: @interface ZMONMyQRcodeView ()
@interface ToView ()

//: @property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONMyQRcodeView
@implementation ToView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initInput];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initInput{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-494)/2, [[UIScreen mainScreen] bounds].size.width-40, 494)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-494)/2, [[UIScreen mainScreen] bounds].size.width-40, 494)];
//    _box.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"chat_bg"]];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.box.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.box.bounds];
    //: bg.image = [UIImage imageNamed:@"chat_bg"];
    bg.image = [UIImage imageNamed:[[NameInfoData sharedInstance] app_centerName]];
    //: [_box addSubview:bg];
    [_box addSubview:bg];

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:userID item:nil];

    //: [_box addSubview:self.iconImageView];
    [_box addSubview:self.iconImageView];
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    //: self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-60)/2, 24, 60, 60);
    self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-60)/2, 24, 60, 60);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-244)/2, self.titleLabel.bottom+20, 244, 244)];
    UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-244)/2, self.titleLabel.bottom+20, 244, 244)];
    //: [_box addSubview:qrView];
    [_box addSubview:qrView];
    //: qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: qrView.layer.borderWidth = 1;
    qrView.layer.borderWidth = 1;
    //: qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: qrView.layer.cornerRadius = 8;
    qrView.layer.cornerRadius = 8;
    //: qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: qrView.layer.shadowOffset = CGSizeMake(0,3);
    qrView.layer.shadowOffset = CGSizeMake(0,3);
    //: qrView.layer.shadowOpacity = 1;
    qrView.layer.shadowOpacity = 1;
    //: qrView.layer.shadowRadius = 0;
    qrView.layer.shadowRadius = 0;

    //: UIImage *qrImage = [LCQRCodeUtil createQRimageString:[[NIMSDK sharedSDK].loginManager currentAccount] sizeWidth:220 fillColor:[UIColor blackColor]];
    UIImage *qrImage = [ShouldTo value:[[NIMSDK sharedSDK].loginManager currentAccount] fillQuickColor:220 magnitude:[UIColor blackColor]];
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
    contentLabel.textColor = [UIColor user:[[NameInfoData sharedInstance] dreamVersionCropKey]];
    //: contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    //: contentLabel.text = [PushLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
    contentLabel.text = [BackgroundRandomAttribute content:[[NameInfoData sharedInstance] appCancelData]];//@"扫描二维码，加我为好友";
    //: [_box addSubview:contentLabel];
    [_box addSubview:contentLabel];



    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-32-10, 10, 32, 32);
    self.closeBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-32-10, 10, 32, 32);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-265)/2, 494-40-24, 265, 40);
    self.sureBtn.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40-265)/2, 494-40-24, 265, 40);

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
        //: _iconImageView.layer.cornerRadius = 30;
        _iconImageView.layer.cornerRadius = 30;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(nearAdd) forControlEvents:UIControlEventTouchUpInside];
        //: [_closeBtn setImage:[UIImage imageNamed:@"ic_close"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:[[NameInfoData sharedInstance] appVoiceInputFormat]] forState:UIControlStateNormal];
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(atText) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[PushLanguageManager getTextWithKey:@"activity_qrcode_save_code"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[[NameInfoData sharedInstance] appButtonStr]] forState:UIControlStateNormal];
        //: [_sureBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:[[NameInfoData sharedInstance] noti_spaceTitle]] forState:UIControlStateNormal];
        //: [_sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_sureBtn putUp:(MKButtonEdgeInsetsStyleLeft) line:10];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[[NameInfoData sharedInstance] notiThreadUrl]];
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
        _sureBtn.layer.shadowColor = [UIColor user:[[NameInfoData sharedInstance] notiThreadUrl]].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: -(void)saveQcImage{
-(void)atText{

    //: CGFloat f = [UIScreen mainScreen].scale;
    CGFloat f = [UIScreen mainScreen].scale;
    //: CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*f);
    CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*f);
    //: UIImage *image = [self takeScreenshot:rect];
    UIImage *image = [self shouldDoingButton:rect];

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
                  //: NSString *failed = [PushLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
                  NSString *failed = [BackgroundRandomAttribute content:[[NameInfoData sharedInstance] kCellHolderMainText]];//@"保存失败"
                  //: [SVProgressHUD showMessage:failed];
                  [SVProgressHUD packetMessage:failed];
              //: });
              });
          //: } else {
          } else {
              //: NSString *success = [PushLanguageManager getTextWithKey:@"group_info_activity_update_success"];
              NSString *success = [BackgroundRandomAttribute content:[[NameInfoData sharedInstance] noti_cancelTitle]];//保存成功
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: [SVProgressHUD showMessage:success];
                  [SVProgressHUD packetMessage:success];
              //: });
              });
          }
      //: }];
      }];
}

//: -(UIImage *)takeScreenshot:(CGRect)rect{
-(UIImage *)shouldDoingButton:(CGRect)rect{

    //: UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.box.frame.size.width, self.box.frame.size.height), YES, 0);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.box.frame.size.width, self.box.frame.size.height), YES, 0);
    //设置截屏大小
    //: [[self.box layer] renderInContext:UIGraphicsGetCurrentContext()];
    [[self.box layer] renderInContext:UIGraphicsGetCurrentContext()];
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


//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)tinkle
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
