
#import <Foundation/Foundation.h>

@interface RoughData : NSObject

@end

@implementation RoughData

+ (Byte *)RoughDataToCache:(Byte *)data {
    int consultant = data[0];
    Byte elevatorCarMax = data[1];
    int inventionEstablish = data[2];
    for (int i = inventionEstablish; i < inventionEstablish + consultant; i++) {
        int value = data[i] - elevatorCarMax;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[inventionEstablish + consultant] = 0;
    return data + inventionEstablish;
}

+ (NSString *)StringFromRoughData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RoughDataToCache:data]];
}

//: text/javascript
+ (NSString *)appDeterminationFormat {
    /* static */ NSString *appDeterminationFormat = nil;
    if (!appDeterminationFormat) {
        Byte value[] = {15, 18, 9, 251, 237, 244, 71, 45, 49, 134, 119, 138, 134, 65, 124, 115, 136, 115, 133, 117, 132, 123, 130, 134, 174};
        appDeterminationFormat = [self StringFromRoughData:value];
    }
    return appDeterminationFormat;
}

//: yyyyMMddHHmmss
+ (NSString *)main_fabricKey {
    /* static */ NSString *main_fabricKey = nil;
    if (!main_fabricKey) {
        Byte value[] = {14, 25, 12, 180, 175, 245, 75, 75, 65, 218, 40, 166, 146, 146, 146, 146, 102, 102, 125, 125, 97, 97, 134, 134, 140, 140, 148};
        main_fabricKey = [self StringFromRoughData:value];
    }
    return main_fabricKey;
}

//: application/json
+ (NSString *)k_ourUpgradeFormat {
    /* static */ NSString *k_ourUpgradeFormat = nil;
    if (!k_ourUpgradeFormat) {
        Byte value[] = {16, 40, 4, 130, 137, 152, 152, 148, 145, 139, 137, 156, 145, 151, 150, 87, 146, 155, 151, 150, 220};
        k_ourUpgradeFormat = [self StringFromRoughData:value];
    }
    return k_ourUpgradeFormat;
}

//: responseObject = %@
+ (NSString *)appItIdent {
    /* static */ NSString *appItIdent = nil;
    if (!appItIdent) {
        Byte value[] = {19, 13, 7, 94, 243, 230, 114, 127, 114, 128, 125, 124, 123, 128, 114, 92, 111, 119, 114, 112, 129, 45, 74, 45, 50, 77, 34};
        appItIdent = [self StringFromRoughData:value];
    }
    return appItIdent;
}

//: text/plain
+ (NSString *)main_deadOughtMessage {
    /* static */ NSString *main_deadOughtMessage = nil;
    if (!main_deadOughtMessage) {
        Byte value[] = {10, 39, 5, 80, 13, 155, 140, 159, 155, 86, 151, 147, 136, 144, 149, 162};
        main_deadOughtMessage = [self StringFromRoughData:value];
    }
    return main_deadOughtMessage;
}

//: 手机自带网络
+ (NSString *)kContentTitle {
    /* static */ NSString *kContentTitle = nil;
    if (!kContentTitle) {
        Byte value[] = {18, 38, 8, 12, 131, 79, 132, 119, 12, 175, 177, 12, 194, 224, 14, 173, 208, 11, 222, 204, 13, 227, 183, 13, 225, 194, 220};
        kContentTitle = [self StringFromRoughData:value];
    }
    return kContentTitle;
}

//: jpg
+ (NSString *)app_lureName {
    /* static */ NSString *app_lureName = nil;
    if (!app_lureName) {
        Byte value[] = {3, 4, 11, 82, 6, 135, 22, 200, 244, 127, 134, 110, 116, 107, 155};
        app_lureName = [self StringFromRoughData:value];
    }
    return app_lureName;
}

//: thumb.jpg
+ (NSString *)show_satelliteKey {
    /* static */ NSString *show_satelliteKey = nil;
    if (!show_satelliteKey) {
        Byte value[] = {9, 5, 10, 87, 52, 250, 238, 78, 42, 93, 121, 109, 122, 114, 103, 51, 111, 117, 108, 232};
        show_satelliteKey = [self StringFromRoughData:value];
    }
    return show_satelliteKey;
}

