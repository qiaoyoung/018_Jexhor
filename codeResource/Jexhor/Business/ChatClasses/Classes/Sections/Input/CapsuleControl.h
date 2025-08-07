// __DEBUG__
// __CLOSE_PRINT__
//
//  CapsuleControl.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class PushInputEmoticonTabView;
@class CapsuleControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol CellMargin <NSObject>

//: - (void)tabView:(PushInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)nameSize:(CapsuleControl *)tabView doingTap:(NSInteger) index;

//: @end
@end

//: @interface PushInputEmoticonTabView : UIControl
@interface CapsuleControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<CellMargin> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)stockMarketIndex:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)imageCatalogs:(NSArray*)emoticonCatalogs;

//: @end
@end
