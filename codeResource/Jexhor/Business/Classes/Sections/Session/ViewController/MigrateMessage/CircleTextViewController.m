
#import <Foundation/Foundation.h>

@interface ConflictData : NSObject

@end

@implementation ConflictData

+ (Byte *)ConflictDataToCache:(Byte *)data {
    int planetUndertake = data[0];
    Byte infoKeep = data[1];
    int appearIllegal = data[2];
    for (int i = appearIllegal; i < appearIllegal + planetUndertake; i++) {
        int value = data[i] + infoKeep;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[appearIllegal + planetUndertake] = 0;
    return data + appearIllegal;
}

+ (NSString *)StringFromConflictData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConflictDataToCache:data]];
}

//: 恭喜你
+ (NSString *)userDrugData {
    /* static */ NSString *userDrugData = nil;
    if (!userDrugData) {
        Byte value[] = {9, 71, 10, 61, 141, 190, 178, 87, 111, 221, 159, 58, 102, 158, 79, 85, 157, 118, 89, 114};
        userDrugData = [self StringFromConflictData:value];
    }
    return userDrugData;
}

//: 重新导出
+ (NSString *)dream_suspectTitle {
    /* static */ NSString *dream_suspectTitle = nil;
    if (!dream_suspectTitle) {
        Byte value[] = {12, 94, 12, 164, 133, 70, 58, 29, 12, 148, 204, 192, 139, 41, 47, 136, 56, 82, 135, 81, 94, 135, 41, 92, 121};
        dream_suspectTitle = [self StringFromConflictData:value];
    }
    return dream_suspectTitle;
}

//: aes256
+ (NSString *)user_modeAccountSuspectName {
    /* static */ NSString *user_modeAccountSuspectName = nil;
    if (!user_modeAccountSuspectName) {
        Byte value[] = {6, 4, 6, 32, 212, 21, 93, 97, 111, 46, 49, 50, 91};
        user_modeAccountSuspectName = [self StringFromConflictData:value];
    }
    return user_modeAccountSuspectName;
}

//: 可导出的消息记录总数为空
+ (NSString *)notiFortunateTitle {
    /* static */ NSString *notiFortunateTitle = nil;
    if (!notiFortunateTitle) {
        Byte value[] = {36, 14, 13, 137, 122, 244, 130, 19, 184, 61, 220, 5, 6, 215, 129, 161, 215, 161, 174, 215, 121, 172, 217, 140, 118, 216, 168, 122, 216, 115, 161, 218, 160, 162, 215, 175, 135, 216, 114, 173, 216, 135, 162, 214, 170, 172, 217, 155, 172, 125};
        notiFortunateTitle = [self StringFromConflictData:value];
    }
    return notiFortunateTitle;
}

//: 确定要取消导出?
+ (NSString *)userJournalistName {
    /* static */ NSString *userJournalistName = nil;
    if (!userJournalistName) {
        Byte value[] = {22, 71, 12, 227, 20, 43, 39, 104, 11, 31, 199, 219, 160, 90, 103, 158, 103, 83, 161, 95, 58, 158, 72, 79, 159, 111, 65, 158, 104, 117, 158, 64, 115, 248, 51};
        userJournalistName = [self StringFromConflictData:value];
    }
    return userJournalistName;
}

//: 本地消息导出成功，请在新设备上点击导入吧
+ (NSString *)k_buttonData {
    /* static */ NSString *k_buttonData = nil;
    if (!k_buttonData) {
        Byte value[] = {60, 86, 5, 152, 36, 144, 70, 86, 143, 70, 90, 144, 96, 50, 144, 43, 89, 143, 89, 102, 143, 49, 100, 144, 50, 58, 143, 52, 73, 153, 102, 54, 146, 89, 97, 143, 70, 82, 144, 64, 90, 146, 88, 104, 143, 78, 49, 142, 98, 52, 145, 44, 99, 143, 49, 101, 143, 89, 102, 143, 47, 79, 143, 58, 81, 169};
        k_buttonData = [self StringFromConflictData:value];
    }
    return k_buttonData;
}

//: 取消导出
+ (NSString *)mainSizeHandleCousinValue {
    /* static */ NSString *mainSizeHandleCousinValue = nil;
    if (!mainSizeHandleCousinValue) {
        Byte value[] = {12, 20, 12, 141, 163, 245, 190, 112, 247, 8, 189, 229, 209, 123, 130, 210, 162, 116, 209, 155, 168, 209, 115, 166, 135};
        mainSizeHandleCousinValue = [self StringFromConflictData:value];
    }
    return mainSizeHandleCousinValue;
}

