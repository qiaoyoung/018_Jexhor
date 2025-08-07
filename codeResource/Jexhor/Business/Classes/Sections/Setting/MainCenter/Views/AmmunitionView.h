// __DEBUG__
// __CLOSE_PRINT__
//
//  AmmunitionView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeactivateAccountDelegate <NSObject>
@protocol BottomVideo <NSObject>

//: - (void)didTouchNextButton;
- (void)allowTouch;
//: - (void)didTouchProtocolButton;
- (void)touchOn;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface AmmunitionView : UIView

//: @property (nonatomic,weak) id<NTESDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<BottomVideo> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)to;

/** 动画关闭 */
//: - (void)animationClose;
- (void)animationWithEnableAtHand;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END