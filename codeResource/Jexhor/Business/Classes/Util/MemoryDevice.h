// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,NTESNetworkType) {
typedef NS_ENUM(NSUInteger,NTESNetworkType) {
    //: NTESNetworkTypeUnknown,
    NTESNetworkTypeUnknown,
    //: NTESNetworkTypeWifi,
    NTESNetworkTypeWifi,
    //: NTESNetworkTypeWwan,
    NTESNetworkTypeWwan,
    //: NTESNetworkType2G,
    NTESNetworkType2G,
    //: NTESNetworkType3G,
    NTESNetworkType3G,
    //: NTESNetworkType4G,
    NTESNetworkType4G,
//: };
};

//: @interface NTESDevice : NSObject
@interface MemoryDevice : NSObject

//: + (NTESDevice *)currentDevice;
+ (MemoryDevice *)color;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)supplement;

//: - (CGFloat)compressQuality;
- (CGFloat)tapInfo;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)red;
//: - (BOOL)isInBackground;
- (BOOL)bubble;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)purl;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)yank:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)center;

//: - (BOOL)isLowDevice;
- (BOOL)account;
//: - (BOOL)isIphone;
- (BOOL)last;
//: - (NSString *)machineName;
- (NSString *)paviorLikeNameSend;


//: - (CGFloat)statusBarHeight;
- (CGFloat)origin;

//: @end
@end