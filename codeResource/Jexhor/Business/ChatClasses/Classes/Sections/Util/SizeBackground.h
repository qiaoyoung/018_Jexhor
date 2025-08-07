// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeBackground.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface PushKitDevice : NSObject
@interface SizeBackground : NSObject

//: + (PushKitDevice *)currentDevice;
+ (SizeBackground *)topDevice;

/// 语言
//: + (NSString *)language;
+ (NSString *)place;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)searched;

//: - (CGFloat)compressQuality;
- (CGFloat)imageForGreen;

//: - (CGFloat)statusBarHeight;
- (CGFloat)bottom;

//: @end
@end
