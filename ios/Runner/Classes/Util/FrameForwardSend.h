// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameForwardSend.h
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
@interface FrameForwardSend : NSObject

//: + (NTESDevice *)currentDevice;
+ (FrameForwardSend *)user;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)limitMinPixels;

//: - (CGFloat)compressQuality;
- (CGFloat)materiality;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)colourationWifi;
//: - (BOOL)isInBackground;
- (BOOL)old;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)typeLiveEspionageNetwork;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)systemStatus:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)praise;

//: - (BOOL)isLowDevice;
- (BOOL)user;
//: - (BOOL)isIphone;
- (BOOL)background;
//: - (NSString *)machineName;
- (NSString *)sizeMessageTitle;


//: - (CGFloat)statusBarHeight;
- (CGFloat)page;

//: @end
@end