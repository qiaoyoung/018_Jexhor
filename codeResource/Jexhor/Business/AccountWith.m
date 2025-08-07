
#import <Foundation/Foundation.h>

@interface SubmitData : NSObject

+ (instancetype)sharedInstance;

//: https://jexhor.s3.ap-northeast-2.amazonaws.com/jex.txt
@property (nonatomic, copy) NSString *app_pocketName;

//: bb423e522c32002210fe5623f81a89ea
@property (nonatomic, copy) NSString *kExistingName;

//: pushkit_voice_test
@property (nonatomic, copy) NSString *appArrestData;

//: pushDev
@property (nonatomic, copy) NSString *noti_completeResultValue;

//: api
@property (nonatomic, copy) NSString *k_cussValue;

//: http
@property (nonatomic, copy) NSString *kTagValue;

//: https://jexhor.blob.core.windows.net/jexhor/jex.txt
@property (nonatomic, copy) NSString *notiSpecifyDrumCuriosityData;

//: /api
@property (nonatomic, copy) NSString *user_presentName;

@end

@implementation SubmitData

+ (instancetype)sharedInstance {
    static SubmitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SubmitDataToCache:(Byte *)data {
    int ecruFile = data[0];
    int oldTable = data[1];
    for (int i = 0; i < ecruFile / 2; i++) {
        int begin = oldTable + i;
        int end = oldTable + ecruFile - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[oldTable + ecruFile] = 0;
    return data + oldTable;
}

- (NSString *)StringFromSubmitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SubmitDataToCache:data]];
}  

//: bb423e522c32002210fe5623f81a89ea
- (NSString *)kExistingName {
    if (!_kExistingName) {
        Byte value[] = {32, 3, 125, 97, 101, 57, 56, 97, 49, 56, 102, 51, 50, 54, 53, 101, 102, 48, 49, 50, 50, 48, 48, 50, 51, 99, 50, 50, 53, 101, 51, 50, 52, 98, 98, 192};
        _kExistingName = [self StringFromSubmitData:value];
    }
    return _kExistingName;
}

//: https://jexhor.s3.ap-northeast-2.amazonaws.com/jex.txt
- (NSString *)app_pocketName {
    if (!_app_pocketName) {
        Byte value[] = {54, 6, 254, 155, 119, 119, 116, 120, 116, 46, 120, 101, 106, 47, 109, 111, 99, 46, 115, 119, 97, 110, 111, 122, 97, 109, 97, 46, 50, 45, 116, 115, 97, 101, 104, 116, 114, 111, 110, 45, 112, 97, 46, 51, 115, 46, 114, 111, 104, 120, 101, 106, 47, 47, 58, 115, 112, 116, 116, 104, 244};
        _app_pocketName = [self StringFromSubmitData:value];
    }
    return _app_pocketName;
}

//: http
- (NSString *)kTagValue {
    if (!_kTagValue) {
        Byte value[] = {4, 11, 125, 120, 12, 178, 62, 240, 190, 82, 77, 112, 116, 116, 104, 7};
        _kTagValue = [self StringFromSubmitData:value];
    }
    return _kTagValue;
}

//: https://jexhor.blob.core.windows.net/jexhor/jex.txt
- (NSString *)notiSpecifyDrumCuriosityData {
    if (!_notiSpecifyDrumCuriosityData) {
        Byte value[] = {51, 12, 72, 193, 229, 75, 113, 219, 58, 171, 180, 9, 116, 120, 116, 46, 120, 101, 106, 47, 114, 111, 104, 120, 101, 106, 47, 116, 101, 110, 46, 115, 119, 111, 100, 110, 105, 119, 46, 101, 114, 111, 99, 46, 98, 111, 108, 98, 46, 114, 111, 104, 120, 101, 106, 47, 47, 58, 115, 112, 116, 116, 104, 103};
        _notiSpecifyDrumCuriosityData = [self StringFromSubmitData:value];
    }
    return _notiSpecifyDrumCuriosityData;
}

