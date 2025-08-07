
#import <Foundation/Foundation.h>

@interface AbortData : NSObject

+ (instancetype)sharedInstance;

//: icon_setting_normal
@property (nonatomic, copy) NSString *m_cagePinButtonUrl;

//: #875FFA
@property (nonatomic, copy) NSString *main_adviserIdent;

//: title
@property (nonatomic, copy) NSString *m_rumStorageValue;

//: icon_contact_normal
@property (nonatomic, copy) NSString *k_milkKey;

//: #A148FF
@property (nonatomic, copy) NSString *app_costlyViewMessage;

//: activity_user_profile_chat
@property (nonatomic, copy) NSString *user_povertyTapId;

//: image
@property (nonatomic, copy) NSString *app_withMessage;

//: icon_message_pressed
@property (nonatomic, copy) NSString *mDefineQuipMessage;

//: icon_discovery_pressed
@property (nonatomic, copy) NSString *dream_itemUrl;

//: contacts_list_title
@property (nonatomic, copy) NSString *kDeployWipeText;

//: discovery
@property (nonatomic, copy) NSString *showEssayKey;

//: #05D481
@property (nonatomic, copy) NSString *kItemValue;

//: badgeValue
@property (nonatomic, copy) NSString *notiGoingCostlyPath;

//: selectedImage
@property (nonatomic, copy) NSString *showInfluentialButtonPovertyData;

//: main_tab_my
@property (nonatomic, copy) NSString *showMaxText;

//: #A3A3A3
@property (nonatomic, copy) NSString *kWithTitle;

//: icon_message_normal
@property (nonatomic, copy) NSString *kFrankKey;

//: icon_discovery_normal
@property (nonatomic, copy) NSString *user_heroFormat;

//: icon_setting_pressed
@property (nonatomic, copy) NSString *mainRelaxId;

//: #612CF9
@property (nonatomic, copy) NSString *noti_farId;

//: KEKENotificationLanguageChanged
@property (nonatomic, copy) NSString *app_cancelStr;

//: icon_contact_pressed
@property (nonatomic, copy) NSString *appDogFormat;

@end

@implementation AbortData

+ (instancetype)sharedInstance {
    static AbortData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AbortDataToCache:(Byte *)data {
    int bornGuidance = data[0];
    Byte guidancePermit = data[1];
    int unlike = data[2];
    for (int i = unlike; i < unlike + bornGuidance; i++) {
        int value = data[i] - guidancePermit;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[unlike + bornGuidance] = 0;
    return data + unlike;
}

- (NSString *)StringFromAbortData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AbortDataToCache:data]];
}

//: image
- (NSString *)app_withMessage {
    if (!_app_withMessage) {
        Byte value[] = {5, 88, 12, 173, 98, 168, 224, 128, 104, 123, 64, 81, 193, 197, 185, 191, 189, 110};
        _app_withMessage = [self StringFromAbortData:value];
    }
    return _app_withMessage;
}

//: icon_setting_normal
- (NSString *)m_cagePinButtonUrl {
    if (!_m_cagePinButtonUrl) {
        Byte value[] = {19, 37, 12, 24, 227, 154, 219, 103, 80, 19, 60, 151, 142, 136, 148, 147, 132, 152, 138, 153, 153, 142, 147, 140, 132, 147, 148, 151, 146, 134, 145, 86};
        _m_cagePinButtonUrl = [self StringFromAbortData:value];
    }
    return _m_cagePinButtonUrl;
}

//: icon_setting_pressed
- (NSString *)mainRelaxId {
    if (!_mainRelaxId) {
        Byte value[] = {20, 99, 7, 142, 80, 5, 153, 204, 198, 210, 209, 194, 214, 200, 215, 215, 204, 209, 202, 194, 211, 213, 200, 214, 214, 200, 199, 34};
        _mainRelaxId = [self StringFromAbortData:value];
    }
    return _mainRelaxId;
}

//: icon_contact_normal
- (NSString *)k_milkKey {
    if (!_k_milkKey) {
        Byte value[] = {19, 93, 13, 9, 225, 106, 69, 63, 51, 35, 10, 189, 106, 198, 192, 204, 203, 188, 192, 204, 203, 209, 190, 192, 209, 188, 203, 204, 207, 202, 190, 201, 14};
        _k_milkKey = [self StringFromAbortData:value];
    }
    return _k_milkKey;
}

