// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class ButtonView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol TrailHeadMode <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)elites: (ButtonView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)text: (ButtonView *)pageView with: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol NeedStatusDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)create: (ButtonView *)pageView
             //: currentIndex: (NSInteger)index
             cell: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               with: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)placed: (ButtonView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)omitManager;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface ButtonView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<TrailHeadMode> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<NeedStatusDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)digitiserAndPage: (NSInteger)pages;
//: - (void)reloadData;
- (void)text;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)send: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)commentPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)find:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                inputTimeTotalerval:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)of:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         language:(NSTimeInterval)duration;
//: @end
@end