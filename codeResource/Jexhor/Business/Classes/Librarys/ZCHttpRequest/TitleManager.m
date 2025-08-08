
#import <Foundation/Foundation.h>

@interface RealistData : NSObject

+ (instancetype)sharedInstance;

//: CheckSum
@property (nonatomic, copy) NSString *mainForwardTitle;

//: text/html
@property (nonatomic, copy) NSString *appEmergingTitle;

//: token
@property (nonatomic, copy) NSString *mEndContent;

//: image/jpg
@property (nonatomic, copy) NSString *mGoatValue;

//: systemSetting
@property (nonatomic, copy) NSString *showDrinkingName;

//: appSetting
@property (nonatomic, copy) NSString *appTingTitle;

//: loginip
@property (nonatomic, copy) NSString *notiBotFarmerDrumContent;

//: http
@property (nonatomic, copy) NSString *kHemeObtainTitle;

//: Download
@property (nonatomic, copy) NSString *appDifficultyName;

//: cer
@property (nonatomic, copy) NSString *noti_ambitionName;

//: gif
@property (nonatomic, copy) NSString *dreamResourceData;

//: text/plain
@property (nonatomic, copy) NSString *kTowerValue;

//: ismustmobile
@property (nonatomic, copy) NSString *mNumberellectualData;

//: %@.jpg
@property (nonatomic, copy) NSString *notiShowValue;

//: %@.mp4
@property (nonatomic, copy) NSString *noti_sendToName;

//: lang
@property (nonatomic, copy) NSString *noti_ecruData;

//: AppKey
@property (nonatomic, copy) NSString *m_drinkingCliWorkederalTitle;

//: jpg
@property (nonatomic, copy) NSString *dreamLeatherSteadReliefData;

//: image/%@
@property (nonatomic, copy) NSString *m_occupyEmotionTroopValue;

//: Nonce
@property (nonatomic, copy) NSString *mTitleOmitText;

//: image
@property (nonatomic, copy) NSString *k_seriesRetchValue;

//: text/json
@property (nonatomic, copy) NSString *app_showData;

//: xiaokaapi.com
@property (nonatomic, copy) NSString *noti_pursuitName;

//: png
@property (nonatomic, copy) NSString *dream_sureText;

//: picture
@property (nonatomic, copy) NSString *notiVoiceValue;

//: video/mp4
@property (nonatomic, copy) NSString *showInningEraseText;

//: text/javascript
@property (nonatomic, copy) NSString *notiViewTitle;

//: CurTime
@property (nonatomic, copy) NSString *userGrandValue;

//: video
@property (nonatomic, copy) NSString *appMailContent;

//: application/json
@property (nonatomic, copy) NSString *mSuspectConsequentData;

//: yyyyMMddHHmmss
@property (nonatomic, copy) NSString *m_reasonValue;

@end

@implementation RealistData

+ (instancetype)sharedInstance {
    static RealistData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RealistDataToCache:(Byte *)data {
    int littleness = data[0];
    Byte lapdog = data[1];
    int athleticFacility = data[2];
    for (int i = athleticFacility; i < athleticFacility + littleness; i++) {
        int value = data[i] + lapdog;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[athleticFacility + littleness] = 0;
    return data + athleticFacility;
}

- (NSString *)StringFromRealistData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RealistDataToCache:data]];
}

//: cer
- (NSString *)noti_ambitionName {
    if (!_noti_ambitionName) {
        Byte value[] = {3, 35, 3, 64, 66, 79, 216};
        _noti_ambitionName = [self StringFromRealistData:value];
    }
    return _noti_ambitionName;
}

//: Nonce
- (NSString *)mTitleOmitText {
    if (!_mTitleOmitText) {
        Byte value[] = {5, 41, 3, 37, 70, 69, 58, 60, 144};
        _mTitleOmitText = [self StringFromRealistData:value];
    }
    return _mTitleOmitText;
}

//: CheckSum
- (NSString *)mainForwardTitle {
    if (!_mainForwardTitle) {
        Byte value[] = {8, 37, 4, 151, 30, 67, 64, 62, 70, 46, 80, 72, 41};
        _mainForwardTitle = [self StringFromRealistData:value];
    }
    return _mainForwardTitle;
}

