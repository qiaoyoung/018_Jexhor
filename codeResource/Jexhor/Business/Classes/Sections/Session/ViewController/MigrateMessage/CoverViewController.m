
#import <Foundation/Foundation.h>

@interface DateData : NSObject

@end

@implementation DateData

+ (Byte *)DateDataToCache:(Byte *)data {
    int buttTemperature = data[0];
    Byte belowMessage = data[1];
    int resPublica = data[2];
    for (int i = resPublica; i < resPublica + buttTemperature; i++) {
        int value = data[i] - belowMessage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[resPublica + buttTemperature] = 0;
    return data + resPublica;
}

+ (NSString *)StringFromDateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DateDataToCache:data]];
}

//: action
+ (NSString *)showNameStr {
    /* static */ NSString *showNameStr = nil;
    if (!showNameStr) {
        Byte value[] = {6, 95, 13, 104, 177, 125, 223, 162, 71, 182, 177, 123, 166, 192, 194, 211, 200, 206, 205, 43};
        showNameStr = [self StringFromDateData:value];
    }
    return showNameStr;
}

//: 未找到消息备份。请先在旧设备上导出消息记录
+ (NSString *)dreamPullData {
    /* static */ NSString *dreamPullData = nil;
    if (!dreamPullData) {
        Byte value[] = {63, 4, 6, 230, 247, 190, 234, 160, 174, 234, 141, 194, 233, 140, 180, 234, 186, 140, 234, 133, 179, 233, 168, 139, 232, 191, 193, 231, 132, 134, 236, 179, 187, 233, 137, 140, 233, 160, 172, 234, 155, 171, 236, 178, 194, 233, 168, 139, 232, 188, 142, 233, 179, 192, 233, 139, 190, 234, 186, 140, 234, 133, 179, 236, 178, 180, 233, 193, 153, 232};
        dreamPullData = [self StringFromDateData:value];
    }
    return dreamPullData;
}

//: row
+ (NSString *)user_buttonFrankMsg {
    /* static */ NSString *user_buttonFrankMsg = nil;
    if (!user_buttonFrankMsg) {
        Byte value[] = {3, 49, 10, 237, 36, 55, 129, 217, 50, 48, 163, 160, 168, 101};
        user_buttonFrankMsg = [self StringFromDateData:value];
    }
    return user_buttonFrankMsg;
}

//: 确定导出本地消息？
+ (NSString *)showRecipientData {
    /* static */ NSString *showRecipientData = nil;
    if (!showRecipientData) {
        Byte value[] = {27, 89, 5, 82, 141, 64, 250, 7, 62, 7, 243, 62, 8, 21, 62, 224, 19, 63, 245, 5, 62, 245, 9, 63, 15, 225, 63, 218, 8, 72, 21, 248, 208};
        showRecipientData = [self StringFromDateData:value];
    }
    return showRecipientData;
}

//: 本地消息迁移
+ (NSString *)notiHospitalTickFormat {
    /* static */ NSString *notiHospitalTickFormat = nil;
    if (!notiHospitalTickFormat) {
        Byte value[] = {18, 18, 6, 116, 159, 32, 248, 174, 190, 247, 174, 194, 248, 200, 154, 248, 147, 193, 250, 209, 147, 249, 185, 205, 42};
        notiHospitalTickFormat = [self StringFromDateData:value];
    }
    return notiHospitalTickFormat;
}

//: 本地消息将存至云端，会耗费较长时间
+ (NSString *)k_oiIdent {
    /* static */ NSString *k_oiIdent = nil;
    if (!k_oiIdent) {
        Byte value[] = {51, 5, 4, 131, 235, 161, 177, 234, 161, 181, 235, 187, 141, 235, 134, 180, 234, 181, 139, 234, 178, 157, 237, 140, 184, 233, 191, 150, 236, 176, 180, 244, 193, 145, 233, 193, 159, 237, 133, 156, 237, 185, 190, 237, 195, 136, 238, 154, 196, 235, 156, 187, 238, 156, 185, 134};
        k_oiIdent = [self StringFromDateData:value];
    }
    return k_oiIdent;
}

//: onTouchExportLocalMessages:
+ (NSString *)showPullMessage {
    /* static */ NSString *showPullMessage = nil;
    if (!showPullMessage) {
        Byte value[] = {27, 92, 11, 189, 228, 169, 168, 49, 222, 130, 49, 203, 202, 176, 203, 209, 191, 196, 161, 212, 204, 203, 206, 208, 168, 203, 191, 189, 200, 169, 193, 207, 207, 189, 195, 193, 207, 150, 195};
        showPullMessage = [self StringFromDateData:value];
    }
    return showPullMessage;
}

//: onTouchImportLocalMessages:
+ (NSString *)noti_discoveryBlackIdent {
    /* static */ NSString *noti_discoveryBlackIdent = nil;
    if (!noti_discoveryBlackIdent) {
        Byte value[] = {27, 52, 12, 92, 62, 214, 205, 109, 2, 239, 65, 142, 163, 162, 136, 163, 169, 151, 156, 125, 161, 164, 163, 166, 168, 128, 163, 151, 149, 160, 129, 153, 167, 167, 149, 155, 153, 167, 110, 123};
        noti_discoveryBlackIdent = [self StringFromDateData:value];
    }
    return noti_discoveryBlackIdent;
}

