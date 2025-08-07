
#import <Foundation/Foundation.h>

@interface CousinData : NSObject

+ (instancetype)sharedInstance;

//: SNKey_tyl
@property (nonatomic, copy) NSString *dreamSeverName;

//: 中国移动
@property (nonatomic, copy) NSString *k_itemText;

//: 中国电信
@property (nonatomic, copy) NSString *k_sizeYaData;

//: 中国卫通
@property (nonatomic, copy) NSString *notiScaleValue;

//: unknown
@property (nonatomic, copy) NSString *mainAmbitionValue;

//: 460
@property (nonatomic, copy) NSString *main_disableOmitValue;

//: 中国铁通
@property (nonatomic, copy) NSString *noti_onContent;

//: L3Zhci9tb2JpbGUvTGlicmFyeS9Vc2VyQ29uZmlndXJhdGlvblByb2ZpbGVzL1B1YmxpY0luZm8vTUNNZXRhLnBsaXN0
@property (nonatomic, copy) NSString *showHandleValue;

//: 中国联通
@property (nonatomic, copy) NSString *kInfoValue;

//: SNUserDefault_Key_IUUID
@property (nonatomic, copy) NSString *userThanValue;

//: com.carr.%@
@property (nonatomic, copy) NSString *noti_imageData;

@end

@implementation CousinData

+ (instancetype)sharedInstance {
    static CousinData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CousinDataToCache:(Byte *)data {
    int appearAche = data[0];
    int intervalSession = data[1];
    for (int i = 0; i < appearAche / 2; i++) {
        int begin = intervalSession + i;
        int end = intervalSession + appearAche - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[intervalSession + appearAche] = 0;
    return data + intervalSession;
}

- (NSString *)StringFromCousinData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CousinDataToCache:data]];
}  

//: 中国卫通
- (NSString *)notiScaleValue {
    if (!_notiScaleValue) {
        Byte value[] = {12, 9, 145, 96, 203, 17, 226, 15, 177, 154, 128, 233, 171, 141, 229, 189, 155, 229, 173, 184, 228, 203};
        _notiScaleValue = [self StringFromCousinData:value];
    }
    return _notiScaleValue;
}

//: 中国联通
- (NSString *)kInfoValue {
    if (!_kInfoValue) {
        Byte value[] = {12, 5, 234, 102, 113, 154, 128, 233, 148, 129, 232, 189, 155, 229, 173, 184, 228, 90};
        _kInfoValue = [self StringFromCousinData:value];
    }
    return _kInfoValue;
}

//: unknown
- (NSString *)mainAmbitionValue {
    if (!_mainAmbitionValue) {
        Byte value[] = {7, 8, 102, 19, 179, 253, 247, 81, 110, 119, 111, 110, 107, 110, 117, 5};
        _mainAmbitionValue = [self StringFromCousinData:value];
    }
    return _mainAmbitionValue;
}

//: 中国电信
- (NSString *)k_sizeYaData {
    if (!_k_sizeYaData) {
        Byte value[] = {12, 4, 238, 205, 161, 191, 228, 181, 148, 231, 189, 155, 229, 173, 184, 228, 188};
        _k_sizeYaData = [self StringFromCousinData:value];
    }
    return _k_sizeYaData;
}

//: SNUserDefault_Key_IUUID
- (NSString *)userThanValue {
    if (!_userThanValue) {
        Byte value[] = {23, 2, 68, 73, 85, 85, 73, 95, 121, 101, 75, 95, 116, 108, 117, 97, 102, 101, 68, 114, 101, 115, 85, 78, 83, 133};
        _userThanValue = [self StringFromCousinData:value];
    }
    return _userThanValue;
}

//: SNKey_tyl
- (NSString *)dreamSeverName {
    if (!_dreamSeverName) {
        Byte value[] = {9, 6, 135, 27, 182, 117, 108, 121, 116, 95, 121, 101, 75, 78, 83, 41};
        _dreamSeverName = [self StringFromCousinData:value];
    }
    return _dreamSeverName;
}

//: 中国铁通
- (NSString *)noti_onContent {
    if (!_noti_onContent) {
        Byte value[] = {12, 10, 15, 28, 51, 195, 113, 116, 187, 165, 154, 128, 233, 129, 147, 233, 189, 155, 229, 173, 184, 228, 198};
        _noti_onContent = [self StringFromCousinData:value];
    }
    return _noti_onContent;
}

