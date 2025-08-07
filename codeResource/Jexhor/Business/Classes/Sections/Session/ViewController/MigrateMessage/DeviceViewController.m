
#import <Foundation/Foundation.h>

@interface MarginSlatData : NSObject

+ (instancetype)sharedInstance;

//: 继续导出
@property (nonatomic, copy) NSString *appVotingFormat;

//: 取消导出
@property (nonatomic, copy) NSString *mainParticipateData;

//: 重新导出
@property (nonatomic, copy) NSString *app_legallyName;

//: 本地消息格式化导出失败
@property (nonatomic, copy) NSString *dreamLiarTingStr;

//: 导出本地消息需要较长时间，请耐心等待
@property (nonatomic, copy) NSString *appSodPath;

//: 导出失败!
@property (nonatomic, copy) NSString *dreamHolderMessage;

//: aes256
@property (nonatomic, copy) NSString *appHeavilyUrl;

//: 恭喜你
@property (nonatomic, copy) NSString *app_showAspectIdent;

//: 本地消息导出成功，请在新设备上点击导入吧
@property (nonatomic, copy) NSString *userJumpStr;

//: 可导出的消息记录总数为空
@property (nonatomic, copy) NSString *k_votingIdent;

//: 确定要取消导出?
@property (nonatomic, copy) NSString *dream_liarIdent;

//: 本地消息导出
@property (nonatomic, copy) NSString *dream_sessionStr;

@end

@implementation MarginSlatData

+ (instancetype)sharedInstance {
    static MarginSlatData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MarginSlatDataToCache:(Byte *)data {
    int influentialPull = data[0];
    Byte mostlyPower = data[1];
    int blankLegislature = data[2];
    for (int i = blankLegislature; i < blankLegislature + influentialPull; i++) {
        int value = data[i] + mostlyPower;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[blankLegislature + influentialPull] = 0;
    return data + blankLegislature;
}

- (NSString *)StringFromMarginSlatData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MarginSlatDataToCache:data]];
}

//: 恭喜你
- (NSString *)app_showAspectIdent {
    if (!_app_showAspectIdent) {
        Byte value[] = {9, 8, 4, 158, 222, 121, 165, 221, 142, 148, 220, 181, 152, 250};
        _app_showAspectIdent = [self StringFromMarginSlatData:value];
    }
    return _app_showAspectIdent;
}

//: 确定要取消导出?
- (NSString *)dream_liarIdent {
    if (!_dream_liarIdent) {
        Byte value[] = {22, 27, 8, 101, 196, 247, 55, 177, 204, 134, 147, 202, 147, 127, 205, 139, 102, 202, 116, 123, 203, 155, 109, 202, 148, 161, 202, 108, 159, 36, 42};
        _dream_liarIdent = [self StringFromMarginSlatData:value];
    }
    return _dream_liarIdent;
}

//: 本地消息格式化导出失败
- (NSString *)dreamLiarTingStr {
    if (!_dreamLiarTingStr) {
        Byte value[] = {33, 55, 4, 117, 175, 101, 117, 174, 101, 121, 175, 127, 81, 175, 74, 120, 175, 105, 133, 174, 133, 88, 174, 85, 95, 174, 120, 133, 174, 80, 131, 174, 109, 122, 177, 125, 110, 7};
        _dreamLiarTingStr = [self StringFromMarginSlatData:value];
    }
    return _dreamLiarTingStr;
}

//: aes256
- (NSString *)appHeavilyUrl {
    if (!_appHeavilyUrl) {
        Byte value[] = {6, 83, 10, 149, 120, 232, 32, 157, 252, 166, 14, 18, 32, 223, 226, 227, 93};
        _appHeavilyUrl = [self StringFromMarginSlatData:value];
    }
    return _appHeavilyUrl;
}

//: 继续导出
- (NSString *)appVotingFormat {
    if (!_appVotingFormat) {
        Byte value[] = {12, 82, 9, 49, 182, 216, 80, 217, 14, 149, 105, 85, 149, 105, 91, 147, 93, 106, 147, 53, 104, 94};
        _appVotingFormat = [self StringFromMarginSlatData:value];
    }
    return _appVotingFormat;
}

//: 本地消息导出
- (NSString *)dream_sessionStr {
    if (!_dream_sessionStr) {
        Byte value[] = {18, 20, 4, 239, 210, 136, 152, 209, 136, 156, 210, 162, 116, 210, 109, 155, 209, 155, 168, 209, 115, 166, 180};
        _dream_sessionStr = [self StringFromMarginSlatData:value];
    }
    return _dream_sessionStr;
}

//: 重新导出
- (NSString *)app_legallyName {
    if (!_app_legallyName) {
        Byte value[] = {12, 26, 10, 114, 210, 151, 107, 50, 168, 182, 207, 109, 115, 204, 124, 150, 203, 149, 162, 203, 109, 160, 47};
        _app_legallyName = [self StringFromMarginSlatData:value];
    }
    return _app_legallyName;
}

//: 导出本地消息需要较长时间，请耐心等待
- (NSString *)appSodPath {
    if (!_appSodPath) {
        Byte value[] = {54, 93, 5, 224, 67, 136, 82, 95, 136, 42, 93, 137, 63, 79, 136, 63, 83, 137, 89, 43, 137, 36, 82, 140, 63, 35, 139, 73, 36, 139, 97, 38, 140, 56, 98, 137, 58, 89, 140, 58, 87, 146, 95, 47, 139, 82, 90, 139, 35, 51, 136, 98, 38, 138, 80, 44, 136, 97, 40, 116};
        _appSodPath = [self StringFromMarginSlatData:value];
    }
    return _appSodPath;
}