//: 本地消息格式化导出失败
+ (NSString *)kAtDrugValue {
    /* static */ NSString *kAtDrugValue = nil;
    if (!kAtDrugValue) {
        Byte value[] = {33, 15, 4, 218, 215, 141, 157, 214, 141, 161, 215, 167, 121, 215, 114, 160, 215, 145, 173, 214, 173, 128, 214, 125, 135, 214, 160, 173, 214, 120, 171, 214, 149, 162, 217, 165, 150, 59};
        kAtDrugValue = [self StringFromConflictData:value];
    }
    return kAtDrugValue;
}

//: 导出本地消息需要较长时间，请耐心等待
+ (NSString *)notiItsName {
    /* static */ NSString *notiItsName = nil;
    if (!notiItsName) {
        Byte value[] = {54, 18, 9, 142, 158, 205, 12, 154, 197, 211, 157, 170, 211, 117, 168, 212, 138, 154, 211, 138, 158, 212, 164, 118, 212, 111, 157, 215, 138, 110, 214, 148, 111, 214, 172, 113, 215, 131, 173, 212, 133, 164, 215, 133, 162, 221, 170, 122, 214, 157, 165, 214, 110, 126, 211, 173, 113, 213, 155, 119, 211, 172, 115, 34};
        notiItsName = [self StringFromConflictData:value];
    }
    return notiItsName;
}

//: 导出失败!
+ (NSString *)m_premiumValue {
    /* static */ NSString *m_premiumValue = nil;
    if (!m_premiumValue) {
        Byte value[] = {13, 88, 13, 155, 124, 49, 116, 58, 149, 31, 209, 153, 181, 141, 87, 100, 141, 47, 98, 141, 76, 89, 144, 92, 77, 201, 30};
        m_premiumValue = [self StringFromConflictData:value];
    }
    return m_premiumValue;
}

//: 本地消息导出
+ (NSString *)noti_balanceAcheValue {
    /* static */ NSString *noti_balanceAcheValue = nil;
    if (!noti_balanceAcheValue) {
        Byte value[] = {18, 60, 5, 86, 206, 170, 96, 112, 169, 96, 116, 170, 122, 76, 170, 69, 115, 169, 115, 128, 169, 75, 126, 78};
        noti_balanceAcheValue = [self StringFromConflictData:value];
    }
    return noti_balanceAcheValue;
}

//: 继续导出
+ (NSString *)mAcheName {
    /* static */ NSString *mAcheName = nil;
    if (!mAcheName) {
        Byte value[] = {12, 44, 11, 15, 130, 65, 199, 104, 40, 167, 16, 187, 143, 123, 187, 143, 129, 185, 131, 144, 185, 91, 142, 179};
        mAcheName = [self StringFromConflictData:value];
    }
    return mAcheName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  CircleTextViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "CircleTextViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "VideoView.h"
//: #import "NTESMigrateCompleteView.h"
#import "InstalmentView.h"
//: #import "NSString+NTES.h"
#import "NSString+Recent.h"
//: #import "NSData+NTES.h"
#import "NSData+Recent.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "SmuggleImpl.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const main_cellData = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface CircleTextViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation CircleTextViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = [ConflictData noti_balanceAcheValue].shouldLocalized;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    VideoView *progressView = [[VideoView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(markName:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [ConflictData notiItsName].shouldLocalized;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self limit];
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
- (void)limit {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    SmuggleImpl *exportImpl = [[SmuggleImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[VideoView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            VideoView *progressView = (VideoView *)self.contentView;
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
                [self first:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self compartment:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self elementPathAlongTradeSuccess:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)markName:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ConflictData userJournalistName].shouldLocalized message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[ConflictData mainSizeHandleCousinValue].shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[ConflictData mAcheName].shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)refreshes:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)compartment:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ConflictData m_premiumValue].shouldLocalized message:[ConflictData kAtDrugValue].shouldLocalized preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[ConflictData dream_suspectTitle].shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self limit];
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
- (void)elementPathAlongTradeSuccess:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self image:infoFilePath];
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
        NSString *encryptedFilePath = [self wire:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self window:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)first:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = [ConflictData notiFortunateTitle].shouldLocalized;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)high:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self compartment:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)ditheredColour {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    InstalmentView *completeView = [[InstalmentView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [ConflictData userDrugData].shouldLocalized;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = [ConflictData k_buttonData].shouldLocalized;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".shouldLocalized forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(refreshes:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)image:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)wire:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString voice:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data month:aesKey item:main_cellData];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:[ConflictData user_modeAccountSuspectName]];
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
- (void)window:(NSString *)path {
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
            [self high:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self factoidPress:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)factoidPress:(NSString *)url {

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
            [self high:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self ditheredColour];
        }
    //: }];
    }];
}

//: @end
@end