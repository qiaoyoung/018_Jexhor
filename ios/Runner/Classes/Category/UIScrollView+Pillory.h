// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+Pillory.h
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPullToRefreshView;
@class ActionView;

//: @interface UIScrollView (NTESPullToRefresh)
@interface UIScrollView (Pillory)

//: typedef NS_ENUM(NSUInteger, NTESPullToRefreshPosition) {
typedef NS_ENUM(NSUInteger, NTESPullToRefreshPosition) {
    //: NTESPullToRefreshPositionTop = 0,
    NTESPullToRefreshPositionTop = 0,
    //: NTESPullToRefreshPositionBottom,
    NTESPullToRefreshPositionBottom,
//: };
};

//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler;
- (void)userExtra:(void (^)(void))actionHandler;
//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(NTESPullToRefreshPosition)position;
- (void)margin:(void (^)(void))actionHandler lengthName:(NTESPullToRefreshPosition)position;
//: - (void)triggerPullToRefresh;
- (void)loadIn;

//: @property (nonatomic, strong, readonly) NTESPullToRefreshView *pullToRefreshView;
@property (nonatomic, strong, readonly) ActionView *pullToRefreshView;
//: @property (nonatomic, assign) BOOL showsPullToRefresh;
@property (nonatomic, assign) BOOL showsPullToRefresh;

//: @end
@end


//: typedef NS_ENUM(NSUInteger, NTESPullToRefreshState) {
typedef NS_ENUM(NSUInteger, NTESPullToRefreshState) {
    //: NTESPullToRefreshStateStopped = 0,
    NTESPullToRefreshStateStopped = 0,
    //: NTESPullToRefreshStateTriggered,
    NTESPullToRefreshStateTriggered,
    //: NTESPullToRefreshStateLoading,
    NTESPullToRefreshStateLoading,
    //: NTESPullToRefreshStateAll = 10
    NTESPullToRefreshStateAll = 10
//: };
};

//: @interface NTESPullToRefreshView : UIView
@interface ActionView : UIView

//: @property (nonatomic, strong) UIColor *arrowColor;
@property (nonatomic, strong) UIColor *arrowColor;
//: @property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *textColor;
//: @property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UILabel *titleLabel;
//: @property (nonatomic, strong, readonly) UILabel *subtitleLabel;
@property (nonatomic, strong, readonly) UILabel *subtitleLabel;
//: @property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
@property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
//: @property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;
@property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

//: @property (nonatomic, readonly) NTESPullToRefreshState state;
@property (nonatomic, readonly) NTESPullToRefreshState state;
//: @property (nonatomic, readonly) NTESPullToRefreshPosition position;
@property (nonatomic, readonly) NTESPullToRefreshPosition position;

//: - (void)setTitle:(NSString *)title forState:(NTESPullToRefreshState)state;
- (void)textTitle:(NSString *)title tingBy:(NTESPullToRefreshState)state;
//: - (void)setSubtitle:(NSString *)subtitle forState:(NTESPullToRefreshState)state;
- (void)showByCount:(NSString *)subtitle be:(NTESPullToRefreshState)state;
//: - (void)setCustomView:(UIView *)view forState:(NTESPullToRefreshState)state;
- (void)allow:(UIView *)view totalercalate:(NTESPullToRefreshState)state;

//: - (void)startAnimating;
- (void)clear;
//: - (void)stopAnimating;
- (void)color;


//: @end
@end