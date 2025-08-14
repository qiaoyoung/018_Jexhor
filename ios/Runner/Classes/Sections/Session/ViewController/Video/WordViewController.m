
#import <Foundation/Foundation.h>

@interface AddLimitEmergencyData : NSObject

+ (instancetype)sharedInstance;

//: ic_pic_save
@property (nonatomic, copy) NSString *appMaxText;

//: error
@property (nonatomic, copy) NSString *userAcheData;

//: #fffWork
@property (nonatomic, copy) NSString *notiYaData;

//: group_info_activity_update_success
@property (nonatomic, copy) NSString *userLabelTitle;

//: ic_pic_share
@property (nonatomic, copy) NSString *dream_canName;

//: 0.5x
@property (nonatomic, copy) NSString *main_appearDrinkingText;

//: 00:00
@property (nonatomic, copy) NSString *notiPursuitValue;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *user_sizeContent;

//: /  00:00
@property (nonatomic, copy) NSString *user_balanceValue;

//: 1.5x
@property (nonatomic, copy) NSString *k_journalistName;

//: 播放失败
@property (nonatomic, copy) NSString *mKeepValue;

//: ic_close_w
@property (nonatomic, copy) NSString *dreamButtonTitle;

//: group_info_activity_update_failed
@property (nonatomic, copy) NSString *mainIllegalData;

//: #66FFFWork
@property (nonatomic, copy) NSString *dreamTowerAddTitle;

//: player_push
@property (nonatomic, copy) NSString *userInfoText;

//: player_play
@property (nonatomic, copy) NSString *main_buttonName;

@end

@implementation AddLimitEmergencyData

+ (instancetype)sharedInstance {
    static AddLimitEmergencyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AddLimitEmergencyDataToCache:(Byte *)data {
    int valueMode = data[0];
    Byte suspect = data[1];
    int ticket = data[2];
    for (int i = ticket; i < ticket + valueMode; i++) {
        int value = data[i] + suspect;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[ticket + valueMode] = 0;
    return data + ticket;
}

- (NSString *)StringFromAddLimitEmergencyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AddLimitEmergencyDataToCache:data]];
}

//: player_push
- (NSString *)userInfoText {
    if (!_userInfoText) {
        Byte value[] = {11, 82, 10, 43, 23, 178, 54, 246, 229, 128, 30, 26, 15, 39, 19, 32, 13, 30, 35, 33, 22, 98};
        _userInfoText = [self StringFromAddLimitEmergencyData:value];
    }
    return _userInfoText;
}

//: error
- (NSString *)userAcheData {
    if (!_userAcheData) {
        Byte value[] = {5, 59, 11, 249, 45, 106, 183, 29, 170, 120, 228, 42, 55, 55, 52, 55, 214};
        _userAcheData = [self StringFromAddLimitEmergencyData:value];
    }
    return _userAcheData;
}

//: #fffWork
- (NSString *)notiYaData {
    if (!_notiYaData) {
        Byte value[] = {7, 52, 10, 177, 190, 149, 149, 106, 237, 239, 239, 50, 50, 50, 50, 50, 50, 106};
        _notiYaData = [self StringFromAddLimitEmergencyData:value];
    }
    return _notiYaData;
}

//: #66FFFWork
- (NSString *)dreamTowerAddTitle {
    if (!_dreamTowerAddTitle) {
        Byte value[] = {9, 71, 10, 2, 129, 66, 154, 251, 242, 94, 220, 239, 239, 255, 255, 255, 255, 255, 255, 147};
        _dreamTowerAddTitle = [self StringFromAddLimitEmergencyData:value];
    }
    return _dreamTowerAddTitle;
}

//: 00:00
- (NSString *)notiPursuitValue {
    if (!_notiPursuitValue) {
        Byte value[] = {5, 5, 6, 35, 54, 227, 43, 43, 53, 43, 43, 98};
        _notiPursuitValue = [self StringFromAddLimitEmergencyData:value];
    }
    return _notiPursuitValue;
}

//: ic_close_w
- (NSString *)dreamButtonTitle {
    if (!_dreamButtonTitle) {
        Byte value[] = {10, 67, 3, 38, 32, 28, 32, 41, 44, 48, 34, 28, 52, 24};
        _dreamButtonTitle = [self StringFromAddLimitEmergencyData:value];
    }
    return _dreamButtonTitle;
}

//: 播放失败
- (NSString *)mKeepValue {
    if (!_mKeepValue) {
        Byte value[] = {12, 20, 11, 31, 171, 210, 230, 80, 26, 3, 59, 210, 126, 153, 210, 128, 170, 209, 144, 157, 212, 160, 145, 220};
        _mKeepValue = [self StringFromAddLimitEmergencyData:value];
    }
    return _mKeepValue;
}

//: /  00:00
- (NSString *)user_balanceValue {
    if (!_user_balanceValue) {
        Byte value[] = {8, 53, 8, 178, 165, 69, 160, 252, 250, 235, 235, 251, 251, 5, 251, 251, 72};
        _user_balanceValue = [self StringFromAddLimitEmergencyData:value];
    }
    return _user_balanceValue;
}

//: ic_pic_save
- (NSString *)appMaxText {
    if (!_appMaxText) {
        Byte value[] = {11, 71, 9, 155, 123, 176, 218, 160, 22, 34, 28, 24, 41, 34, 28, 24, 44, 26, 47, 30, 20};
        _appMaxText = [self StringFromAddLimitEmergencyData:value];
    }
    return _appMaxText;
}

