
#import <Foundation/Foundation.h>

@interface WaterSkyData : NSObject

@end

@implementation WaterSkyData

+ (Byte *)WaterSkyDataToCache:(Byte *)data {
    int inscription = data[0];
    Byte chooseView = data[1];
    int professionShowIcon = data[2];
    for (int i = professionShowIcon; i < professionShowIcon + inscription; i++) {
        int value = data[i] - chooseView;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[professionShowIcon + inscription] = 0;
    return data + professionShowIcon;
}

+ (NSString *)StringFromWaterSkyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WaterSkyDataToCache:data]];
}

//: text/json
+ (NSString *)dream_messageId {
    /* static */ NSString *dream_messageId = nil;
    if (!dream_messageId) {
        Byte value[] = {9, 26, 9, 37, 211, 156, 143, 175, 54, 142, 127, 146, 142, 73, 132, 141, 137, 136, 130};
        dream_messageId = [self StringFromWaterSkyData:value];
    }
    return dream_messageId;
}

//: http
+ (NSString *)k_dentPath {
    /* static */ NSString *k_dentPath = nil;
    if (!k_dentPath) {
        Byte value[] = {4, 6, 8, 216, 33, 59, 213, 49, 110, 122, 122, 118, 229};
        k_dentPath = [self StringFromWaterSkyData:value];
    }
    return k_dentPath;
}

//: gif
+ (NSString *)mainWipeFormat {
    /* static */ NSString *mainWipeFormat = nil;
    if (!mainWipeFormat) {
        Byte value[] = {3, 28, 3, 131, 133, 130, 43};
        mainWipeFormat = [self StringFromWaterSkyData:value];
    }
    return mainWipeFormat;
}

//: text/javascript
+ (NSString *)user_relaxId {
    /* static */ NSString *user_relaxId = nil;
    if (!user_relaxId) {
        Byte value[] = {15, 86, 8, 123, 39, 245, 18, 193, 202, 187, 206, 202, 133, 192, 183, 204, 183, 201, 185, 200, 191, 198, 202, 10};
        user_relaxId = [self StringFromWaterSkyData:value];
    }
    return user_relaxId;
}

//: picture
+ (NSString *)mParticipateMsg {
    /* static */ NSString *mParticipateMsg = nil;
    if (!mParticipateMsg) {
        Byte value[] = {7, 61, 11, 47, 46, 103, 174, 236, 138, 158, 170, 173, 166, 160, 177, 178, 175, 162, 157};
        mParticipateMsg = [self StringFromWaterSkyData:value];
    }
    return mParticipateMsg;
}

//: Download
+ (NSString *)k_permitMessage {
    /* static */ NSString *k_permitMessage = nil;
    if (!k_permitMessage) {
        Byte value[] = {8, 60, 8, 36, 144, 72, 238, 5, 128, 171, 179, 170, 168, 171, 157, 160, 2};
        k_permitMessage = [self StringFromWaterSkyData:value];
    }
    return k_permitMessage;
}

//: yyyyMMddHHmmss
+ (NSString *)userJustifyStr {
    /* static */ NSString *userJustifyStr = nil;
    if (!userJustifyStr) {
        Byte value[] = {14, 27, 5, 235, 1, 148, 148, 148, 148, 104, 104, 127, 127, 99, 99, 136, 136, 142, 142, 73};
        userJustifyStr = [self StringFromWaterSkyData:value];
    }
    return userJustifyStr;
}

//: AppKey
+ (NSString *)appEliteInfoValue {
    /* static */ NSString *appEliteInfoValue = nil;
    if (!appEliteInfoValue) {
        Byte value[] = {6, 45, 5, 3, 180, 110, 157, 157, 120, 146, 166, 38};
        appEliteInfoValue = [self StringFromWaterSkyData:value];
    }
    return appEliteInfoValue;
}

//: video/mp4
+ (NSString *)user_territoryEliteArtId {
    /* static */ NSString *user_territoryEliteArtId = nil;
    if (!user_territoryEliteArtId) {
        Byte value[] = {9, 58, 13, 90, 55, 117, 131, 123, 251, 40, 64, 19, 92, 176, 163, 158, 159, 169, 105, 167, 170, 110, 124};
        user_territoryEliteArtId = [self StringFromWaterSkyData:value];
    }
    return user_territoryEliteArtId;
}

