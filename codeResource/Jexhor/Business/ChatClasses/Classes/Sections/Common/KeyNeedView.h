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

//: @class WorkPageView;
@class KeyNeedView;

//: @protocol WorkPageViewDataSource <NSObject>
@protocol FrameSource <NSObject>
//: - (NSInteger)numberOfPages: (WorkPageView *)pageView;
- (NSInteger)elites: (KeyNeedView *)pageView;
//: - (UIView *)pageView: (WorkPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)text: (KeyNeedView *)pageView with: (NSInteger)index;
//: @end
@end

//: @protocol WorkPageViewDelegate <NSObject>
@protocol PageDoingValueDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (WorkPageView *)pageView
- (void)create: (KeyNeedView *)pageView
             //: currentIndex: (NSInteger)index
             cell: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               with: (NSInteger)pages;

//: - (void)pageViewDidScroll: (WorkPageView *)pageView;
- (void)placed: (KeyNeedView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)omitManager;
//: @end
@end


//: @interface WorkPageView : UIView<UIScrollViewDelegate>
@interface KeyNeedView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<WorkPageViewDataSource> dataSource;
@property (nonatomic,weak) id<FrameSource> dataSource;
//: @property (nonatomic,weak) id<WorkPageViewDelegate> pageViewDelegate;
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