//: badgeValue
- (NSString *)notiGoingCostlyPath {
    if (!_notiGoingCostlyPath) {
        Byte value[] = {10, 46, 10, 155, 169, 80, 104, 156, 236, 125, 144, 143, 146, 149, 147, 132, 143, 154, 163, 147, 236};
        _notiGoingCostlyPath = [self StringFromAbortData:value];
    }
    return _notiGoingCostlyPath;
}

//: #05D481
- (NSString *)kItemValue {
    if (!_kItemValue) {
        Byte value[] = {7, 14, 11, 163, 90, 168, 210, 153, 135, 210, 52, 49, 62, 67, 82, 66, 70, 63, 138};
        _kItemValue = [self StringFromAbortData:value];
    }
    return _kItemValue;
}

//: discovery
- (NSString *)showEssayKey {
    if (!_showEssayKey) {
        Byte value[] = {9, 71, 9, 65, 175, 37, 168, 56, 87, 171, 176, 186, 170, 182, 189, 172, 185, 192, 126};
        _showEssayKey = [self StringFromAbortData:value];
    }
    return _showEssayKey;
}

//: icon_message_pressed
- (NSString *)mDefineQuipMessage {
    if (!_mDefineQuipMessage) {
        Byte value[] = {20, 9, 9, 42, 131, 233, 195, 234, 154, 114, 108, 120, 119, 104, 118, 110, 124, 124, 106, 112, 110, 104, 121, 123, 110, 124, 124, 110, 109, 250};
        _mDefineQuipMessage = [self StringFromAbortData:value];
    }
    return _mDefineQuipMessage;
}

//: #612CF9
- (NSString *)noti_farId {
    if (!_noti_farId) {
        Byte value[] = {7, 11, 12, 146, 113, 67, 197, 16, 170, 159, 37, 184, 46, 65, 60, 61, 78, 81, 68, 199};
        _noti_farId = [self StringFromAbortData:value];
    }
    return _noti_farId;
}

//: icon_contact_pressed
- (NSString *)appDogFormat {
    if (!_appDogFormat) {
        Byte value[] = {20, 87, 12, 107, 143, 119, 184, 183, 157, 223, 43, 205, 192, 186, 198, 197, 182, 186, 198, 197, 203, 184, 186, 203, 182, 199, 201, 188, 202, 202, 188, 187, 111};
        _appDogFormat = [self StringFromAbortData:value];
    }
    return _appDogFormat;
}

//: activity_user_profile_chat
- (NSString *)user_povertyTapId {
    if (!_user_povertyTapId) {
        Byte value[] = {26, 82, 6, 34, 232, 201, 179, 181, 198, 187, 200, 187, 198, 203, 177, 199, 197, 183, 196, 177, 194, 196, 193, 184, 187, 190, 183, 177, 181, 186, 179, 198, 202};
        _user_povertyTapId = [self StringFromAbortData:value];
    }
    return _user_povertyTapId;
}

//: #A148FF
- (NSString *)app_costlyViewMessage {
    if (!_app_costlyViewMessage) {
        Byte value[] = {7, 50, 9, 138, 179, 225, 117, 130, 34, 85, 115, 99, 102, 106, 120, 120, 99};
        _app_costlyViewMessage = [self StringFromAbortData:value];
    }
    return _app_costlyViewMessage;
}

//: main_tab_my
- (NSString *)showMaxText {
    if (!_showMaxText) {
        Byte value[] = {11, 90, 13, 82, 54, 246, 7, 117, 148, 1, 18, 196, 248, 199, 187, 195, 200, 185, 206, 187, 188, 185, 199, 211, 58};
        _showMaxText = [self StringFromAbortData:value];
    }
    return _showMaxText;
}

//: #875FFA
- (NSString *)main_adviserIdent {
    if (!_main_adviserIdent) {
        Byte value[] = {7, 25, 6, 40, 3, 20, 60, 81, 80, 78, 95, 95, 90, 110};
        _main_adviserIdent = [self StringFromAbortData:value];
    }
    return _main_adviserIdent;
}

