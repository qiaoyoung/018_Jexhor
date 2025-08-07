
#import <Foundation/Foundation.h>

NSString *StringFromCongressionalData(Byte *data);


//: onTouchImportLocalMessages:
Byte user_needValue[] = {20, 27, 99, 4, 210, 209, 183, 210, 216, 198, 203, 172, 208, 211, 210, 213, 215, 175, 210, 198, 196, 207, 176, 200, 214, 214, 196, 202, 200, 214, 157, 4};

//: 本地消息导出
Byte dreamFortunateTitle[] = {81, 18, 24, 10, 140, 198, 126, 227, 73, 169, 254, 180, 196, 253, 180, 200, 254, 206, 160, 254, 153, 199, 253, 199, 212, 253, 159, 210, 143};

//: row
Byte m_withGivingName[] = {81, 3, 54, 10, 9, 167, 231, 71, 159, 222, 168, 165, 173, 78};

//: 确定导出本地消息？
Byte k_sizeName[] = {45, 27, 43, 8, 223, 148, 180, 18, 18, 204, 217, 16, 217, 197, 16, 218, 231, 16, 178, 229, 17, 199, 215, 16, 199, 219, 17, 225, 179, 17, 172, 218, 26, 231, 202, 238};

//: headerTitle
Byte dreamAtData[] = {56, 11, 60, 14, 117, 123, 226, 237, 182, 169, 75, 252, 85, 2, 164, 161, 157, 160, 161, 174, 144, 165, 176, 168, 161, 144};

//: 本地消息迁移
Byte k_tagData[] = {68, 18, 31, 11, 116, 246, 230, 136, 251, 68, 131, 5, 187, 203, 4, 187, 207, 5, 213, 167, 5, 160, 206, 7, 222, 160, 6, 198, 218, 18};

//: title
Byte userKeepName[] = {17, 5, 42, 5, 214, 158, 147, 158, 150, 143, 236};

//: 本地消息导入
Byte main_textValue[] = {52, 18, 53, 4, 27, 209, 225, 26, 209, 229, 27, 235, 189, 27, 182, 228, 26, 228, 241, 26, 186, 218, 64};

//: 本地消息将存至云端，会耗费较长时间
Byte main_nameWithValue[] = {27, 51, 57, 8, 77, 127, 118, 77, 31, 213, 229, 30, 213, 233, 31, 239, 193, 31, 186, 232, 30, 233, 191, 30, 230, 209, 33, 192, 236, 29, 243, 202, 32, 228, 232, 40, 245, 197, 29, 245, 211, 33, 185, 208, 33, 237, 242, 33, 247, 188, 34, 206, 248, 31, 208, 239, 34, 208, 237, 200};

//: 继续导出
Byte app_severTitle[] = {6, 12, 2, 14, 55, 183, 143, 150, 57, 231, 241, 114, 143, 210, 233, 189, 169, 233, 189, 175, 231, 177, 190, 231, 137, 188, 92};

//: onTouchExportLocalMessages:
Byte m_disableValue[] = {7, 27, 47, 10, 136, 194, 237, 5, 108, 14, 158, 157, 131, 158, 164, 146, 151, 116, 167, 159, 158, 161, 163, 123, 158, 146, 144, 155, 124, 148, 162, 162, 144, 150, 148, 162, 105, 41};

//: action
Byte kBalanceContent[] = {21, 6, 87, 5, 110, 184, 186, 203, 192, 198, 197, 113};

//: 发生了错误
Byte userYaAppearName[] = {12, 15, 80, 6, 43, 92, 53, 223, 225, 55, 228, 239, 52, 10, 214, 57, 228, 233, 56, 255, 255, 55};

//: 未找到消息备份。请先在旧设备上导出消息记录
Byte notiPlaceAmbitionName[] = {17, 63, 39, 11, 104, 85, 253, 155, 209, 85, 39, 13, 195, 209, 13, 176, 229, 12, 175, 215, 13, 221, 175, 13, 168, 214, 12, 203, 174, 11, 226, 228, 10, 167, 169, 15, 214, 222, 12, 172, 175, 12, 195, 207, 13, 190, 206, 15, 213, 229, 12, 203, 174, 11, 223, 177, 12, 214, 227, 12, 174, 225, 13, 221, 175, 13, 168, 214, 15, 213, 215, 12, 228, 188, 229};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreetSmartViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "StreetSmartViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "TableDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "CircleTextViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "FrameViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface StreetSmartViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) TableDelegate *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation StreetSmartViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = StringFromCongressionalData(k_tagData).shouldLocalized;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self constructData];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[FFFCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[TableDelegate alloc] initWithMessage:^NSArray *{
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
- (void)constructData {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          StringFromCongressionalData(dreamAtData) : @"",
                          //: @"row" : @[
                          StringFromCongressionalData(m_withGivingName) : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      StringFromCongressionalData(userKeepName) : StringFromCongressionalData(dreamFortunateTitle).shouldLocalized,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      StringFromCongressionalData(kBalanceContent) : StringFromCongressionalData(m_disableValue),
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      StringFromCongressionalData(userKeepName) : StringFromCongressionalData(main_textValue).shouldLocalized,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      StringFromCongressionalData(kBalanceContent) : StringFromCongressionalData(user_needValue),
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [LigatureSection with:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)kick:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromCongressionalData(k_sizeName).shouldLocalized message:StringFromCongressionalData(main_nameWithValue).shouldLocalized preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".shouldLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:StringFromCongressionalData(app_severTitle).shouldLocalized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        CircleTextViewController *exportController = [[CircleTextViewController alloc] init];
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
- (void)load:(id)sender {
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
            [self total:StringFromCongressionalData(userYaAppearName).shouldLocalized];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self total:StringFromCongressionalData(notiPlaceAmbitionName).shouldLocalized];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self valueOf:remoteFilePath comeUp:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)valueOf:(NSString *)remotePath comeUp:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    FrameViewController *importController = [[FrameViewController alloc] init];
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
- (void)total:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end

Byte * CongressionalDataToCache(Byte *data) {
    int underlay = data[0];
    int lifeStyle = data[1];
    Byte imageButton = data[2];
    int historyBalance = data[3];
    if (!underlay) return data + historyBalance;
    for (int i = historyBalance; i < historyBalance + lifeStyle; i++) {
        int value = data[i] - imageButton;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[historyBalance + lifeStyle] = 0;
    return data + historyBalance;
}

NSString *StringFromCongressionalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CongressionalDataToCache(data)];
}