//: com.carr.%@
- (NSString *)noti_imageData {
    if (!_noti_imageData) {
        Byte value[] = {11, 3, 134, 64, 37, 46, 114, 114, 97, 99, 46, 109, 111, 99, 2};
        _noti_imageData = [self StringFromCousinData:value];
    }
    return _noti_imageData;
}

//: 中国移动
- (NSString *)k_itemText {
    if (!_k_itemText) {
        Byte value[] = {12, 6, 72, 168, 75, 199, 168, 138, 229, 187, 167, 231, 189, 155, 229, 173, 184, 228, 245};
        _k_itemText = [self StringFromCousinData:value];
    }
    return _k_itemText;
}

//: L3Zhci9tb2JpbGUvTGlicmFyeS9Vc2VyQ29uZmlndXJhdGlvblByb2ZpbGVzL1B1YmxpY0luZm8vTUNNZXRhLnBsaXN0
- (NSString *)showHandleValue {
    if (!_showHandleValue) {
        Byte value[] = {92, 5, 185, 144, 123, 48, 78, 88, 97, 115, 66, 110, 76, 104, 82, 88, 90, 78, 78, 85, 84, 118, 56, 109, 90, 117, 108, 48, 89, 112, 120, 109, 89, 49, 66, 49, 76, 122, 86, 71, 98, 112, 90, 50, 98, 121, 66, 108, 98, 118, 108, 71, 100, 104, 74, 88, 100, 110, 108, 109, 90, 117, 57, 50, 81, 121, 86, 50, 99, 86, 57, 83, 101, 121, 70, 109, 99, 105, 108, 71, 84, 118, 85, 71, 98, 112, 74, 50, 98, 116, 57, 105, 99, 104, 90, 51, 76, 92};
        _showHandleValue = [self StringFromCousinData:value];
    }
    return _showHandleValue;
}

//: 460
- (NSString *)main_disableOmitValue {
    if (!_main_disableOmitValue) {
        Byte value[] = {3, 10, 250, 67, 81, 14, 167, 194, 78, 157, 48, 54, 52, 245};
        _main_disableOmitValue = [self StringFromCousinData:value];
    }
    return _main_disableOmitValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeWith.m
//  sohunews
//
//  Created by lhp on 9/24/14.
//  Copyright (c) 2014 Sohu.com. All rights reserved.
//
/// 存储客户端生成的IUUID

// __M_A_C_R_O__
//: #import "SNDevice.h"
#import "ModeWith.h"
//: #import "SAMKeychain.h"
#import "SAMKeychain.h"
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import <sys/socket.h>
#import <sys/socket.h>
//: #import <sys/dirent.h>
#import <sys/dirent.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>
//: #import <mach/mach.h>
#import <mach/mach.h>
//: #import <net/if.h>
#import <net/if.h>
//: #import <net/if_dl.h>
#import <net/if_dl.h>
//: #import <arpa/inet.h>
#import <arpa/inet.h>
//: #import <ifaddrs.h>
#import <ifaddrs.h>
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h> 
#import <CoreTelephony/CTTelephonyNetworkInfo.h> // 获取设备运营商
//: #import <CoreTelephony/CTCarrier.h> 
#import <CoreTelephony/CTCarrier.h> // 获取设备运营商
//: #import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
//: #import <AdSupport/ASIdentifierManager.h>
#import <AdSupport/ASIdentifierManager.h>

//: @interface SNDevice ()
@interface ModeWith ()
//: @property (nonatomic, copy) NSString *iuuid;
@property (nonatomic, copy) NSString *iuuid;
//: @property (nonatomic, copy) NSString *udid;
@property (nonatomic, copy) NSString *udid;
//: @property (nonatomic, copy) NSString *idfv;
@property (nonatomic, copy) NSString *idfv;
//: @end
@end


//: @implementation SNDevice
@implementation ModeWith

//: + (SNDevice *)sharedInstance {
+ (ModeWith *)model {
    //: static SNDevice *_sharedDevice = nil;
    static ModeWith *_sharedDevice = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: _sharedDevice = [[SNDevice alloc] init];
        _sharedDevice = [[ModeWith alloc] init];
    //: });
    });
    //: return _sharedDevice;
    return _sharedDevice;
}