//: icon_discovery_normal
- (NSString *)user_heroFormat {
    if (!_user_heroFormat) {
        Byte value[] = {21, 75, 8, 244, 168, 106, 207, 127, 180, 174, 186, 185, 170, 175, 180, 190, 174, 186, 193, 176, 189, 196, 170, 185, 186, 189, 184, 172, 183, 121};
        _user_heroFormat = [self StringFromAbortData:value];
    }
    return _user_heroFormat;
}

//: KEKENotificationLanguageChanged
- (NSString *)app_cancelStr {
    if (!_app_cancelStr) {
        Byte value[] = {31, 99, 9, 25, 219, 146, 62, 220, 120, 174, 168, 174, 168, 177, 210, 215, 204, 201, 204, 198, 196, 215, 204, 210, 209, 175, 196, 209, 202, 216, 196, 202, 200, 166, 203, 196, 209, 202, 200, 199, 203};
        _app_cancelStr = [self StringFromAbortData:value];
    }
    return _app_cancelStr;
}

//: title
- (NSString *)m_rumStorageValue {
    if (!_m_rumStorageValue) {
        Byte value[] = {5, 82, 12, 52, 226, 242, 238, 171, 231, 152, 74, 91, 198, 187, 198, 190, 183, 14};
        _m_rumStorageValue = [self StringFromAbortData:value];
    }
    return _m_rumStorageValue;
}

//: contacts_list_title
- (NSString *)kDeployWipeText {
    if (!_kDeployWipeText) {
        Byte value[] = {19, 36, 6, 222, 236, 185, 135, 147, 146, 152, 133, 135, 152, 151, 131, 144, 141, 151, 152, 131, 152, 141, 152, 144, 137, 144};
        _kDeployWipeText = [self StringFromAbortData:value];
    }
    return _kDeployWipeText;
}

//: #A3A3A3
- (NSString *)kWithTitle {
    if (!_kWithTitle) {
        Byte value[] = {7, 21, 4, 219, 56, 86, 72, 86, 72, 86, 72, 23};
        _kWithTitle = [self StringFromAbortData:value];
    }
    return _kWithTitle;
}

//: icon_message_normal
- (NSString *)kFrankKey {
    if (!_kFrankKey) {
        Byte value[] = {19, 89, 9, 52, 11, 229, 207, 191, 221, 194, 188, 200, 199, 184, 198, 190, 204, 204, 186, 192, 190, 184, 199, 200, 203, 198, 186, 197, 195};
        _kFrankKey = [self StringFromAbortData:value];
    }
    return _kFrankKey;
}

//: icon_discovery_pressed
- (NSString *)dream_itemUrl {
    if (!_dream_itemUrl) {
        Byte value[] = {22, 38, 12, 16, 111, 174, 155, 249, 135, 212, 226, 3, 143, 137, 149, 148, 133, 138, 143, 153, 137, 149, 156, 139, 152, 159, 133, 150, 152, 139, 153, 153, 139, 138, 250};
        _dream_itemUrl = [self StringFromAbortData:value];
    }
    return _dream_itemUrl;
}

//: selectedImage
- (NSString *)showInfluentialButtonPovertyData {
    if (!_showInfluentialButtonPovertyData) {
        Byte value[] = {13, 74, 7, 247, 198, 139, 196, 189, 175, 182, 175, 173, 190, 175, 174, 147, 183, 171, 177, 175, 49};
        _showInfluentialButtonPovertyData = [self StringFromAbortData:value];
    }
    return _showInfluentialButtonPovertyData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainTabController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainTabController.h"
#import "BecharmBarController.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NTESSessionListViewController.h"
#import "MainViewController.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+Doing.h"
//: #import "NTESCustomNotificationDB.h"
#import "BeforeDb.h"
//: #import "NTESNotificationCenter.h"
#import "SizeCenter.h"
//: #import "NTESNavigationHandler.h"
#import "IndexHandler.h"
//: #import "NTESNavigationAnimator.h"
#import "BarAnimator.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "CCCContactsViewController.h"
#import "TempCellViewController.h"
//: #import "NTESMainCenterViewController.h"
#import "MakeQuantityervalViewController.h"
//: #import "DisCorveyViewController.h"
#import "WithViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"

//: typedef NS_ENUM(NSInteger,NTESMainTabType) {
typedef NS_ENUM(NSInteger,NTESMainTabType) {
    //: NTESMainTabTypeMessageList, 
    NTESMainTabTypeMessageList, //聊天
    //: NTESMainTabTypeChatroomList, 
    NTESMainTabTypeChatroomList, //聊天室
    //: NTESMainTabTypeContact, 
    NTESMainTabTypeContact, //通讯录
    //: NTESMainTabTypeSetting, 
    NTESMainTabTypeSetting, //设置
//: };
};



//: @interface NTESMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>
@interface BecharmBarController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) BarAnimator *animator;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;