//: text/plain
- (NSString *)kTowerValue {
    if (!_kTowerValue) {
        Byte value[] = {10, 28, 6, 151, 37, 167, 88, 73, 92, 88, 19, 84, 80, 69, 77, 82, 116};
        _kTowerValue = [self StringFromRealistData:value];
    }
    return _kTowerValue;
}

//: gif
- (NSString *)dreamResourceData {
    if (!_dreamResourceData) {
        Byte value[] = {3, 45, 12, 196, 138, 128, 4, 202, 145, 42, 211, 158, 58, 60, 57, 6};
        _dreamResourceData = [self StringFromRealistData:value];
    }
    return _dreamResourceData;
}

//: ismustmobile
- (NSString *)mNumberellectualData {
    if (!_mNumberellectualData) {
        Byte value[] = {12, 91, 7, 254, 138, 247, 166, 14, 24, 18, 26, 24, 25, 18, 20, 7, 14, 17, 10, 27};
        _mNumberellectualData = [self StringFromRealistData:value];
    }
    return _mNumberellectualData;
}

//: AppKey
- (NSString *)m_drinkingCliWorkederalTitle {
    if (!_m_drinkingCliWorkederalTitle) {
        Byte value[] = {6, 14, 8, 75, 214, 96, 162, 21, 51, 98, 98, 61, 87, 107, 74};
        _m_drinkingCliWorkederalTitle = [self StringFromRealistData:value];
    }
    return _m_drinkingCliWorkederalTitle;
}

//: picture
- (NSString *)notiVoiceValue {
    if (!_notiVoiceValue) {
        Byte value[] = {7, 7, 3, 105, 98, 92, 109, 110, 107, 94, 200};
        _notiVoiceValue = [self StringFromRealistData:value];
    }
    return _notiVoiceValue;
}

//: text/html
- (NSString *)appEmergingTitle {
    if (!_appEmergingTitle) {
        Byte value[] = {9, 31, 12, 191, 67, 37, 31, 144, 110, 115, 219, 232, 85, 70, 89, 85, 16, 73, 85, 78, 77, 171};
        _appEmergingTitle = [self StringFromRealistData:value];
    }
    return _appEmergingTitle;
}

//: yyyyMMddHHmmss
- (NSString *)m_reasonValue {
    if (!_m_reasonValue) {
        Byte value[] = {14, 35, 8, 176, 23, 126, 114, 84, 86, 86, 86, 86, 42, 42, 65, 65, 37, 37, 74, 74, 80, 80, 243};
        _m_reasonValue = [self StringFromRealistData:value];
    }
    return _m_reasonValue;
}

//: %@.mp4
- (NSString *)noti_sendToName {
    if (!_noti_sendToName) {
        Byte value[] = {6, 97, 9, 123, 185, 220, 196, 142, 102, 196, 223, 205, 12, 15, 211, 79};
        _noti_sendToName = [self StringFromRealistData:value];
    }
    return _noti_sendToName;
}

//: %@.jpg
- (NSString *)notiShowValue {
    if (!_notiShowValue) {
        Byte value[] = {6, 91, 5, 221, 244, 202, 229, 211, 15, 21, 12, 237};
        _notiShowValue = [self StringFromRealistData:value];
    }
    return _notiShowValue;
}

//: lang
- (NSString *)noti_ecruData {
    if (!_noti_ecruData) {
        Byte value[] = {4, 78, 10, 70, 146, 200, 73, 2, 198, 245, 30, 19, 32, 25, 83};
        _noti_ecruData = [self StringFromRealistData:value];
    }
    return _noti_ecruData;
}

//: image/jpg
- (NSString *)mGoatValue {
    if (!_mGoatValue) {
        Byte value[] = {9, 65, 10, 136, 48, 128, 234, 79, 10, 66, 40, 44, 32, 38, 36, 238, 41, 47, 38, 66};
        _mGoatValue = [self StringFromRealistData:value];
    }
    return _mGoatValue;
}

//: loginip
- (NSString *)notiBotFarmerDrumContent {
    if (!_notiBotFarmerDrumContent) {
        Byte value[] = {7, 30, 13, 58, 67, 251, 226, 17, 248, 77, 197, 163, 88, 78, 81, 73, 75, 80, 75, 82, 41};
        _notiBotFarmerDrumContent = [self StringFromRealistData:value];
    }
    return _notiBotFarmerDrumContent;
}