//: 发生了错误
+ (NSString *)main_viewMsg {
    /* static */ NSString *main_viewMsg = nil;
    if (!main_viewMsg) {
        Byte value[] = {15, 26, 11, 189, 4, 140, 25, 143, 70, 191, 30, 255, 169, 171, 1, 174, 185, 254, 212, 160, 3, 174, 179, 2, 201, 201, 206};
        main_viewMsg = [self StringFromDateData:value];
    }
    return main_viewMsg;
}

//: 本地消息导入
+ (NSString *)mainPickMsg {
    /* static */ NSString *mainPickMsg = nil;
    if (!mainPickMsg) {
        Byte value[] = {18, 91, 11, 108, 152, 1, 25, 19, 233, 123, 128, 65, 247, 7, 64, 247, 11, 65, 17, 227, 65, 220, 10, 64, 10, 23, 64, 224, 0, 10};
        mainPickMsg = [self StringFromDateData:value];
    }
    return mainPickMsg;
}

//: 继续导出
+ (NSString *)dream_showLiarMessage {
    /* static */ NSString *dream_showLiarMessage = nil;
    if (!dream_showLiarMessage) {
        Byte value[] = {12, 61, 5, 165, 48, 36, 248, 228, 36, 248, 234, 34, 236, 249, 34, 196, 247, 24};
        dream_showLiarMessage = [self StringFromDateData:value];
    }
    return dream_showLiarMessage;
}

//: 本地消息导出
+ (NSString *)appTitleStr {
    /* static */ NSString *appTitleStr = nil;
    if (!appTitleStr) {
        Byte value[] = {18, 84, 11, 185, 207, 100, 198, 36, 222, 26, 22, 58, 240, 0, 57, 240, 4, 58, 10, 220, 58, 213, 3, 57, 3, 16, 57, 219, 14, 242};
        appTitleStr = [self StringFromDateData:value];
    }
    return appTitleStr;
}

//: title
+ (NSString *)appSizeKey {
    /* static */ NSString *appSizeKey = nil;
    if (!appSizeKey) {
        Byte value[] = {5, 60, 13, 156, 172, 161, 212, 157, 246, 81, 111, 70, 148, 176, 165, 176, 168, 161, 181};
        appSizeKey = [self StringFromDateData:value];
    }
    return appSizeKey;
}

//: headerTitle
+ (NSString *)dreamWonderfulId {
    /* static */ NSString *dreamWonderfulId = nil;
    if (!dreamWonderfulId) {
        Byte value[] = {11, 85, 7, 55, 100, 27, 37, 189, 186, 182, 185, 186, 199, 169, 190, 201, 193, 186, 160};
        dreamWonderfulId = [self StringFromDateData:value];
    }
    return dreamWonderfulId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "CoverViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "StanzaDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "DeviceViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "TradeViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface CoverViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) StanzaDelegate *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation CoverViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = [DateData notiHospitalTickFormat].ting;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self viewData];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[FFFCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[StanzaDelegate alloc] initWithViewBy:^NSArray *{
        //: return wself.data;
        return wself.data;
    //: }];
    }];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self.delegator;
    self.tableView.delegate = self.delegator;
    //: self.tableView.dataSource = self.delegator;
    self.tableView.dataSource = self.delegator;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    //: const CGRect frame = self.view.frame;
    const CGRect frame = self.view.frame;
    //: self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);
    self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);

}

//: #pragma mark --
#pragma mark --
//: - (void)buildData {
- (void)viewData {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          [DateData dreamWonderfulId] : @"",
                          //: @"row" : @[
                          [DateData user_buttonFrankMsg] : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      [DateData appSizeKey] : [DateData appTitleStr].ting,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      [DateData showNameStr] : [DateData showPullMessage],
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      [DateData appSizeKey] : [DateData mainPickMsg].ting,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      [DateData showNameStr] : [DateData noti_discoveryBlackIdent],
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [TeamShared quantity:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)differentiateText:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[DateData showRecipientData].ting message:[DateData k_oiIdent].ting preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:[DateData dream_showLiarMessage].ting style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        DeviceViewController *exportController = [[DeviceViewController alloc] init];
        //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        //: [self presentViewController:navController animated:YES completion:nil];
        [self presentViewController:navController animated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionExport];
    [alertController addAction:actionExport];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
}

//: - (void)onTouchImportLocalMessages:(id)sender {
- (void)tingOn:(id)sender {
    // check message
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onGetRemoteHistoryFailed:@"发生了错误".ntes_localized];
            [self text:[DateData main_viewMsg].ting];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self text:[DateData dreamPullData].ting];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self messageRange:remoteFilePath size:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)messageRange:(NSString *)remotePath size:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    TradeViewController *importController = [[TradeViewController alloc] init];
    //: importController.remoteFilePath = remotePath;
    importController.remoteFilePath = remotePath;
    //: importController.secureKey = secureKey;
    importController.secureKey = secureKey;
    //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    //: [self presentViewController:navController animated:YES completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

//: - (void)onGetRemoteHistoryFailed:(NSString *)errorDescription {
- (void)text:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end