
#import <Foundation/Foundation.h>

@interface EmergingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EmergingData

+ (instancetype)sharedInstance {
    static EmergingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EmergingDataToCache:(Byte *)data {
    int videoIncident = data[0];
    Byte inningButton = data[1];
    int incidentMoth = data[2];
    for (int i = incidentMoth; i < incidentMoth + videoIncident; i++) {
        int value = data[i] + inningButton;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[incidentMoth + videoIncident] = 0;
    return data + incidentMoth;
}

- (NSString *)StringFromEmergingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EmergingDataToCache:data]];
}

//: WIFI
- (NSString *)m_shoutValue {
    /* static */ NSString *m_shoutValue = nil;
    if (!m_shoutValue) {
        Byte value[] = {4, 50, 3, 37, 23, 20, 23, 83};
        m_shoutValue = [self StringFromEmergingData:value];
    }
    return m_shoutValue;
}

//: 无网络
- (NSString *)user_beefValue {
    /* static */ NSString *user_beefValue = nil;
    if (!user_beefValue) {
        Byte value[] = {9, 87, 3, 143, 64, 73, 144, 102, 58, 144, 100, 69, 193};
        user_beefValue = [self StringFromEmergingData:value];
    }
    return user_beefValue;
}

//: application/json
- (NSString *)k_targetValue {
    /* static */ NSString *k_targetValue = nil;
    if (!k_targetValue) {
        Byte value[] = {16, 21, 7, 170, 32, 201, 109, 76, 91, 91, 87, 84, 78, 76, 95, 84, 90, 89, 26, 85, 94, 90, 89, 169};
        k_targetValue = [self StringFromEmergingData:value];
    }
    return k_targetValue;
}

//: 未知网络
- (NSString *)kBirthdayContent {
    /* static */ NSString *kBirthdayContent = nil;
    if (!kBirthdayContent) {
        Byte value[] = {12, 30, 7, 89, 253, 67, 241, 200, 126, 140, 201, 129, 135, 201, 159, 115, 201, 157, 126, 44};
        kBirthdayContent = [self StringFromEmergingData:value];
    }
    return kBirthdayContent;
}

//: video
- (NSString *)notiFashionedData {
    /* static */ NSString *notiFashionedData = nil;
    if (!notiFashionedData) {
        Byte value[] = {5, 95, 10, 255, 243, 227, 65, 198, 123, 209, 23, 10, 5, 6, 16, 9};
        notiFashionedData = [self StringFromEmergingData:value];
    }
    return notiFashionedData;
}

//: thumb.jpg
- (NSString *)noti_leatherTitle {
    /* static */ NSString *noti_leatherTitle = nil;
    if (!noti_leatherTitle) {
        Byte value[] = {9, 93, 4, 198, 23, 11, 24, 16, 5, 209, 13, 19, 10, 7};
        noti_leatherTitle = [self StringFromEmergingData:value];
    }
    return noti_leatherTitle;
}

//: image/jpg
- (NSString *)k_eraVehicleTitle {
    /* static */ NSString *k_eraVehicleTitle = nil;
    if (!k_eraVehicleTitle) {
        Byte value[] = {9, 81, 13, 63, 87, 250, 194, 161, 182, 70, 65, 44, 212, 24, 28, 16, 22, 20, 222, 25, 31, 22, 206};
        k_eraVehicleTitle = [self StringFromEmergingData:value];
    }
    return k_eraVehicleTitle;
}

//: image/%@
- (NSString *)dream_needData {
    /* static */ NSString *dream_needData = nil;
    if (!dream_needData) {
        Byte value[] = {8, 81, 10, 1, 85, 30, 215, 73, 137, 245, 24, 28, 16, 22, 20, 222, 212, 239, 253};
        dream_needData = [self StringFromEmergingData:value];
    }
    return dream_needData;
}

//: 手机自带网络
- (NSString *)main_bubbleData {
    /* static */ NSString *main_bubbleData = nil;
    if (!main_bubbleData) {
        Byte value[] = {18, 7, 10, 149, 198, 121, 141, 165, 80, 22, 223, 130, 132, 223, 149, 179, 225, 128, 163, 222, 177, 159, 224, 182, 138, 224, 180, 149, 144};
        main_bubbleData = [self StringFromEmergingData:value];
    }
    return main_bubbleData;
}

//: text/xml
- (NSString *)main_sureAcknowledgeValue {
    /* static */ NSString *main_sureAcknowledgeValue = nil;
    if (!main_sureAcknowledgeValue) {
        Byte value[] = {8, 39, 8, 157, 242, 190, 86, 166, 77, 62, 81, 77, 8, 81, 70, 69, 152};
        main_sureAcknowledgeValue = [self StringFromEmergingData:value];
    }
    return main_sureAcknowledgeValue;
}

