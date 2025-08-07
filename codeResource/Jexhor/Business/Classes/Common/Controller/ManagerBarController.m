
#import <Foundation/Foundation.h>

typedef struct {
    Byte appearShower;
    Byte *kaLength;
    unsigned int countellectual;
	int messageAccounting;
	int writingPaper;
} StructAdultData;

@interface AdultData : NSObject

@end

@implementation AdultData

+ (Byte *)AdultDataToByte:(StructAdultData *)data {
    for (int i = 0; i < data->countellectual; i++) {
        data->kaLength[i] ^= data->appearShower;
    }
    data->kaLength[data->countellectual] = 0;
	if (data->countellectual >= 2) {
		data->messageAccounting = data->kaLength[0];
		data->writingPaper = data->kaLength[1];
	}
    return data->kaLength;
}

+ (NSString *)StringFromAdultData:(StructAdultData *)data {
    return [NSString stringWithUTF8String:(char *)[self AdultDataToByte:data]];
}

//: icon_message_normal
+ (NSString *)m_wishTitle {
    /* static */ NSString *m_wishTitle = nil;
    if (!m_wishTitle) {
        StructAdultData value = (StructAdultData){237, (Byte []){132, 142, 130, 131, 178, 128, 136, 158, 158, 140, 138, 136, 178, 131, 130, 159, 128, 140, 129, 64}, 19, 34, 76};
        m_wishTitle = [self StringFromAdultData:&value];
    }
    return m_wishTitle;
}

//: icon_contact_normal
+ (NSString *)mPressureText {
    /* static */ NSString *mPressureText = nil;
    if (!mPressureText) {
        StructAdultData value = (StructAdultData){111, (Byte []){6, 12, 0, 1, 48, 12, 0, 1, 27, 14, 12, 27, 48, 1, 0, 29, 2, 14, 3, 197}, 19, 176, 110};
        mPressureText = [self StringFromAdultData:&value];
    }
    return mPressureText;
}

//: contacts_list_title
+ (NSString *)show_kaValue {
    /* static */ NSString *show_kaValue = nil;
    if (!show_kaValue) {
        StructAdultData value = (StructAdultData){35, (Byte []){64, 76, 77, 87, 66, 64, 87, 80, 124, 79, 74, 80, 87, 124, 87, 74, 87, 79, 70, 209}, 19, 152, 29};
        show_kaValue = [self StringFromAdultData:&value];
    }
    return show_kaValue;
}

//: icon_contact_pressed
+ (NSString *)app_findingTitle {
    /* static */ NSString *app_findingTitle = nil;
    if (!app_findingTitle) {
        StructAdultData value = (StructAdultData){50, (Byte []){91, 81, 93, 92, 109, 81, 93, 92, 70, 83, 81, 70, 109, 66, 64, 87, 65, 65, 87, 86, 236}, 20, 187, 38};
        app_findingTitle = [self StringFromAdultData:&value];
    }
    return app_findingTitle;
}

//: title
+ (NSString *)showSessionName {
    /* static */ NSString *showSessionName = nil;
    if (!showSessionName) {
        StructAdultData value = (StructAdultData){204, (Byte []){184, 165, 184, 160, 169, 87}, 5, 114, 116};
        showSessionName = [self StringFromAdultData:&value];
    }
    return showSessionName;
}

//: selectedImage
+ (NSString *)mInspireText {
    /* static */ NSString *mInspireText = nil;
    if (!mInspireText) {
        StructAdultData value = (StructAdultData){223, (Byte []){172, 186, 179, 186, 188, 171, 186, 187, 150, 178, 190, 184, 186, 30}, 13, 28, 2};
        mInspireText = [self StringFromAdultData:&value];
    }
    return mInspireText;
}

//: #A3A3A3
+ (NSString *)notiHideData {
    /* static */ NSString *notiHideData = nil;
    if (!notiHideData) {
        StructAdultData value = (StructAdultData){191, (Byte []){156, 254, 140, 254, 140, 254, 140, 197}, 7, 118, 132};
        notiHideData = [self StringFromAdultData:&value];
    }
    return notiHideData;
}

//: main_tab_my
+ (NSString *)user_withChangeText {
    /* static */ NSString *user_withChangeText = nil;
    if (!user_withChangeText) {
        StructAdultData value = (StructAdultData){173, (Byte []){192, 204, 196, 195, 242, 217, 204, 207, 242, 192, 212, 85}, 11, 139, 254};
        user_withChangeText = [self StringFromAdultData:&value];
    }
    return user_withChangeText;
}