//: Download
- (NSString *)appDifficultyName {
    if (!_appDifficultyName) {
        Byte value[] = {8, 11, 11, 38, 99, 138, 226, 218, 169, 235, 102, 57, 100, 108, 99, 97, 100, 86, 89, 135};
        _appDifficultyName = [self StringFromRealistData:value];
    }
    return _appDifficultyName;
}

//: appSetting
- (NSString *)appTingTitle {
    if (!_appTingTitle) {
        Byte value[] = {10, 1, 7, 222, 233, 111, 188, 96, 111, 111, 82, 100, 115, 115, 104, 109, 102, 83};
        _appTingTitle = [self StringFromRealistData:value];
    }
    return _appTingTitle;
}

//: application/json
- (NSString *)mSuspectConsequentData {
    if (!_mSuspectConsequentData) {
        Byte value[] = {16, 49, 3, 48, 63, 63, 59, 56, 50, 48, 67, 56, 62, 61, 254, 57, 66, 62, 61, 27};
        _mSuspectConsequentData = [self StringFromRealistData:value];
    }
    return _mSuspectConsequentData;
}

//: image
- (NSString *)k_seriesRetchValue {
    if (!_k_seriesRetchValue) {
        Byte value[] = {5, 61, 3, 44, 48, 36, 42, 40, 233};
        _k_seriesRetchValue = [self StringFromRealistData:value];
    }
    return _k_seriesRetchValue;
}

//: text/javascript
- (NSString *)notiViewTitle {
    if (!_notiViewTitle) {
        Byte value[] = {15, 81, 4, 64, 35, 20, 39, 35, 222, 25, 16, 37, 16, 34, 18, 33, 24, 31, 35, 179};
        _notiViewTitle = [self StringFromRealistData:value];
    }
    return _notiViewTitle;
}

//: video/mp4
- (NSString *)showInningEraseText {
    if (!_showInningEraseText) {
        Byte value[] = {9, 34, 10, 174, 90, 161, 76, 187, 118, 208, 84, 71, 66, 67, 77, 13, 75, 78, 18, 180};
        _showInningEraseText = [self StringFromRealistData:value];
    }
    return _showInningEraseText;
}

//: xiaokaapi.com
- (NSString *)noti_pursuitName {
    if (!_noti_pursuitName) {
        Byte value[] = {13, 89, 4, 176, 31, 16, 8, 22, 18, 8, 8, 23, 16, 213, 10, 22, 20, 255};
        _noti_pursuitName = [self StringFromRealistData:value];
    }
    return _noti_pursuitName;
}

//: token
- (NSString *)mEndContent {
    if (!_mEndContent) {
        Byte value[] = {5, 82, 4, 97, 34, 29, 25, 19, 28, 10};
        _mEndContent = [self StringFromRealistData:value];
    }
    return _mEndContent;
}

//: CurTime
- (NSString *)userGrandValue {
    if (!_userGrandValue) {
        Byte value[] = {7, 93, 6, 81, 230, 42, 230, 24, 21, 247, 12, 16, 8, 66};
        _userGrandValue = [self StringFromRealistData:value];
    }
    return _userGrandValue;
}

//: text/json
- (NSString *)app_showData {
    if (!_app_showData) {
        Byte value[] = {9, 30, 5, 119, 23, 86, 71, 90, 86, 17, 76, 85, 81, 80, 84};
        _app_showData = [self StringFromRealistData:value];
    }
    return _app_showData;
}

//: http
- (NSString *)kHemeObtainTitle {
    if (!_kHemeObtainTitle) {
        Byte value[] = {4, 94, 4, 129, 10, 22, 22, 18, 138};
        _kHemeObtainTitle = [self StringFromRealistData:value];
    }
    return _kHemeObtainTitle;
}

//: image/%@
- (NSString *)m_occupyEmotionTroopValue {
    if (!_m_occupyEmotionTroopValue) {
        Byte value[] = {8, 74, 6, 214, 235, 21, 31, 35, 23, 29, 27, 229, 219, 246, 43};
        _m_occupyEmotionTroopValue = [self StringFromRealistData:value];
    }
    return _m_occupyEmotionTroopValue;
}

//: systemSetting
- (NSString *)showDrinkingName {
    if (!_showDrinkingName) {
        Byte value[] = {13, 65, 12, 98, 188, 5, 233, 220, 69, 136, 106, 7, 50, 56, 50, 51, 36, 44, 18, 36, 51, 51, 40, 45, 38, 32};
        _showDrinkingName = [self StringFromRealistData:value];
    }
    return _showDrinkingName;
}

