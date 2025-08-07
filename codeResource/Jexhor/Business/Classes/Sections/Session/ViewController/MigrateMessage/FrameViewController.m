
#import <Foundation/Foundation.h>
typedef struct {
    Byte superior;
    Byte *addAccelerate;
    unsigned int againstDrinking;
    Byte sliceSuspect;
	int venture;
	int valueCrowded;
} PercentageData;

NSString *StringFromPercentageData(PercentageData *data);


//: 恭喜你
PercentageData noti_sendEmergencyName = (PercentageData){40, (Byte []){206, 169, 133, 205, 190, 180, 204, 149, 136, 112}, 9, 243, 217, 8};

//: 重新导入
PercentageData notiPlaceValue = (PercentageData){254, (Byte []){23, 121, 115, 24, 104, 78, 27, 81, 66, 27, 123, 91, 174}, 12, 188, 255, 65};

//: 返回会话列表
PercentageData noti_illegalData = (PercentageData){38, (Byte []){206, 153, 178, 195, 189, 184, 194, 154, 188, 206, 137, 187, 195, 174, 177, 206, 135, 142, 56}, 18, 170, 251, 232};

//: 合并失败
PercentageData kTitleWithName = (PercentageData){186, (Byte []){95, 42, 50, 95, 3, 12, 95, 30, 11, 82, 14, 31, 4}, 12, 196, 161, 134};

//: 继续导入
PercentageData dreamEmergencyName = (PercentageData){57, (Byte []){222, 130, 158, 222, 130, 148, 220, 150, 133, 220, 188, 156, 7}, 12, 187, 228, 60};

//: 本地消息导入
PercentageData dream_nameTitle = (PercentageData){52, (Byte []){210, 168, 152, 209, 168, 132, 210, 130, 188, 210, 181, 155, 209, 155, 136, 209, 177, 145, 241}, 18, 223, 221, 112};

//: 导入本地消息需要较长时间，请耐心等待
PercentageData showAmbitionValue = (PercentageData){221, (Byte []){56, 114, 97, 56, 88, 120, 59, 65, 113, 56, 65, 109, 59, 107, 85, 59, 92, 114, 52, 65, 93, 53, 123, 92, 53, 99, 94, 52, 72, 98, 59, 74, 107, 52, 74, 105, 50, 97, 81, 53, 114, 106, 53, 93, 77, 56, 98, 94, 58, 112, 84, 56, 99, 88, 149}, 54, 243, 1, 173};

//: unzip
PercentageData mainPremiumTitle = (PercentageData){111, (Byte []){26, 1, 21, 6, 31, 144}, 5, 245, 75, 131};

//: 取消导入
PercentageData m_bubbleData = (PercentageData){216, (Byte []){61, 87, 78, 62, 110, 80, 61, 119, 100, 61, 93, 125, 158}, 12, 212, 51, 225};

//: 导入失败！
PercentageData user_infoValue = (PercentageData){210, (Byte []){55, 125, 110, 55, 87, 119, 55, 118, 99, 58, 102, 119, 61, 110, 83, 210}, 15, 219, 117, 233};

//: zip
PercentageData main_handleName = (PercentageData){163, (Byte []){217, 202, 211, 197}, 3, 239, 246, 98};

//: NIM
PercentageData notiVideoValue = (PercentageData){118, (Byte []){56, 63, 59, 94}, 3, 163, 32, 74};

//: iOS-zip-aes256
PercentageData userPlanetContent = (PercentageData){124, (Byte []){21, 51, 47, 81, 6, 21, 12, 81, 29, 25, 15, 78, 73, 74, 89}, 14, 251, 198, 120};

//: 解压失败
PercentageData app_oldValue = (PercentageData){198, (Byte []){46, 97, 101, 35, 72, 77, 35, 98, 119, 46, 114, 99, 188}, 12, 221, 46, 39};

//: decryped
PercentageData dream_sizeValue = (PercentageData){85, (Byte []){49, 48, 54, 39, 44, 37, 48, 49, 199}, 8, 206, 165, 241};