//: badgeValue
+ (NSString *)dream_targetName {
    /* static */ NSString *dream_targetName = nil;
    if (!dream_targetName) {
        StructAdultData value = (StructAdultData){58, (Byte []){88, 91, 94, 93, 95, 108, 91, 86, 79, 95, 116}, 10, 13, 94};
        dream_targetName = [self StringFromAdultData:&value];
    }
    return dream_targetName;
}

//: #05D481
+ (NSString *)main_limitName {
    /* static */ NSString *main_limitName = nil;
    if (!main_limitName) {
        StructAdultData value = (StructAdultData){76, (Byte []){111, 124, 121, 8, 120, 116, 125, 66}, 7, 223, 92};
        main_limitName = [self StringFromAdultData:&value];
    }
    return main_limitName;
}

//: icon_setting_pressed
+ (NSString *)noti_presentName {
    /* static */ NSString *noti_presentName = nil;
    if (!noti_presentName) {
        StructAdultData value = (StructAdultData){154, (Byte []){243, 249, 245, 244, 197, 233, 255, 238, 238, 243, 244, 253, 197, 234, 232, 255, 233, 233, 255, 254, 117}, 20, 157, 228};
        noti_presentName = [self StringFromAdultData:&value];
    }
    return noti_presentName;
}

//: icon_discovery_normal
+ (NSString *)k_valueName {
    /* static */ NSString *k_valueName = nil;
    if (!k_valueName) {
        StructAdultData value = (StructAdultData){137, (Byte []){224, 234, 230, 231, 214, 237, 224, 250, 234, 230, 255, 236, 251, 240, 214, 231, 230, 251, 228, 232, 229, 3}, 21, 120, 43};
        k_valueName = [self StringFromAdultData:&value];
    }
    return k_valueName;
}

//: KEKENotificationLanguageChanged
+ (NSString *)show_illegalText {
    /* static */ NSString *show_illegalText = nil;
    if (!show_illegalText) {
        StructAdultData value = (StructAdultData){80, (Byte []){27, 21, 27, 21, 30, 63, 36, 57, 54, 57, 51, 49, 36, 57, 63, 62, 28, 49, 62, 55, 37, 49, 55, 53, 19, 56, 49, 62, 55, 53, 52, 110}, 31, 219, 139};
        show_illegalText = [self StringFromAdultData:&value];
    }
    return show_illegalText;
}

//: #A148FF
+ (NSString *)mainBirthdayValue {
    /* static */ NSString *mainBirthdayValue = nil;
    if (!mainBirthdayValue) {
        StructAdultData value = (StructAdultData){232, (Byte []){203, 169, 217, 220, 208, 174, 174, 111}, 7, 176, 25};
        mainBirthdayValue = [self StringFromAdultData:&value];
    }
    return mainBirthdayValue;
}

//: icon_setting_normal
+ (NSString *)app_submitValue {
    /* static */ NSString *app_submitValue = nil;
    if (!app_submitValue) {
        StructAdultData value = (StructAdultData){57, (Byte []){80, 90, 86, 87, 102, 74, 92, 77, 77, 80, 87, 94, 102, 87, 86, 75, 84, 88, 85, 227}, 19, 82, 155};
        app_submitValue = [self StringFromAdultData:&value];
    }
    return app_submitValue;
}

//: icon_discovery_pressed
+ (NSString *)showThreadData {
    /* static */ NSString *showThreadData = nil;
    if (!showThreadData) {
        StructAdultData value = (StructAdultData){18, (Byte []){123, 113, 125, 124, 77, 118, 123, 97, 113, 125, 100, 119, 96, 107, 77, 98, 96, 119, 97, 97, 119, 118, 144}, 22, 20, 29};
        showThreadData = [self StringFromAdultData:&value];
    }
    return showThreadData;
}

//: #875FFA
+ (NSString *)user_afternoonText {
    /* static */ NSString *user_afternoonText = nil;
    if (!user_afternoonText) {
        StructAdultData value = (StructAdultData){81, (Byte []){114, 105, 102, 100, 23, 23, 16, 148}, 7, 185, 224};
        user_afternoonText = [self StringFromAdultData:&value];
    }
    return user_afternoonText;
}

//: image
+ (NSString *)app_viseQuickData {
    /* static */ NSString *app_viseQuickData = nil;
    if (!app_viseQuickData) {
        StructAdultData value = (StructAdultData){251, (Byte []){146, 150, 154, 156, 158, 103}, 5, 78, 70};
        app_viseQuickData = [self StringFromAdultData:&value];
    }
    return app_viseQuickData;
}