//: - (NSString *)idfv {
- (NSString *)idfv {
    //: if (_idfv.length <= 0) {
    if (_idfv.length <= 0) {
        //: _idfv = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        _idfv = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    }
    //: return _idfv;
    return _idfv;
}

/*
 IDFA:广告标示符，适用于对外：例如广告推广，换量等跨应用的用户追踪等,如果用户完全重置系统（(设置程序 -> 通用 -> 还原 -> 还原位置与隐私) ，这个广告标示符会重新生成。另外如果用户明确的还原广告(设置程序-> 通用 -> 关于本机 -> 广告 -> 还原广告标示符) ，那么广告标示符也会重新生成;若果用户在隐私->广告->限制广告跟踪，开关开启，则取不到IDFA
 注：iOS 10  弱开启限制广告标示符后，取到的为 00000000-0000-0000-0000-000000000000
 */

//static NSString* sohunews_IDFA = nil;
//+ (NSString *)deviceIDFA {
//    
//    if (sohunews_IDFA) {
//        return sohunews_IDFA;
//    }
//    BOOL idfaOpen = [[NSUserDefaults standardUserDefaults] boolForKey:kIdfaOpen];
//    if (@available(iOS 14, *)) {
//        // iOS14及以上版本需要先请求权限
//        pthread_mutex_lock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//        if(idfaOpen) {
//            if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
//                [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
//                    // 获取到权限后，依然使用老方法获取idfa
//                    if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
//                        NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
//                        sohunews_IDFA = idfa;
//                    }
//                }];
//            }
//        }
//        pthread_mutex_unlock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//    }
//    // iOS14以下版本依然使用老方法
//    else if (NSClassFromString(@"ASIdentifierManager")) {
//        pthread_mutex_lock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//        NSString *IDFA = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
//        sohunews_IDFA = IDFA;
//        pthread_mutex_unlock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//        return IDFA;
//    }
//    
//    return @"";
//}


//: static NSString *iuuid = nil;
static NSString *app_backValue = nil;
//: + (NSString *)deviceIUUID {
+ (NSString *)at {
    //: if (iuuid.length <= 0) {
    if (app_backValue.length <= 0) {
        //: iuuid = [SAMKeychain passwordForService:@"SNUserDefault_Key_IUUID" account:@"SNKey_tyl"];
        app_backValue = [SAMKeychain passwordForService:[CousinData sharedInstance].userThanValue account:[CousinData sharedInstance].dreamSeverName];
        //: if (iuuid.length <= 0) {
        if (app_backValue.length <= 0) {
            //: [self updateDeviceIUUID];
            [self will];
        }
    }
    //: return iuuid;
    return app_backValue;
}


//: + (void)updateDeviceIUUID {
+ (void)will {

    //: CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    //: iuuid = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
    app_backValue = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
    //: CFRelease(uuidRef);
    CFRelease(uuidRef);
    //: [SAMKeychain setPassword:iuuid forService:@"SNUserDefault_Key_IUUID" account:@"SNKey_tyl"];
    [SAMKeychain setPassword:app_backValue forService:[CousinData sharedInstance].userThanValue account:[CousinData sharedInstance].dreamSeverName];
}



//: #pragma mark - CAID
#pragma mark - CAID

//: static time_t bootSecTime() {
static time_t bootSecTime() {
    //: struct timeval boottime;
    struct timeval boottime;
    //: size_t len = sizeof(boottime);
    size_t len = sizeof(boottime);
    //: int mib[2] = { 1, 21};
    int mib[2] = { 1, 21};
    //: if ( sysctl(mib, 2, &boottime, &len, NULL, 0) < 0) {
    if ( sysctl(mib, 2, &boottime, &len, NULL, 0) < 0) {
        //: return 0;
        return 0;
    }
    //: return boottime.tv_sec;
    return boottime.tv_sec;
}

/// 设备启动时间
//: + (NSString *)bootTimeInSec
+ (NSString *)of
{
    //: return [NSString stringWithFormat:@"%ld",bootSecTime()];
    return [NSString stringWithFormat:@"%ld",bootSecTime()];
}
//get system uptime since last boot 获取系统当前运行了多长时间
//: + (NSTimeInterval)uptime
+ (NSTimeInterval)birdSEyeView
{
    //: struct timeval boottime;
    struct timeval boottime;
    //: int mib[2] = {1, 21};
    int mib[2] = {1, 21};
    //: size_t size = sizeof(boottime);
    size_t size = sizeof(boottime);
    //: struct timeval now;
    struct timeval now;
    //: struct timezone tz;
    struct timezone tz;
    //: gettimeofday(&now, &tz);
    gettimeofday(&now, &tz);
    //: double uptime = -1;
    double uptime = -1;
    //: if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 && boottime.tv_sec != 0)
    if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 && boottime.tv_sec != 0)
    {
        //: uptime = now.tv_sec - boottime.tv_sec;
        uptime = now.tv_sec - boottime.tv_sec;
        //: uptime += (double)(now.tv_usec - boottime.tv_usec) / 1000000.0;
        uptime += (double)(now.tv_usec - boottime.tv_usec) / 1000000.0;
    }
    //: return uptime;
    return uptime;
}