//: video
- (NSString *)appMailContent {
    if (!_appMailContent) {
        Byte value[] = {5, 76, 13, 3, 101, 212, 74, 22, 106, 207, 44, 20, 213, 42, 29, 24, 25, 35, 131};
        _appMailContent = [self StringFromRealistData:value];
    }
    return _appMailContent;
}

//: jpg
- (NSString *)dreamLeatherSteadReliefData {
    if (!_dreamLeatherSteadReliefData) {
        Byte value[] = {3, 68, 7, 94, 164, 176, 219, 38, 44, 35, 69};
        _dreamLeatherSteadReliefData = [self StringFromRealistData:value];
    }
    return _dreamLeatherSteadReliefData;
}

//: png
- (NSString *)dream_sureText {
    if (!_dream_sureText) {
        Byte value[] = {3, 7, 7, 238, 6, 161, 248, 105, 103, 96, 163};
        _dream_sureText = [self StringFromRealistData:value];
    }
    return _dream_sureText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleManager.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "TitleManager.h"
//: #import<CommonCrypto/CommonDigest.h>
#import<CommonCrypto/CommonDigest.h>

//: @interface ZCHttpManager ()
@interface TitleManager ()

//: @property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) AFHTTPSessionManager *manager;

//: @end
@end

//: @implementation ZCHttpManager
@implementation TitleManager

//: + (instancetype)sharedManager{
+ (instancetype)ting{
    //: static ZCHttpManager *sharedManager = nil;
    static TitleManager *sharedManager = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedManager = [ZCHttpManager new];
        sharedManager = [TitleManager new];
    //: });
    });
    //: return sharedManager;
    return sharedManager;
}

//: - (id)init{
- (id)init{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: AFSecurityPolicy *securityPolicy = [ZCHttpManager defaultSecurityPolicy];
        AFSecurityPolicy *securityPolicy = [TitleManager backgroundPolicy];
        //: _manager = [AFHTTPSessionManager manager];
        _manager = [AFHTTPSessionManager manager];
        //: _manager.securityPolicy = securityPolicy;
        _manager.securityPolicy = securityPolicy;
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[RealistData sharedInstance].mSuspectConsequentData, [RealistData sharedInstance].app_showData, [RealistData sharedInstance].notiViewTitle,[RealistData sharedInstance].kTowerValue,[RealistData sharedInstance].appEmergingTitle, nil];
        //_dbQueue = [[HMDBManager shareManager] dbQueue];

    }
    //: return self;
    return self;
}

/**
 *不验证https 不验证时
 */
//: + (AFSecurityPolicy *)defaultSecurityPolicy{
+ (AFSecurityPolicy *)backgroundPolicy{
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: securityPolicy.validatesDomainName = NO;
    securityPolicy.validatesDomainName = NO;
    //: return securityPolicy;
    return securityPolicy;
}

/**
 *https验证
 */
