// __DEBUG__
// __CLOSE_PRINT__
//
//  PhaseOfTheMoonView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class PhaseOfTheMoonView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol ContainerSource <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)ranges: (PhaseOfTheMoonView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)teamValue: (PhaseOfTheMoonView *)pageView addWith: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol ReadChangeBackground <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)appear: (PhaseOfTheMoonView *)pageView
             //: currentIndex: (NSInteger)index
             red: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               isTitle: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)minorLeagueTeam: (PhaseOfTheMoonView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)qualifyChild;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface PhaseOfTheMoonView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<ContainerSource> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<ReadChangeBackground> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)to: (NSInteger)pages;
//: - (void)reloadData;
- (void)stateData;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)user: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)dogEar;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)labelDuration:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                view:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)hide:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         with:(NSTimeInterval)duration;
//: @end
@end