//: player_play
- (NSString *)main_buttonName {
    if (!_main_buttonName) {
        Byte value[] = {11, 10, 6, 234, 40, 211, 102, 98, 87, 111, 91, 104, 85, 102, 98, 87, 111, 7};
        _main_buttonName = [self StringFromAddLimitEmergencyData:value];
    }
    return _main_buttonName;
}

//: ic_pic_share
- (NSString *)dream_canName {
    if (!_dream_canName) {
        Byte value[] = {12, 16, 12, 200, 65, 107, 142, 157, 32, 129, 234, 210, 89, 83, 79, 96, 89, 83, 79, 99, 88, 81, 98, 85, 138};
        _dream_canName = [self StringFromAddLimitEmergencyData:value];
    }
    return _dream_canName;
}

//: 0.5x
- (NSString *)main_appearDrinkingText {
    if (!_main_appearDrinkingText) {
        Byte value[] = {4, 77, 7, 55, 94, 122, 172, 227, 225, 232, 43, 89};
        _main_appearDrinkingText = [self StringFromAddLimitEmergencyData:value];
    }
    return _main_appearDrinkingText;
}

//: group_info_activity_update_success
- (NSString *)userLabelTitle {
    if (!_userLabelTitle) {
        Byte value[] = {34, 79, 3, 24, 35, 32, 38, 33, 16, 26, 31, 23, 32, 16, 18, 20, 37, 26, 39, 26, 37, 42, 16, 38, 33, 21, 18, 37, 22, 16, 36, 38, 20, 20, 22, 36, 36, 88};
        _userLabelTitle = [self StringFromAddLimitEmergencyData:value];
    }
    return _userLabelTitle;
}

//: friend_verify_avtivity_net_error
- (NSString *)user_sizeContent {
    if (!_user_sizeContent) {
        Byte value[] = {32, 29, 9, 100, 37, 43, 173, 206, 85, 73, 85, 76, 72, 81, 71, 66, 89, 72, 85, 76, 73, 92, 66, 68, 89, 87, 76, 89, 76, 87, 92, 66, 81, 72, 87, 66, 72, 85, 85, 82, 85, 160};
        _user_sizeContent = [self StringFromAddLimitEmergencyData:value];
    }
    return _user_sizeContent;
}

//: group_info_activity_update_failed
- (NSString *)mainIllegalData {
    if (!_mainIllegalData) {
        Byte value[] = {33, 34, 9, 73, 89, 18, 191, 237, 54, 69, 80, 77, 83, 78, 61, 71, 76, 68, 77, 61, 63, 65, 82, 71, 84, 71, 82, 87, 61, 83, 78, 66, 63, 82, 67, 61, 68, 63, 71, 74, 67, 66, 84};
        _mainIllegalData = [self StringFromAddLimitEmergencyData:value];
    }
    return _mainIllegalData;
}

//: 1.5x
- (NSString *)k_journalistName {
    if (!_k_journalistName) {
        Byte value[] = {4, 93, 12, 156, 4, 88, 52, 227, 167, 52, 131, 15, 212, 209, 216, 27, 45};
        _k_journalistName = [self StringFromAddLimitEmergencyData:value];
    }
    return _k_journalistName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WordViewController.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideoViewController.h"
#import "WordViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+BottomMagnitude.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESNavigationHandler.h"
#import "WithName.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "LYSlider.h"
#import "TingControl.h"
//: #import "UIImage+ComPress.h"
#import "UIImage+SystemTeam.h"
//: #import "ZMONCustomLoadingView.h"
#import "LabView.h"
//: #import "ZOMNForwardViewController.h"
#import "ManagerViewController.h"
//: #import "WMZDialog.h"
#import "WMZDialog.h"

//: @interface NTESVideoViewController ()<LYVideoPlayerDelegate>
@interface WordViewController ()<BarManager>

//: @property (nonatomic,strong) NTESVideoViewItem *item;
@property (nonatomic,strong) FrameSession *item;
//: @property (nonatomic,strong) NTESAVMoivePlayerController *avPlayer;
@property (nonatomic,strong) WithController *avPlayer;

//: @property (nonatomic,strong) UIButton *btnSave;
@property (nonatomic,strong) UIButton *btnSave;
//: @property (nonatomic,strong) UIButton *btnShare;
@property (nonatomic,strong) UIButton *btnShare;
//: @property (nonatomic,strong) UIButton *btnPlay;
@property (nonatomic,strong) UIButton *btnPlay;
//: @property (nonatomic,strong) UIButton *btnRate;
@property (nonatomic,strong) UIButton *btnRate;

//: @property (nonatomic, strong) UILabel *currentLabel; 
@property (nonatomic, strong) UILabel *currentLabel; //当前播放时间
//: @property (nonatomic, strong) UILabel *totalLabel; 
@property (nonatomic, strong) UILabel *totalLabel; //视频总时间
//: @property (nonatomic, strong) LYSlider *videoSlider; 
@property (nonatomic, strong) TingControl *videoSlider; //滑动条
//: @property (nonatomic, assign) NSInteger currentTime;
@property (nonatomic, assign) NSInteger currentTime;
//: @property (nonatomic, assign) NSInteger totalTime;
@property (nonatomic, assign) NSInteger totalTime;
//: @property (nonatomic, assign) CGFloat playValue; 
@property (nonatomic, assign) CGFloat playValue; //播放进度
//: @property (nonatomic, assign) CGFloat progress; 
@property (nonatomic, assign) CGFloat progress; //缓冲进度


//: @property (nonatomic,strong) UIImageView *imgPlay;
@property (nonatomic,strong) UIImageView *imgPlay;

//: @property (nonatomic,strong) UIProgressView *progres;
@property (nonatomic,strong) UIProgressView *progres;
//: @property (nonatomic, strong) UIPanGestureRecognizer *panGesture; 
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture; //滑动手势

//: @property (strong, nonatomic) UISlider *progressSlider;
@property (strong, nonatomic) UISlider *progressSlider;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) LabView *loadingView;