//: + (AFSecurityPolicy *)customSecurityPolicy {
+ (AFSecurityPolicy *)sub {
    // /先导入证书
    //: NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaokaapi.com" ofType:@"cer"]; 
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:[RealistData sharedInstance].noti_pursuitName ofType:[RealistData sharedInstance].noti_ambitionName]; //证书的路径
    //: NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    // AFSSLPinningModeCertificate 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];

    // allowInvalidCertificates 是否允许无效证书（也就是自建的证书），默认为NO
    // 如果是需要验证自建证书，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = NO;
    securityPolicy.allowInvalidCertificates = NO;

    //validatesDomainName 是否需要验证域名，默认为YES；
    //假如证书的域名与你请求的域名不一致，需把该项设置为NO；如设成NO的话，即服务器使用其他可信任机构颁发的证书，也可以建立连接，这个非常危险，建议打开。
    //置为NO，主要用于这种情况：客户端请求的是子域名，而证书上的是另外一个域名。因为SSL证书上的域名是独立的，假如证书上注册的域名是www.google.com，那么mail.google.com是无法验证通过的；当然，有钱可以注册通配符的域名*.google.com，但这个还是比较贵的。
    //如置为NO，建议自己添加对应域名的校验逻辑。
    //: securityPolicy.validatesDomainName = YES;
    securityPolicy.validatesDomainName = YES;
    //: securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    //: return securityPolicy;
    return securityPolicy;
}

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)exhibitBackground:(NSString *)urlStr
            //: params:(NSDictionary *)params
            queryedBlockOf:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            managerToObject:(BOOL)isShow
           //: success:(ResponseSuccess)success
           presentResponseSuccess:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed{
            jump:(ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: urlStr = RestApi(urlStr);
        urlStr = RestApi(urlStr);
    }

    //: [self getWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self bottom:urlStr get:params size:isShow pullFailed:0 shareColorByFailed:YES tableOff:success button:failed];
}

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)bottom: (NSString *)urlStr
            //: params: (NSDictionary *)params
            get: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            size: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         pullFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       shareColorByFailed: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           tableOff: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed{
            button: (ResponseFailed)failed{

    //: if (isShow) {
    if (isShow) {
            //: [SVProgressHUD show];
            [SVProgressHUD show];
        }
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [SessionRecord afterUser].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = emptyString([SessionRecord afterUser].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[RealistData sharedInstance].noti_ecruData];

    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([SessionRecord afterUser].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[RealistData sharedInstance].mEndContent];
    }
    //: NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (![urlStr containsString:@"systemSetting"] && ![urlStr containsString:@"loginip"] && ![urlStr containsString:@"appSetting"] && ![urlStr containsString:@"ismustmobile"]) {
        if (![urlStr containsString:[RealistData sharedInstance].showDrinkingName] && ![urlStr containsString:[RealistData sharedInstance].notiBotFarmerDrumContent] && ![urlStr containsString:[RealistData sharedInstance].appTingTitle] && ![urlStr containsString:[RealistData sharedInstance].mNumberellectualData]) {
            //: NSLog(@"%@\n------%@\n%@",urlStr,params,responseObject);
        }
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TitleManager ting] butylateOfShitwork:task];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)session: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           indexFailed: (NSString *)checksum
              //: nonce: (NSString *)nonce
              find: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            thread: (NSString *)CurTime
             //: params: (NSDictionary *)params
             info: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            randomResponseSuccess: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed
             sound: (ResponseFailed)failed
{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;

    //添加请求头
    //: NSString *appKey = [[WorkConfig sharedConfig] appKey];
    NSString *appKey = [[AccountWith max] appKey];
    //: [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"AppKey"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:[RealistData sharedInstance].m_drinkingCliWorkederalTitle];
//    NSString *nonce = [NSString stringWithFormat:@"%d",arc4random() % 100 ];
    //: [manager.requestSerializer setValue:nonce forHTTPHeaderField:@"Nonce"];
    [manager.requestSerializer setValue:nonce forHTTPHeaderField:[RealistData sharedInstance].mTitleOmitText];
//    NSString *time = [self getNowTimeTimestamp];
    //: [manager.requestSerializer setValue:CurTime forHTTPHeaderField:@"CurTime"];
    [manager.requestSerializer setValue:CurTime forHTTPHeaderField:[RealistData sharedInstance].userGrandValue];
//    NSString *CheckSums = [self sha1:[NSString stringWithFormat:@"%@%@%@",appKey,nonce,time]];
    //: [manager.requestSerializer setValue:checksum forHTTPHeaderField:@"CheckSum"];
    [manager.requestSerializer setValue:checksum forHTTPHeaderField:[RealistData sharedInstance].mainForwardTitle];

    //: NSLog(@"%@\n------%@",urlStr,params);
    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TitleManager ting] butylateOfShitwork:task];
}

//: + (NSString *)getNowTimeTimestamp{
+ (NSString *)denounce{

    //: NSDate *datenow = [NSDate date];
    NSDate *datenow = [NSDate date];
    //: NSTimeZone *zone = [NSTimeZone localTimeZone];
    NSTimeZone *zone = [NSTimeZone localTimeZone];
  // 获取指定时间所在时区与UTC时区的间隔秒数
  //: NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  //: return timeSp;
  return timeSp;
}