//: pushDev
- (NSString *)noti_completeResultValue {
    if (!_noti_completeResultValue) {
        Byte value[] = {7, 5, 176, 32, 238, 118, 101, 68, 104, 115, 117, 112, 58};
        _noti_completeResultValue = [self StringFromSubmitData:value];
    }
    return _noti_completeResultValue;
}

//: api
- (NSString *)k_cussValue {
    if (!_k_cussValue) {
        Byte value[] = {3, 9, 219, 206, 251, 183, 92, 170, 205, 105, 112, 97, 74};
        _k_cussValue = [self StringFromSubmitData:value];
    }
    return _k_cussValue;
}

//: pushkit_voice_test
- (NSString *)appArrestData {
    if (!_appArrestData) {
        Byte value[] = {18, 9, 120, 101, 127, 221, 200, 152, 134, 116, 115, 101, 116, 95, 101, 99, 105, 111, 118, 95, 116, 105, 107, 104, 115, 117, 112, 242};
        _appArrestData = [self StringFromSubmitData:value];
    }
    return _appArrestData;
}

//: /api
- (NSString *)user_presentName {
    if (!_user_presentName) {
        Byte value[] = {4, 6, 66, 50, 200, 166, 105, 112, 97, 47, 197};
        _user_presentName = [self StringFromSubmitData:value];
    }
    return _user_presentName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountWith.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFConfig.h"
#import "AccountWith.h"
//: #import "RestUtil.h"
#import "ValueLab.h"

//: static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const app_commentName = @"https://apple.akunjapan0206chat.com";
//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const k_playerData = @"SavedDomainKey";

//: @interface FFFConfig ()
@interface AccountWith ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation FFFConfig
@implementation AccountWith

//: + (instancetype)sharedConfig
+ (instancetype)max
{
    //: static FFFConfig *instance = nil;
    static AccountWith *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFConfig alloc] init];
        instance = [[AccountWith alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _appKey = @"bb423e522c32002210fe5623f81a89ea";
        _appKey = [SubmitData sharedInstance].kExistingName;//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"pushDev";
        _apnsCername = [SubmitData sharedInstance].noti_completeResultValue;
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = [SubmitData sharedInstance].appArrestData;
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://jexhor.blob.core.windows.net/jexhor/jex.txt";
        self.hostFrom = [SubmitData sharedInstance].notiSpecifyDrumCuriosityData;

        // 打包OSS-2
        //: self.hostFrom2 = @"https://jexhor.s3.ap-northeast-2.amazonaws.com/jex.txt";
        self.hostFrom2 = [SubmitData sharedInstance].app_pocketName;

//        保底域名
//        NSString *PreSetHost = @"https://apple.akunjapan0206chat.com";//⚠️警告：最后面不能有斜杠/
//
//        //如果包含了api则不处理了，否则就要加上api
//        if ([PreSetHost containsString:@"/api"])
//        {} else {
//            if ([PreSetHost hasSuffix:@"/"]) {
//                PreSetHost = [PreSetHost stringByAppendingString:@"api"];
//            } else {
//                PreSetHost = [PreSetHost stringByAppendingString:@"/api"];
//            }
//        }
//        self.domainURL = PreSetHost;


//        NSString *defaultHost = [[NSUserDefaults standardUserDefaults] stringForKey:@"HOST_KEY"] ? :@"";//本地存储的host
//        if (defaultHost.length > 0){
//            //如果包含了api则不处理了，否则就要加上api
//            if ([defaultHost containsString:@"/api"])
//            {} else {
//                if ([defaultHost hasSuffix:@"/"]) {
//                    defaultHost = [defaultHost stringByAppendingString:@"api"];
//                } else {
//                    defaultHost = [defaultHost stringByAppendingString:@"/api"];
//                }
//            }
//            self.domainURL = defaultHost;
//        }




//        void (^hostBlock)(NSString *HOST) = ^(NSString *HOST){
//           
////            if (!HOST || HOST.length < 5) {
////                HOST = [[NSString alloc] initWithString:PreSetHost];
////                NSLog(@"========>警告⚠️读不到网上的host");
////            }
//            
////            if ([HOST containsString:defaultHost]) {
////                _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
////            }
////            else
////            {
////                _allowAutoLogin = NO; //如果网上的host和本地的不一致，则禁止🈲️自动登录
////                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:@"HOST_KEY"];
////            }
////            
//            
//            //如果包含了api则不处理了，否则就要加上api
//            if ([HOST containsString:@"/api"])
//            {} else {
//                if ([HOST hasSuffix:@"/"]) {
//                    HOST = [HOST stringByAppendingString:@"api"];
//                } else {
//                    HOST = [HOST stringByAppendingString:@"/api"];
//                }
//            }
//                    
//            self.domainURL = [[NSString alloc] initWithString:HOST];//设置host主域名
//
//        };



//        @weakify(self);
//        __block NSString *HOST = @"";
//        [ValueLab get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [ValueLab get:self.hostFrom2
//                       params:nil
//                      success:^(NSString *oss) {
//                    if ([oss hasPrefix:@"http"]) {
//                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    }
//                    hostBlock(HOST);
//                } fail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
//                }];
//            }
//            
//        } fail:^(int code, NSString *msg) {
//            
//            [ValueLab get:self.hostFrom2
//                   params:nil
//                  success:^(NSString *oss) {
//                if ([oss hasPrefix:@"http"]) {
//                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                }
//                hostBlock(HOST);
//
//            } fail:^(int code, NSString *msg) {
//                hostBlock(HOST);
//
//            }];
//        }];

    }
    //: return self;
    return self;
}

