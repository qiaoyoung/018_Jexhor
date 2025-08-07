// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadView.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UUMarqueeView.h"
#import "ModerationView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef enum : NSUInteger {
typedef enum : NSUInteger {
    //: CompletingUserInfoType_headicon = 1,
    CompletingUserInfoType_headicon = 1,
//: } CompletingUserInfoType;
} CompletingUserInfoType;

//: @interface SNLeadCompleteInfo : UIView
@interface LeadView : UIView

//: @property (nonatomic, strong) UUMarqueeView *leftwardMarqueeView;
@property (nonatomic, strong) ModerationView *leftwardMarqueeView;

//: @property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *title;
//: @property (nonatomic, copy) NSString *actionTitle;
@property (nonatomic, copy) NSString *actionTitle;
//: @property (nonatomic, assign) CompletingUserInfoType completeType;
@property (nonatomic, assign) CompletingUserInfoType completeType;

//: @property (nonatomic, copy) void (^completion)(void);
@property (nonatomic, copy) void (^completion)(void);
//: @property (nonatomic, copy) void (^cancleCompletion)(void);
@property (nonatomic, copy) void (^cancleCompletion)(void);

/// 引导用户完善资料，显示提示框
//: + (instancetype)showTipViewForCompletingUserInfolWithDelay:(float)delay
+ (instancetype)startingBlockContent:(float)delay
                                                 //: superView:(UIView *)superView
                                                 appShould:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    light:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               margin:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 person:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback;
                                               post:(void (^)(void))callback;

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock;
- (void)itemUser:(void (^)(LeadView *tipView))transactionBlock;

//: - (void)p_showOnView:(UIView *)superView;
- (void)latterDay:(UIView *)superView;

//: - (void)p_dismiss;
- (void)with;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END