/// 国家
//: + (NSString *)countryCode
+ (NSString *)estateOfTheRealm
{
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: NSString *countryCode = [locale objectForKey:NSLocaleCountryCode]; return countryCode;
    NSString *countryCode = [locale objectForKey:NSLocaleCountryCode]; return countryCode;
}

/// 语言
//: + (NSString *)language {
+ (NSString *)redItem {
    //: NSString *language;
    NSString *language;
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: if ([[NSLocale preferredLanguages] count] > 0) {
    if ([[NSLocale preferredLanguages] count] > 0) {
        //: language = [[NSLocale preferredLanguages]objectAtIndex:0];
        language = [[NSLocale preferredLanguages]objectAtIndex:0];
    //: } else {
    } else {
        //: language = [locale objectForKey:NSLocaleLanguageCode];
        language = [locale objectForKey:NSLocaleLanguageCode];
    }
    //: return language;
    return language;
}



/// 运营商
//: +(NSString* )carrierInfo {
+(NSString* )be {



    //: static dispatch_queue_t _queue;
    static dispatch_queue_t _queue;
    //: static dispatch_once_t once; _dispatch_once(&once, ^{
    static dispatch_once_t once; _dispatch_once(&once, ^{
        //: _queue = dispatch_queue_create([[NSString stringWithFormat:@"com.carr.%@", self] UTF8String], NULL);
        _queue = dispatch_queue_create([[NSString stringWithFormat:[CousinData sharedInstance].noti_imageData, self] UTF8String], NULL);
    //: });
    });
    //: __block NSString* carr=nil;
    __block NSString* carr=nil;
    //: dispatch_semaphore_t semaphore =dispatch_semaphore_create(0);
    dispatch_semaphore_t semaphore =dispatch_semaphore_create(0);
    //: dispatch_async(_queue, ^(){
    dispatch_async(_queue, ^(){
        //: CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
        CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
        //: CTCarrier *carrier = nil;
        CTCarrier *carrier = nil;
        //: if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 12.1) {
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 12.1) {
            //: if ([info respondsToSelector:@selector(serviceSubscriberCellularProviders)]) {
            if ([info respondsToSelector:@selector(serviceSubscriberCellularProviders)]) {
//: #pragma clang diagnostic push
#pragma clang diagnostic push
//: #pragma clang diagnostic ignored "-Wunguarded-availability-new"
#pragma clang diagnostic ignored "-Wunguarded-availability-new"

                //: NSArray *carrierKeysArray = [info.serviceSubscriberCellularProviders.allKeys sortedArrayUsingSelector:@selector(compare:)];
                NSArray *carrierKeysArray = [info.serviceSubscriberCellularProviders.allKeys sortedArrayUsingSelector:@selector(compare:)];
                //: carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.firstObject];
                carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.firstObject];
                //: if (!carrier.mobileNetworkCode) {
                if (!carrier.mobileNetworkCode) {
                    //: carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.lastObject];
                    carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.lastObject];
                }
//: #pragma clang diagnostic pop
#pragma clang diagnostic pop
            }
        }
        //: if(!carrier) {
        if(!carrier) {
//: #pragma clang diagnostic push
#pragma clang diagnostic push
//: #pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
            //: carrier = info.subscriberCellularProvider;
            carrier = info.subscriberCellularProvider;
//: #pragma clang diagnostic pop
#pragma clang diagnostic pop
        }
        //: if (carrier != nil) {
        if (carrier != nil) {
            //: NSString *networkCode = [carrier mobileNetworkCode];
            NSString *networkCode = [carrier mobileNetworkCode];
            //: NSString *countryCode = [carrier mobileCountryCode];
            NSString *countryCode = [carrier mobileCountryCode];
            //: if (countryCode && [countryCode isEqualToString:@"460"] &&networkCode) {
            if (countryCode && [countryCode isEqualToString:[CousinData sharedInstance].main_disableOmitValue] &&networkCode) {
                //: if ([networkCode isEqualToString:@"00"]||
                if ([networkCode isEqualToString:@"00"]||
                    //: [networkCode isEqualToString:@"02"]||
                    [networkCode isEqualToString:@"02"]||
                    //: [networkCode isEqualToString:@"07"]||
                    [networkCode isEqualToString:@"07"]||
                    //: [networkCode isEqualToString:@"08"]) {
                    [networkCode isEqualToString:@"08"]) {
                    //: carr= @"中国移动";
                    carr= [CousinData sharedInstance].k_itemText;
                }
                //: if ([networkCode isEqualToString:@"01"]||
                if ([networkCode isEqualToString:@"01"]||
                    //: [networkCode isEqualToString:@"06"]||
                    [networkCode isEqualToString:@"06"]||
                    //: [networkCode isEqualToString:@"09"]) {
                    [networkCode isEqualToString:@"09"]) {
                    //: carr= @"中国联通";
                    carr= [CousinData sharedInstance].kInfoValue;
                }
                //: if ([networkCode isEqualToString:@"03"] ||
                if ([networkCode isEqualToString:@"03"] ||
                    //: [networkCode isEqualToString:@"05"]||
                    [networkCode isEqualToString:@"05"]||
                    //: [networkCode isEqualToString:@"11"]) {
                    [networkCode isEqualToString:@"11"]) {
                    //: carr= @"中国电信";
                    carr= [CousinData sharedInstance].k_sizeYaData;
                }
                //: if ([networkCode isEqualToString:@"04"]) {
                if ([networkCode isEqualToString:@"04"]) {
                    //: carr= @"中国卫通";
                    carr= [CousinData sharedInstance].notiScaleValue;
                }
                //: if ([networkCode isEqualToString:@"20"]){
                if ([networkCode isEqualToString:@"20"]){
                    //: carr= @"中国铁通";
                    carr= [CousinData sharedInstance].noti_onContent;
                }
            //: } else {
            } else {
                //: carr = [carrier.carrierName copy];
                carr = [carrier.carrierName copy];
            }
        }
        //: if (carr.length <= 0) {
        if (carr.length <= 0) {
            //: carr = @"unknown";
            carr = [CousinData sharedInstance].mainAmbitionValue;
        }
        //: dispatch_semaphore_signal(semaphore);
        dispatch_semaphore_signal(semaphore);
    //: });
    });
    //: dispatch_time_t t = dispatch_time((0ull), 0.5*1000000000ull);
    dispatch_time_t t = dispatch_time((0ull), 0.5*1000000000ull);
    //: dispatch_semaphore_wait(semaphore, t);
    dispatch_semaphore_wait(semaphore, t);
    //: return [carr copy];
    return [carr copy];

}