//: image/%@
+ (NSString *)main_governKey {
    /* static */ NSString *main_governKey = nil;
    if (!main_governKey) {
        Byte value[] = {8, 88, 6, 125, 172, 19, 193, 197, 185, 191, 189, 135, 125, 152, 180};
        main_governKey = [self StringFromWaterSkyData:value];
    }
    return main_governKey;
}

//: systemSetting
+ (NSString *)app_maxKey {
    /* static */ NSString *app_maxKey = nil;
    if (!app_maxKey) {
        Byte value[] = {13, 10, 5, 137, 135, 125, 131, 125, 126, 111, 119, 93, 111, 126, 126, 115, 120, 113, 164};
        app_maxKey = [self StringFromWaterSkyData:value];
    }
    return app_maxKey;
}

//: xiaokaapi.com
+ (NSString *)m_northernFormat {
    /* static */ NSString *m_northernFormat = nil;
    if (!m_northernFormat) {
        Byte value[] = {13, 31, 7, 136, 213, 201, 177, 151, 136, 128, 142, 138, 128, 128, 143, 136, 77, 130, 142, 140, 60};
        m_northernFormat = [self StringFromWaterSkyData:value];
    }
    return m_northernFormat;
}

//: jpg
+ (NSString *)k_versionStr {
    /* static */ NSString *k_versionStr = nil;
    if (!k_versionStr) {
        Byte value[] = {3, 34, 12, 255, 95, 220, 88, 36, 72, 174, 252, 17, 140, 146, 137, 117};
        k_versionStr = [self StringFromWaterSkyData:value];
    }
    return k_versionStr;
}

//: loginip
+ (NSString *)k_collapseKey {
    /* static */ NSString *k_collapseKey = nil;
    if (!k_collapseKey) {
        Byte value[] = {7, 30, 11, 254, 172, 117, 244, 85, 210, 121, 145, 138, 141, 133, 135, 140, 135, 142, 84};
        k_collapseKey = [self StringFromWaterSkyData:value];
    }
    return k_collapseKey;
}

//: video
+ (NSString *)user_iconText {
    /* static */ NSString *user_iconText = nil;
    if (!user_iconText) {
        Byte value[] = {5, 33, 9, 129, 14, 201, 130, 42, 17, 151, 138, 133, 134, 144, 43};
        user_iconText = [self StringFromWaterSkyData:value];
    }
    return user_iconText;
}

//: %@.jpg
+ (NSString *)user_empireMsg {
    /* static */ NSString *user_empireMsg = nil;
    if (!user_empireMsg) {
        Byte value[] = {6, 71, 10, 141, 207, 162, 94, 179, 80, 159, 108, 135, 117, 177, 183, 174, 150};
        user_empireMsg = [self StringFromWaterSkyData:value];
    }
    return user_empireMsg;
}

//: text/plain
+ (NSString *)user_collectionMsg {
    /* static */ NSString *user_collectionMsg = nil;
    if (!user_collectionMsg) {
        Byte value[] = {10, 39, 3, 155, 140, 159, 155, 86, 151, 147, 136, 144, 149, 23};
        user_collectionMsg = [self StringFromWaterSkyData:value];
    }
    return user_collectionMsg;
}

//: application/json
+ (NSString *)noti_buttMsg {
    /* static */ NSString *noti_buttMsg = nil;
    if (!noti_buttMsg) {
        Byte value[] = {16, 63, 4, 193, 160, 175, 175, 171, 168, 162, 160, 179, 168, 174, 173, 110, 169, 178, 174, 173, 219};
        noti_buttMsg = [self StringFromWaterSkyData:value];
    }
    return noti_buttMsg;
}

//: token
+ (NSString *)appHorrorFormat {
    /* static */ NSString *appHorrorFormat = nil;
    if (!appHorrorFormat) {
        Byte value[] = {5, 6, 9, 21, 158, 60, 70, 235, 78, 122, 117, 113, 107, 116, 120};
        appHorrorFormat = [self StringFromWaterSkyData:value];
    }
    return appHorrorFormat;
}