//: text/html
+ (NSString *)dreamMagnitudeoText {
    /* static */ NSString *dreamMagnitudeoText = nil;
    if (!dreamMagnitudeoText) {
        Byte value[] = {9, 62, 7, 12, 255, 242, 32, 178, 163, 182, 178, 109, 166, 178, 171, 170, 93};
        dreamMagnitudeoText = [self StringFromRoughData:value];
    }
    return dreamMagnitudeoText;
}

//: Download
+ (NSString *)notiWingLothConfidentName {
    /* static */ NSString *notiWingLothConfidentName = nil;
    if (!notiWingLothConfidentName) {
        Byte value[] = {8, 29, 4, 101, 97, 140, 148, 139, 137, 140, 126, 129, 148};
        notiWingLothConfidentName = [self StringFromRoughData:value];
    }
    return notiWingLothConfidentName;
}

//: video
+ (NSString *)kMaxiId {
    /* static */ NSString *kMaxiId = nil;
    if (!kMaxiId) {
        Byte value[] = {5, 21, 5, 60, 208, 139, 126, 121, 122, 132, 111};
        kMaxiId = [self StringFromRoughData:value];
    }
    return kMaxiId;
}

//: image/*
+ (NSString *)showPullData {
    /* static */ NSString *showPullData = nil;
    if (!showPullData) {
        Byte value[] = {7, 65, 11, 233, 171, 241, 190, 116, 102, 51, 214, 170, 174, 162, 168, 166, 112, 107, 202};
        showPullData = [self StringFromRoughData:value];
    }
    return showPullData;
}

//: image/%@
+ (NSString *)notiStyleElegantVotingKey {
    /* static */ NSString *notiStyleElegantVotingKey = nil;
    if (!notiStyleElegantVotingKey) {
        Byte value[] = {8, 96, 3, 201, 205, 193, 199, 197, 143, 133, 160, 75};
        notiStyleElegantVotingKey = [self StringFromRoughData:value];
    }
    return notiStyleElegantVotingKey;
}

//: WIFI
+ (NSString *)noti_defineFormat {
    /* static */ NSString *noti_defineFormat = nil;
    if (!noti_defineFormat) {
        Byte value[] = {4, 73, 12, 237, 16, 205, 42, 167, 199, 237, 184, 28, 160, 146, 143, 146, 239};
        noti_defineFormat = [self StringFromRoughData:value];
    }
    return noti_defineFormat;
}

//: text/json
+ (NSString *)noti_essentialApproveStr {
    /* static */ NSString *noti_essentialApproveStr = nil;
    if (!noti_essentialApproveStr) {
        Byte value[] = {9, 65, 10, 135, 206, 81, 45, 241, 35, 70, 181, 166, 185, 181, 112, 171, 180, 176, 175, 232};
        noti_essentialApproveStr = [self StringFromRoughData:value];
    }
    return noti_essentialApproveStr;
}

//: text/xml
+ (NSString *)k_vehicleKey {
    /* static */ NSString *k_vehicleKey = nil;
    if (!k_vehicleKey) {
        Byte value[] = {8, 10, 9, 64, 31, 75, 67, 47, 33, 126, 111, 130, 126, 57, 130, 119, 118, 155};
        k_vehicleKey = [self StringFromRoughData:value];
    }
    return k_vehicleKey;
}

//: error = %@
+ (NSString *)dreamSenseKey {
    /* static */ NSString *dreamSenseKey = nil;
    if (!dreamSenseKey) {
        Byte value[] = {10, 89, 12, 21, 148, 12, 103, 214, 212, 142, 61, 34, 190, 203, 203, 200, 203, 121, 150, 121, 126, 153, 90};
        dreamSenseKey = [self StringFromRoughData:value];
    }
    return dreamSenseKey;
}

//: 未知网络
+ (NSString *)mProvideIdent {
    /* static */ NSString *mProvideIdent = nil;
    if (!mProvideIdent) {
        Byte value[] = {12, 96, 8, 242, 63, 224, 119, 195, 70, 252, 10, 71, 255, 5, 71, 29, 241, 71, 27, 252, 129};
        mProvideIdent = [self StringFromRoughData:value];
    }
    return mProvideIdent;
}

//: 无网络
+ (NSString *)notiReallyMessage {
    /* static */ NSString *notiReallyMessage = nil;
    if (!notiReallyMessage) {
        Byte value[] = {9, 94, 10, 28, 99, 56, 154, 56, 234, 33, 68, 245, 254, 69, 27, 239, 69, 25, 250, 17};
        notiReallyMessage = [self StringFromRoughData:value];
    }
    return notiReallyMessage;
}

