
#import <Foundation/Foundation.h>

@interface GrandnessData : NSObject

+ (instancetype)sharedInstance;

//: NIM
@property (nonatomic, copy) NSString *main_containerValue;

//: 下载消息文件失败
@property (nonatomic, copy) NSString *dreamColorMayText;

//: 继续导入
@property (nonatomic, copy) NSString *appShowFormat;

//: 本地消息导入
@property (nonatomic, copy) NSString *show_speculateKey;

//: 恭喜你
@property (nonatomic, copy) NSString *mainButtonTitleViewStr;

//: 消息导入成功
@property (nonatomic, copy) NSString *noti_territoryUrl;

//: zip
@property (nonatomic, copy) NSString *show_sustainTitle;

//: 取消导入
@property (nonatomic, copy) NSString *mainStorageBlueContent;

//: 合并失败
@property (nonatomic, copy) NSString *showSessionContent;

//: 重新导入
@property (nonatomic, copy) NSString *dreamShowValue;

//: unzip
@property (nonatomic, copy) NSString *notiContentName;

//: iOS-zip-aes256
@property (nonatomic, copy) NSString *appCostlyTitleKey;

//: 解压失败
@property (nonatomic, copy) NSString *m_buildViewMsg;

//: decryped
@property (nonatomic, copy) NSString *notiWarText;

//: 确定要取消导入？
@property (nonatomic, copy) NSString *main_rangeLiarId;

//: 导入本地消息需要较长时间，请耐心等待
@property (nonatomic, copy) NSString *k_photographerMessageValue;

//: 返回会话列表
@property (nonatomic, copy) NSString *showImageKey;

//: 导入失败！
@property (nonatomic, copy) NSString *show_motMsg;

@end

@implementation GrandnessData

+ (instancetype)sharedInstance {
    static GrandnessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)GrandnessDataToCache:(Byte *)data {
    int metronymicSod = data[0];
    Byte iconAm = data[1];
    int directActor = data[2];
    for (int i = directActor; i < directActor + metronymicSod; i++) {
        int value = data[i] + iconAm;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[directActor + metronymicSod] = 0;
    return data + directActor;
}

- (NSString *)StringFromGrandnessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GrandnessDataToCache:data]];
}

//: 本地消息导入
- (NSString *)show_speculateKey {
    if (!_show_speculateKey) {
        Byte value[] = {18, 78, 11, 206, 101, 126, 177, 200, 227, 220, 210, 152, 78, 94, 151, 78, 98, 152, 104, 58, 152, 51, 97, 151, 97, 110, 151, 55, 87, 65};
        _show_speculateKey = [self StringFromGrandnessData:value];
    }
    return _show_speculateKey;
}

//: unzip
- (NSString *)notiContentName {
    if (!_notiContentName) {
        Byte value[] = {5, 31, 3, 86, 79, 91, 74, 81, 56};
        _notiContentName = [self StringFromGrandnessData:value];
    }
    return _notiContentName;
}

//: 解压失败
- (NSString *)m_buildViewMsg {
    if (!_m_buildViewMsg) {
        Byte value[] = {12, 94, 3, 138, 73, 69, 135, 48, 45, 135, 70, 83, 138, 86, 71, 219};
        _m_buildViewMsg = [self StringFromGrandnessData:value];
    }
    return _m_buildViewMsg;
}

//: 下载消息文件失败
- (NSString *)dreamColorMayText {
    if (!_dreamColorMayText) {
        Byte value[] = {24, 65, 5, 168, 16, 163, 119, 74, 167, 124, 124, 165, 117, 71, 165, 64, 110, 165, 85, 70, 163, 122, 117, 164, 99, 112, 167, 115, 100, 214};
        _dreamColorMayText = [self StringFromGrandnessData:value];
    }
    return _dreamColorMayText;
}

//: decryped
- (NSString *)notiWarText {
    if (!_notiWarText) {
        Byte value[] = {8, 1, 8, 250, 40, 170, 69, 124, 99, 100, 98, 113, 120, 111, 100, 99, 47};
        _notiWarText = [self StringFromGrandnessData:value];
    }
    return _notiWarText;
}

//: iOS-zip-aes256
- (NSString *)appCostlyTitleKey {
    if (!_appCostlyTitleKey) {
        Byte value[] = {14, 59, 5, 17, 255, 46, 20, 24, 242, 63, 46, 53, 242, 38, 42, 56, 247, 250, 251, 121};
        _appCostlyTitleKey = [self StringFromGrandnessData:value];
    }
    return _appCostlyTitleKey;
}

//: 合并失败
- (NSString *)showSessionContent {
    if (!_showSessionContent) {
        Byte value[] = {12, 55, 4, 13, 174, 89, 81, 174, 130, 127, 174, 109, 122, 177, 125, 110, 249};
        _showSessionContent = [self StringFromGrandnessData:value];
    }
    return _showSessionContent;
}

//: NIM
- (NSString *)main_containerValue {
    if (!_main_containerValue) {
        Byte value[] = {3, 39, 6, 123, 127, 14, 39, 34, 38, 9};
        _main_containerValue = [self StringFromGrandnessData:value];
    }
    return _main_containerValue;
}

