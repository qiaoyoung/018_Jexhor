// __DEBUG__
// __CLOSE_PRINT__
//
//  IntervalView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class WorkInputEmoticonTabView;
@class IntervalView;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol SignalingSearchDelegateNeed <NSObject>

//: - (void)tabView:(WorkInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)off:(IntervalView *)tabView modeLog:(NSInteger) index;

//: @end
@end

//: @interface WorkInputEmoticonTabView : UIControl
@interface IntervalView : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<SignalingSearchDelegateNeed> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)scaleIndex:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)stackEmptyCatalogs:(NSArray*)emoticonCatalogs;

//: @end
@end
