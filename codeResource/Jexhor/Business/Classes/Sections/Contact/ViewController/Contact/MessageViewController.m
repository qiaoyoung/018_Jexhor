
#import <Foundation/Foundation.h>

typedef struct {
    Byte holderCancel;
    Byte *status;
    unsigned int pullSession;
} StructThreadData;

@interface ThreadData : NSObject

+ (instancetype)sharedInstance;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *show_nameIdent;

//: uid
@property (nonatomic, copy) NSString *userSessionKey;

//: msg
@property (nonatomic, copy) NSString *m_iconMessage;

//: code
@property (nonatomic, copy) NSString *show_collectionUrl;

//: icon_QR_close
@property (nonatomic, copy) NSString *userRangeFormat;

//: data
@property (nonatomic, copy) NSString *appEnableStatusStr;

//: /user/search
@property (nonatomic, copy) NSString *app_viewTitle;

//: warm_prompt
@property (nonatomic, copy) NSString *mContainerData;

//: account
@property (nonatomic, copy) NSString *main_pathData;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *userTextMessage;

//: tag_activity_set
@property (nonatomic, copy) NSString *kUserKey;

//: scan_end_sound.caf
@property (nonatomic, copy) NSString *notiInputId;

@end

@implementation ThreadData

+ (instancetype)sharedInstance {
    static ThreadData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ThreadDataToByte:(StructThreadData *)data {
    for (int i = 0; i < data->pullSession; i++) {
        data->status[i] ^= data->holderCancel;
    }
    data->status[data->pullSession] = 0;
    return data->status;
}

- (NSString *)StringFromThreadData:(StructThreadData *)data {
    return [NSString stringWithUTF8String:(char *)[self ThreadDataToByte:data]];
}

//: setting_privacy_camera
- (NSString *)show_nameIdent {
    if (!_show_nameIdent) {
        StructThreadData value = (StructThreadData){94, (Byte []){45, 59, 42, 42, 55, 48, 57, 1, 46, 44, 55, 40, 63, 61, 39, 1, 61, 63, 51, 59, 44, 63, 108}, 22};
        _show_nameIdent = [self StringFromThreadData:&value];
    }
    return _show_nameIdent;
}

//: contact_tag_fragment_cancel
- (NSString *)userTextMessage {
    if (!_userTextMessage) {
        StructThreadData value = (StructThreadData){21, (Byte []){118, 122, 123, 97, 116, 118, 97, 74, 97, 116, 114, 74, 115, 103, 116, 114, 120, 112, 123, 97, 74, 118, 116, 123, 118, 112, 121, 181}, 27};
        _userTextMessage = [self StringFromThreadData:&value];
    }
    return _userTextMessage;
}

//: data
- (NSString *)appEnableStatusStr {
    if (!_appEnableStatusStr) {
        StructThreadData value = (StructThreadData){95, (Byte []){59, 62, 43, 62, 101}, 4};
        _appEnableStatusStr = [self StringFromThreadData:&value];
    }
    return _appEnableStatusStr;
}

//: scan_end_sound.caf
- (NSString *)notiInputId {
    if (!_notiInputId) {
        StructThreadData value = (StructThreadData){126, (Byte []){13, 29, 31, 16, 33, 27, 16, 26, 33, 13, 17, 11, 16, 26, 80, 29, 31, 24, 24}, 18};
        _notiInputId = [self StringFromThreadData:&value];
    }
    return _notiInputId;
}

//: icon_QR_close
- (NSString *)userRangeFormat {
    if (!_userRangeFormat) {
        StructThreadData value = (StructThreadData){246, (Byte []){159, 149, 153, 152, 169, 167, 164, 169, 149, 154, 153, 133, 147, 50}, 13};
        _userRangeFormat = [self StringFromThreadData:&value];
    }
    return _userRangeFormat;
}

//: warm_prompt
- (NSString *)mContainerData {
    if (!_mContainerData) {
        StructThreadData value = (StructThreadData){15, (Byte []){120, 110, 125, 98, 80, 127, 125, 96, 98, 127, 123, 239}, 11};
        _mContainerData = [self StringFromThreadData:&value];
    }
    return _mContainerData;
}

//: uid
- (NSString *)userSessionKey {
    if (!_userSessionKey) {
        StructThreadData value = (StructThreadData){128, (Byte []){245, 233, 228, 15}, 3};
        _userSessionKey = [self StringFromThreadData:&value];
    }
    return _userSessionKey;
}

//: tag_activity_set
- (NSString *)kUserKey {
    if (!_kUserKey) {
        StructThreadData value = (StructThreadData){11, (Byte []){127, 106, 108, 84, 106, 104, 127, 98, 125, 98, 127, 114, 84, 120, 110, 127, 176}, 16};
        _kUserKey = [self StringFromThreadData:&value];
    }
    return _kUserKey;
}

//: account
- (NSString *)main_pathData {
    if (!_main_pathData) {
        StructThreadData value = (StructThreadData){143, (Byte []){238, 236, 236, 224, 250, 225, 251, 206}, 7};
        _main_pathData = [self StringFromThreadData:&value];
    }
    return _main_pathData;
}

//: code
- (NSString *)show_collectionUrl {
    if (!_show_collectionUrl) {
        StructThreadData value = (StructThreadData){102, (Byte []){5, 9, 2, 3, 160}, 4};
        _show_collectionUrl = [self StringFromThreadData:&value];
    }
    return _show_collectionUrl;
}

//: msg
- (NSString *)m_iconMessage {
    if (!_m_iconMessage) {
        StructThreadData value = (StructThreadData){231, (Byte []){138, 148, 128, 122}, 3};
        _m_iconMessage = [self StringFromThreadData:&value];
    }
    return _m_iconMessage;
}

//: /user/search
- (NSString *)app_viewTitle {
    if (!_app_viewTitle) {
        StructThreadData value = (StructThreadData){233, (Byte []){198, 156, 154, 140, 155, 198, 154, 140, 136, 155, 138, 129, 96}, 12};
        _app_viewTitle = [self StringFromThreadData:&value];
    }
    return _app_viewTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "MessageViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "ZMONScanToolBar.h"
#import "ColorView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "NTESUserQRCodeViewController.h"
#import "EnableViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface MessageViewController ()<Delegate, NameInsert, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    CenterRead *scanCode;
}
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) SessionView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) ColorView *toolBar;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation MessageViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self mentalImage];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self part];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self mentalImage];
}