//: 导入失败！
- (NSString *)show_motMsg {
    if (!_show_motMsg) {
        Byte value[] = {15, 98, 13, 108, 198, 196, 144, 88, 29, 229, 31, 224, 215, 131, 77, 90, 131, 35, 67, 131, 66, 79, 134, 82, 67, 141, 90, 31, 113};
        _show_motMsg = [self StringFromGrandnessData:value];
    }
    return _show_motMsg;
}

//: 确定要取消导入？
- (NSString *)main_rangeLiarId {
    if (!_main_rangeLiarId) {
        Byte value[] = {24, 48, 12, 63, 152, 74, 43, 253, 243, 122, 26, 248, 183, 113, 126, 181, 126, 106, 184, 118, 81, 181, 95, 102, 182, 134, 88, 181, 127, 140, 181, 85, 117, 191, 140, 111, 133};
        _main_rangeLiarId = [self StringFromGrandnessData:value];
    }
    return _main_rangeLiarId;
}

//: 取消导入
- (NSString *)mainStorageBlueContent {
    if (!_mainStorageBlueContent) {
        Byte value[] = {12, 52, 12, 147, 55, 109, 242, 34, 27, 60, 69, 1, 177, 91, 98, 178, 130, 84, 177, 123, 136, 177, 81, 113, 170};
        _mainStorageBlueContent = [self StringFromGrandnessData:value];
    }
    return _mainStorageBlueContent;
}

//: 恭喜你
- (NSString *)mainButtonTitleViewStr {
    if (!_mainButtonTitleViewStr) {
        Byte value[] = {9, 89, 6, 209, 149, 157, 141, 40, 84, 140, 61, 67, 139, 100, 71, 134};
        _mainButtonTitleViewStr = [self StringFromGrandnessData:value];
    }
    return _mainButtonTitleViewStr;
}

//: 消息导入成功
- (NSString *)noti_territoryUrl {
    if (!_noti_territoryUrl) {
        Byte value[] = {18, 28, 13, 94, 250, 93, 21, 87, 147, 79, 32, 114, 177, 202, 154, 108, 202, 101, 147, 201, 147, 160, 201, 105, 137, 202, 108, 116, 201, 110, 131, 159};
        _noti_territoryUrl = [self StringFromGrandnessData:value];
    }
    return _noti_territoryUrl;
}

//: zip
- (NSString *)show_sustainTitle {
    if (!_show_sustainTitle) {
        Byte value[] = {3, 87, 13, 15, 100, 86, 61, 27, 95, 34, 210, 3, 5, 35, 18, 25, 22};
        _show_sustainTitle = [self StringFromGrandnessData:value];
    }
    return _show_sustainTitle;
}

//: 返回会话列表
- (NSString *)showImageKey {
    if (!_showImageKey) {
        Byte value[] = {18, 4, 9, 104, 141, 199, 193, 239, 31, 228, 187, 144, 225, 151, 154, 224, 184, 150, 228, 171, 153, 225, 132, 147, 228, 157, 164, 114};
        _showImageKey = [self StringFromGrandnessData:value];
    }
    return _showImageKey;
}

//: 重新导入
- (NSString *)dreamShowValue {
    if (!_dreamShowValue) {
        Byte value[] = {12, 10, 9, 166, 238, 43, 45, 76, 196, 223, 125, 131, 220, 140, 166, 219, 165, 178, 219, 123, 155, 132};
        _dreamShowValue = [self StringFromGrandnessData:value];
    }
    return _dreamShowValue;
}

//: 导入本地消息需要较长时间，请耐心等待
- (NSString *)k_photographerMessageValue {
    if (!_k_photographerMessageValue) {
        Byte value[] = {54, 58, 9, 251, 220, 195, 128, 141, 225, 171, 117, 130, 171, 75, 107, 172, 98, 114, 171, 98, 118, 172, 124, 78, 172, 71, 117, 175, 98, 70, 174, 108, 71, 174, 132, 73, 175, 91, 133, 172, 93, 124, 175, 93, 122, 181, 130, 82, 174, 117, 125, 174, 70, 86, 171, 133, 73, 173, 115, 79, 171, 132, 75, 104};
        _k_photographerMessageValue = [self StringFromGrandnessData:value];
    }
    return _k_photographerMessageValue;
}

//: 继续导入
- (NSString *)appShowFormat {
    if (!_appShowFormat) {
        Byte value[] = {12, 65, 4, 86, 166, 122, 102, 166, 122, 108, 164, 110, 123, 164, 68, 100, 53};
        _appShowFormat = [self StringFromGrandnessData:value];
    }
    return _appShowFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TradeViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "TradeViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "SizeView.h"
//: #import "NTESMigrateCompleteView.h"
#import "DoinglyOfView.h"
//: #import "NSData+NTES.h"
#import "NSData+SearchedTeam.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "TopMust.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "BecharmBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const kTempScaleValue = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface TradeViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation TradeViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = [GrandnessData sharedInstance].show_speculateKey.ting;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    SizeView *progressView = [[SizeView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(flushOutside:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [GrandnessData sharedInstance].k_photographerMessageValue.ting;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self disableGrayFile];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: const CGRect bounds = self.view.bounds;
    const CGRect bounds = self.view.bounds;
    //: self.contentView.frame = bounds;
    self.contentView.frame = bounds;
}