//: - (NSString *)getCurrentDomain {
- (NSString *)record {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:k_playerData] ?: app_commentName;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:[SubmitData sharedInstance].user_presentName])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:[SubmitData sharedInstance].k_cussValue];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:[SubmitData sharedInstance].user_presentName];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)share:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [ValueLab image:self.hostFrom
                   //: params:nil
                   title:nil
                  //: success:^(NSString *oss) {
                  dateSuccess:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:[SubmitData sharedInstance].kTagValue]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:k_playerData];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [ValueLab image:self.hostFrom2
                           //: params:nil
                           title:nil
                          //: success:^(NSString *oss) {
                          dateSuccess:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:[SubmitData sharedInstance].kTagValue]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:k_playerData];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } session:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } session:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [ValueLab image:self.hostFrom2
                       //: params:nil
                       title:nil
                      //: success:^(NSString *oss) {
                      dateSuccess:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:[SubmitData sharedInstance].kTagValue]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:k_playerData];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } session:^(int code, NSString *msg) {
//                    hostBlock(HOST);
                    //: if (completion) completion(NO);
                    if (completion) completion(NO);
                //: }];
                }];
            //: }];
            }];


//    NSString *configURL = self.hostFrom; // 配置接口地址
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:configURL]];
//    
//    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        if (error || !data) {
//            if (completion) completion(NO);
//            return;
//        }
//        
////        // 解析响应数据（假设返回 JSON: {"domain": "https://api.new.com"}）
////        NSError *jsonError;
////        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
////        NSString *newDomain = json[@"domain"];
//        
//
//        NSString *newDomain = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//
//        
//        if (newDomain) {
//            // 保存新域名
//            [[NSUserDefaults standardUserDefaults] setObject:newDomain forKey:kSavedDomainKey];
//            [[NSUserDefaults standardUserDefaults] synchronize];
//            if (completion) completion(YES);
//        } else {
//            if (completion) completion(NO);
//        }
//    }];
//    
//    [task resume];
}




//: @end
@end