//: 可导出的消息记录总数为空
- (NSString *)k_votingIdent {
    if (!_k_votingIdent) {
        Byte value[] = {36, 51, 13, 172, 164, 95, 158, 41, 175, 110, 33, 20, 182, 178, 92, 124, 178, 124, 137, 178, 84, 135, 180, 103, 81, 179, 131, 85, 179, 78, 124, 181, 123, 125, 178, 138, 98, 179, 77, 136, 179, 98, 125, 177, 133, 135, 180, 118, 135, 241};
        _k_votingIdent = [self StringFromMarginSlatData:value];
    }
    return _k_votingIdent;
}

//: 导出失败!
- (NSString *)dreamHolderMessage {
    if (!_dreamHolderMessage) {
        Byte value[] = {13, 39, 4, 178, 190, 136, 149, 190, 96, 147, 190, 125, 138, 193, 141, 126, 250, 150};
        _dreamHolderMessage = [self StringFromMarginSlatData:value];
    }
    return _dreamHolderMessage;
}

//: 取消导出
- (NSString *)mainParticipateData {
    if (!_mainParticipateData) {
        Byte value[] = {12, 34, 6, 221, 64, 36, 195, 109, 116, 196, 148, 102, 195, 141, 154, 195, 101, 152, 83};
        _mainParticipateData = [self StringFromMarginSlatData:value];
    }
    return _mainParticipateData;
}

//: 本地消息导出成功，请在新设备上点击导入吧
- (NSString *)userJumpStr {
    if (!_userJumpStr) {
        Byte value[] = {60, 60, 11, 179, 57, 57, 136, 73, 6, 86, 103, 170, 96, 112, 169, 96, 116, 170, 122, 76, 170, 69, 115, 169, 115, 128, 169, 75, 126, 170, 76, 84, 169, 78, 99, 179, 128, 80, 172, 115, 123, 169, 96, 108, 170, 90, 116, 172, 114, 130, 169, 104, 75, 168, 124, 78, 171, 70, 125, 169, 75, 127, 169, 115, 128, 169, 73, 105, 169, 84, 107, 91};
        _userJumpStr = [self StringFromMarginSlatData:value];
    }
    return _userJumpStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "DeviceViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "SizeView.h"
//: #import "NTESMigrateCompleteView.h"
#import "DoinglyOfView.h"
//: #import "NSString+NTES.h"
#import "NSString+SearchedTeam.h"
//: #import "NSData+NTES.h"
#import "NSData+SearchedTeam.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "TextImpl.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const kTempScaleValue = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface DeviceViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation DeviceViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = [MarginSlatData sharedInstance].dream_sessionStr.ting;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    SizeView *progressView = [[SizeView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(flushOutside:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [MarginSlatData sharedInstance].appSodPath.ting;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self modelBy];
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

//: #pragma mark
#pragma mark
//: - (void)exportMessageInfos {
- (void)modelBy {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    TextImpl *exportImpl = [[TextImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[SizeView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            SizeView *progressView = (SizeView *)self.contentView;
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        //: if (error || !resultFilePath) {
        if (error || !resultFilePath) {
            //: if (error.code == 1001) {
            if (error.code == 1001) {
                //: [self onExportEmpty:error];
                [self vacant:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self bulkFailed:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self contact:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)flushOutside:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[MarginSlatData sharedInstance].dream_liarIdent.ting message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[MarginSlatData sharedInstance].mainParticipateData.ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[MarginSlatData sharedInstance].appVotingFormat.ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)bulkFailed:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[MarginSlatData sharedInstance].dreamHolderMessage.ting message:[MarginSlatData sharedInstance].dreamLiarTingStr.ting preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[MarginSlatData sharedInstance].app_legallyName.ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self modelBy];
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

//: - (void)onExportSuccessAtPath:(NSString *)infoFilePath {
- (void)contact:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self date:infoFilePath];
    //: if (!zipFilePath) {
    if (!zipFilePath) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: return;
        return;
    }

    // 对导出结果进行加密，避免明文消息的泄露
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        NSString *encryptedFilePath = [self sound:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self arrayRestaurantAttendantServer:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)vacant:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = [MarginSlatData sharedInstance].k_votingIdent.ting;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)backgroundInKey:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self bulkFailed:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)digitiser {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    DoinglyOfView *completeView = [[DoinglyOfView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [MarginSlatData sharedInstance].app_showAspectIdent.ting;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = [MarginSlatData sharedInstance].userJumpStr.ting;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".ting forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(doingButton:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)date:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)sound:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString withThreadTeam:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data imageVector:aesKey nameValue:kTempScaleValue];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:[MarginSlatData sharedInstance].appHeavilyUrl];
    //: [encryptedData writeToFile:encrypedPath atomically:YES];
    [encryptedData writeToFile:encrypedPath atomically:YES];

    // 移除中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return encrypedPath;
    return encrypedPath;
}

//: #pragma mark -- upload to server
#pragma mark -- upload to server
//: - (void)uploadMessageFileToServer:(NSString *)path {
- (void)arrayRestaurantAttendantServer:(NSString *)path {
    //: [[NIMSDK sharedSDK].resourceManager upload:path
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      //: progress:nil
                                      progress:nil
                                    //: completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        //: if (error || !urlString) {
        if (error || !urlString) {
            //: [self onMigrateToRemoteFailed:error];
            [self backgroundInKey:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self name:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)name:(NSString *)url {

    //: [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        //: key:self.secureKey
                                                                        key:self.secureKey
                                                                 //: completion:^(NSError * _Nullable error)
                                                                 completion:^(NSError * _Nullable error)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onMigrateToRemoteFailed:error];
            [self backgroundInKey:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self digitiser];
        }
    //: }];
    }];
}

//: @end
@end