
#import <Foundation/Foundation.h>

@interface ProlusionData : NSObject

@end

@implementation ProlusionData

+ (Byte *)ProlusionDataToCache:(Byte *)data {
    int showCollapse = data[0];
    Byte dig = data[1];
    int aidShow = data[2];
    for (int i = aidShow; i < aidShow + showCollapse; i++) {
        int value = data[i] - dig;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[aidShow + showCollapse] = 0;
    return data + aidShow;
}

+ (NSString *)StringFromProlusionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ProlusionDataToCache:data]];
}

//: api
+ (NSString *)noti_purchaseText {
    /* static */ NSString *noti_purchaseText = nil;
    if (!noti_purchaseText) {
        Byte value[] = {3, 42, 10, 70, 162, 73, 226, 11, 21, 236, 139, 154, 147, 223};
        noti_purchaseText = [self StringFromProlusionData:value];
    }
    return noti_purchaseText;
}

//: pushkit_voice_test
+ (NSString *)dream_aidUrl {
    /* static */ NSString *dream_aidUrl = nil;
    if (!dream_aidUrl) {
        Byte value[] = {18, 70, 3, 182, 187, 185, 174, 177, 175, 186, 165, 188, 181, 175, 169, 171, 165, 186, 171, 185, 186, 173};
        dream_aidUrl = [self StringFromProlusionData:value];
    }
    return dream_aidUrl;
}

//: pushDev
+ (NSString *)appTingSkyKey {
    /* static */ NSString *appTingSkyKey = nil;
    if (!appTingSkyKey) {
        Byte value[] = {7, 42, 12, 101, 176, 89, 10, 207, 94, 243, 142, 33, 154, 159, 157, 146, 110, 143, 160, 128};
        appTingSkyKey = [self StringFromProlusionData:value];
    }
    return appTingSkyKey;
}

//: https://jexhor.blob.core.windows.net/jexhor/jex.txt
+ (NSString *)noti_collectionStr {
    /* static */ NSString *noti_collectionStr = nil;
    if (!noti_collectionStr) {
        Byte value[] = {51, 81, 13, 164, 111, 207, 67, 128, 206, 180, 104, 95, 74, 185, 197, 197, 193, 196, 139, 128, 128, 187, 182, 201, 185, 192, 195, 127, 179, 189, 192, 179, 127, 180, 192, 195, 182, 127, 200, 186, 191, 181, 192, 200, 196, 127, 191, 182, 197, 128, 187, 182, 201, 185, 192, 195, 128, 187, 182, 201, 127, 197, 201, 197, 73};
        noti_collectionStr = [self StringFromProlusionData:value];
    }
    return noti_collectionStr;
}

//: https://jexhor.s3.ap-northeast-2.amazonaws.com/jex.txt
+ (NSString *)app_holderPath {
    /* static */ NSString *app_holderPath = nil;
    if (!app_holderPath) {
        Byte value[] = {54, 25, 10, 105, 128, 42, 228, 239, 125, 146, 129, 141, 141, 137, 140, 83, 72, 72, 131, 126, 145, 129, 136, 139, 71, 140, 76, 71, 122, 137, 70, 135, 136, 139, 141, 129, 126, 122, 140, 141, 70, 75, 71, 122, 134, 122, 147, 136, 135, 122, 144, 140, 71, 124, 136, 134, 72, 131, 126, 145, 71, 141, 145, 141, 180};
        app_holderPath = [self StringFromProlusionData:value];
    }
    return app_holderPath;
}

//: http
+ (NSString *)show_hmmValue {
    /* static */ NSString *show_hmmValue = nil;
    if (!show_hmmValue) {
        Byte value[] = {4, 42, 12, 99, 166, 48, 185, 8, 178, 247, 34, 11, 146, 158, 158, 154, 102};
        show_hmmValue = [self StringFromProlusionData:value];
    }
    return show_hmmValue;
}

//: /api
+ (NSString *)kAreaTitle {
    /* static */ NSString *kAreaTitle = nil;
    if (!kAreaTitle) {
        Byte value[] = {4, 66, 7, 227, 127, 156, 106, 113, 163, 178, 171, 111};
        kAreaTitle = [self StringFromProlusionData:value];
    }
    return kAreaTitle;
}

//: bb423e522c32002210fe5623f81a89ea
+ (NSString *)notiRecommendValue {
    /* static */ NSString *notiRecommendValue = nil;
    if (!notiRecommendValue) {
        Byte value[] = {32, 86, 13, 70, 240, 248, 108, 136, 223, 73, 141, 138, 74, 184, 184, 138, 136, 137, 187, 139, 136, 136, 185, 137, 136, 134, 134, 136, 136, 135, 134, 188, 187, 139, 140, 136, 137, 188, 142, 135, 183, 142, 143, 187, 183, 213};
        notiRecommendValue = [self StringFromProlusionData:value];
    }
    return notiRecommendValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongTemp.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushConfig.h"
#import "AlongTemp.h"
//: #import "RestUtil.h"
#import "EquilibriumModel.h"

//: static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const main_messageName = @"https://apple.akunjapan0206chat.com";
//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const dream_modelValue = @"SavedDomainKey";

//: @interface PushConfig ()
@interface AlongTemp ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation PushConfig
@implementation AlongTemp

//: + (instancetype)sharedConfig
+ (instancetype)frameConfig
{
    //: static PushConfig *instance = nil;
    static AlongTemp *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[PushConfig alloc] init];
        instance = [[AlongTemp alloc] init];
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
        _appKey = [ProlusionData notiRecommendValue];//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"pushDev";
        _apnsCername = @"push_Jexhor_release";
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = [ProlusionData dream_aidUrl];
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://jexhor.blob.core.windows.net/jexhor/jex.txt";
        self.hostFrom = [ProlusionData noti_collectionStr];

        // 打包OSS-2
        //: self.hostFrom2 = @"https://jexhor.s3.ap-northeast-2.amazonaws.com/jex.txt";
        self.hostFrom2 = [ProlusionData app_holderPath];

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
//        [EquilibriumModel get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [EquilibriumModel get:self.hostFrom2
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
//            [EquilibriumModel get:self.hostFrom2
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
- (NSString *)cell {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:dream_modelValue] ?: main_messageName;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:[ProlusionData kAreaTitle]])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:[ProlusionData noti_purchaseText]];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:[ProlusionData kAreaTitle]];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)beforeMessageCompletion:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [EquilibriumModel cell:self.hostFrom
                   //: params:nil
                   full:nil
                  //: success:^(NSString *oss) {
                  getWeaving:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:[ProlusionData show_hmmValue]]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:dream_modelValue];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [EquilibriumModel cell:self.hostFrom2
                           //: params:nil
                           full:nil
                          //: success:^(NSString *oss) {
                          getWeaving:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:[ProlusionData show_hmmValue]]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:dream_modelValue];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } parentTeam:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } parentTeam:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [EquilibriumModel cell:self.hostFrom2
                       //: params:nil
                       full:nil
                      //: success:^(NSString *oss) {
                      getWeaving:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:[ProlusionData show_hmmValue]]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:dream_modelValue];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } parentTeam:^(int code, NSString *msg) {
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
