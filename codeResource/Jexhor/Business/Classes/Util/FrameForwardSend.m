
#import <Foundation/Foundation.h>

@interface AcheData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AcheData

+ (instancetype)sharedInstance {
    static AcheData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AcheDataToCache:(Byte *)data {
    int aloneHandle = data[0];
    Byte smartShow = data[1];
    int frequent = data[2];
    for (int i = frequent; i < frequent + aloneHandle; i++) {
        int value = data[i] - smartShow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[frequent + aloneHandle] = 0;
    return data + frequent;
}

- (NSString *)StringFromAcheData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AcheDataToCache:data]];
}

//: WIFI
- (NSString *)app_brokerPetUnitData {
    /* static */ NSString *app_brokerPetUnitData = nil;
    if (!app_brokerPetUnitData) {
        Byte value[] = {4, 42, 4, 91, 129, 115, 112, 115, 44};
        app_brokerPetUnitData = [self StringFromAcheData:value];
    }
    return app_brokerPetUnitData;
}

//: iPhone
- (NSString *)mainVideoFindingName {
    /* static */ NSString *mainVideoFindingName = nil;
    if (!mainVideoFindingName) {
        Byte value[] = {6, 59, 9, 193, 122, 29, 92, 86, 130, 164, 139, 163, 170, 169, 160, 109};
        mainVideoFindingName = [self StringFromAcheData:value];
    }
    return mainVideoFindingName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameForwardSend.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDevice.h"
#import "FrameForwardSend.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>

//: @interface NTESDevice ()
@interface FrameForwardSend ()

//: @property (nonatomic,copy) NSDictionary *networkTypes;
@property (nonatomic,copy) NSDictionary *networkTypes;

//: @end
@end

//: @implementation NTESDevice
@implementation FrameForwardSend

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self buildDeviceInfo];
        [self under];
    }
    //: return self;
    return self;
}


//: + (NTESDevice *)currentDevice{
+ (FrameForwardSend *)user{
    //: static NTESDevice *instance = nil;
    static FrameForwardSend *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESDevice alloc] init];
        instance = [[FrameForwardSend alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)buildDeviceInfo
- (void)under
{
    //: _networkTypes = @{
    _networkTypes = @{
                          //: CTRadioAccessTechnologyGPRS:@(NTESNetworkType2G),
                          CTRadioAccessTechnologyGPRS:@(NTESNetworkType2G),
                          //: CTRadioAccessTechnologyEdge:@(NTESNetworkType2G),
                          CTRadioAccessTechnologyEdge:@(NTESNetworkType2G),
                          //: CTRadioAccessTechnologyWCDMA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyWCDMA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyHSDPA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyHSDPA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyHSUPA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyHSUPA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMA1x:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMA1x:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORev0:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORev0:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevB:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevB:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyeHRPD:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyeHRPD:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyLTE:@(NTESNetworkType4G),
                          CTRadioAccessTechnologyLTE:@(NTESNetworkType4G),
                     //: };
                     };

}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)limitMinPixels{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)materiality{
    //: return 0.5;
    return 0.5;
}


//App状态
//: - (BOOL)isUsingWifi{
- (BOOL)colourationWifi{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: return status == ReachableViaWiFi;
    return status == ReachableViaWiFi;
}

//: - (BOOL)isInBackground{
- (BOOL)old{
    //: return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
    return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
}

//: - (NTESNetworkType)currentNetworkType{
- (NTESNetworkType)typeLiveEspionageNetwork{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: switch (status) {
    switch (status) {
        //: case ReachableViaWiFi:
        case ReachableViaWiFi:
            //: return NTESNetworkTypeWifi;
            return NTESNetworkTypeWifi;
        //: case ReachableViaWWAN:
        case ReachableViaWWAN:
        {
            //: CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            //: NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            //: return number ? (NTESNetworkType)[number integerValue] : NTESNetworkTypeWwan;
            return number ? (NTESNetworkType)[number integerValue] : NTESNetworkTypeWwan;
        }
        //: default:
        default:
            //: return NTESNetworkTypeUnknown;
            return NTESNetworkTypeUnknown;
    }
}


//: - (NSString *)networkStatus:(NTESNetworkType)networkType
- (NSString *)systemStatus:(NTESNetworkType)networkType
{
    //: switch (networkType) {
    switch (networkType) {
        //: case NTESNetworkType2G:
        case NTESNetworkType2G:
            //: return @"2G";
            return @"2G";
        //: case NTESNetworkType3G:
        case NTESNetworkType3G:
            //: return @"3G";
            return @"3G";
        //: case NTESNetworkType4G:
        case NTESNetworkType4G:
            //: return @"4G";
            return @"4G";
        //: default:
        default:
            //: return @"WIFI";
            return [[AcheData sharedInstance] app_brokerPetUnitData];
    }
}

//: - (NSInteger)cpuCount{
- (NSInteger)praise{
    //: size_t size = sizeof(int);
    size_t size = sizeof(int);
    //: int results;
    int results;

    //: int mib[2] = {6, 3};
    int mib[2] = {6, 3};
    //: sysctl(mib, 2, &results, &size, NULL, 0);
    sysctl(mib, 2, &results, &size, NULL, 0);
    //: return (NSUInteger) results;
    return (NSUInteger) results;
}

//: - (BOOL)isLowDevice{
- (BOOL)user{



    //: return [[NSProcessInfo processInfo] processorCount] <= 1;
    return [[NSProcessInfo processInfo] processorCount] <= 1;

}

//: - (BOOL)isIphone{
- (BOOL)background{
    //: NSString *deviceModel = [UIDevice currentDevice].model;
    NSString *deviceModel = [UIDevice currentDevice].model;
    //: if ([deviceModel isEqualToString:@"iPhone"]) {
    if ([deviceModel isEqualToString:[[AcheData sharedInstance] mainVideoFindingName]]) {
        //: return YES;
        return YES;
    //: }else {
    }else {
        //: return NO;
        return NO;
    }
}

//: - (NSString *)machineName{
- (NSString *)sizeMessageTitle{
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)page{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice heightShowStop];
}


//: @end
@end