//: @end
@end

//: @implementation NTESVideoViewController
@implementation WordViewController
{
    //: CGPoint _startPoint; 
    CGPoint _startPoint; //手势滑动的起始点
    //: CGPoint _lastPoint; 
    CGPoint _lastPoint; //记录上次滑动的点
    //: BOOL _isStartPan; 
    BOOL _isStartPan; //记录手势开始滑动
    //: CGFloat _fastCurrentTime;
    CGFloat _fastCurrentTime;//记录当前快进快退的时间
}

//: - (instancetype)initWithVideoViewItem:(NTESVideoViewItem *)item
- (instancetype)initWithShould:(FrameSession *)item
{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self)
    if (self)
    {
        //: _item = item;
        _item = item;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [_avPlayer stop];
    [_avPlayer streetSmart];
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //    [[NIMSDK sharedSDK].resourceManager cancelTask:_item.path];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
//    if (_avPlayer.playbackState == NTESAVMoviePlaybackStatePlaying) {//不要调用.get方法，会过早的初始化播放器
//        [self topStatusUIHidden:YES];
//    }else{
//        [self topStatusUIHidden:NO];
//    }
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
//    if (![[self.navigationController viewControllers] containsObject: self])
//    {
//        [self topStatusUIHidden:NO];
//    }
}


//: - (void)viewDidDisappear:(BOOL)animated{
- (void)viewDidDisappear:(BOOL)animated{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.avPlayer pause];
    [self.avPlayer modal];
}

//: - (void)backAction{
- (void)shouldUser{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor blackColor];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+10, 24, 24);
    backButton.frame = CGRectMake(5, [UIDevice heightShowStop]+10, 24, 24);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_w"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[AddLimitEmergencyData sharedInstance].dreamButtonTitle] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(shouldUser) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _btnShare = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnShare = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnShare.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnShare.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice heightShowStop]+10, 24, 24);
    //: [_btnShare setImage:[UIImage imageNamed:@"ic_pic_share"] forState:UIControlStateNormal];
    [_btnShare setImage:[UIImage imageNamed:[AddLimitEmergencyData sharedInstance].dream_canName] forState:UIControlStateNormal];
    //: [_btnShare addTarget:self action:@selector(onTouchshare) forControlEvents:UIControlEventTouchUpInside];
    [_btnShare addTarget:self action:@selector(offTouchshare) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnShare];
    [self.view addSubview:_btnShare];

    //: _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice heightShowStop]+10, 24, 24);
    //: [_btnSave setImage:[UIImage imageNamed:@"ic_pic_save"] forState:UIControlStateNormal];
    [_btnSave setImage:[UIImage imageNamed:[AddLimitEmergencyData sharedInstance].appMaxText] forState:UIControlStateNormal];
    //: [_btnSave addTarget:self action:@selector(onTouchSaveBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnSave addTarget:self action:@selector(replyKind) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnSave];
    [self.view addSubview:_btnSave];




    //: UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    //: [self.view addSubview:btnView];
    [self.view addSubview:btnView];
    //: [self.view bringSubviewToFront:btnView];
    [self.view bringSubviewToFront:btnView];

    //: _btnPlay = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnPlay = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnPlay.frame = CGRectMake(20, 4, 40, 40);
    _btnPlay.frame = CGRectMake(20, 4, 40, 40);
    //: [_btnPlay setImage:[UIImage imageNamed:@"player_play"] forState:UIControlStateNormal];
    [_btnPlay setImage:[UIImage imageNamed:[AddLimitEmergencyData sharedInstance].main_buttonName] forState:UIControlStateNormal];
    //: [_btnPlay setImage:[UIImage imageNamed:@"player_push"] forState:UIControlStateSelected];
    [_btnPlay setImage:[UIImage imageNamed:[AddLimitEmergencyData sharedInstance].userInfoText] forState:UIControlStateSelected];
    //: [_btnPlay addTarget:self action:@selector(onTap) forControlEvents:UIControlEventTouchUpInside];
    [_btnPlay addTarget:self action:@selector(maxRange) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnPlay];
    [btnView addSubview:_btnPlay];

    //: [btnView addSubview:self.currentLabel];
    [btnView addSubview:self.currentLabel];
    //: self.currentLabel.frame = CGRectMake(_btnPlay.right+10, 5, 40, 14);
    self.currentLabel.frame = CGRectMake(_btnPlay.right+10, 5, 40, 14);

    //: [btnView addSubview:self.totalLabel];
    [btnView addSubview:self.totalLabel];
    //: self.totalLabel.frame = CGRectMake(self.currentLabel.right, 5, 80, 14);
    self.totalLabel.frame = CGRectMake(self.currentLabel.right, 5, 80, 14);

