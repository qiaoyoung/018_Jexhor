// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyNeedView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFPageView;
@class KeyNeedView;

//: @protocol FFFPageViewDataSource <NSObject>
@protocol FrameSource <NSObject>
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (NSInteger)elites: (KeyNeedView *)pageView;
//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)text: (KeyNeedView *)pageView with: (NSInteger)index;
//: @end
@end

//: @protocol FFFPageViewDelegate <NSObject>
@protocol PageDoingValueDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)create: (KeyNeedView *)pageView
             //: currentIndex: (NSInteger)index
             cell: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               with: (NSInteger)pages;

//: - (void)pageViewDidScroll: (FFFPageView *)pageView;
- (void)placed: (KeyNeedView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)omitManager;
//: @end
@end


//: @interface FFFPageView : UIView<UIScrollViewDelegate>
@interface KeyNeedView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<FFFPageViewDataSource> dataSource;
@property (nonatomic,weak) id<FrameSource> dataSource;
//: @property (nonatomic,weak) id<FFFPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<PageDoingValueDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)show: (NSInteger)pages;
//: - (void)reloadData;
- (void)inside;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)reply: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)transomWindow;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)indicator:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                roundFormat:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)origin:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         on:(NSTimeInterval)duration;
//: @end
@end