//: - (void)setContentView:(UIView *)contentView {
- (void)setContentView:(UIView *)contentView {
    //: if (_contentView == contentView) {
    if (_contentView == contentView) {
        //: return;
        return;
    }
    //: if (contentView) {
    if (contentView) {
        //: [self.view addSubview:contentView];
        [self.view addSubview:contentView];
    }
    //: if (_contentView) {
    if (_contentView) {
        //: [_contentView removeFromSuperview];
        [_contentView removeFromSuperview];
    }
    //: _contentView = contentView;
    _contentView = contentView;
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)flushOutside:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[GrandnessData sharedInstance].main_rangeLiarId.ting message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[GrandnessData sharedInstance].mainStorageBlueContent.ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[GrandnessData sharedInstance].appShowFormat.ting style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionGoon];
    [alertController addAction:actionGoon];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onReturnButton:(id)sender {
- (void)doingButton:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    BecharmBarController *tabController = [BecharmBarController enable];
    //: UIViewController *selectedVC = tabController.selectedViewController;
    UIViewController *selectedVC = tabController.selectedViewController;
    //: if ([selectedVC isKindOfClass:[UINavigationController class]]) {
    if ([selectedVC isKindOfClass:[UINavigationController class]]) {
        //: [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
        [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
    }
    //: tabController.selectedIndex = 0;
    tabController.selectedIndex = 0;
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onImportFailed:(NSError *)error description:(NSString *)description {
- (void)withDescription:(NSError *)error value:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[GrandnessData sharedInstance].show_motMsg.ting message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[GrandnessData sharedInstance].dreamShowValue.ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self disableGrayFile];
    //: }];
    }];
    //: [alertController addAction:actionRetry];
    [alertController addAction:actionRetry];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onImportSuccess {
- (void)video {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    DoinglyOfView *completeView = [[DoinglyOfView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [GrandnessData sharedInstance].mainButtonTitleViewStr.ting;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = [GrandnessData sharedInstance].noti_territoryUrl.ting;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:[GrandnessData sharedInstance].showImageKey.ting forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(doingButton:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)disableGrayFile {
    //: [self removeTempFiles];
    [self pin];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self statusIn];
    //: [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
    [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
                                        //: filepath:aesFilePath
                                        filepath:aesFilePath
                                        //: progress:nil
                                        progress:nil
                                      //: completion:^(NSError * _Nullable error)
                                      completion:^(NSError * _Nullable error)
     {
         //: if (error) {
         if (error) {
             //: [self onImportFailed:error description:@"下载消息文件失败".ntes_localized];
             [self withDescription:error value:[GrandnessData sharedInstance].dreamColorMayText.ting];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self change:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self user:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self sessionDown:unzipPath];

             // 删除中间文件
             //: [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
             [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
         //: });
         });
     //: }];
     }];
}

// 如果上传时候有加密，需要先解密
//: - (NSString *)decryptMeessageFileAtPath:(NSString *)path {
- (NSString *)change:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data edgeSub:aesKey assemblage:kTempScaleValue];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:[GrandnessData sharedInstance].notiWarText];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:[GrandnessData sharedInstance].show_sustainTitle];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
            //: [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
        }
        //: [decryptedData writeToFile:decryptedPath atomically:YES];
        [decryptedData writeToFile:decryptedPath atomically:YES];
        //: return decryptedPath;
        return decryptedPath;
    }
}

// 如果上传时候有压缩，解密完了之后要解压缩
//: - (NSString *)unzipMessageFileAtPath:(NSString *)path {
- (NSString *)user:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:[GrandnessData sharedInstance].notiContentName];

    //
    //: NSString *unzipPath = nil;
    NSString *unzipPath = nil;
    //: BOOL directory = NO;
    BOOL directory = NO;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
        //: if (directory) {
        if (directory) {
            //: NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            //: unzipPath = files.count > 0 ? files[0] : nil;
            unzipPath = files.count > 0 ? files[0] : nil;
            //: unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
            unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
        }
        //: else {
        else {
            //: unzipPath = dstPath;
            unzipPath = dstPath;
        }
    }

    // 删掉中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return unzipPath;
    return unzipPath;
}

//: - (void)importMessageFileAtPath:(NSString *)path {
- (void)sessionDown:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self withDescription:nil value:[GrandnessData sharedInstance].m_buildViewMsg.ting];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    TopMust *importImpl = [[TopMust alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        SizeView *progressView = (SizeView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[SizeView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self withDescription:error value:[GrandnessData sharedInstance].showSessionContent.ting];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self video];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)statusIn {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:[GrandnessData sharedInstance].main_containerValue];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:[GrandnessData sharedInstance].appCostlyTitleKey];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)pin {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self statusIn] error:nil];
}

//: @end
@end