//: text/json
- (NSString *)appComfortableValue {
    /* static */ NSString *appComfortableValue = nil;
    if (!appComfortableValue) {
        Byte value[] = {9, 94, 12, 128, 136, 99, 165, 147, 243, 29, 254, 230, 22, 7, 26, 22, 209, 12, 21, 17, 16, 96};
        appComfortableValue = [self StringFromEmergingData:value];
    }
    return appComfortableValue;
}

//: text/plain
- (NSString *)app_localEnrollData {
    /* static */ NSString *app_localEnrollData = nil;
    if (!app_localEnrollData) {
        Byte value[] = {10, 62, 10, 70, 217, 192, 98, 153, 151, 26, 54, 39, 58, 54, 241, 50, 46, 35, 43, 48, 111};
        app_localEnrollData = [self StringFromEmergingData:value];
    }
    return app_localEnrollData;
}

//: thumb
- (NSString *)mIncidentText {
    /* static */ NSString *mIncidentText = nil;
    if (!mIncidentText) {
        Byte value[] = {5, 58, 7, 154, 226, 170, 201, 58, 46, 59, 51, 40, 36};
        mIncidentText = [self StringFromEmergingData:value];
    }
    return mIncidentText;
}

//: yyyyMMddHHmmss
- (NSString *)dreamCountegrityValue {
    /* static */ NSString *dreamCountegrityValue = nil;
    if (!dreamCountegrityValue) {
        Byte value[] = {14, 71, 11, 120, 59, 130, 221, 175, 208, 154, 176, 50, 50, 50, 50, 6, 6, 29, 29, 1, 1, 38, 38, 44, 44, 10};
        dreamCountegrityValue = [self StringFromEmergingData:value];
    }
    return dreamCountegrityValue;
}

//: text/html
- (NSString *)dreamBreastText {
    /* static */ NSString *dreamBreastText = nil;
    if (!dreamBreastText) {
        Byte value[] = {9, 11, 10, 175, 109, 85, 163, 23, 87, 155, 105, 90, 109, 105, 36, 93, 105, 98, 97, 179};
        dreamBreastText = [self StringFromEmergingData:value];
    }
    return dreamBreastText;
}

//: image/*
- (NSString *)appSuicideName {
    /* static */ NSString *appSuicideName = nil;
    if (!appSuicideName) {
        Byte value[] = {7, 39, 8, 23, 160, 39, 207, 92, 66, 70, 58, 64, 62, 8, 3, 56};
        appSuicideName = [self StringFromEmergingData:value];
    }
    return appSuicideName;
}

//: responseObject = %@
- (NSString *)m_zingWhipName {
    /* static */ NSString *m_zingWhipName = nil;
    if (!m_zingWhipName) {
        Byte value[] = {19, 97, 3, 17, 4, 18, 15, 14, 13, 18, 4, 238, 1, 9, 4, 2, 19, 191, 220, 191, 196, 223, 12};
        m_zingWhipName = [self StringFromEmergingData:value];
    }
    return m_zingWhipName;
}

//: text/javascript
- (NSString *)mainPotentImageValue {
    /* static */ NSString *mainPotentImageValue = nil;
    if (!mainPotentImageValue) {
        Byte value[] = {15, 41, 12, 98, 156, 91, 81, 89, 140, 63, 179, 115, 75, 60, 79, 75, 6, 65, 56, 77, 56, 74, 58, 73, 64, 71, 75, 109};
        mainPotentImageValue = [self StringFromEmergingData:value];
    }
    return mainPotentImageValue;
}

//: error = %@
- (NSString *)kTargetName {
    /* static */ NSString *kTargetName = nil;
    if (!kTargetName) {
        Byte value[] = {10, 63, 7, 218, 188, 223, 4, 38, 51, 51, 48, 51, 225, 254, 225, 230, 1, 127};
        kTargetName = [self StringFromEmergingData:value];
    }
    return kTargetName;
}

//: jpg
- (NSString *)app_apartmentData {
    /* static */ NSString *app_apartmentData = nil;
    if (!app_apartmentData) {
        Byte value[] = {3, 11, 4, 242, 95, 101, 92, 223};
        app_apartmentData = [self StringFromEmergingData:value];
    }
    return app_apartmentData;
}

//: Download
- (NSString *)app_viewDrugMedicalData {
    /* static */ NSString *app_viewDrugMedicalData = nil;
    if (!app_viewDrugMedicalData) {
        Byte value[] = {8, 91, 10, 144, 98, 82, 77, 145, 234, 130, 233, 20, 28, 19, 17, 20, 6, 9, 197};
        app_viewDrugMedicalData = [self StringFromEmergingData:value];
    }
    return app_viewDrugMedicalData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecutiveSessionHelper.m
//  ExecutiveSessionHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "ExecutiveSessionHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation ExecutiveSessionHelper

//: static BOOL _isOpenLog; 
static BOOL show_linkData; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *show_pageValue;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *m_viewData;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)top:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (show_linkData) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kBirthdayContent]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (show_linkData) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] user_beefValue]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (show_linkData) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] main_bubbleData]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (show_linkData) printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_shoutValue]] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)kit {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)teamForNetwork {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)m {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)title {
    //: _isOpenLog = YES;
    show_linkData = YES;
}