//: - (void)start {
- (void)part {
    //: [scanCode startRunning];
    [scanCode allowTo];
    //: [self.scanView startScanning];
    [self.scanView fullPhaseOfTheMoon];
}

//: - (void)stop {
- (void)mentalImage {
    //: [scanCode stopRunning];
    [scanCode impressionName];
    //: [self.scanView stopScanning];
    [self.scanView stopInHigh];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self untilRange];

    //: [self configScanCode];
    [self index];
}

//: - (void)configUI {
- (void)untilRange {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[ThreadData sharedInstance].userRangeFormat] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice title], 40, 40);

}

//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)configScanCode {
- (void)index {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[CenterRead alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode message]) {
        //: return;;
        return;;
    }
    //: scanCode.delegate = self;
    scanCode.delegate = self;
    //: scanCode.sampleBufferDelegate = self;
    scanCode.sampleBufferDelegate = self;
    //: scanCode.preview = self.view;
    scanCode.preview = self.view;
}

//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result {
- (void)lawfulBlackAndWhite:(CenterRead *)scanCode comment:(NSString *)result {
    //: [self stop];
    [self mentalImage];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode firstTeam:[ThreadData sharedInstance].notiInputId];

    //: [self addFriend:result];
    [self colorFriend:result];
//    AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)stepReport:(CenterRead *)scanCode max:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar valueTorch];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar toiletKitTorch];
    }
}

//: - (SGScanView *)scanView {
- (SessionView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        MustConfigure *configure = [[MustConfigure alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[SessionView alloc] initWithRangeConfigure:CGRectMake(x, y, w, h) message:configure];

        //: CGFloat scan_x = 0;
        CGFloat scan_x = 0;
        //: CGFloat scan_y = 0.18 * self.view.frame.size.height;
        CGFloat scan_y = 0.18 * self.view.frame.size.height;
        //: CGFloat scan_w = self.view.frame.size.width - 2 * x;
        CGFloat scan_w = self.view.frame.size.width - 2 * x;
        //: CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        //: _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);
        _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: _scanView.doubleTapBlock = ^(BOOL selected) {
        _scanView.doubleTapBlock = ^(BOOL selected) {
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;

            //: if (selected) {
            if (selected) {
                //: [strongSelf->scanCode setVideoZoomFactor:4.0];
                [strongSelf->scanCode setValueFactor:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setValueFactor:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (ZMONScanToolBar *)toolBar {
- (ColorView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[ColorView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar maxBy:self tap:@selector(highlightStatus)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar year:self swordplay:@selector(messageSession)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)qrcode_action {
- (void)highlightStatus {
    //: [self stop];
    [self mentalImage];
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    EnableViewController *vc = [[EnableViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)messageSession {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [SkimOverPermission streetSmart:SGPermissionTypePhoto bubbleQuick:^(SkimOverPermission * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission message:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self withController];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self withController];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PushLanguageManager getTextWithKey:@"warm_prompt"] message:[PushLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[ThreadData sharedInstance].mContainerData] message:[BackgroundRandomAttribute content:[ThreadData sharedInstance].show_nameIdent] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ThreadData sharedInstance].userTextMessage] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ThreadData sharedInstance].kUserKey] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];

        //: } else if (status == SGPermissionStatusRestricted) {
        } else if (status == SGPermissionStatusRestricted) {

//            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//            if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//            }

            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PushLanguageManager getTextWithKey:@"warm_prompt"] message:[PushLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:[ThreadData sharedInstance].mContainerData] message:[BackgroundRandomAttribute content:[ThreadData sharedInstance].show_nameIdent] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ThreadData sharedInstance].userTextMessage] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[ThreadData sharedInstance].kUserKey] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];
        }
    //: }];
    }];
}


//: - (void)_enterImagePickerController {
- (void)withController {
    //: [self stop];
    [self mentalImage];

    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    //: [self presentViewController:imagePicker animated:YES completion:nil];
    [self presentViewController:imagePicker animated:YES completion:nil];
}

//: #pragma mark - - UIImagePickerControllerDelegate 的方法
#pragma mark - - UIImagePickerControllerDelegate 的方法
//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    //: [self start];
    [self part];
}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    //: UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [scanCode readQRCode:image completion:^(NSString *result) {
    [scanCode image:image adpressed:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self part];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode firstTeam:[ThreadData sharedInstance].notiInputId];
            //: [self addFriend:result];
            [self colorFriend:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)addFriend:(NSString *)userId{
- (void)colorFriend:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:[ThreadData sharedInstance].main_pathData];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[ThreadData sharedInstance].app_viewTitle] view:dict fort:YES generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[ThreadData sharedInstance].show_collectionUrl];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict index:[ThreadData sharedInstance].m_iconMessage];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[ThreadData sharedInstance].appEnableStatusStr];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data index:[ThreadData sharedInstance].userSessionKey];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uid];
                AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD packetMessage:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end