//: image/jpg
+ (NSString *)dream_pareMessage {
    /* static */ NSString *dream_pareMessage = nil;
    if (!dream_pareMessage) {
        Byte value[] = {9, 73, 7, 22, 25, 117, 122, 178, 182, 170, 176, 174, 120, 179, 185, 176, 55};
        dream_pareMessage = [self StringFromRoughData:value];
    }
    return dream_pareMessage;
}

//: thumb
+ (NSString *)k_waterMessage {
    /* static */ NSString *k_waterMessage = nil;
    if (!k_waterMessage) {
        Byte value[] = {5, 98, 13, 80, 62, 42, 210, 160, 104, 200, 253, 251, 152, 214, 202, 215, 207, 196, 28};
        k_waterMessage = [self StringFromRoughData:value];
    }
    return k_waterMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MutualHelper.m
//  MutualHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "MutualHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation MutualHelper

//: static BOOL _isOpenLog; 
static BOOL k_maxMsg; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *main_statusIdent;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *dreamCanFormat;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)streetSmart:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (k_maxMsg) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData mProvideIdent]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (k_maxMsg) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData notiReallyMessage]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (k_maxMsg) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData kContentTitle]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (k_maxMsg) printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData noti_defineFormat]] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)dataRemote {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)counter {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)content {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)sawLog {
    //: _isOpenLog = YES;
    k_maxMsg = YES;
}

//: + (void)closeLog {
+ (void)userLog {
    //: _isOpenLog = NO;
    k_maxMsg = NO;
}

//: + (void)cancelAllRequest {
+ (void)scheduleMessage {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self date] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self date] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)enable:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self date] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self date] removeObject:task];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: #pragma mark - GET请求无缓存
#pragma mark - GET请求无缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)questionManager:(NSString *)URL
               //: parameters:(id)parameters
               clearId:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  share:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  image:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self infoOpenFile:URL modeCache:parameters tipMake:nil warpathActive:success planetary:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)doTable:(NSString *)URL
                //: parameters:(id)parameters
                hearty:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   error:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   lightIndex:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self life:URL postInfo:parameters blue:nil red:success target:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)infoOpenFile:(NSString *)URL
               //: parameters:(id)parameters
               modeCache:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            tipMake:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  warpathActive:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  planetary:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setThan:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [dreamCanFormat GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)life:(NSString *)URL
                //: parameters:(id)parameters
                postInfo:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             blue:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   red:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   target:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setThan:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [dreamCanFormat POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)courseOfActionEnable:(NSString *)URL
                             //: parameters:(id)parameters
                             phoneMessage:(id)parameters
                                   //: name:(NSString *)name
                                   pin:(NSString *)name
                               //: filePath:(NSString *)filePath
                               workFlow:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               session:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                clean:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                max:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dreamCanFormat POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)name:(NSString *)URL
                                      //: parameters:(id)parameters
                                      toToolLapse:(id)parameters
                                           //: video:(NSString *)videoPath
                                           upwardToFailingEnable:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           magnitude:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        picture:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         should:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         value:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dreamCanFormat POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:[RoughData kMaxiId] error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:[RoughData k_waterMessage]
                                //: fileName:@"thumb.jpg"
                                fileName:[RoughData show_satelliteKey]
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:[RoughData dream_pareMessage]]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

/**
 *  上传多个文件
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param files      文件 <文件对应服务器上的字段, 文件本地的沙盒路径>
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 *
 *  @return 返回的对象可取消请求,调用cancel方法
 */