//    [btnView addSubview:self.videoSlider];
//    self.videoSlider.frame = CGRectMake(15, 5, 3*width-30, 20);

    //: self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(_btnPlay.right+10, 20, [[UIScreen mainScreen] bounds].size.width-40-60, 30)];
    self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(_btnPlay.right+10, 20, [[UIScreen mainScreen] bounds].size.width-40-60, 30)];
    //: self.progressSlider.minimumTrackTintColor = [UIColor whiteColor];
    self.progressSlider.minimumTrackTintColor = [UIColor whiteColor];
    //: self.progressSlider.maximumTrackTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];
    self.progressSlider.maximumTrackTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];
//    self.progressSlider.thumbTintColor = ThemeColor;
    //: [self.progressSlider setThumbImage:[UIImage createImageWithColor:[UIColor colorWithHexString:@"#fffWork"] radius:3.0] forState:UIControlStateNormal];
    [self.progressSlider setThumbImage:[UIImage team:[UIColor ground:[AddLimitEmergencyData sharedInstance].notiYaData] click:3.0] forState:UIControlStateNormal];
    //: self.progressSlider.layer.cornerRadius = 3;
    self.progressSlider.layer.cornerRadius = 3;
    //: self.progressSlider.layer.masksToBounds = YES;
    self.progressSlider.layer.masksToBounds = YES;
    //: [btnView addSubview:self.progressSlider];
    [btnView addSubview:self.progressSlider];
    //: [self.progressSlider addTarget:self action:@selector(progressSliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.progressSlider addTarget:self action:@selector(addUpChanged:) forControlEvents:UIControlEventValueChanged];

    //: self.btnRate = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnRate = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnRate.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-44-20, 4, 44, 18);
    _btnRate.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-44-20, 4, 44, 18);
    //: _btnRate.backgroundColor = [UIColor blackColor];
    _btnRate.backgroundColor = [UIColor blackColor];
    //: _btnRate.layer.cornerRadius = 9;
    _btnRate.layer.cornerRadius = 9;
    //: _btnRate.layer.borderColor = [UIColor colorWithHexString:@"#66FFFWork"].CGColor;
    _btnRate.layer.borderColor = [UIColor ground:[AddLimitEmergencyData sharedInstance].dreamTowerAddTitle].CGColor;
    //: _btnRate.layer.borderWidth = 1;
    _btnRate.layer.borderWidth = 1;
    //: [_btnRate addTarget:self action:@selector(handlerTheRate:) forControlEvents:UIControlEventTouchUpInside];
    [_btnRate addTarget:self action:@selector(pining:) forControlEvents:UIControlEventTouchUpInside];
    //: _btnRate.titleLabel.font = [UIFont systemFontOfSize:12];
    _btnRate.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [_btnRate setTitleColor:[UIColor colorWithHexString:@"#fffWork"] forState:UIControlStateNormal];
    [_btnRate setTitleColor:[UIColor ground:[AddLimitEmergencyData sharedInstance].notiYaData] forState:UIControlStateNormal];
    //: [_btnRate setTitle:@"1x" forState:UIControlStateNormal];
    [_btnRate setTitle:@"1x" forState:UIControlStateNormal];
    //: [btnView addSubview:_btnRate];
    [btnView addSubview:_btnRate];


    //: if ([[NSFileManager defaultManager] fileExistsAtPath:self.item.path]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.item.path]) {
        //: [self startPlay];
        [self lineupComment];
    //: }else{
    }else{
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [self downLoadVideo:^(NSError *error) {
        [self numberDoing:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself startPlay];
                [wself lineupComment];
            //: }else{
            }else{
                //: [wself.view makeToast:[WorkLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                [wself.view makeToast:[InputRed preserve:[AddLimitEmergencyData sharedInstance].user_sizeContent]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    }

//    @weakify(self)
//    [self.avPlayer.player addPeriodicTimeObserverForInterval:CMTimeMakeWithSeconds(1, NSEC_PER_SEC)
//                                                      queue:NULL
//                                                 usingBlock:^(CMTime time) {
//        @strongify(self)
//        //进度 当前时间/总时间
//        CGFloat progress = CMTimeGetSeconds(self.avPlayer.player.currentItem.currentTime) / CMTimeGetSeconds(self.avPlayer.player.currentItem.duration);
//        //在这里截取播放进度并处理
//        self.progres.progress = progress;
//    }];
}

//: - (void)handlerTheRate:(UIButton *)sender
- (void)pining:(UIButton *)sender
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: Dialog().wTypeSet(DialogTypePop)
    Dialog().wTypeSet(DialogTypePop)
    //: .wEventFinishSet(^(id anyID, NSIndexPath *path, DialogType type) {
    .wEventFinishSet(^(id anyID, NSIndexPath *path, DialogType type) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.btnRate setTitle:anyID forState:UIControlStateNormal];
        [self.btnRate setTitle:anyID forState:UIControlStateNormal];
        //: if (path.row == 0) {
        if (path.row == 0) {
            //: [self setPlaybackRate:0.5f];
            [self setListChange:0.5f];
        //: }else if (path.row == 1){
        }else if (path.row == 1){
            //: [self setPlaybackRate:1.0f];
            [self setListChange:1.0f];
        //: }else if (path.row == 2){
        }else if (path.row == 2){
            //: [self setPlaybackRate:1.5f];
            [self setListChange:1.5f];
        //: }else if (path.row == 3){
        }else if (path.row == 3){
            //: [self setPlaybackRate:2.0f];
            [self setListChange:2.0f];
        }
    //: })
    })
    //: .wTextAlignmentSet(NSTextAlignmentCenter)
    .wTextAlignmentSet(NSTextAlignmentCenter)
    //: .wPopViewRectCornerSet(DialogRectCornerAllCorners)
    .wPopViewRectCornerSet(DialogRectCornerAllCorners)
    //: .wCellBackgroundColorSet([UIColor blackColor])
    .wCellBackgroundColorSet([UIColor blackColor])
    //: .wTapViewSet(sender)
    .wTapViewSet(sender)
    //: .wWidthSet(72)
    .wWidthSet(72)
    //: .wDataSet(@[@"0.5x",@"1x",@"1.5x",@"2x"])
    .wDataSet(@[[AddLimitEmergencyData sharedInstance].main_appearDrinkingText,@"1x",[AddLimitEmergencyData sharedInstance].k_journalistName,@"2x"])
    //: .wStart();
    .wStart();
}