//: appSetting
+ (NSString *)showCollectionTitle {
    /* static */ NSString *showCollectionTitle = nil;
    if (!showCollectionTitle) {
        Byte value[] = {10, 32, 13, 198, 42, 120, 56, 155, 140, 93, 108, 101, 69, 129, 144, 144, 115, 133, 148, 148, 137, 142, 135, 13};
        showCollectionTitle = [self StringFromWaterSkyData:value];
    }
    return showCollectionTitle;
}

//: ismustmobile
+ (NSString *)kGuidanceRestedMessage {
    /* static */ NSString *kGuidanceRestedMessage = nil;
    if (!kGuidanceRestedMessage) {
        Byte value[] = {12, 4, 12, 114, 204, 166, 135, 43, 165, 139, 206, 153, 109, 119, 113, 121, 119, 120, 113, 115, 102, 109, 112, 105, 197};
        kGuidanceRestedMessage = [self StringFromWaterSkyData:value];
    }
    return kGuidanceRestedMessage;
}

//: %@.mp4
+ (NSString *)kTextVerdictUrl {
    /* static */ NSString *kTextVerdictUrl = nil;
    if (!kTextVerdictUrl) {
        Byte value[] = {6, 90, 9, 110, 111, 69, 4, 215, 250, 127, 154, 136, 199, 202, 142, 190};
        kTextVerdictUrl = [self StringFromWaterSkyData:value];
    }
    return kTextVerdictUrl;
}

//: cer
+ (NSString *)notiEthnicContent {
    /* static */ NSString *notiEthnicContent = nil;
    if (!notiEthnicContent) {
        Byte value[] = {3, 86, 3, 185, 187, 200, 145};
        notiEthnicContent = [self StringFromWaterSkyData:value];
    }
    return notiEthnicContent;
}

//: Nonce
+ (NSString *)appHorrorId {
    /* static */ NSString *appHorrorId = nil;
    if (!appHorrorId) {
        Byte value[] = {5, 6, 5, 77, 127, 84, 117, 116, 105, 107, 11};
        appHorrorId = [self StringFromWaterSkyData:value];
    }
    return appHorrorId;
}

//: text/html
+ (NSString *)notiPrisonId {
    /* static */ NSString *notiPrisonId = nil;
    if (!notiPrisonId) {
        Byte value[] = {9, 16, 10, 7, 25, 52, 220, 72, 186, 226, 132, 117, 136, 132, 63, 120, 132, 125, 124, 11};
        notiPrisonId = [self StringFromWaterSkyData:value];
    }
    return notiPrisonId;
}

//: lang
+ (NSString *)mainAlienKey {
    /* static */ NSString *mainAlienKey = nil;
    if (!mainAlienKey) {
        Byte value[] = {4, 90, 3, 198, 187, 200, 193, 151};
        mainAlienKey = [self StringFromWaterSkyData:value];
    }
    return mainAlienKey;
}

//: image
+ (NSString *)k_allyBlueName {
    /* static */ NSString *k_allyBlueName = nil;
    if (!k_allyBlueName) {
        Byte value[] = {5, 68, 4, 241, 173, 177, 165, 171, 169, 42};
        k_allyBlueName = [self StringFromWaterSkyData:value];
    }
    return k_allyBlueName;
}

//: image/jpg
+ (NSString *)userEverywhereFormat {
    /* static */ NSString *userEverywhereFormat = nil;
    if (!userEverywhereFormat) {
        Byte value[] = {9, 85, 7, 212, 171, 121, 157, 190, 194, 182, 188, 186, 132, 191, 197, 188, 179};
        userEverywhereFormat = [self StringFromWaterSkyData:value];
    }
    return userEverywhereFormat;
}

//: png
+ (NSString *)k_participateStr {
    /* static */ NSString *k_participateStr = nil;
    if (!k_participateStr) {
        Byte value[] = {3, 21, 13, 217, 39, 5, 250, 7, 10, 74, 124, 68, 148, 133, 131, 124, 96};
        k_participateStr = [self StringFromWaterSkyData:value];
    }
    return k_participateStr;
}

