// __DEBUG__
// __CLOSE_PRINT__
//
//  StraddleView.h
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeleteAccountDelegate <NSObject>
@protocol TaskVoice <NSObject>

//: - (void)didTouchDeleteNextButton;
- (void)buttonDoing;
//: - (void)didTouchDeleteProtocolButton;
- (void)tapContent;

//: @end
@end

//: @interface ZMONDeleteAccountView : UIView
@interface StraddleView : UIView

//: @property (nonatomic,weak) id<NTESDeleteAccountDelegate> delegate;
@property (nonatomic,weak) id<TaskVoice> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)at;

/** 动画关闭 */
//: - (void)animationClose;
- (void)nearAdd;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END