//: @property (nonatomic,assign) NSInteger systemUnreadCount;
@property (nonatomic,assign) NSInteger systemUnreadCount;

//: @property (nonatomic,assign) NSInteger customSystemUnreadCount;
@property (nonatomic,assign) NSInteger customSystemUnreadCount;

//: @property (nonatomic,copy) NSDictionary *configs;
@property (nonatomic,copy) NSDictionary *configs;

//: @end
@end

//: @implementation NTESMainTabController
@implementation BecharmBarController

//: + (instancetype)instance{
+ (instancetype)enable{
    //: AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[NTESMainTabController class]]) {
    if ([vc isKindOfClass:[BecharmBarController class]]) {
        //: return (NTESMainTabController *)vc;
        return (BecharmBarController *)vc;
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpSubNav];
    [self commentColor];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString *m_versionQuickStr;
    extern NSString *m_versionQuickStr;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:m_versionQuickStr object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(lasting:) name:m_versionQuickStr object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changed:) name:[AbortData sharedInstance].app_cancelStr object:nil];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor user:[AbortData sharedInstance].kWithTitle]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#05D481"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor user:[AbortData sharedInstance].kItemValue]} forState:UIControlStateSelected];

    //: if (@available(iOS 18, *)) {
    if (@available(iOS 18, *)) {
        //: self.delegate = self;
        self.delegate = self;
    }

    //: [self setupNetworkObserver];
    [self labelObserver];
}

//: - (void)setupNetworkObserver {
- (void)labelObserver {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(networkChanged:)
                                             selector:@selector(ofCover:)
                                                 //: name:kReachabilityChangedNotification
                                                 name:kReachabilityChangedNotification
                                               //: object:nil];
                                               object:nil];
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: [reachability startNotifier];
    [reachability startNotifier];
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)ofCover:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        //: [[PushConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
        [[AlongTemp frameConfig] beforeMessageCompletion:^(BOOL success) {
            //: if (success) {
            if (success) {
                //: NSLog(@"域名更新成功: %@", [[PushConfig sharedConfig] getCurrentDomain]);
            //: } else {
            } else {
                //: NSLog(@"使用默认域名: %@", [[PushConfig sharedConfig] getCurrentDomain]);
            }
        //: }]; 
        }]; // 网络恢复时更新域名
    }
}