// 设置播放速率
//: - (void)setPlaybackRate:(float)rate {
- (void)setListChange:(float)rate {
    //: if (self.avPlayer.player.currentItem.status == AVPlayerItemStatusReadyToPlay) {
    if (self.avPlayer.player.currentItem.status == AVPlayerItemStatusReadyToPlay) {
        // iOS 10+ 推荐方式
        //: if (@available(iOS 10.0, *)) {
        if (@available(iOS 10.0, *)) {
            //: [self.avPlayer.player playImmediatelyAtRate:rate];
            [self.avPlayer.player playImmediatelyAtRate:rate];
        //: } else {
        } else {
            // iOS 10 以下方式
            //: self.avPlayer.player.rate = rate;
            self.avPlayer.player.rate = rate;
        }
    }
}

//: - (void)onTouchshare {
- (void)offTouchshare {
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    ManagerViewController *vc = [[ManagerViewController alloc]init];
    //: vc.message = self.message;
    vc.message = self.message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)onTouchSaveBtn {
- (void)replyKind {

    //: PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    //: [photoLibrary performChanges:^{
    [photoLibrary performChanges:^{
        //: [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:[NSURL
        [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:[NSURL
                                                                         //: fileURLWithPath:self.item.path]];
                                                                         fileURLWithPath:self.item.path]];
    //: } completionHandler:^(BOOL success, NSError * _Nullable error) {
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: NSString *toast = (success)?[WorkLanguageManager getTextWithKey:@"group_info_activity_update_success"] :[WorkLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
            NSString *toast = (success)?[InputRed preserve:[AddLimitEmergencyData sharedInstance].userLabelTitle] :[InputRed preserve:[AddLimitEmergencyData sharedInstance].mainIllegalData];
            //: [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
        //: });
        });
    //: }];
    }];
}


//: - (void)downLoadVideo:(void(^)(NSError *error))handler{
- (void)numberDoing:(void(^)(NSError *error))handler{
//    [SVProgressHUD show];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager download:self.item.url filepath:self.item.path progress:^(float progress) {
    [[NIMSDK sharedSDK].resourceManager download:self.item.url filepath:self.item.path progress:^(float progress) {
//        if (wself)
//        {
//            [SVProgressHUD showProgress:progress];
//        }
    //: } completion:^(NSError *error) {
    } completion:^(NSError *error) {
        //: if (wself) {
        if (wself) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView animationWithEnableAtHand];
            //: if (handler) {
            if (handler) {
                //: handler(error);
                handler(error);
            }
        }
    //: }];
    }];
}

//: - (void)videoPlayertotalTime:(NSInteger)totalTime
- (void)videos:(NSInteger)totalTime
{
    //: self.totalTime = totalTime;
    self.totalTime = totalTime;
    //: self.totalLabel.text = [NSString stringWithFormat:@"/  %@",[self timeFormatted:totalTime]];
    self.totalLabel.text = [NSString stringWithFormat:@"/  %@",[self on:totalTime]];
}

//: - (void)videoPlayercurrentTime:(NSInteger)currentTime
- (void)times:(NSInteger)currentTime
{
    //: self.currentTime = currentTime;
    self.currentTime = currentTime;
    //: self.currentLabel.text = [self timeFormatted:currentTime];
    self.currentLabel.text = [self on:currentTime];
//    self.videoSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;
    //: self.progressSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;
    self.progressSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;

}

//: - (void)progressSliderValueChanged:(UISlider *)sender {
- (void)addUpChanged:(UISlider *)sender {
    //: CGFloat totime = sender.value * (CGFloat)self.totalTime;
    CGFloat totime = sender.value * (CGFloat)self.totalTime;
    //: [self.avPlayer seekToTimePlay:totime];
    [self.avPlayer digitizer:totime];

//    CMTime newTime = CMTimeMakeWithSeconds(sender.value, NSEC_PER_SEC);
//    [self.avPlayer.player seekToTime:newTime completionHandler:^(BOOL finished) {
//        if (finished) {
//            [self.avPlayer play];
//        }
//    }];
}

//转换时间格式
//: - (NSString *)timeFormatted:(NSInteger)totalSeconds
- (NSString *)on:(NSInteger)totalSeconds
{
    //: NSInteger seconds = totalSeconds % 60;
    NSInteger seconds = totalSeconds % 60;
    //: NSInteger minutes = (totalSeconds / 60) % 60;
    NSInteger minutes = (totalSeconds / 60) % 60;

    //: return [NSString stringWithFormat:@"%02ld:%02ld",minutes, seconds];
    return [NSString stringWithFormat:@"%02ld:%02ld",minutes, seconds];
}


