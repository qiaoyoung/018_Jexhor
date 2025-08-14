// __DEBUG__
// __CLOSE_PRINT__
//
//  ModerationView.h
//  ModerationView
//
//  Created by youyou on 16/12/5.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class UUMarqueeView;
@class ModerationView;

//: typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
    //: UUMarqueeViewDirectionUpward, 
    UUMarqueeViewDirectionUpward, // scroll from bottom to top
    //: UUMarqueeViewDirectionLeftward 
    UUMarqueeViewDirectionLeftward // scroll from right to left
//: };
};

//: #pragma mark - UUMarqueeViewDelegate
#pragma mark - ActinicRayCount
//: @protocol UUMarqueeViewDelegate <NSObject>
@protocol ActinicRayCount <NSObject>
//: - (NSUInteger)numberOfDataForMarqueeView:(UUMarqueeView*)marqueeView;
- (NSUInteger)beforeShow:(ModerationView*)marqueeView;
//: - (void)createItemView:(UIView*)itemView forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)createButtonForefront:(UIView*)itemView viewColor:(ModerationView*)marqueeView;
//: - (void)updateItemView:(UIView*)itemView atIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)companyContent:(UIView*)itemView sum:(NSUInteger)index display:(ModerationView*)marqueeView;
//: @optional
@optional
//: - (NSUInteger)numberOfVisibleItemsForMarqueeView:(UUMarqueeView*)marqueeView; 
- (NSUInteger)imageView:(ModerationView*)marqueeView; // only for [UUMarqueeViewDirectionUpward]
//: - (CGFloat)itemViewWidthAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)messageView:(NSUInteger)index keyWithView:(ModerationView*)marqueeView; // only for [UUMarqueeViewDirectionLeftward]
//: - (CGFloat)itemViewHeightAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)sessionView:(NSUInteger)index up:(ModerationView*)marqueeView; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = YES]
//: - (void)didTouchItemViewAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)colorView:(NSUInteger)index erase:(ModerationView*)marqueeView;
//: @end
@end

//: #pragma mark - UUMarqueeView
#pragma mark - ModerationView
//: @interface UUMarqueeView : UIView
@interface ModerationView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewDelegate> delegate;
@property (nonatomic, weak) id<ActinicRayCount> delegate;
//: @property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
@property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
//: @property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; 
@property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = NO]
//: @property (nonatomic, assign) BOOL useDynamicHeight; 
@property (nonatomic, assign) BOOL useDynamicHeight; // only for [UUMarqueeViewDirectionUpward]
//: @property (nonatomic, assign) float scrollSpeed; 
@property (nonatomic, assign) float scrollSpeed; // only for [UUMarqueeViewDirectionLeftward] or [UUMarqueeViewDirectionUpward] with [useDynamicHeight = YES]
//: @property (nonatomic, assign) float itemSpacing; 
@property (nonatomic, assign) float itemSpacing; // only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) BOOL stopWhenLessData; 
@property (nonatomic, assign) BOOL stopWhenLessData; // do not scroll when all data has been shown
//: @property (nonatomic, assign) BOOL clipsToBounds;
@property (nonatomic, assign) BOOL clipsToBounds;
//: @property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
@property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
//: @property (nonatomic, assign) UUMarqueeViewDirection direction;
@property (nonatomic, assign) UUMarqueeViewDirection direction;
//: - (instancetype)initWithDirection:(UUMarqueeViewDirection)direction;
- (instancetype)initWithSendDirection:(UUMarqueeViewDirection)direction;
//: - (instancetype)initWithFrame:(CGRect)frame direction:(UUMarqueeViewDirection)direction;
- (instancetype)initWithVocalization:(CGRect)frame tingNameDirection:(UUMarqueeViewDirection)direction;
//: - (void)reloadData;
- (void)change;
//: - (void)start;
- (void)keyShow;
//: - (void)pause;
- (void)promotion;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchResponder(Private)
#pragma mark - WayCount(Private)
//: @protocol UUMarqueeViewTouchResponder <NSObject>
@protocol WayCount <NSObject>
//: - (void)touchesBegan;
- (void)stateDisplay;
//: - (void)touchesEndedAtPoint:(CGPoint)point;
- (void)element:(CGPoint)point;
//: - (void)touchesCancelled;
- (void)cancelled;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchReceiver(Private)
#pragma mark - ToeView(Private)
//: @interface UUMarqueeViewTouchReceiver : UIView
@interface ToeView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewTouchResponder> touchDelegate;
@property (nonatomic, weak) id<WayCount> touchDelegate;
//: @end
@end

//: #pragma mark - UUMarqueeItemView(Private)
#pragma mark - NumberView(Private)
//: @interface UUMarqueeItemView : UIView 
@interface NumberView : UIView // NumberView's [tag] is the index of data source. if none data source then [tag] is -1
//: @property (nonatomic, assign) BOOL didFinishCreate;
@property (nonatomic, assign) BOOL didFinishCreate;
//: @property (nonatomic, assign) CGFloat width; 
@property (nonatomic, assign) CGFloat width; // cache the item width, only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) CGFloat height; 
@property (nonatomic, assign) CGFloat height; // cache the item height, only for [UUMarqueeViewDirectionUpward]
//: - (void)clear;
- (void)total;
//: @end
@end