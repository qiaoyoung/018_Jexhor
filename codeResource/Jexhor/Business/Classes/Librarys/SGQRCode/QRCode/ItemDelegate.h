// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class SGScanCode;
@class Click;

//: @protocol SGScanCodeDelegate <NSObject>
@protocol ItemDelegate <NSObject>
/// 扫描二维码结果函数
///
/// @param scanCode     Click 对象
/// @param result       扫描二维码数据
//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result;
- (void)harvestObject:(Click *)scanCode date:(NSString *)result;

//: @end
@end


//: @protocol SGScanCodeSampleBufferDelegate <NSObject>
@protocol TotalTing <NSObject>
/// 扫描时捕获外界光线强弱函数
///
/// @param scanCode     Click 对象
/// @param brightness   光线强弱值
//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness;
- (void)ting:(Click *)scanCode pictureFloat:(CGFloat)brightness;

//: @end
@end