//: - (void)startPlay{
- (void)lineupComment{
    //: self.avPlayer.view.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.avPlayer.view.frame = CGRectMake(0, (44.0f + [UIDevice heightShowStop]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    //: [self.avPlayer prepareToPlay];
    [self.avPlayer size];
    //: [self.view addSubview:self.avPlayer.view];
    [self.view addSubview:self.avPlayer.view];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(moviePlaybackComplete:)
                                             selector:@selector(tickOpen:)
                                                 //: name:NTESAVMoviePlayerPlaybackDidFinishNotification
                                                 name:dream_willName
                                               //: object:self.avPlayer];
                                               object:self.avPlayer];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(moviePlayStateChanged:)
                                             selector:@selector(shows:)
                                                 //: name:NTESAVMoviePlayerPlaybackStateDidChangeNotification
                                                 name:notiContentTitle
                                               //: object:self.avPlayer];
                                               object:self.avPlayer];


//    CGRect bounds = self.avPlayer.view.bounds;
//    CGRect tapViewFrame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
//    UIView *tapView = [[UIView alloc]initWithFrame:tapViewFrame];
//    [tapView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
//    tapView.backgroundColor = [UIColor clearColor];
//    [self.avPlayer.view addSubview:tapView];
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTap:)];
//    [tapView  addGestureRecognizer:tap];
//    
//    [self.view addSubview:self.imgPlay];


}

//: - (void)moviePlaybackComplete: (NSNotification *)aNotification
- (void)tickOpen: (NSNotification *)aNotification
{
    //: if (self.avPlayer == aNotification.object)
    if (self.avPlayer == aNotification.object)
    {
        //: [self topStatusUIHidden:NO];
        [self top:NO];
        //: NSDictionary *notificationUserInfo = [aNotification userInfo];
        NSDictionary *notificationUserInfo = [aNotification userInfo];
        //: NSNumber *resultValue = [notificationUserInfo objectForKey:NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey];
        NSNumber *resultValue = [notificationUserInfo objectForKey:mContextValue];
        //: NTESAVMovieFinishReason reason = [resultValue intValue];
        NTESAVMovieFinishReason reason = [resultValue intValue];
        //: if (reason == NTESAVMovieFinishReasonPlaybackError)
        if (reason == NTESAVMovieFinishReasonPlaybackError)
        {
            //: NSError *mediaPlayerError = [notificationUserInfo objectForKey:@"error"];
            NSError *mediaPlayerError = [notificationUserInfo objectForKey:[AddLimitEmergencyData sharedInstance].userAcheData];
            //: NSString *errorTip = [NSString stringWithFormat:@"%@: %@", @"播放失败".ntes_localized, [mediaPlayerError localizedDescription]];
            NSString *errorTip = [NSString stringWithFormat:@"%@: %@", [AddLimitEmergencyData sharedInstance].mKeepValue.shouldLocalized, [mediaPlayerError localizedDescription]];
            //: [self.view makeToast:errorTip
            [self.view makeToast:errorTip
                        //: duration:2
                        duration:2
                        //: position:CSToastPositionCenter];
                        position:CSToastPositionCenter];
        }
    }

}

//: - (void)moviePlayStateChanged: (NSNotification *)aNotification
- (void)shows: (NSNotification *)aNotification
{
    //: if (self.avPlayer == aNotification.object)
    if (self.avPlayer == aNotification.object)
    {
        //: switch (self.avPlayer.playbackState)
        switch (self.avPlayer.playbackState)
        {
            //: case NTESAVMoviePlaybackStatePlaying:
            case NTESAVMoviePlaybackStatePlaying:
                //: [self topStatusUIHidden:YES];
                [self top:YES];
                //: break;
                break;
            //: case NTESAVMoviePlaybackStatePaused:
            case NTESAVMoviePlaybackStatePaused:
            //: case NTESAVMoviePlaybackStateStopped:
            case NTESAVMoviePlaybackStateStopped:
            //: case NTESAVMoviePlaybackStateInterrupted:
            case NTESAVMoviePlaybackStateInterrupted:
                //: [self topStatusUIHidden:NO];
                [self top:NO];
            //: case NTESAVPMoviePlaybackStateSeekingBackward:
            case NTESAVPMoviePlaybackStateSeekingBackward:
            //: case NTESAVPMoviePlaybackStateSeekingForward:
            case NTESAVPMoviePlaybackStateSeekingForward:
                //: break;
                break;
        }

    }
}

//: - (void)topStatusUIHidden:(BOOL)isHidden
- (void)top:(BOOL)isHidden
{
//    self.imgPlay.hidden = isHidden;
    //: self.btnPlay.selected = isHidden;
    self.btnPlay.selected = isHidden;
}