//: CurTime
+ (NSString *)m_temperatureKey {
    /* static */ NSString *m_temperatureKey = nil;
    if (!m_temperatureKey) {
        Byte value[] = {7, 47, 11, 204, 41, 235, 26, 50, 168, 127, 17, 114, 164, 161, 131, 152, 156, 148, 31};
        m_temperatureKey = [self StringFromWaterSkyData:value];
    }
    return m_temperatureKey;
}

//: CheckSum
+ (NSString *)dreamRockLegendTitle {
    /* static */ NSString *dreamRockLegendTitle = nil;
    if (!dreamRockLegendTitle) {
        Byte value[] = {8, 78, 9, 210, 79, 166, 121, 211, 5, 145, 182, 179, 177, 185, 161, 195, 187, 124};
        dreamRockLegendTitle = [self StringFromWaterSkyData:value];
    }
    return dreamRockLegendTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchShowMessage.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "TouchShowMessage.h"
//: #import<CommonCrypto/CommonDigest.h>
#import<CommonCrypto/CommonDigest.h>

//: @interface ZCHttpManager ()
@interface TouchShowMessage ()

//: @property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) AFHTTPSessionManager *manager;

//: @end
@end

//: @implementation ZCHttpManager
@implementation TouchShowMessage

//: + (instancetype)sharedManager{
+ (instancetype)top{
    //: static ZCHttpManager *sharedManager = nil;
    static TouchShowMessage *sharedManager = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedManager = [ZCHttpManager new];
        sharedManager = [TouchShowMessage new];
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
        AFSecurityPolicy *securityPolicy = [TouchShowMessage cellDisable];
        //: _manager = [AFHTTPSessionManager manager];
        _manager = [AFHTTPSessionManager manager];
        //: _manager.securityPolicy = securityPolicy;
        _manager.securityPolicy = securityPolicy;
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[WaterSkyData noti_buttMsg], [WaterSkyData dream_messageId], [WaterSkyData user_relaxId],[WaterSkyData user_collectionMsg],[WaterSkyData notiPrisonId], nil];
        //_dbQueue = [[HMDBManager shareManager] dbQueue];

    }
    //: return self;
    return self;
}

/**
 *不验证https 不验证时
 */
//: + (AFSecurityPolicy *)defaultSecurityPolicy{
+ (AFSecurityPolicy *)cellDisable{
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
+ (AFSecurityPolicy *)messageName {
    // /先导入证书
    //: NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaokaapi.com" ofType:@"cer"]; 
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:[WaterSkyData m_northernFormat] ofType:[WaterSkyData notiEthnicContent]]; //证书的路径
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
+ (void)gestureMessage:(NSString *)urlStr
            //: params:(NSDictionary *)params
            view:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            fort:(BOOL)isShow
           //: success:(ResponseSuccess)success
           generate:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed{
            file:(ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[WaterSkyData k_dentPath]]){
        //: urlStr = RestApi(urlStr);
        urlStr = drawRein(urlStr);
    }

    //: [self getWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self status:urlStr comment:params object:isShow rangeFailed:0 forwardBack:YES image:success cacheState:failed];
}

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)status: (NSString *)urlStr
            //: params: (NSDictionary *)params
            comment: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            object: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         rangeFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       forwardBack: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           image: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed{
            cacheState: (ResponseFailed)failed{

    //: if (isShow) {
    if (isShow) {
            //: [SVProgressHUD show];
            [SVProgressHUD show];
        }
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [CrossShouldBlock towardScaleOfMeasurement].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[WaterSkyData mainAlienKey]];

    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([CrossShouldBlock towardScaleOfMeasurement].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[WaterSkyData appHorrorFormat]];
    }
    //: NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (![urlStr containsString:@"systemSetting"] && ![urlStr containsString:@"loginip"] && ![urlStr containsString:@"appSetting"] && ![urlStr containsString:@"ismustmobile"]) {
        if (![urlStr containsString:[WaterSkyData app_maxKey]] && ![urlStr containsString:[WaterSkyData k_collapseKey]] && ![urlStr containsString:[WaterSkyData showCollectionTitle]] && ![urlStr containsString:[WaterSkyData kGuidanceRestedMessage]]) {
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
    [[TouchShowMessage top] view:task];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)session: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           tab: (NSString *)checksum
              //: nonce: (NSString *)nonce
              color: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            beggarMyNeighborPolicy: (NSString *)CurTime
             //: params: (NSDictionary *)params
             genitor: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            show: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed
             message: (ResponseFailed)failed
{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;

    //添加请求头
    //: NSString *appKey = [[PushConfig sharedConfig] appKey];
    NSString *appKey = [[AlongTemp frameConfig] appKey];
    //: [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"AppKey"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:[WaterSkyData appEliteInfoValue]];
//    NSString *nonce = [NSString stringWithFormat:@"%d",arc4random() % 100 ];
    //: [manager.requestSerializer setValue:nonce forHTTPHeaderField:@"Nonce"];
    [manager.requestSerializer setValue:nonce forHTTPHeaderField:[WaterSkyData appHorrorId]];
//    NSString *time = [self getNowTimeTimestamp];
    //: [manager.requestSerializer setValue:CurTime forHTTPHeaderField:@"CurTime"];
    [manager.requestSerializer setValue:CurTime forHTTPHeaderField:[WaterSkyData m_temperatureKey]];
//    NSString *CheckSums = [self sha1:[NSString stringWithFormat:@"%@%@%@",appKey,nonce,time]];
    //: [manager.requestSerializer setValue:checksum forHTTPHeaderField:@"CheckSum"];
    [manager.requestSerializer setValue:checksum forHTTPHeaderField:[WaterSkyData dreamRockLegendTitle]];

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
    [[TouchShowMessage top] view:task];
}

