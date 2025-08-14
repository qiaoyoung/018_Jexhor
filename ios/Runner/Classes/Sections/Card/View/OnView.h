// __DEBUG__
// __CLOSE_PRINT__
//
//  OnView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportHisNextDelegate <NSObject>
@protocol RecordName <NSObject>

//: - (void)didTouchBlackButton;
- (void)byBackground;

//: @end
@end

//: @interface ZMONReportHisView : UIView
@interface OnView : UIView

//: @property (nonatomic,weak) id<NTESReportHisNextDelegate> delegate;
@property (nonatomic,weak) id<RecordName> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)visible;

/** 动画关闭 */
//: - (void)animationClose;
- (void)animationWithEnableAtHand;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END