//: - (void)onTap
- (void)maxRange
{
    //: [self.btnRate setTitle:@"1x" forState:UIControlStateNormal];
    [self.btnRate setTitle:@"1x" forState:UIControlStateNormal];
    //: switch (self.avPlayer.playbackState)
    switch (self.avPlayer.playbackState)
    {
        //: case NTESAVMoviePlaybackStatePlaying:
        case NTESAVMoviePlaybackStatePlaying:
            //: [self.avPlayer pause];
            [self.avPlayer modal];
            //: break;
            break;
        //: case NTESAVMoviePlaybackStatePaused:
        case NTESAVMoviePlaybackStatePaused:
        //: case NTESAVMoviePlaybackStateStopped:
        case NTESAVMoviePlaybackStateStopped:
        //: case NTESAVMoviePlaybackStateInterrupted:
        case NTESAVMoviePlaybackStateInterrupted:
            //: [self.avPlayer play];
            [self.avPlayer session];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NTESAVMoivePlayerController *)avPlayer {
- (WithController *)avPlayer {
    //: if (!_avPlayer) {
    if (!_avPlayer) {
        //: _avPlayer = [[NTESAVMoivePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:self.item.path]];
        _avPlayer = [[WithController alloc] initWithInfoUser:[NSURL fileURLWithPath:self.item.path]];
        //: _avPlayer.delegate = self;
        _avPlayer.delegate = self;
        //: _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
        _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
    }
    //: return _avPlayer;
    return _avPlayer;
}

//: - (UIImageView *)imgPlay{
- (UIImageView *)imgPlay{
    //: if(!_imgPlay){
    if(!_imgPlay){
        //: _imgPlay = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, ([[UIScreen mainScreen] bounds].size.height-80)/2, 80, 80)];
        _imgPlay = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, ([[UIScreen mainScreen] bounds].size.height-80)/2, 80, 80)];
//        _imgPlay.center = self.view.center;
        //: _imgPlay.image = [UIImage imageNamed:@"player_push"];
        _imgPlay.image = [UIImage imageNamed:[AddLimitEmergencyData sharedInstance].userInfoText];
        //: _imgPlay.hidden = YES;
        _imgPlay.hidden = YES;
    }
    //: return _imgPlay;
    return _imgPlay;
}

//: - (UILabel *)currentLabel{
- (UILabel *)currentLabel{
    //: if (!_currentLabel) {
    if (!_currentLabel) {
        //: _currentLabel = [[UILabel alloc] init];
        _currentLabel = [[UILabel alloc] init];
        //: _currentLabel.text = @"00:00";
        _currentLabel.text = [AddLimitEmergencyData sharedInstance].notiPursuitValue;
        //: _currentLabel.textColor = [UIColor whiteColor];
        _currentLabel.textColor = [UIColor whiteColor];
//        _currentLabel.textAlignment = NSTextAlignmentLeft;
        //: _currentLabel.font = [UIFont systemFontOfSize:12];
        _currentLabel.font = [UIFont systemFontOfSize:12];
    }
    //: return _currentLabel;
    return _currentLabel;
}
//: - (UILabel *)totalLabel{
- (UILabel *)totalLabel{
    //: if (!_totalLabel) {
    if (!_totalLabel) {
        //: _totalLabel = [[UILabel alloc] init];
        _totalLabel = [[UILabel alloc] init];
        //: _totalLabel.text = @"/  00:00";
        _totalLabel.text = [AddLimitEmergencyData sharedInstance].user_balanceValue;
        //: _totalLabel.textColor = [UIColor whiteColor];
        _totalLabel.textColor = [UIColor whiteColor];
        //: _totalLabel.font = [UIFont systemFontOfSize:12];
        _totalLabel.font = [UIFont systemFontOfSize:12];
//        _totalLabel.textAlignment = NSTextAlignmentRight;
    }
    //: return _totalLabel;
    return _totalLabel;
}

//: - (LYSlider *)videoSlider{
- (TingControl *)videoSlider{
    //: if (!_videoSlider) {
    if (!_videoSlider) {
        //: _videoSlider = [[LYSlider alloc] initWithFrame:CGRectMake(0, 0, 3*([[UIScreen mainScreen] bounds].size.width/4), 20)];
        _videoSlider = [[TingControl alloc] initWithFrame:CGRectMake(0, 0, 3*([[UIScreen mainScreen] bounds].size.width/4), 20)];

//        //设置滑块图片样式
        // 1 通过颜色创建 Image
        //: UIImage *normalImage = [UIImage createImageWithColor:[UIColor colorWithHexString:@"#fffWork"] radius:7.0];
        UIImage *normalImage = [UIImage team:[UIColor ground:[AddLimitEmergencyData sharedInstance].notiYaData] click:7.0];

        //        UIView *normalImageView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 8, 8)];
        //        normalImageView.layer.cornerRadius = 1;
        //        normalImageView.layer.masksToBounds = YES;
        //        normalImageView.backgroundColor = [UIColor whiteColor];
        //        UIImage *normalImage = [UIImage creatImageWithView:normalImageView];

//        // 2 通过view 创建 Image
//        UIView *highlightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 12, 12)];
//        highlightView.layer.cornerRadius = 6;
//        highlightView.layer.masksToBounds = YES;
//        highlightView.backgroundColor = [UIColor redColor];
//        UIImage *highlightImage = [UIImage creatImageWithView:highlightView];

        //: [_videoSlider setThumbImage:normalImage forState:UIControlStateNormal];
        [_videoSlider save:normalImage language:UIControlStateNormal];
//        [_videoSlider setThumbImage:highlightImage forState:UIControlStateHighlighted];

//        _videoSlider.trackColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];//轨道的颜色
//        _videoSlider.bufferColor = RGB_COLOR_String(@"#fffWork");//缓冲的颜色
//        _videoSlider.thumbValueColor = RGB_COLOR_String(@"#fffWork");///播放进度的颜色
        ///
        //: _videoSlider.trackHeight = 6;
        _videoSlider.trackHeight = 6;
        //: _videoSlider.thumbVisibleSize = 14;
        _videoSlider.thumbVisibleSize = 14;//设置滑块（可见的）大小

//        [_videoSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];//正在拖动
//        [_videoSlider addTarget:self action:@selector(sliderTouchEnd:) forControlEvents:UIControlEventEditingDidEnd];//拖动结束
        //: [_videoSlider addGestureRecognizer:self.panGesture];
        [_videoSlider addGestureRecognizer:self.panGesture];

//        [self.bottomView addSubview:_videoSlider];
    }
    //: return _videoSlider;
    return _videoSlider;
}