//: activity_user_profile_chat
+ (NSString *)userAccelerateData {
    /* static */ NSString *userAccelerateData = nil;
    if (!userAccelerateData) {
        StructAdultData value = (StructAdultData){239, (Byte []){142, 140, 155, 134, 153, 134, 155, 150, 176, 154, 156, 138, 157, 176, 159, 157, 128, 137, 134, 131, 138, 176, 140, 135, 142, 155, 179}, 26, 138, 50};
        userAccelerateData = [self StringFromAdultData:&value];
    }
    return userAccelerateData;
}

//: icon_message_pressed
+ (NSString *)mainAloneRealistContent {
    /* static */ NSString *mainAloneRealistContent = nil;
    if (!mainAloneRealistContent) {
        StructAdultData value = (StructAdultData){29, (Byte []){116, 126, 114, 115, 66, 112, 120, 110, 110, 124, 122, 120, 66, 109, 111, 120, 110, 110, 120, 121, 246}, 20, 21, 60};
        mainAloneRealistContent = [self StringFromAdultData:&value];
    }
    return mainAloneRealistContent;
}

//: #612CF9
+ (NSString *)userRemoveTableValue {
    /* static */ NSString *userRemoveTableValue = nil;
    if (!userRemoveTableValue) {
        StructAdultData value = (StructAdultData){98, (Byte []){65, 84, 83, 80, 33, 36, 91, 226}, 7, 159, 209};
        userRemoveTableValue = [self StringFromAdultData:&value];
    }
    return userRemoveTableValue;
}

//: discovery
+ (NSString *)dream_colorText {
    /* static */ NSString *dream_colorText = nil;
    if (!dream_colorText) {
        StructAdultData value = (StructAdultData){162, (Byte []){198, 203, 209, 193, 205, 212, 199, 208, 219, 6}, 9, 37, 47};
        dream_colorText = [self StringFromAdultData:&value];
    }
    return dream_colorText;
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
#import "ManagerBarController.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NTESSessionListViewController.h"
#import "SmartViewController.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+Fixing.h"
//: #import "NTESCustomNotificationDB.h"
#import "VideoMessageDb.h"
//: #import "NTESNotificationCenter.h"
#import "ClickCenter.h"
//: #import "NTESNavigationHandler.h"
#import "WithName.h"
//: #import "NTESNavigationAnimator.h"
#import "TitleAnimator.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "CCCContactsViewController.h"
#import "ThreadViewController.h"
//: #import "NTESMainCenterViewController.h"
#import "KeyViewController.h"
//: #import "DisCorveyViewController.h"
#import "SendViewController.h"
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
@interface ManagerBarController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) TitleAnimator *animator;

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
@implementation ManagerBarController

//: + (instancetype)instance{
+ (instancetype)can{
    //: AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[NTESMainTabController class]]) {
    if ([vc isKindOfClass:[ManagerBarController class]]) {
        //: return (NTESMainTabController *)vc;
        return (ManagerBarController *)vc;
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
    [self sizeNav];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString *appMakeTitle;
    extern NSString *appMakeTitle;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:appMakeTitle object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusBlue:) name:appMakeTitle object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(duringHighChanged:) name:[AdultData show_illegalText] object:nil];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor ground:[AdultData notiHideData]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#05D481"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor ground:[AdultData main_limitName]]} forState:UIControlStateSelected];

    //: if (@available(iOS 18, *)) {
    if (@available(iOS 18, *)) {
        //: self.delegate = self;
        self.delegate = self;
    }

    //: [self setupNetworkObserver];
    [self size];
}

