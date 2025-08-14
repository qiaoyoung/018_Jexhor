// __DEBUG__
// __CLOSE_PRINT__
//
//  UIAlertView+BottomMagnitude.h
//  eim_iphone
//
//  Created by amao on 12-11-7.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void (^AlertBlock)(NSInteger);
typedef void (^AlertBlock)(NSInteger);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN
//: @interface UIAlertView (NTESBlock)
@interface UIAlertView (BottomMagnitude)
//: - (void)showAlertWithCompletionHandler: (__nullable AlertBlock)block;
- (void)menuMedia: (__nullable AlertBlock)block;
//: - (void)clearActionBlock;
- (void)cover;
//: @end
@end



//: @interface UIAlertController (NTESBlock)
@interface UIAlertController (BottomMagnitude)
//: - (UIAlertController *)addAction:(NSString *)title
- (UIAlertController *)view:(NSString *)title
                           //: style:(UIAlertActionStyle)style
                           success:(UIAlertActionStyle)style
                         //: handler:(void (^ __nullable)(UIAlertAction *action))handler;
                         range:(void (^ __nullable)(UIAlertAction *action))handler;

//: - (void)show;
- (void)windowColor;
//: @end
@end
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END