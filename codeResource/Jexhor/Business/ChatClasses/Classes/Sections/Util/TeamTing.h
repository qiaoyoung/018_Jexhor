// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamTing.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFKitDevice : NSObject
@interface TeamTing : NSObject

//: + (FFFKitDevice *)currentDevice;
+ (TeamTing *)style;

/// 语言
//: + (NSString *)language;
+ (NSString *)emptyMedia;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)gamut;

//: - (CGFloat)compressQuality;
- (CGFloat)necessary;

//: - (CGFloat)statusBarHeight;
- (CGFloat)quick;

//: @end
@end