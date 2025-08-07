// __DEBUG__
// __CLOSE_PRINT__
//
//  CompleteManager.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface SNLeadCompleteManager : NSObject
@interface CompleteManager : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)redDown;;

/// 引导用户完善资料，显示提示框
//: - (void)showLeadViewForCompletingUserInfoWithSuperView:(UIView *)superView
- (void)at:(UIView *)superView
                                           //: withMessage:(NSString *)msg
                                           color:(NSString *)msg
                                           //: cancleBlock:(void (^)(void))callback;
                                           accumulation:(void (^)(void))callback;

//: - (void)dismissLeadView;
- (void)stub;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END