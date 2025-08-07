
#import <Foundation/Foundation.h>

@interface MessageData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MessageData

+ (instancetype)sharedInstance {
    static MessageData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MessageDataToCache:(Byte *)data {
    int veteranVenue = data[0];
    Byte frigorific = data[1];
    int ugly = data[2];
    for (int i = ugly; i < ugly + veteranVenue; i++) {
        int value = data[i] - frigorific;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ugly + veteranVenue] = 0;
    return data + ugly;
}

- (NSString *)StringFromMessageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MessageDataToCache:data]];
}

//: #999999
- (NSString *)user_viewUrl {
    /* static */ NSString *user_viewUrl = nil;
    if (!user_viewUrl) {
        Byte value[] = {7, 11, 6, 17, 231, 75, 46, 68, 68, 68, 68, 68, 68, 212};
        user_viewUrl = [self StringFromMessageData:value];
    }
    return user_viewUrl;
}

//: chat_top_bg
- (NSString *)mBornHeroName {
    /* static */ NSString *mBornHeroName = nil;
    if (!mBornHeroName) {
        Byte value[] = {11, 98, 10, 33, 223, 100, 114, 222, 202, 198, 197, 202, 195, 214, 193, 214, 209, 210, 193, 196, 201, 127};
        mBornHeroName = [self StringFromMessageData:value];
    }
    return mBornHeroName;
}

//: group_info_activity_without
- (NSString *)showRequirementCenterKey {
    /* static */ NSString *showRequirementCenterKey = nil;
    if (!showRequirementCenterKey) {
        Byte value[] = {27, 68, 11, 6, 227, 162, 224, 231, 211, 122, 125, 171, 182, 179, 185, 180, 163, 173, 178, 170, 179, 163, 165, 167, 184, 173, 186, 173, 184, 189, 163, 187, 173, 184, 172, 179, 185, 184, 126};
        showRequirementCenterKey = [self StringFromMessageData:value];
    }
    return showRequirementCenterKey;
}

//: ic_none_LogList
- (NSString *)m_rangeTitle {
    /* static */ NSString *m_rangeTitle = nil;
    if (!m_rangeTitle) {
        Byte value[] = {15, 19, 5, 181, 64, 124, 118, 114, 129, 130, 129, 120, 114, 95, 130, 122, 95, 124, 134, 135, 193};
        m_rangeTitle = [self StringFromMessageData:value];
    }
    return m_rangeTitle;
}

//: #fffPush
- (NSString *)showCellName {
    /* static */ NSString *showCellName = nil;
    if (!showCellName) {
        Byte value[] = {7, 28, 9, 252, 10, 136, 152, 128, 51, 63, 130, 130, 130, 130, 130, 130, 170};
        showCellName = [self StringFromMessageData:value];
    }
    return showCellName;
}

//: discovery
- (NSString *)notiImageKey {
    /* static */ NSString *notiImageKey = nil;
    if (!notiImageKey) {
        Byte value[] = {9, 44, 4, 42, 144, 149, 159, 143, 155, 162, 145, 158, 165, 234};
        notiImageKey = [self StringFromMessageData:value];
    }
    return notiImageKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyViewController.h"
#import "WithViewController.h"

//: @interface DisCorveyViewController()
@interface WithViewController()

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation DisCorveyViewController
@implementation WithViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[[MessageData sharedInstance] mBornHeroName]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice title], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"discovery"];
    labtitle.text = [BackgroundRandomAttribute content:[[MessageData sharedInstance] notiImageKey]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title]))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffPush"];
    contentView.backgroundColor = [UIColor user:[[MessageData sharedInstance] showCellName]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[[MessageData sharedInstance] m_rangeTitle]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor user:[[MessageData sharedInstance] user_viewUrl]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [PushLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [BackgroundRandomAttribute content:[[MessageData sharedInstance] showRequirementCenterKey]];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end
