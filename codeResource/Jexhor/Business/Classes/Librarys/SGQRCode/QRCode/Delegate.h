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
@class CenterRead;

//: @protocol SGScanCodeDelegate <NSObject>
@protocol Delegate <NSObject>
/// 扫描二维码结果函数
///
/// @param scanCode     CenterRead 对象
/// @param result       扫描二维码数据
//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result;
- (void)lawfulBlackAndWhite:(CenterRead *)scanCode comment:(NSString *)result;

//: @end
@end


//: @protocol SGScanCodeSampleBufferDelegate <NSObject>
@protocol NameInsert <NSObject>
/// 扫描时捕获外界光线强弱函数
///
/// @param scanCode     CenterRead 对象
/// @param brightness   光线强弱值
//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness;
- (void)stepReport:(CenterRead *)scanCode max:(CGFloat)brightness;

//: @end
@end