//: - (ZMONCustomLoadingView *)loadingView
- (LabView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
        _loadingView = [[LabView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop])-(49.0f))];
    }
    //: return _loadingView;
    return _loadingView;
}


//: #pragma mark - Event
#pragma mark - Event
//: - (void)sliderValueChange:(LYSlider *)slider{
- (void)search:(TingControl *)slider{

//    _sliderIsTouching = YES;
//    self.currentLabel.text = [self timeFormatted:slider.value * self.totalTime];
//    [self startHideControlTimer];
}
//: - (void)sliderTouchEnd:(LYSlider *)slider{
- (void)examineed:(TingControl *)slider{

//    if (_delegate && [_delegate respondsToSelector:@selector(videoControl:didPlayToTime:)]) {
//        [_delegate videoControl:self didPlayToTime:slider.value * self.totalTime];
//    }
//    _sliderIsTouching = NO;
//    [self startHideControlTimer];
    //: NSLog(@"12345678");
    //: NSLog(@"%f",slider.value);
    //: [self.avPlayer seekToTimePlay: slider.value];
    [self.avPlayer digitizer: slider.value];
}

//: - (UIPanGestureRecognizer *)panGesture{
- (UIPanGestureRecognizer *)panGesture{
    //: if (!_panGesture) {
    if (!_panGesture) {
        //: _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureTouch:)];
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(taps:)];
    }
    //: return _panGesture;
    return _panGesture;
}
//: - (void)panGestureTouch:(UIPanGestureRecognizer *)panGestureTouch{
- (void)taps:(UIPanGestureRecognizer *)panGestureTouch{
    //: CGPoint touPoint = [panGestureTouch translationInView:self.videoSlider];
    CGPoint touPoint = [panGestureTouch translationInView:self.videoSlider];
    //: static int changeXorY = 0; 
    static int changeXorY = 0; //0:X:进度   1:Y：音量

    //: if (panGestureTouch.state == UIGestureRecognizerStateBegan) {
    if (panGestureTouch.state == UIGestureRecognizerStateBegan) {
        //: _startPoint = touPoint;
        _startPoint = touPoint;
        //: _lastPoint = touPoint;
        _lastPoint = touPoint;
        //: _isStartPan = YES;
        _isStartPan = YES;
        //: _fastCurrentTime = self.currentTime;
        _fastCurrentTime = self.currentTime;
        //: changeXorY = 0;
        changeXorY = 0;
    //: }else if (panGestureTouch.state == UIGestureRecognizerStateChanged){
    }else if (panGestureTouch.state == UIGestureRecognizerStateChanged){
        //: CGFloat change_X = touPoint.x - _startPoint.x;
        CGFloat change_X = touPoint.x - _startPoint.x;
        //: CGFloat change_Y = touPoint.y - _startPoint.y;
        CGFloat change_Y = touPoint.y - _startPoint.y;

        //: if (_isStartPan) {
        if (_isStartPan) {

            //: if (fabs(change_X) > fabs(change_Y)) {
            if (fabs(change_X) > fabs(change_Y)) {
                //: changeXorY = 0;
                changeXorY = 0;
            //: }else{
            }else{
                //: changeXorY = 1;
                changeXorY = 1;
            }
            //: _isStartPan = NO;
            _isStartPan = NO;
        }
        //: if (changeXorY == 0) {
        if (changeXorY == 0) {//进度


            //: if (touPoint.x - _lastPoint.x >= 1) {
            if (touPoint.x - _lastPoint.x >= 1) {
                //: _lastPoint = touPoint;
                _lastPoint = touPoint;
                //: _fastCurrentTime += 1;
                _fastCurrentTime += 1;
                //: if (_fastCurrentTime > self.totalTime) {
                if (_fastCurrentTime > self.totalTime) {
                    //: _fastCurrentTime = self.totalTime;
                    _fastCurrentTime = self.totalTime;
                }
            }
            //: if (touPoint.x - _lastPoint.x <= - 1) {
            if (touPoint.x - _lastPoint.x <= - 1) {
                //: _lastPoint = touPoint;
                _lastPoint = touPoint;
                //: _fastCurrentTime -= 1;
                _fastCurrentTime -= 1;
                //: if (_fastCurrentTime < 0) {
                if (_fastCurrentTime < 0) {
                    //: _fastCurrentTime = 0;
                    _fastCurrentTime = 0;
                }
            }

//            NSString *currentTimeString = [self timeFormatted:(int)_fastCurrentTime];
//            NSString *totalTimeString = [self timeFormatted:(int)self.totalTime];
//            self.fastTimeLabel.text = [NSString stringWithFormat:@"%@/%@",currentTimeString,totalTimeString];

        }

    //: }else if (panGestureTouch.state == UIGestureRecognizerStateEnded){
    }else if (panGestureTouch.state == UIGestureRecognizerStateEnded){

        //: if (changeXorY == 0) {
        if (changeXorY == 0) {
//            if (_delegate && [_delegate respondsToSelector:@selector(videoControl:didPlayToTime:)]) {
//                [_delegate videoControl:self didPlayToTime:_fastCurrentTime];
//            }

            //: [self.avPlayer seekToTimePlay:_fastCurrentTime];
            [self.avPlayer digitizer:_fastCurrentTime];
        }
//        [self startHideControlTimer];
    }
}

//: @end
@end


//: @implementation NTESVideoViewItem
@implementation FrameSession
//: @end
@end