/// 系统更新时间
//: + (NSString *)sysFileTime
+ (NSString *)clipTitle
{
    //: NSString *result = nil;
    NSString *result = nil;
    //: NSString *information = @"L3Zhci9tb2JpbGUvTGlicmFyeS9Vc2VyQ29uZmlndXJhdGlvblByb2ZpbGVzL1B1YmxpY0luZm8vTUNNZXRhLnBsaXN0";
    NSString *information = [CousinData sharedInstance].showHandleValue;
    //: NSData *data=[[NSData alloc]initWithBase64EncodedString:information options:0] ;
    NSData *data=[[NSData alloc]initWithBase64EncodedString:information options:0] ;
    //: NSString *dataString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    NSString *dataString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:dataString error:&error];
    NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:dataString error:&error];
    //: if (fileAttributes) {
    if (fileAttributes) {
        //: id singleAttibute = [fileAttributes objectForKey:NSFileCreationDate];
        id singleAttibute = [fileAttributes objectForKey:NSFileCreationDate];
        //: if ([singleAttibute isKindOfClass:[NSDate class]]) {
        if ([singleAttibute isKindOfClass:[NSDate class]]) {
            //: NSDate *dataDate = singleAttibute;
            NSDate *dataDate = singleAttibute;
            //: result = [NSString stringWithFormat:@"%f",[dataDate timeIntervalSince1970]];
            result = [NSString stringWithFormat:@"%f",[dataDate timeIntervalSince1970]];
        }
    }
    //: return result;
    return result;
}


///时区
//: + (NSString *)timeZone
+ (NSString *)theWith
{
    //: NSInteger offset = [NSTimeZone systemTimeZone].secondsFromGMT;
    NSInteger offset = [NSTimeZone systemTimeZone].secondsFromGMT;
    //: return [NSString stringWithFormat:@"%ld",(long)offset];
    return [NSString stringWithFormat:@"%ld",(long)offset];
}


//: @end
@end