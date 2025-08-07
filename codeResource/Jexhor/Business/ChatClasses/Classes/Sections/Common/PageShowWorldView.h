// __DEBUG__
// __CLOSE_PRINT__
//
//  PageShowWorldView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFPageView;
@class PageShowWorldView;

//: @protocol FFFPageViewDataSource <NSObject>
@protocol TouchContent <NSObject>
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (NSInteger)ranges: (PageShowWorldView *)pageView;
//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)teamValue: (PageShowWorldView *)pageView addWith: (NSInteger)index;
//: @end
@end

//: @protocol FFFPageViewDelegate <NSObject>
@protocol MessageCreateAdd <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)appear: (PageShowWorldView *)pageView
             //: currentIndex: (NSInteger)index
             red: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               isTitle: (NSInteger)pages;

//: - (void)pageViewDidScroll: (FFFPageView *)pageView;
- (void)minorLeagueTeam: (PageShowWorldView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)qualifyChild;
//: @end
@end


//: @interface FFFPageView : UIView<UIScrollViewDelegate>
@interface PageShowWorldView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<FFFPageViewDataSource> dataSource;
@property (nonatomic,weak) id<TouchContent> dataSource;
//: @property (nonatomic,weak) id<FFFPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<MessageCreateAdd> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)scale: (NSInteger)pages;
//: - (void)reloadData;
- (void)team;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)airBubble: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)comeOut;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)progressDuration:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                maxDuration:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)toMargin:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         of:(NSTimeInterval)duration;
//: @end
@end