//sha1加密方式
//: + (NSString *)sha1:(NSString *)input
+ (NSString *)bar:(NSString *)input
{
    //const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    //NSData *data = [NSData dataWithBytes:cstr length:input.length];

     //: NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
     NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
    //: uint8_t digest[20];
    uint8_t digest[20];

    //: CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    //: NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    //: for(int i=0; i<20; i++) {
    for(int i=0; i<20; i++) {
        //: [output appendFormat:@"%02x", digest[i]];
        [output appendFormat:@"%02x", digest[i]];
    }

    //: return output;
    return output;
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)bringHome: (NSString *)urlStr
             //: params: (NSDictionary *)params
             militaryQuarters: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             comment: (BOOL)isShow
            //: success: (ResponseSuccess)success
            shareFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             time: (ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: urlStr = RestApi(urlStr);
        urlStr = RestApi(urlStr);
    }

    //: [self postWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self view:urlStr betweenName:params appFailed:isShow from:0 filter:YES deviceFailed:success enable:failed];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)view: (NSString *)urlStr
             //: params: (NSDictionary *)params
             betweenName: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             appFailed: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          from: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        filter: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            deviceFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             enable: (ResponseFailed)failed{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [SessionRecord afterUser].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = emptyString([SessionRecord afterUser].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[RealistData sharedInstance].noti_ecruData];

    //: NSLog(@"lang--:%@",lang);
    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([SessionRecord afterUser].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[RealistData sharedInstance].mEndContent];
    }

    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",urlStr,params,responseObject);
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TitleManager ting] butylateOfShitwork:task];
}


//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)colorFailed:(NSString *)URL
               //: parameters:(id)parameters
               argument:(id)parameters
                     //: name:(NSString *)name
                     filter:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 demonstrate:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 scaleScreen:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  pressedUser:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed{
                   mediaResponseFailed:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: URL = RestApi(URL);
        URL = RestApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:filePath name:name error:&error];
        [formData appendPartWithFileURL:filePath name:name error:&error];
        //: (failed && error) ? failed(nil ,error) : nil;
        (failed && error) ? failed(nil ,error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{//上传进度
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManager ting] butylateOfShitwork:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)along:(NSString *)URL
                 //: parameters:(id)parameters
                 name:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     scale:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   barHttpProgress:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    sessionMyInfo:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     forwardingUploadStreetwiseLastShowParametersSuccessBubble:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: URL = RestApi(URL);
        URL = RestApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = emptyString([SessionRecord afterUser].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[RealistData sharedInstance].noti_ecruData];

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [RealistData sharedInstance].dreamLeatherSteadReliefData;
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [RealistData sharedInstance].dreamLeatherSteadReliefData;
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [RealistData sharedInstance].dream_sureText;
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [RealistData sharedInstance].dreamResourceData;
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[RealistData sharedInstance].m_occupyEmotionTroopValue,imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";
            //: [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:[RealistData sharedInstance].k_seriesRetchValue fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManager ting] butylateOfShitwork:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)netTitle:(NSString *)URL
                 //: parameters:(id)parameters
                 image:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     item:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 name:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   accept:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    language:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     complete:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: URL = RestApi(URL);
        URL = RestApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [RealistData sharedInstance].dreamLeatherSteadReliefData;
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [RealistData sharedInstance].dreamLeatherSteadReliefData;
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [RealistData sharedInstance].dream_sureText;
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [RealistData sharedInstance].dreamResourceData;
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[RealistData sharedInstance].m_occupyEmotionTroopValue,imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";

            //: NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            NSString *name = [imageNames objectAtIndex:i] ? :[RealistData sharedInstance].k_seriesRetchValue;
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManager ting] butylateOfShitwork:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)maturity:(NSString *)URL
                 //: parameters:(id)parameters
                 file:(id)parameters
                       //: name:(NSString *)name
                       length:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     canHigh:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  childLoad:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 noneImage:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  stride:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   by:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    imagesColor:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     memoryImage:(ResponseFailed)failed{

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);// 图片经过等比压缩后得到的二进制文件
            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];// 默认图片的文件名, 若fileNames为nil就使用
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [RealistData sharedInstance].m_reasonValue;
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[RealistData sharedInstance].dreamLeatherSteadReliefData];

            //: NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName;
            NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[RealistData sharedInstance].dreamLeatherSteadReliefData] : imageFileName;
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"];
            NSString *mimeType = [NSString stringWithFormat:[RealistData sharedInstance].m_occupyEmotionTroopValue,imageType ?: [RealistData sharedInstance].dreamLeatherSteadReliefData];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManager ting] butylateOfShitwork:t];
}


