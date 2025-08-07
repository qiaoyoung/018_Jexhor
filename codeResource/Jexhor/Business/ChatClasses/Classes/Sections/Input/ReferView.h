// __DEBUG__
// __CLOSE_PRINT__
//
//  ReferView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPageView.h"
#import "KeyNeedView.h"
//: #import "FFFSessionConfig.h"
#import "LineConfig.h"

//: @class NIMInputEmoticonCatalog;
@class WithTextSearch;
//: @class FFFInputEmoticonTabView;
@class IntervalView;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol FiveRecord <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)easyLay:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)befores:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)size:(NSString*)emoticonID select:(NSString*)emotCatalogID disable:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)objectFile:(NSString*)gif;

//: @end
@end


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface ReferView : UIView<FrameSource,PageDoingValueDelegate>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) KeyNeedView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) WithTextSearch *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) IntervalView *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<FiveRecord> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<LineConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end