//: - (void)setupNetworkObserver {
- (void)size {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(networkChanged:)
                                             selector:@selector(flushInChanged:)
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
- (void)flushInChanged:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        //: [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
        [[AccountWith max] share:^(BOOL success) {
            //: if (success) {
            if (success) {
                //: NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            //: } else {
            } else {
                //: NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
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
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor ground:[AdultData notiHideData]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#05D481"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor ground:[AdultData main_limitName]]} forState:UIControlStateSelected];


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
- (NSArray*)name{
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
- (void)duringHighChanged:(NSNotification *)noti {
    //: [self setUpSubNav];
    [self sizeNav];


}


//: - (void)setUpSubNav{
- (void)sizeNav{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.name enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self groundType:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
//        NSString *title  = item[TabbarTitle];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [InputRed preserve:[AdultData userAccelerateData]];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [FFFLanguageManager getTextWithKey:@"discovery"];
            title = [InputRed preserve:[AdultData dream_colorText]];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [FFFLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [InputRed preserve:[AdultData show_kaValue]];
        //: }else if (idx == 3){
        }else if (idx == 3){
            //: title = [FFFLanguageManager getTextWithKey:@"main_tab_my"];
            title = [InputRed preserve:[AdultData user_withChangeText]];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[[AdultData app_viseQuickData]];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[[AdultData mInspireText]];
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
        NSInteger badge = [item[[AdultData dream_targetName]] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        WithName *handler = [[WithName alloc] initWithWriterSTitle:nav];
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
            barApp.backgroundColor = [UIColor ground:[AdultData mainBirthdayValue]];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor ground:[AdultData mainBirthdayValue]];
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
    navBar.barTintColor = [UIColor colorWithPatternImage:[QuantityHelper image:[UIColor ground:[AdultData user_afternoonText]] get:[UIColor ground:[AdultData userRemoveTableValue]] show:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[QuantityHelper image:[UIColor ground:[AdultData user_afternoonText]] get:[UIColor ground:[AdultData userRemoveTableValue]] show:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[QuantityHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
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
    [self originBorder];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self originBorder];
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
    [self originBorder];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self originBorder];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self originBorder];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self originBorder];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self originBorder];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self originBorder];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self restore];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)statusBlue:(NSNotification *)notification
{
    //: NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    VideoMessageDb *db = [VideoMessageDb exhibit];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self canBy];
}

//: - (void)refreshSessionBadge{
- (void)originBorder{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    //: nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

//: - (void)refreshContactBadge{
- (void)restore{
//    UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)refreshSettingBadge{
- (void)canBy{
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
    BOOL enableRotate = [ImageTing configRefresh].pinLocation;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [ImageTing configRefresh].pinLocation;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
- (NSDictionary *)groundType:(NTESMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(NTESMainTabTypeMessageList) : @{
                     @(NTESMainTabTypeMessageList) : @{
                             //: @"vc" : @"NTESSessionListViewController",
                             @"vc" : @"SmartViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             [AdultData showSessionName] : [InputRed preserve:[AdultData userAccelerateData]],
                             //: @"image" : @"icon_message_normal",
                             [AdultData app_viseQuickData] : [AdultData m_wishTitle],
                             //: @"selectedImage": @"icon_message_pressed",
                             [AdultData mInspireText]: [AdultData mainAloneRealistContent],
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             [AdultData dream_targetName]: @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeChatroomList): @{
                     @(NTESMainTabTypeChatroomList): @{
                             //: @"vc" : @"DisCorveyViewController",
                             @"vc" : @"SendViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"discovery"],
                             [AdultData showSessionName] : [InputRed preserve:[AdultData dream_colorText]],
                             //: @"image" : @"icon_discovery_normal",
                             [AdultData app_viseQuickData] : [AdultData k_valueName],
                             //: @"selectedImage": @"icon_discovery_pressed",
                             [AdultData mInspireText]: [AdultData showThreadData],
                             //: },
                             },
                     //: @(NTESMainTabTypeContact) : @{
                     @(NTESMainTabTypeContact) : @{
                             //: @"vc" : @"CCCContactsViewController",
                             @"vc" : @"ThreadViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"contacts_list_title"],
                             [AdultData showSessionName] : [InputRed preserve:[AdultData show_kaValue]],
                             //: @"image" : @"icon_contact_normal",
                             [AdultData app_viseQuickData] : [AdultData mPressureText],
                             //: @"selectedImage": @"icon_contact_pressed",
                             [AdultData mInspireText]: [AdultData app_findingTitle],
                             //: },
                             },
                     //: @(NTESMainTabTypeSetting) : @{
                     @(NTESMainTabTypeSetting) : @{
                             //: @"vc" : @"NTESMainCenterViewController",
                             @"vc" : @"KeyViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"main_tab_my"],
                             [AdultData showSessionName] : [InputRed preserve:[AdultData user_withChangeText]],
                             //: @"image" : @"icon_setting_normal",
                             [AdultData app_viseQuickData] : [AdultData app_submitValue],
                             //: @"selectedImage": @"icon_setting_pressed",
                             [AdultData mInspireText]: [AdultData noti_presentName],
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];

}



//: @end
@end
