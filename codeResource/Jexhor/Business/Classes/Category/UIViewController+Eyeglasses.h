// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+KIViewController.h
//  Kitalker
//
//  Created by chen on 12-7-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
//#import "NSObject+KIAdditions.h"
//#import "UIView+Eyeglasses.h"

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIViewController (KIAdditions)
@interface UIViewController (Eyeglasses)

//: - (void)showCustomBackButton;
- (void)drop;

//: - (void)showCustomBackButton:(SEL)selector;
- (void)my:(SEL)selector;

//: - (void)setNavLeftItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)port:(SEL)selector sendImage:(UIImage *)image add:(UIImage *)imageH;
//: -(void)setNavLeftItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
-(void)should:(SEL)selector statusWill:(NSString *)title bubble:(UIColor *)color;

//: - (void)setNavRightItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)cockInImageH:(SEL)selector shine:(UIImage *)image nameH:(UIImage *)imageH;
//: - (void)setNavRightItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
- (void)with:(SEL)selector tap:(NSString *)title appEnableColor:(UIColor *)color;
//: - (void)setTitle:(NSString *)title;
- (void)setTitle:(NSString *)title;

//: - (void)setTitleColor:(UIColor *)color;
- (void)setCell:(UIColor *)color;

//: - (void)setTitle:(NSString *)title titleColor:(UIColor *)color;
- (void)head:(NSString *)title show:(UIColor *)color;

//- (void)pushController:(UIViewController *)viewController;

//- (void)pushController:(UIViewController *)viewController animated:(BOOL)animated;

//- (void)popController;

//: - (void)dismissModalController;
- (void)shoot;

//: - (void)close;
- (void)notMyOff;


//: - (BOOL)findNavbarBottomLineUnder:(UIView *)view hide:(BOOL)hide;
- (BOOL)continuationHide:(UIView *)view ting:(BOOL)hide;



//: - (void)setNavBarBackGroundColor:(UIColor *)color;
- (void)setDirect:(UIColor *)color;
//: - (void)setNavBarClearColor;
- (void)color;
//: - (void)setNavBarWithAlpha:(CGFloat)alpha;
- (void)setIndicator:(CGFloat)alpha;
//: - (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)toCover:(UIColor *)color;

//: - (void)setShadowClearColor;
- (void)itemNeed;



//: @end
@end