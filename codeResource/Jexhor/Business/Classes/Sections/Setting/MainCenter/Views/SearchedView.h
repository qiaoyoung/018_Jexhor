// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedView.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NTESCustomUIAlertDelegate <NSObject>
@protocol EasyLayDelegate <NSObject>

//: - (void)didTouchTheBtnWith:(NSInteger )tag;
- (void)blues:(NSInteger )tag;

//: @end
@end

//: @interface NSSetAvater : UIView
@interface SearchedView : UIView

//: @property (nonatomic,weak) id<NTESCustomUIAlertDelegate> delegate;
@property (nonatomic,weak) id<EasyLayDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)record;

/** 动画关闭 */
//: - (void)animationClose;
- (void)nearAdd;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END