//: + (void)closeLog {
+ (void)empty {
    //: _isOpenLog = NO;
    show_linkData = NO;
}

//: + (void)cancelAllRequest {
+ (void)toRequest {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self array] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self array] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)ting:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self array] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self array] removeObject:task];
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
+ (NSURLSessionTask *)background:(NSString *)URL
               //: parameters:(id)parameters
               label:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  m:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  reversion:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self cacheFailure:URL color:parameters biteCacheRepossessDoingIssueFailure:nil clearToReversionRequestSuccess:success responseRed:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)show:(NSString *)URL
                //: parameters:(id)parameters
                tap:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   input:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   color:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self sign:URL placeUpshot:parameters beyondMargin:nil modify:success max:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)cacheFailure:(NSString *)URL
               //: parameters:(id)parameters
               color:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            biteCacheRepossessDoingIssueFailure:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  clearToReversionRequestSuccess:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  responseRed:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setMedia:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [m_viewData GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)sign:(NSString *)URL
                //: parameters:(id)parameters
                placeUpshot:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             beyondMargin:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   modify:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   max:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setMedia:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [m_viewData POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)trademark:(NSString *)URL
                             //: parameters:(id)parameters
                             title:(id)parameters
                                   //: name:(NSString *)name
                                   key:(NSString *)name
                               //: filePath:(NSString *)filePath
                               messageOn:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               by:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                smart:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                color:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [m_viewData POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)team:(NSString *)URL
                                      //: parameters:(id)parameters
                                      quick:(id)parameters
                                           //: video:(NSString *)videoPath
                                           adjacent:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           style:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        old:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         computerFileContent:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         data:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [m_viewData POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:[[EmergingData sharedInstance] notiFashionedData] error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:[[EmergingData sharedInstance] mIncidentText]
                                //: fileName:@"thumb.jpg"
                                fileName:[[EmergingData sharedInstance] noti_leatherTitle]
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:[[EmergingData sharedInstance] k_eraVehicleTitle]]];

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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;

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
+ (__kindof NSURLSessionTask *)workflow:(NSString *)URL
                                       //: parameters:(id)parameters
                                       toteUp:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            outsideFiles:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         send:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          center:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          inputUpload:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [m_viewData POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)length:(NSString *)URL session:(id)parameters tapButton:(NSString *)name memoryImage:(NSData *)data specialSession:(NSString *)fileName should:(NSString *)imageType need:(YLHttpProgress)progress writerSContent:(YLHttpRequestSuccess)success withShould:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [m_viewData POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = [[EmergingData sharedInstance] dreamCountegrityValue];
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:[[EmergingData sharedInstance] app_apartmentData]];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:[[EmergingData sharedInstance] app_apartmentData]] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:[[EmergingData sharedInstance] dream_needData],imageType ?: [[EmergingData sharedInstance] app_apartmentData]]];

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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)title:(NSString *)URL
                               //: parameters:(id)parameters
                               delay:(id)parameters
                                     //: name:(NSString *)name
                                     compartment_strong:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   uploadFile:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                origin:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               data:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                shared_strong:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 countMaxFailure:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  noticeFailure:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  read:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [m_viewData POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [[EmergingData sharedInstance] dreamCountegrityValue];
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[[EmergingData sharedInstance] app_apartmentData]];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[[EmergingData sharedInstance] app_apartmentData]] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:[[EmergingData sharedInstance] dream_needData],imageType ?: [[EmergingData sharedInstance] app_apartmentData]]];
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] m_zingWhipName],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_linkData) {printf("[%s] %s [第%d行]: %s\n", "16:30:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[EmergingData sharedInstance] kTargetName],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self array] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self array] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)option:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              occurrent:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             grade:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              size:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              status:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [m_viewData downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
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
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [[EmergingData sharedInstance] app_viewDrugMedicalData]];
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
        [[self array] removeObject:downloadTask];
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
    downloadTask ? [[self array] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)array {
    //: if (!_allSessionTask) {
    if (!show_pageValue) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        show_pageValue = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return show_pageValue;
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
    m_viewData = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    m_viewData.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    m_viewData.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[[EmergingData sharedInstance] k_targetValue], [[EmergingData sharedInstance] dreamBreastText], [[EmergingData sharedInstance] appComfortableValue], [[EmergingData sharedInstance] app_localEnrollData], [[EmergingData sharedInstance] mainPotentImageValue], [[EmergingData sharedInstance] main_sureAcknowledgeValue], [[EmergingData sharedInstance] appSuicideName], nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setHide:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(m_viewData) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setExamine:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    m_viewData.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setMedia:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    m_viewData.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setNumberersperseSumerval:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    m_viewData.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)ting:(NSString *)value textTab:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [m_viewData.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)view:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)title:(NSString *)cerPath recordingWith:(BOOL)validatesDomainName {
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
    [m_viewData setSecurityPolicy:securityPolicy];
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