//: + (NSString *)getNowTimeTimestamp{
+ (NSString *)toSuccess{

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
+ (NSString *)inheritance:(NSString *)input
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
+ (void)at: (NSString *)urlStr
             //: params: (NSDictionary *)params
             length: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             information: (BOOL)isShow
            //: success: (ResponseSuccess)success
            object: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             touch: (ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[WaterSkyData k_dentPath]]){
        //: urlStr = RestApi(urlStr);
        urlStr = drawRein(urlStr);
    }

    //: [self postWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self image:urlStr exhibit:params selected:isShow chromatic:0 arrayOff:YES by:success standardCell:failed];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)image: (NSString *)urlStr
             //: params: (NSDictionary *)params
             exhibit: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             selected: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          chromatic: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        arrayOff: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            by: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             standardCell: (ResponseFailed)failed{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [CrossShouldBlock towardScaleOfMeasurement].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[WaterSkyData mainAlienKey]];

    //: NSLog(@"lang--:%@",lang);
    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([CrossShouldBlock towardScaleOfMeasurement].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[WaterSkyData appHorrorFormat]];
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
    [[TouchShowMessage top] view:task];
}


//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)time:(NSString *)URL
               //: parameters:(id)parameters
               can:(id)parameters
                     //: name:(NSString *)name
                     pathShadow:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 provider:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 send:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  view:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed{
                   diagonal:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[WaterSkyData k_dentPath]]){
        //: URL = RestApi(URL);
        URL = drawRein(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;

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
    [[TouchShowMessage top] view:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)item:(NSString *)URL
                 //: parameters:(id)parameters
                 progress:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     boundaryPhase:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   textualMatter:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    with:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     button:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[WaterSkyData k_dentPath]]){
        //: URL = RestApi(URL);
        URL = drawRein(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[WaterSkyData mainAlienKey]];

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
            NSString *imageTypeSuffix = [WaterSkyData k_versionStr];
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [WaterSkyData k_versionStr];
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [WaterSkyData k_participateStr];
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [WaterSkyData mainWipeFormat];
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
            NSString *mimeType = [NSString stringWithFormat:[WaterSkyData main_governKey],imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";
            //: [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:[WaterSkyData k_allyBlueName] fileName:fileName mimeType:mimeType];
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
    [[TouchShowMessage top] view:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)imageAdd:(NSString *)URL
                 //: parameters:(id)parameters
                 ting:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     stateFailed:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 userRecent:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   behindAddFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    recording:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     retention:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[WaterSkyData k_dentPath]]){
        //: URL = RestApi(URL);
        URL = drawRein(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
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
            NSString *imageTypeSuffix = [WaterSkyData k_versionStr];
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [WaterSkyData k_versionStr];
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [WaterSkyData k_participateStr];
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [WaterSkyData mainWipeFormat];
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
            NSString *mimeType = [NSString stringWithFormat:[WaterSkyData main_governKey],imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";

            //: NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            NSString *name = [imageNames objectAtIndex:i] ? :[WaterSkyData k_allyBlueName];
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
    [[TouchShowMessage top] view:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)progress:(NSString *)URL
                 //: parameters:(id)parameters
                 kind:(id)parameters
                       //: name:(NSString *)name
                       smart:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     visibleFailed:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  appellative:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 key:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  image:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   size:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    uploadViewFailed:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     signaling:(ResponseFailed)failed{

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);// 图片经过等比压缩后得到的二进制文件
            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];// 默认图片的文件名, 若fileNames为nil就使用
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [WaterSkyData userJustifyStr];
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[WaterSkyData k_versionStr]];

            //: NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName;
            NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[WaterSkyData k_versionStr]] : imageFileName;
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"];
            NSString *mimeType = [NSString stringWithFormat:[WaterSkyData main_governKey],imageType ?: [WaterSkyData k_versionStr]];
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
    [[TouchShowMessage top] view:t];
}