//: - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:NO];
    [UIView setAnimationsEnabled:NO];
    //: return YES;
    return YES;
}
//: - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:YES];
    [UIView setAnimationsEnabled:YES];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor user:[AbortData sharedInstance].kWithTitle]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#05D481"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor user:[AbortData sharedInstance].kItemValue]} forState:UIControlStateSelected];


}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //会话界面发送拍摄的视频，拍摄结束后点击发送后可能顶部会有红条，导致的界面错位。
    //: self.view.frame = [UIScreen mainScreen].bounds;
    self.view.frame = [UIScreen mainScreen].bounds;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSArray*)tabbars{
- (NSArray*)net{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];

    //: [items addObject:@(0)];
    [items addObject:@(0)];
    //: [items addObject:@(1)];
    [items addObject:@(1)];
    //: [items addObject:@(2)];
    [items addObject:@(2)];
    //: [items addObject:@(3)];
    [items addObject:@(3)];
    //: return items;
    return items;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)languageChanged:(NSNotification *)noti {
- (void)changed:(NSNotification *)noti {
    //: [self setUpSubNav];
    [self commentColor];


}


//: - (void)setUpSubNav{
- (void)commentColor{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.net enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self misinformationStyleKind:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
//        NSString *title  = item[TabbarTitle];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [PushLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [BackgroundRandomAttribute content:[AbortData sharedInstance].user_povertyTapId];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [PushLanguageManager getTextWithKey:@"discovery"];
            title = [BackgroundRandomAttribute content:[AbortData sharedInstance].showEssayKey];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [PushLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [BackgroundRandomAttribute content:[AbortData sharedInstance].kDeployWipeText];
        //: }else if (idx == 3){
        }else if (idx == 3){
            //: title = [PushLanguageManager getTextWithKey:@"main_tab_my"];
            title = [BackgroundRandomAttribute content:[AbortData sharedInstance].showMaxText];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[[AbortData sharedInstance].app_withMessage];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[[AbortData sharedInstance].showInfluentialButtonPovertyData];
        //: Class clazz = NSClassFromString(vcName);
        Class clazz = NSClassFromString(vcName);
        //: UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        //: vc.hidesBottomBarWhenPushed = NO;
        vc.hidesBottomBarWhenPushed = NO;
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

        //: UIImage *normalImage = [UIImage imageNamed:imageName];
        UIImage *normalImage = [UIImage imageNamed:imageName];
        //: normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //: UIImage *selectImage = [UIImage imageNamed:imageSelected];
        UIImage *selectImage = [UIImage imageNamed:imageSelected];
        //: selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        //: nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                       //: image:normalImage
                                                       image:normalImage
                                               //: selectedImage:selectImage];
                                               selectedImage:selectImage];
        //: nav.tabBarItem.tag = idx;
        nav.tabBarItem.tag = idx;
        //: NSInteger badge = [item[@"badgeValue"] integerValue];
        NSInteger badge = [item[[AbortData sharedInstance].notiGoingCostlyPath] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        IndexHandler *handler = [[IndexHandler alloc] initWithNumber:nav];
        //: nav.delegate = handler;
        nav.delegate = handler;

        //: if (@available(iOS 15.0, *)) {
        if (@available(iOS 15.0, *)) {

            //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
            NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                  //: NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};
                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};

            //: UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            //: barApp.backgroundColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.backgroundColor = [UIColor user:[AbortData sharedInstance].app_costlyViewMessage];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor user:[AbortData sharedInstance].app_costlyViewMessage];
            //: barApp.titleTextAttributes = dic;
            barApp.titleTextAttributes = dic;

            //: nav.navigationBar.scrollEdgeAppearance = barApp;
            nav.navigationBar.scrollEdgeAppearance = barApp;
            //: nav.navigationBar.standardAppearance = barApp;
            nav.navigationBar.standardAppearance = barApp;
        }

        //: [vcArray addObject:nav];
        [vcArray addObject:nav];
        //: [handleArray addObject:handler];
        [handleArray addObject:handler];
    //: }];
    }];
    //: self.viewControllers = [NSArray arrayWithArray:vcArray];
    self.viewControllers = [NSArray arrayWithArray:vcArray];
    //: self.navigationHandlers = [NSArray arrayWithArray:handleArray];
    self.navigationHandlers = [NSArray arrayWithArray:handleArray];


    //: UINavigationBar *navBar = [UINavigationBar appearance];
    UINavigationBar *navBar = [UINavigationBar appearance];

    //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
    NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
                          //: NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};
                          NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};

    //: navBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionVertical]];
    navBar.barTintColor = [UIColor colorWithPatternImage:[BubbleHelper infoCurrent:[UIColor user:[AbortData sharedInstance].main_adviserIdent] tap:[UIColor user:[AbortData sharedInstance].noti_farId] caterer:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[BubbleHelper infoCurrent:[UIColor user:[AbortData sharedInstance].main_adviserIdent] tap:[UIColor user:[AbortData sharedInstance].noti_farId] caterer:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[BubbleHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
    //: self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    //: self.tabBar.barTintColor = [UIColor blackColor];
    self.tabBar.barTintColor = [UIColor blackColor];
    //: self.tabBar.backgroundImage = [UIImage new];
    self.tabBar.backgroundImage = [UIImage new];
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.layer.cornerRadius = (49/2);
    //: self.tabBar.translucent = YES;
    self.tabBar.translucent = YES;
    //: self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    //: self.tabBar.layer.shadowOpacity = 0.05; 
    self.tabBar.layer.shadowOpacity = 0.05; // 透明度 5%
    //: self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    //: self.tabBar.layer.shadowRadius = 5;
    self.tabBar.layer.shadowRadius = 5;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //防止UITabbar上跳，这里重置一下
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.frame = CGRectMake(20, UIScreenHeight - UITabbarHeight, UIScreenWidth-40, 49);
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: - (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
- (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
{
    //: NSLog(@"%@",unreadCountDic);
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    //: self.sessionUnreadCount = unreadCount;
    self.sessionUnreadCount = unreadCount;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self intervalBadge];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self extraContact];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)lasting:(NSNotification *)notification
{
    //: NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    BeforeDb *db = [BeforeDb reply];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self file];
}

//: - (void)refreshSessionBadge{
- (void)intervalBadge{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    //: nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

//: - (void)refreshContactBadge{
- (void)extraContact{
//    UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)refreshSettingBadge{
- (void)file{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    //: NSInteger badge = self.customSystemUnreadCount;
    NSInteger badge = self.customSystemUnreadCount;
    //: nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}


//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleDefault;
    return UIStatusBarStyleDefault;
}


//: #pragma mark - Rotate
#pragma mark - Rotate

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [SettingImage name].relapseRotate;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [SettingImage name].relapseRotate;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
- (NSDictionary *)misinformationStyleKind:(NTESMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(NTESMainTabTypeMessageList) : @{
                     @(NTESMainTabTypeMessageList) : @{
                             //: @"vc" : @"NTESSessionListViewController",
                             @"vc" : @"MainViewController",
                             //: @"title" : [PushLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             [AbortData sharedInstance].m_rumStorageValue : [BackgroundRandomAttribute content:[AbortData sharedInstance].user_povertyTapId],
                             //: @"image" : @"icon_message_normal",
                             [AbortData sharedInstance].app_withMessage : [AbortData sharedInstance].kFrankKey,
                             //: @"selectedImage": @"icon_message_pressed",
                             [AbortData sharedInstance].showInfluentialButtonPovertyData: [AbortData sharedInstance].mDefineQuipMessage,
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             [AbortData sharedInstance].notiGoingCostlyPath: @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeChatroomList): @{
                     @(NTESMainTabTypeChatroomList): @{
                             //: @"vc" : @"DisCorveyViewController",
                             @"vc" : @"WithViewController",
                             //: @"title" : [PushLanguageManager getTextWithKey:@"discovery"],
                             [AbortData sharedInstance].m_rumStorageValue : [BackgroundRandomAttribute content:[AbortData sharedInstance].showEssayKey],
                             //: @"image" : @"icon_discovery_normal",
                             [AbortData sharedInstance].app_withMessage : [AbortData sharedInstance].user_heroFormat,
                             //: @"selectedImage": @"icon_discovery_pressed",
                             [AbortData sharedInstance].showInfluentialButtonPovertyData: [AbortData sharedInstance].dream_itemUrl,
                             //: },
                             },
                     //: @(NTESMainTabTypeContact) : @{
                     @(NTESMainTabTypeContact) : @{
                             //: @"vc" : @"CCCContactsViewController",
                             @"vc" : @"TempCellViewController",
                             //: @"title" : [PushLanguageManager getTextWithKey:@"contacts_list_title"],
                             [AbortData sharedInstance].m_rumStorageValue : [BackgroundRandomAttribute content:[AbortData sharedInstance].kDeployWipeText],
                             //: @"image" : @"icon_contact_normal",
                             [AbortData sharedInstance].app_withMessage : [AbortData sharedInstance].k_milkKey,
                             //: @"selectedImage": @"icon_contact_pressed",
                             [AbortData sharedInstance].showInfluentialButtonPovertyData: [AbortData sharedInstance].appDogFormat,
                             //: },
                             },
                     //: @(NTESMainTabTypeSetting) : @{
                     @(NTESMainTabTypeSetting) : @{
                             //: @"vc" : @"NTESMainCenterViewController",
                             @"vc" : @"MakeQuantityervalViewController",
                             //: @"title" : [PushLanguageManager getTextWithKey:@"main_tab_my"],
                             [AbortData sharedInstance].m_rumStorageValue : [BackgroundRandomAttribute content:[AbortData sharedInstance].showMaxText],
                             //: @"image" : @"icon_setting_normal",
                             [AbortData sharedInstance].app_withMessage : [AbortData sharedInstance].m_cagePinButtonUrl,
                             //: @"selectedImage": @"icon_setting_pressed",
                             [AbortData sharedInstance].showInfluentialButtonPovertyData: [AbortData sharedInstance].mainRelaxId,
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];

}



//: @end
@end