//: + (__kindof NSURLSessionTask *)uploadFilesWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)enable:(NSString *)URL
                                       //: parameters:(id)parameters
                                       godspeedFailure:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            name:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         shadowiness:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          show:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          failureBiteWithRecordFilesWorkflowToMargin:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dreamCanFormat POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;

        //: for (NSString * key in files) {
        for (NSString * key in files) {
            //: NSString * value = [files objectForKey:key];
            NSString * value = [files objectForKey:key];
            //: [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];
            [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];

            //: if (error) {
            if (error) {
                //: break;
                break;
            }
        }

        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)file:(NSString *)URL optionRed:(id)parameters keyChild:(NSString *)name tint:(NSData *)data vehicleMax:(NSString *)fileName image:(NSString *)imageType thread:(YLHttpProgress)progress mentalImage:(YLHttpRequestSuccess)success to:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dreamCanFormat POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = [RoughData main_fabricKey];
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:[RoughData app_lureName]];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:[RoughData app_lureName]] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:[RoughData notiStyleElegantVotingKey],imageType ?: [RoughData app_lureName]]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)notice:(NSString *)URL
                               //: parameters:(id)parameters
                               mode:(id)parameters
                                     //: name:(NSString *)name
                                     doShow:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   byProgress:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                someone:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               hide:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                textImage:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 date:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  message:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  add:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [dreamCanFormat POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [RoughData main_fabricKey];
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[RoughData app_lureName]];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[RoughData app_lureName]] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:[RoughData notiStyleElegantVotingKey],imageType ?: [RoughData app_lureName]]];
        }

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData appItIdent],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (k_maxMsg) {printf("[%s] %s [第%d行]: %s\n", "10:51:28" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[RoughData dreamSenseKey],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self date] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self date] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)should:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              flunk:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             bubbleMessage:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              imageUser:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              storage:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [dreamCanFormat downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //下载进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(downloadProgress) : nil;
            progress ? progress(downloadProgress) : nil;
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [RoughData notiWingLothConfidentName]];
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

        //: [[self allSessionTask] removeObject:downloadTask];
        [[self date] removeObject:downloadTask];
        //: if(failure && error) {failure(error) ; return ;};
        if(failure && error) {failure(error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;

    //: }];
    }];
    //开始下载
    //: [downloadTask resume];
    [downloadTask resume];
    // 添加sessionTask到数组
    //: downloadTask ? [[self allSessionTask] addObject:downloadTask] : nil ;
    downloadTask ? [[self date] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)date {
    //: if (!_allSessionTask) {
    if (!main_statusIdent) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        main_statusIdent = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return main_statusIdent;
}

//: #pragma mark - 初始化AFHTTPSessionManager相关属性
#pragma mark - 初始化AFHTTPSessionManager相关属性
/**
 开始监测网络状态
 */
//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
/**
 *  所有的HTTP请求共享一个AFHTTPSessionManager
 *  原理参考地址:http://www.jianshu.com/p/5969bbb4af9f
 */
//: + (void)initialize {
+ (void)initialize {
    //: _sessionManager = [AFHTTPSessionManager manager];
    dreamCanFormat = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    dreamCanFormat.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    dreamCanFormat.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[RoughData k_ourUpgradeFormat], [RoughData dreamMagnitudeoText], [RoughData noti_essentialApproveStr], [RoughData main_deadOughtMessage], [RoughData appDeterminationFormat], [RoughData k_vehicleKey], [RoughData showPullData], nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setSend:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(dreamCanFormat) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setWith:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    dreamCanFormat.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setThan:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    dreamCanFormat.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setTo:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    dreamCanFormat.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)value:(NSString *)value key:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [dreamCanFormat.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)style:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)appose:(NSString *)cerPath monthBy:(BOOL)validatesDomainName {
    //: NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    // 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 如果需要验证自建证书(无效证书)，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    // 是否需要验证域名，默认为YES;
    //: securityPolicy.validatesDomainName = validatesDomainName;
    securityPolicy.validatesDomainName = validatesDomainName;
    //: securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];
    securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];

    //: [_sessionManager setSecurityPolicy:securityPolicy];
    [dreamCanFormat setSecurityPolicy:securityPolicy];
}

//: @end
@end


//: #pragma mark - NSDictionary,NSArray的分类
#pragma mark - NSDictionary,NSArray的分类
/*
 ************************************************************************************
 *新建NSDictionary与NSArray的分类, 控制台打印json数据中的中文
 ************************************************************************************
 */


//: @implementation NSArray (PP)
@implementation NSArray (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    //: [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: [strM appendFormat:@"\t%@,\n", obj];
        [strM appendFormat:@"\t%@,\n", obj];
    //: }];
    }];
    //: [strM appendString:@")"];
    [strM appendString:@")"];

    //: return strM;
    return strM;
}

//: @end
@end

//: @implementation NSDictionary (PP)
@implementation NSDictionary (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    //: [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        //: [strM appendFormat:@"\t%@ = %@;\n", key, obj];
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    //: }];
    }];

    //: [strM appendString:@"}\n"];
    [strM appendString:@"}\n"];

    //: return strM;
    return strM;
}
//: @end
@end