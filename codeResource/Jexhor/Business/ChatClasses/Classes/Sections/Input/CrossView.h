// __DEBUG__
// __CLOSE_PRINT__
//
//  CrossView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPageView.h"
#import "PageShowWorldView.h"
//: #import "FFFSessionConfig.h"
#import "CreateTop.h"

//: @class NIMInputEmoticonCatalog;
@class SizeCatalog;
//: @class FFFInputEmoticonTabView;
@class CapsuleControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol AttributeProtocol <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)files:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)forces:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)userOfDescription:(NSString*)emoticonID last:(NSString*)emotCatalogID rubric:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)electCell:(NSString*)gif;

//: @end
@end


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface CrossView : UIView<TouchContent,MessageCreateAdd>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) PageShowWorldView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) SizeCatalog *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) CapsuleControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<AttributeProtocol> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<CreateTop> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end