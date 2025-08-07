
#import <Foundation/Foundation.h>

typedef struct {
    Byte votingVenue;
    Byte *innovationEqual;
    unsigned int sphereUp;
} StructInvestorData;

@interface InvestorData : NSObject

@end

@implementation InvestorData

+ (Byte *)InvestorDataToByte:(StructInvestorData *)data {
    for (int i = 0; i < data->sphereUp; i++) {
        data->innovationEqual[i] ^= data->votingVenue;
    }
    data->innovationEqual[data->sphereUp] = 0;
    return data->innovationEqual;
}

+ (NSString *)StringFromInvestorData:(StructInvestorData *)data {
    return [NSString stringWithUTF8String:(char *)[self InvestorDataToByte:data]];
}

//: reject
+ (NSString *)dreamEssentialMessage {
    /* static */ NSString *dreamEssentialMessage = nil;
    if (!dreamEssentialMessage) {
        StructInvestorData value = (StructInvestorData){156, (Byte []){238, 249, 246, 249, 255, 232, 198}, 6};
        dreamEssentialMessage = [self StringFromInvestorData:&value];
    }
    return dreamEssentialMessage;
}

//: #05D481
+ (NSString *)user_roughMessage {
    /* static */ NSString *user_roughMessage = nil;
    if (!user_roughMessage) {
        StructInvestorData value = (StructInvestorData){84, (Byte []){119, 100, 97, 16, 96, 108, 101, 4}, 7};
        user_roughMessage = [self StringFromInvestorData:&value];
    }
    return user_roughMessage;
}

//: ic_policy
+ (NSString *)m_listenerName {
    /* static */ NSString *m_listenerName = nil;
    if (!m_listenerName) {
        StructInvestorData value = (StructInvestorData){77, (Byte []){36, 46, 18, 61, 34, 33, 36, 46, 52, 214}, 9};
        m_listenerName = [self StringFromInvestorData:&value];
    }
    return m_listenerName;
}

//: PrivacyPolicy.html
+ (NSString *)app_goingLegendPath {
    /* static */ NSString *app_goingLegendPath = nil;
    if (!app_goingLegendPath) {
        StructInvestorData value = (StructInvestorData){43, (Byte []){123, 89, 66, 93, 74, 72, 82, 123, 68, 71, 66, 72, 82, 5, 67, 95, 70, 71, 64}, 18};
        app_goingLegendPath = [self StringFromInvestorData:&value];
    }
    return app_goingLegendPath;
}

//: Privacy Policy
+ (NSString *)appBlueUrl {
    /* static */ NSString *appBlueUrl = nil;
    if (!appBlueUrl) {
        StructInvestorData value = (StructInvestorData){214, (Byte []){134, 164, 191, 160, 183, 181, 175, 246, 134, 185, 186, 191, 181, 175, 121}, 14};
        appBlueUrl = [self StringFromInvestorData:&value];
    }
    return appBlueUrl;
}

//: agree
+ (NSString *)show_quipRestedVillageKey {
    /* static */ NSString *show_quipRestedVillageKey = nil;
    if (!show_quipRestedVillageKey) {
        StructInvestorData value = (StructInvestorData){143, (Byte []){238, 232, 253, 234, 234, 181}, 5};
        show_quipRestedVillageKey = [self StringFromInvestorData:&value];
    }
    return show_quipRestedVillageKey;
}

//: #5D5F66
+ (NSString *)noti_rumMsg {
    /* static */ NSString *noti_rumMsg = nil;
    if (!noti_rumMsg) {
        StructInvestorData value = (StructInvestorData){118, (Byte []){85, 67, 50, 67, 48, 64, 64, 221}, 7};
        noti_rumMsg = [self StringFromInvestorData:&value];
    }
    return noti_rumMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadingView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONPrivacyPolicyView.h"
#import "HeadingView.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"

//: @interface ZMONPrivacyPolicyView ()<WKNavigationDelegate, WKUIDelegate>
@interface HeadingView ()<WKNavigationDelegate, WKUIDelegate>

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;

//: @end
@end

//: @implementation ZMONPrivacyPolicyView
@implementation HeadingView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initMonthUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initMonthUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, 80, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-160)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, 80, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-160)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.titleLabel];
//    self.titleLabel.frame = CGRectMake(20, 20, 200, 20);




    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    //: config.selectionGranularity = WKSelectionGranularityDynamic;
    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
    //: preferences.javaScriptCanOpenWindowsAutomatically = NO;
    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width-40, [[UIScreen mainScreen] bounds].size.height-230 ) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width-40, [[UIScreen mainScreen] bounds].size.height-230 ) configuration:config];
    //: _webView.layer.cornerRadius = 12;
    _webView.layer.cornerRadius = 12;
    //: _webView.backgroundColor = [UIColor clearColor];
    _webView.backgroundColor = [UIColor clearColor];
    //: _webView.scrollView.backgroundColor = [UIColor clearColor];
    _webView.scrollView.backgroundColor = [UIColor clearColor];
    //: _webView.opaque = NO;
    _webView.opaque = NO;
    //: [_box addSubview:_webView];
    [_box addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;

//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[CrossShouldBlock standardUserDefaults].yshref]];
//    [_webView loadRequest:request];


    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[SharedContentView manager] bottom] stringByAppendingPathComponent:[NSString stringWithFormat:[InvestorData app_goingLegendPath]]];
    //: NSString *path = htmlFilePath;
    NSString *path = htmlFilePath;
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        //: path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
        path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
    }
    //: NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *url = [NSURL fileURLWithPath:path];
    //: NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];



//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(SCREEN_WIDTH-40-60, 20, 40, 40);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, self.webView.bottom+10, width, height);
    self.closeBtn.frame = CGRectMake(20, self.webView.bottom+10, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, self.webView.bottom+10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, self.webView.bottom+10, width, height);

}





//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = @"Privacy Policy";
        _titleLabel.text = [InvestorData appBlueUrl];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_policy"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[InvestorData m_listenerName]]];
    }
    //: return _img;
    return _img;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationExit) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(itemInfo) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor user:[InvestorData noti_rumMsg]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"reject"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[InvestorData dreamEssentialMessage]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(animationAgree) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(phoneMessage) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[PushLanguageManager getTextWithKey:@"agree"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[InvestorData show_quipRestedVillageKey]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[InvestorData user_roughMessage]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationExit
- (void)itemInfo
{
    //: exit(0);
    exit(0);
}

//: - (void)animationAgree
- (void)phoneMessage
{
    //: [NIMUserDefaults standardUserDefaults].yspop = @"1";
    [CrossShouldBlock towardScaleOfMeasurement].yspop = @"1";
    //: [self animationClose];
    [self nearAdd];
}


//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)mark
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