//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)numericalNumber:(NSString *)URL
                 //: parameters:(id)parameters
                 at:(id)parameters
                     //: images:(NSData *)videoData
                     stigmatizeProvider:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 textAcross:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   tv:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    nameIn:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     uploadCanTabFailed:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[WaterSkyData k_dentPath]]){
        //: URL = RestApi(URL);
        URL = drawRein(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        //: NSString *fileName = [NSString stringWithFormat:@"%@.mp4",timeSp];
        NSString *fileName = [NSString stringWithFormat:[WaterSkyData kTextVerdictUrl],timeSp];
        //: NSString *mimeType = @"video/mp4";
        NSString *mimeType = [WaterSkyData user_territoryEliteArtId];
        //: [formData appendPartWithFileData:videoData name:@"video" fileName:fileName mimeType:mimeType];
        [formData appendPartWithFileData:videoData name:[WaterSkyData user_iconText] fileName:fileName mimeType:mimeType];
        //: [formData appendPartWithFileData:coverData name:@"picture" fileName:[NSString stringWithFormat:@"%@.jpg",timeSp] mimeType:@"image/jpg"];
        [formData appendPartWithFileData:coverData name:[WaterSkyData mParticipateMsg] fileName:[NSString stringWithFormat:[WaterSkyData user_empireMsg],timeSp] mimeType:[WaterSkyData userEverywhereFormat]];
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
    [[TouchShowMessage top] view:t];
}




//: + (void)downloadWithURL:(NSString *)URL
+ (void)smart:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                imageLabel:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               fixing:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                hide:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed{
                 oPushailed:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[WaterSkyData k_dentPath]]){
        //: URL = RestApi(URL);
        URL = drawRein(URL);
    }

    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TouchShowMessage top].manager;
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
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [WaterSkyData k_permitMessage]];
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
- (void)view:(NSURLSessionDataTask *)task{
    //: NSMutableDictionary *taskQueue = [self taskQueue];
    NSMutableDictionary *taskQueue = [self statusOff];

    //: [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
    [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
}

//: - (void)removeTask:(NSURLSessionDataTask *)task{
- (void)drop:(NSURLSessionDataTask *)task{
    //: if ([self ifRequesting]) {
    if ([self month]) {
        //: NSMutableDictionary *taskQueue = [self taskQueue];
        NSMutableDictionary *taskQueue = [self statusOff];

        //: [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
        [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
    }
}

//: - (NSMutableDictionary *)taskQueue{
- (NSMutableDictionary *)statusOff{
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
- (BOOL)month{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (taskDic && taskDic.allKeys.count>0) {
//        return YES;
//    }
    //: return NO;
    return NO;
}

//: - (void)cancelRequest{
- (void)find{

    //: if ([self ifRequesting]) {
    if ([self month]) {
        //: NSMutableDictionary *taskDic = [[ZCHttpManager sharedManager] taskQueue];
        NSMutableDictionary *taskDic = [[TouchShowMessage top] statusOff];
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
+ (void)path:(NSString *)URLString{

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
