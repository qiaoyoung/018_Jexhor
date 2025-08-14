// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingenceView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportNextDelegate <NSObject>
@protocol InformTing <NSObject>

//: - (void)didTouchBlackButton;
- (void)byBackground;
//: - (void)didTouchDeleteButton;
- (void)missiveView;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface DoingenceView : UIView

//: @property (nonatomic,weak) id<NTESReportNextDelegate> delegate;
@property (nonatomic,weak) id<InformTing> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)withShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)animationWithEnableAtHand;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END