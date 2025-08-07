// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+KIView.h
//  Kitalker
//
//  Created by chen on 12-7-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <QuartzCore/QuartzCore.h>
#import <QuartzCore/QuartzCore.h>

//: @interface UIView (KIAdditions)
@interface UIView (Eyeglasses)

//: @property (nonatomic, assign) id userInfo;
@property (nonatomic, assign) id userInfo;

//: - (void)setUserInfo:(id)userInfo ;
- (void)setUserInfo:(id)userInfo ;

//: - (id)userInfo;
- (id)userInfo;


/*size*/
//: - (CGSize)size;
- (CGSize)size;
//: - (void)setSize:(CGSize)size;
- (void)setSize:(CGSize)size;

/*x*/
//: - (CGFloat)x;
- (CGFloat)districtManagerX;
//: - (void)setOriginX:(CGFloat)x;
- (void)setThrowSum:(CGFloat)x;

/*y*/
//: - (CGFloat)y;
- (CGFloat)shade;
//: - (void)setOriginY:(CGFloat)y;
- (void)setInfoQuick:(CGFloat)y;

//: - (void)setCenterX:(CGFloat)x;
- (void)setCenterX:(CGFloat)x;
//: - (void)setCenterY:(CGFloat)y;
- (void)setCenterY:(CGFloat)y;

/*width*/
//: - (CGFloat)width;
- (CGFloat)width;
//: - (void)setWidth:(CGFloat)width;
- (void)setWidth:(CGFloat)width;

/*height*/
//: - (CGFloat)height;
- (CGFloat)height;
//: - (void)setHeight:(CGFloat)height;
- (void)setHeight:(CGFloat)height;



//水平居中对齐 view：相对view padding：间距
//: - (void)horizontAllignment:(UIView *)view;
- (void)success:(UIView *)view;
//垂直居中对齐 view：相对view padding：间距
//: - (void)verticalAllignment:(UIView *)view;
- (void)input:(UIView *)view;
//位于view右边，间距为padding (y值一样)
//: - (void)rightView:(UIView *)view padding:(CGFloat)padding;
- (void)pressed:(UIView *)view view:(CGFloat)padding;
//位于view下面，间距为padding
//: - (void)underView:(UIView *)view padding:(CGFloat)padding;
- (void)member:(UIView *)view datePadding:(CGFloat)padding;



/*快照*/
//: - (UIImage *)snapshot;
- (UIImage *)wire;

//: - (UIImage*)convertViewToImage;
- (UIImage*)presentImage;

//: - (void)registEndEditing;
- (void)titleLengthEditing;

//: - (UIActivityIndicatorView *)activityIndicatorView;
- (UIActivityIndicatorView *)add;
//: - (void)removeActivityView;
- (void)assetView;

//: - (UIViewController *)viewController;
- (UIViewController *)heritageController;

/*返回view的viewController*/
//: - (UIViewController *)findViewControllerByView:(UIView *)view;
- (UIViewController *)sight:(UIView *)view;
//: - (UIView *)findForSuperViewClass:(Class)superViewClass;
- (UIView *)sessionTing:(Class)superViewClass;


//: - (void)pushView:(UIView *)view completion:(void (^)(BOOL finished))completion;
- (void)changeShapeCompletion:(UIView *)view send:(void (^)(BOOL finished))completion;

//: - (void)popCompletion:(void (^)(BOOL finished))completion;
- (void)pop:(void (^)(BOOL finished))completion;


//: @end
@end