//: 确定要取消导入？
PercentageData app_tagRemoveThreadValue = (PercentageData){113, (Byte []){150, 208, 223, 148, 223, 235, 153, 215, 240, 148, 254, 231, 151, 199, 249, 148, 222, 205, 148, 244, 212, 158, 205, 238, 84}, 24, 164, 91, 137};

//: 下载消息文件失败
PercentageData kWeekText = (PercentageData){253, (Byte []){25, 69, 118, 21, 64, 64, 27, 75, 117, 27, 124, 82, 27, 107, 122, 25, 70, 75, 24, 89, 76, 21, 73, 88, 67}, 24, 157, 187, 202};

//: 消息导入成功
PercentageData show_accountingData = (PercentageData){193, (Byte []){39, 119, 73, 39, 64, 110, 36, 110, 125, 36, 68, 100, 39, 73, 81, 36, 75, 94, 208}, 18, 205, 39, 104};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "FrameViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "VideoView.h"
//: #import "NTESMigrateCompleteView.h"
#import "InstalmentView.h"
//: #import "NSData+NTES.h"
#import "NSData+Recent.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "ActionImpl.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "ManagerBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const main_cellData = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface FrameViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation FrameViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = StringFromPercentageData(&dream_nameTitle).shouldLocalized;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    VideoView *progressView = [[VideoView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(markName:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromPercentageData(&showAmbitionValue).shouldLocalized;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self remote];
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
- (void)markName:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromPercentageData(&app_tagRemoveThreadValue).shouldLocalized message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromPercentageData(&m_bubbleData).shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromPercentageData(&dreamEmergencyName).shouldLocalized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    ManagerBarController *tabController = [ManagerBarController can];
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
- (void)atBar:(NSError *)error send_strong:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromPercentageData(&user_infoValue).shouldLocalized message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromPercentageData(&notiPlaceValue).shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self remote];
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
- (void)fastSuccess {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    InstalmentView *completeView = [[InstalmentView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromPercentageData(&noti_sendEmergencyName).shouldLocalized;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = StringFromPercentageData(&show_accountingData).shouldLocalized;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:StringFromPercentageData(&noti_illegalData).shouldLocalized forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(refreshes:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)remote {
    //: [self removeTempFiles];
    [self headingContent];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self message];
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
             [self atBar:error send_strong:StringFromPercentageData(&kWeekText).shouldLocalized];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self table:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self trademarkPop:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self sharedInput:unzipPath];

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
- (NSString *)table:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data red:aesKey last:main_cellData];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:StringFromPercentageData(&dream_sizeValue)];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:StringFromPercentageData(&main_handleName)];
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
- (NSString *)trademarkPop:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:StringFromPercentageData(&mainPremiumTitle)];

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
- (void)sharedInput:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self atBar:nil send_strong:StringFromPercentageData(&app_oldValue).shouldLocalized];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    ActionImpl *importImpl = [[ActionImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        VideoView *progressView = (VideoView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[VideoView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self atBar:error send_strong:StringFromPercentageData(&kTitleWithName).shouldLocalized];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self fastSuccess];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)message {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:StringFromPercentageData(&notiVideoValue)];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:StringFromPercentageData(&userPlanetContent)];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)headingContent {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self message] error:nil];
}

//: @end
@end

Byte *PercentageDataToByte(PercentageData *data) {
    if (data->sliceSuspect < 142) return data->addAccelerate;
    for (int i = 0; i < data->againstDrinking; i++) {
        data->addAccelerate[i] ^= data->superior;
    }
    data->addAccelerate[data->againstDrinking] = 0;
    data->sliceSuspect = 78;
	if (data->againstDrinking >= 2) {
		data->venture = data->addAccelerate[0];
		data->valueCrowded = data->addAccelerate[1];
	}
    return data->addAccelerate;
}

NSString *StringFromPercentageData(PercentageData *data) {
    return [NSString stringWithUTF8String:(char *)PercentageDataToByte(data)];
}