//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)with:(NSString *)URL
                 //: parameters:(id)parameters
                 message:(id)parameters
                     //: images:(NSData *)videoData
                     spread:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 question:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   development:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    redWith:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     labelGreen:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: URL = RestApi(URL);
        URL = RestApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        //: NSString *fileName = [NSString stringWithFormat:@"%@.mp4",timeSp];
        NSString *fileName = [NSString stringWithFormat:[RealistData sharedInstance].noti_sendToName,timeSp];
        //: NSString *mimeType = @"video/mp4";
        NSString *mimeType = [RealistData sharedInstance].showInningEraseText;
        //: [formData appendPartWithFileData:videoData name:@"video" fileName:fileName mimeType:mimeType];
        [formData appendPartWithFileData:videoData name:[RealistData sharedInstance].appMailContent fileName:fileName mimeType:mimeType];
        //: [formData appendPartWithFileData:coverData name:@"picture" fileName:[NSString stringWithFormat:@"%@.jpg",timeSp] mimeType:@"image/jpg"];
        [formData appendPartWithFileData:coverData name:[RealistData sharedInstance].notiVoiceValue fileName:[NSString stringWithFormat:[RealistData sharedInstance].notiShowValue,timeSp] mimeType:[RealistData sharedInstance].mGoatValue];
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManager ting] butylateOfShitwork:t];
}




//: + (void)downloadWithURL:(NSString *)URL
+ (void)shared:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                with:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               progress:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                asScale:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed{
                 pin:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[RealistData sharedInstance].kHemeObtainTitle]){
        //: URL = RestApi(URL);
        URL = RestApi(URL);
    }

    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManager ting].manager;
    //: NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(downloadProgress);
            progress(downloadProgress);
        }
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [RealistData sharedInstance].appDifficultyName];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];
    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //: if(failed && error) {failed(nil ,error) ; return ;};
        if(failed && error) {failed(nil ,error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;
    //: }];
    }];
    //: [downloadTask resume];
    [downloadTask resume];
}




//: #pragma mark - 管理请求队列
#pragma mark - 管理请求队列


//: - (void)addTask:(NSURLSessionDataTask *)task{
- (void)butylateOfShitwork:(NSURLSessionDataTask *)task{
    //: NSMutableDictionary *taskQueue = [self taskQueue];
    NSMutableDictionary *taskQueue = [self byQueue];

    //: [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
    [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
}

//: - (void)removeTask:(NSURLSessionDataTask *)task{
- (void)take:(NSURLSessionDataTask *)task{
    //: if ([self ifRequesting]) {
    if ([self view]) {
        //: NSMutableDictionary *taskQueue = [self taskQueue];
        NSMutableDictionary *taskQueue = [self byQueue];

        //: [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
        [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
    }
}

//: - (NSMutableDictionary *)taskQueue{
- (NSMutableDictionary *)byQueue{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (!taskDic) {
//        taskDic = @{}.mutableCopy;
//        objc_setAssociatedObject(self, @selector(addTask:), taskDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return taskDic;
    //: return nil;
    return nil;
}

//: - (BOOL)ifRequesting{
- (BOOL)view{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (taskDic && taskDic.allKeys.count>0) {
//        return YES;
//    }
    //: return NO;
    return NO;
}

//: - (void)cancelRequest{
- (void)image{

    //: if ([self ifRequesting]) {
    if ([self view]) {
        //: NSMutableDictionary *taskDic = [[ZCHttpManager sharedManager] taskQueue];
        NSMutableDictionary *taskDic = [[TitleManager ting] byQueue];
        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);

        //: [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
        [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
            //: if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
                //: [((NSURLSessionDataTask *)obj) cancel];
                [((NSURLSessionDataTask *)obj) cancel];
            }
        //: }];
        }];
    }
}

//取消网络请求
//: + (void)cancelRequestWithURLString:(NSString *)URLString{
+ (void)scheduleTingPackthread:(NSString *)URLString{

//    if ([[HMDataRequest shareDataRequest] ifRequesting]) {
//        NSMutableDictionary *taskDic = [[HMDataRequest shareDataRequest] taskQueue];
//        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);
//
//        [taskDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//
//            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted
//                && [[((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString] rangeOfString:URLString].location != NSNotFound) {
//
//                HMLog(@"----end----%@", [((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString]);
//
//                [((NSURLSessionDataTask *)obj) cancel];
//
//            }
//        }];
//    }


}

//: @end
@end
