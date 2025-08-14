
#import <Foundation/Foundation.h>

@interface TakeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TakeData

+ (instancetype)sharedInstance {
    static TakeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TakeDataToCache:(Byte *)data {
    int pap = data[0];
    Byte pursuitProtection = data[1];
    int local = data[2];
    for (int i = local; i < local + pap; i++) {
        int value = data[i] - pursuitProtection;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[local + pap] = 0;
    return data + local;
}

- (NSString *)StringFromTakeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TakeDataToCache:data]];
}

//: emoji_del_normal
- (NSString *)mainWarnTitle {
    /* static */ NSString *mainWarnTitle = nil;
    if (!mainWarnTitle) {
        Byte value[] = {16, 69, 12, 196, 137, 177, 250, 28, 113, 46, 207, 99, 170, 178, 180, 175, 174, 164, 169, 170, 177, 164, 179, 180, 183, 178, 166, 177, 10};
        mainWarnTitle = [self StringFromTakeData:value];
    }
    return mainWarnTitle;
}

//: default
- (NSString *)notiShowerText {
    /* static */ NSString *notiShowerText = nil;
    if (!notiShowerText) {
        Byte value[] = {7, 2, 3, 102, 103, 104, 99, 119, 110, 118, 80};
        notiShowerText = [self StringFromTakeData:value];
    }
    return notiShowerText;
}

//: #F6F7FA
- (NSString *)showImageSeriesRemoveName {
    /* static */ NSString *showImageSeriesRemoveName = nil;
    if (!showImageSeriesRemoveName) {
        Byte value[] = {7, 78, 13, 109, 163, 72, 218, 214, 83, 232, 175, 58, 48, 113, 148, 132, 148, 133, 148, 143, 151};
        showImageSeriesRemoveName = [self StringFromTakeData:value];
    }
    return showImageSeriesRemoveName;
}

//: emoji_del_pressed
- (NSString *)user_presentValue {
    /* static */ NSString *user_presentValue = nil;
    if (!user_presentValue) {
        Byte value[] = {17, 8, 6, 198, 133, 207, 109, 117, 119, 114, 113, 103, 108, 109, 116, 103, 120, 122, 109, 123, 123, 109, 108, 118};
        user_presentValue = [self StringFromTakeData:value];
    }
    return user_presentValue;
}

//: gif
- (NSString *)app_picContent {
    /* static */ NSString *app_picContent = nil;
    if (!app_picContent) {
        Byte value[] = {3, 36, 10, 239, 217, 60, 30, 168, 65, 213, 139, 141, 138, 203};
        app_picContent = [self StringFromTakeData:value];
    }
    return app_picContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReferView.m
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkInputEmoticonContainerView.h"
#import "ReferView.h"
//: #import "WorkPageView.h"
#import "KeyNeedView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WorkInputEmoticonButton.h"
#import "KeyControl.h"
//: #import "WorkInputEmoticonManager.h"
#import "RedManager.h"
//: #import "WorkInputEmoticonTabView.h"
#import "IntervalView.h"
//: #import "WorkInputEmoticonDefine.h"
#import "WorkInputEmoticonDefine.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "WorkMessageMaker.h"
#import "EnterName.h"

//: NSInteger NIMCustomPageControlHeight = 36;
NSInteger noti_infoCommentName = 36;
//: NSInteger NIMCustomPageViewHeight = 159;
NSInteger noti_permissionName = 159;

//: @interface WorkInputEmoticonContainerView()<NIMEmoticonButtonTouchDelegate,NIMInputEmoticonTabDelegate>
@interface ReferView()<ImageNeed,SignalingSearchDelegateNeed>

//: @property (nonatomic,strong) NSMutableArray *pageData;
@property (nonatomic,strong) NSMutableArray *pageData;

//: @property (nonatomic,strong) WorkInputEmoticonButton* deleteIcon;
@property (nonatomic,strong) KeyControl* deleteIcon;

//: @end
@end


//: @implementation WorkInputEmoticonContainerView
@implementation ReferView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self loadConfig];
        [self of];
    }
    //: return self;
    return self;
}

//: - (void)loadConfig{
- (void)of{
//    self.backgroundColor = [UIColor clearColor];
    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor ground:[[TakeData sharedInstance] showImageSeriesRemoveName]];
}

//: - (void)setConfig:(id<WorkSessionConfig>)config{
- (void)setConfig:(id<LineConfig>)config{
    //: _config = config;
    _config = config;
    //: [self loadUIComponents];
    [self language];
    //: [self reloadData];
    [self name];
}

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: return CGSizeMake(size.width, 216.f);
    return CGSizeMake(size.width, 216.f);
}




//: - (void)loadUIComponents
- (void)language
{
//    _emoticonPageView                  = [[KeyNeedView alloc] initWithFrame:self.bounds];
//    _emoticonPageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    _emoticonPageView.nim_height       = NIMCustomPageViewHeight;
//    _emoticonPageView.backgroundColor  = [UIColor clearColor];
//    _emoticonPageView.dataSource       = self;
//    _emoticonPageView.pageViewDelegate = self;
//    [self addSubview:_emoticonPageView];
//
//    _emotPageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, NIMCustomPageControlHeight)];
//    _emotPageController.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    _emotPageController.pageIndicatorTintColor = [UIColor lightGrayColor];
//    _emotPageController.currentPageIndicatorTintColor = [UIColor grayColor];
//    [self addSubview:_emotPageController];
//    [_emotPageController setUserInteractionEnabled:NO];

    //: [self addSubview:self.scrollView];
    [self addSubview:self.scrollView];
    //: self.scrollView.frame = CGRectMake(0, 0, self.nim_width, self.nim_height);
    self.scrollView.frame = CGRectMake(0, 0, self.nim_width, self.nim_height);
    //: CGFloat heght = (self.currentCatalogData.emoticons.count/self.currentCatalogData.layout.columes +1)*46.0 +NIMCustomPageControlHeight;
    CGFloat heght = (self.currentCatalogData.emoticons.count/self.currentCatalogData.layout.columes +1)*46.0 +noti_infoCommentName;
    //: [self.scrollView setContentSize:CGSizeMake(self.nim_width, heght )];
    [self.scrollView setContentSize:CGSizeMake(self.nim_width, heght )];
//
//    _deleteIcon = [[KeyControl alloc] init];
//    _deleteIcon.delegate = self;
//    _deleteIcon.userInteractionEnabled = YES;
//    _deleteIcon.exclusiveTouch = YES;
//    _deleteIcon.contentMode = UIViewContentModeCenter;
////    UIImage *imageNormal  = [UIImage nim_emoticonInKit:@"emoji_del_normal"];
////    UIImage *imagePressed = [UIImage nim_emoticonInKit:@"emoji_del_pressed"];
////
//    UIImage *imageNormal  = [UIImage imageNamed:@"icon_chat_reset"];
//    UIImage *imagePressed  = [UIImage imageNamed:@"icon_chat_reset"];
//
//    [_deleteIcon setImage:imageNormal forState:UIControlStateNormal];
//    [_deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
//    [_deleteIcon addTarget:_deleteIcon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
//
//
//    CGRect deleteIconRect = CGRectMake(self.nim_width-NEEKIT_DeleteIconWidth, self.nim_height-NEEKIT_DeleteIconHeight, NEEKIT_DeleteIconWidth, NEEKIT_DeleteIconHeight);
//
//    [_deleteIcon setFrame:deleteIconRect];
//    [self addSubview:_deleteIcon];
}

//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width) {
    if (originalWidth != frame.size.width) {
        //: [self reloadData];
        [self name];
    }
}

//: - (void)reloadData{
- (void)name{
    //: NSArray *data = [self loadCatalogAndChartlet];
    NSArray *data = [self image];
    //: self.totalCatalogData = data;
    self.totalCatalogData = data;
    //: self.currentCatalogData = data.firstObject;
    self.currentCatalogData = data.firstObject;

    //: [self layoutEmoticonPageView];
    [self with];
}

//: - (NSArray *)loadCatalogAndChartlet
- (NSArray *)image
{
    //: NIMInputEmoticonCatalog *defaultCatalog = [self loadDefaultCatalog];
    WithTextSearch *defaultCatalog = [self pressedFile];
//    NSArray *charlets = [self loadChartlet];
//    NSArray *catalogs = defaultCatalog? [@[defaultCatalog] arrayByAddingObjectsFromArray:charlets] : charlets;
        //: NIMInputEmoticonCatalog *gifCatalog = [self loadGifCatalog];
        WithTextSearch *gifCatalog = [self session];
    //: NSArray *catalogs = [@[defaultCatalog] arrayByAddingObject:gifCatalog];
    NSArray *catalogs = [@[defaultCatalog] arrayByAddingObject:gifCatalog];
    //: return catalogs;
    return catalogs;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.emotPageController.nim_top = self.emoticonPageView.nim_bottom - 10;
    self.emotPageController.nim_top = self.emoticonPageView.nim_bottom - 10;
    //: self.tabView.nim_bottom = self.nim_height;
    self.tabView.nim_bottom = self.nim_height;
    //: [self bringSubviewToFront:self.tabView];
    [self bringSubviewToFront:self.tabView];
}

//: - (void)layoutEmoticonPageView
- (void)with
{
    //: [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: if(self.currentCatalogData.emoticons.count>0){
    if(self.currentCatalogData.emoticons.count>0){

        //: NSInteger iconHeight = self.currentCatalogData.layout.imageHeight;
        NSInteger iconHeight = self.currentCatalogData.layout.imageHeight;
        //: NSInteger iconWidth = self.currentCatalogData.layout.imageWidth;
        NSInteger iconWidth = self.currentCatalogData.layout.imageWidth;
        //: CGFloat startX = (self.currentCatalogData.layout.cellWidth - iconWidth) / 2 + 15;
        CGFloat startX = (self.currentCatalogData.layout.cellWidth - iconWidth) / 2 + 15;
        //: CGFloat startY = (self.currentCatalogData.layout.cellHeight- iconHeight) / 2 + 10;
        CGFloat startY = (self.currentCatalogData.layout.cellHeight- iconHeight) / 2 + 10;
        //: int32_t coloumnIndex = 0;
        int32_t coloumnIndex = 0;
        //: int32_t rowIndex = 0;
        int32_t rowIndex = 0;
        //: int32_t indexInPage = 0;
        int32_t indexInPage = 0;
        //: for (NSInteger index = 0; index < self.currentCatalogData.emoticons.count; index ++)
        for (NSInteger index = 0; index < self.currentCatalogData.emoticons.count; index ++)
        {
            //: NIMInputEmoticon *data = [self.currentCatalogData.emoticons objectAtIndex:index];
            FrontwardsCount *data = [self.currentCatalogData.emoticons objectAtIndex:index];

            //: WorkInputEmoticonButton *button = [WorkInputEmoticonButton iconButtonWithData:data catalogID:self.currentCatalogData.catalogID delegate:self];
            KeyControl *button = [KeyControl inheritance:data lineItem:self.currentCatalogData.catalogID remote:self];
            //计算表情位置
            //: rowIndex = indexInPage / self.currentCatalogData.layout.columes;
            rowIndex = indexInPage / self.currentCatalogData.layout.columes;
            //: coloumnIndex= indexInPage % self.currentCatalogData.layout.columes;
            coloumnIndex= indexInPage % self.currentCatalogData.layout.columes;
            //: CGFloat x = coloumnIndex * self.currentCatalogData.layout.cellWidth + startX;
            CGFloat x = coloumnIndex * self.currentCatalogData.layout.cellWidth + startX;
            //: CGFloat y = rowIndex * self.currentCatalogData.layout.cellHeight + startY;
            CGFloat y = rowIndex * self.currentCatalogData.layout.cellHeight + startY;
            //: CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
            CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
            //: [button setFrame:iconRect];
            [button setFrame:iconRect];
            //: [self.scrollView addSubview:button];
            [self.scrollView addSubview:button];
            //: indexInPage ++;
            indexInPage ++;
        }

    }
}

//: #pragma mark -  config data
#pragma mark -  config data

//: - (NSInteger)sumPages
- (NSInteger)showEnable
{
    //: __block NSInteger pagesCount = 0;
    __block NSInteger pagesCount = 0;
    //: [self.totalCatalogData enumerateObjectsUsingBlock:^(NIMInputEmoticonCatalog* data, NSUInteger idx, BOOL *stop) {
    [self.totalCatalogData enumerateObjectsUsingBlock:^(WithTextSearch* data, NSUInteger idx, BOOL *stop) {
        //: pagesCount += data.pagesCount;
        pagesCount += data.pagesCount;
    //: }];
    }];
    //: return pagesCount;
    return pagesCount;
}


//: - (UIView*)emojPageView:(WorkPageView*)pageView inEmoticonCatalog:(NIMInputEmoticonCatalog *)emoticon page:(NSInteger)page
- (UIView*)bubble:(KeyNeedView*)pageView inwardOld:(WithTextSearch *)emoticon refreshDown:(NSInteger)page
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger iconHeight = emoticon.layout.imageHeight;
    NSInteger iconHeight = emoticon.layout.imageHeight;
    //: NSInteger iconWidth = emoticon.layout.imageWidth;
    NSInteger iconWidth = emoticon.layout.imageWidth;
    //: CGFloat startX = (emoticon.layout.cellWidth - iconWidth) / 2 + 15;
    CGFloat startX = (emoticon.layout.cellWidth - iconWidth) / 2 + 15;
    //: CGFloat startY = (emoticon.layout.cellHeight- iconHeight) / 2 + 10;
    CGFloat startY = (emoticon.layout.cellHeight- iconHeight) / 2 + 10;
    //: int32_t coloumnIndex = 0;
    int32_t coloumnIndex = 0;
    //: int32_t rowIndex = 0;
    int32_t rowIndex = 0;
    //: int32_t indexInPage = 0;
    int32_t indexInPage = 0;
    //: NSInteger begin = page * emoticon.layout.itemCountInPage;
    NSInteger begin = page * emoticon.layout.itemCountInPage;
    //: NSInteger end = begin + emoticon.layout.itemCountInPage;
    NSInteger end = begin + emoticon.layout.itemCountInPage;
    //: end = end > emoticon.emoticons.count ? (emoticon.emoticons.count) : end;
    end = end > emoticon.emoticons.count ? (emoticon.emoticons.count) : end;
    //: for (NSInteger index = begin; index < end; index ++)
    for (NSInteger index = begin; index < end; index ++)
    {
        //: NIMInputEmoticon *data = [emoticon.emoticons objectAtIndex:index];
        FrontwardsCount *data = [emoticon.emoticons objectAtIndex:index];

        //: WorkInputEmoticonButton *button = [WorkInputEmoticonButton iconButtonWithData:data catalogID:emoticon.catalogID delegate:self];
        KeyControl *button = [KeyControl inheritance:data lineItem:emoticon.catalogID remote:self];
        //计算表情位置
        //: rowIndex = indexInPage / emoticon.layout.columes;
        rowIndex = indexInPage / emoticon.layout.columes;
        //: coloumnIndex= indexInPage % emoticon.layout.columes;
        coloumnIndex= indexInPage % emoticon.layout.columes;
        //: CGFloat x = coloumnIndex * emoticon.layout.cellWidth + startX;
        CGFloat x = coloumnIndex * emoticon.layout.cellWidth + startX;
        //: CGFloat y = rowIndex * emoticon.layout.cellHeight + startY;
        CGFloat y = rowIndex * emoticon.layout.cellHeight + startY;
        //: CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
        CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: if (coloumnIndex == emoticon.layout.columes -1)
    if (coloumnIndex == emoticon.layout.columes -1)
    {
        //: rowIndex = rowIndex +1;
        rowIndex = rowIndex +1;
        //: coloumnIndex = -1; 
        coloumnIndex = -1; //设置成-1是因为显示在第0位，有加1
    }
//    if ([emoticon.catalogID isEqualToString:NEEKIT_EmojiCatalog]) {
//        [self addDeleteEmotButtonToView:subView  ColumnIndex:coloumnIndex RowIndex:rowIndex StartX:startX StartY:startY IconWidth:iconWidth IconHeight:iconHeight inEmoticonCatalog:emoticon];
//    }
    //: return subView;
    return subView;
}

//: - (void)addDeleteEmotButtonToView:(UIView *)view
- (void)cellCatalog:(UIView *)view
                      //: ColumnIndex:(NSInteger)coloumnIndex
                      selectionCatalog:(NSInteger)coloumnIndex
                         //: RowIndex:(NSInteger)rowIndex
                         itemTo:(NSInteger)rowIndex
                           //: StartX:(CGFloat)startX
                           stud:(CGFloat)startX
                           //: StartY:(CGFloat)startY
                           read:(CGFloat)startY
                        //: IconWidth:(CGFloat)iconWidth
                        communication:(CGFloat)iconWidth
                       //: IconHeight:(CGFloat)iconHeight
                       ting:(CGFloat)iconHeight
                //: inEmoticonCatalog:(NIMInputEmoticonCatalog *)emoticon
                width:(WithTextSearch *)emoticon
{
    //: WorkInputEmoticonButton* deleteIcon = [[WorkInputEmoticonButton alloc] init];
    KeyControl* deleteIcon = [[KeyControl alloc] init];
    //: deleteIcon.delegate = self;
    deleteIcon.delegate = self;
    //: deleteIcon.userInteractionEnabled = YES;
    deleteIcon.userInteractionEnabled = YES;
    //: deleteIcon.exclusiveTouch = YES;
    deleteIcon.exclusiveTouch = YES;
    //: deleteIcon.contentMode = UIViewContentModeCenter;
    deleteIcon.contentMode = UIViewContentModeCenter;
    //: UIImage *imageNormal = [UIImage nim_emoticonInKit:@"emoji_del_normal"];
    UIImage *imageNormal = [UIImage view:[[TakeData sharedInstance] mainWarnTitle]];
    //: UIImage *imagePressed = [UIImage nim_emoticonInKit:@"emoji_del_pressed"];
    UIImage *imagePressed = [UIImage view:[[TakeData sharedInstance] user_presentValue]];

    //: [deleteIcon setImage:imageNormal forState:UIControlStateNormal];
    [deleteIcon setImage:imageNormal forState:UIControlStateNormal];
    //: [deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
    [deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
    //: [deleteIcon addTarget:deleteIcon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
    [deleteIcon addTarget:deleteIcon action:@selector(states:) forControlEvents:UIControlEventTouchUpInside];

    //: CGFloat newX = (coloumnIndex +1) * emoticon.layout.cellWidth + startX;
    CGFloat newX = (coloumnIndex +1) * emoticon.layout.cellWidth + startX;
    //: CGFloat newY = rowIndex * emoticon.layout.cellHeight + startY;
    CGFloat newY = rowIndex * emoticon.layout.cellHeight + startY;
    //: CGRect deleteIconRect = CGRectMake(newX, newY, 43.0, 43.0);
    CGRect deleteIconRect = CGRectMake(newX, newY, 43.0, 43.0);

    //: [deleteIcon setFrame:deleteIconRect];
    [deleteIcon setFrame:deleteIconRect];
    //: [view addSubview:deleteIcon];
    [view addSubview:deleteIcon];
}


//: #pragma mark - pageviewDelegate
#pragma mark - pageviewDelegate
//: - (NSInteger)numberOfPages: (WorkPageView *)pageView
- (NSInteger)elites: (KeyNeedView *)pageView
{
    //: return [self sumPages];
    return [self showEnable];
}

//: - (UIView *)pageView:(WorkPageView *)pageView viewInPage:(NSInteger)index
- (UIView *)text:(KeyNeedView *)pageView with:(NSInteger)index
{
    //: NSInteger page = 0;
    NSInteger page = 0;
    //: NIMInputEmoticonCatalog *emoticon;
    WithTextSearch *emoticon;
    //: for (emoticon in self.totalCatalogData) {
    for (emoticon in self.totalCatalogData) {
        //: NSInteger newPage = page + emoticon.pagesCount;
        NSInteger newPage = page + emoticon.pagesCount;
        //: if (newPage > index) {
        if (newPage > index) {
            //: break;
            break;
        }
        //: page = newPage;
        page = newPage;
    }
    //: return [self emojPageView:pageView inEmoticonCatalog:emoticon page:index - page];
    return [self bubble:pageView inwardOld:emoticon refreshDown:index - page];
}


//: - (NIMInputEmoticonCatalog*)loadDefaultCatalog
- (WithTextSearch*)pressedFile
{
    //: NIMInputEmoticonCatalog *emoticonCatalog = [[WorkInputEmoticonManager sharedManager] emoticonCatalog:@"default"];
    WithTextSearch *emoticonCatalog = [[RedManager session] deadLanguageExtra:[[TakeData sharedInstance] notiShowerText]];
    //: if (emoticonCatalog) {
    if (emoticonCatalog) {
        //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initEmojiLayout:self.nim_width];
        WorstedYarnLayout *layout = [[WorstedYarnLayout alloc] initShouldLayout:self.nim_width];
        //: emoticonCatalog.layout = layout;
        emoticonCatalog.layout = layout;
        //: emoticonCatalog.pagesCount = [self numberOfPagesWithEmoticon:emoticonCatalog];
        emoticonCatalog.pagesCount = [self system:emoticonCatalog];
    }
    //: return emoticonCatalog;
    return emoticonCatalog;
}

//: - (NIMInputEmoticonCatalog*)loadGifCatalog
- (WithTextSearch*)session
{
    //: NIMInputEmoticonCatalog *emoticonCatalog = [[WorkInputEmoticonManager sharedManager] emoticonCatalog:@"gif"];
    WithTextSearch *emoticonCatalog = [[RedManager session] deadLanguageExtra:[[TakeData sharedInstance] app_picContent]];
    //: if (emoticonCatalog) {
    if (emoticonCatalog) {
        //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initEmojiLayout:self.nim_width];
        WorstedYarnLayout *layout = [[WorstedYarnLayout alloc] initShouldLayout:self.nim_width];
        //: emoticonCatalog.layout = layout;
        emoticonCatalog.layout = layout;
        //: emoticonCatalog.pagesCount = [self numberOfPagesWithEmoticon:emoticonCatalog];
        emoticonCatalog.pagesCount = [self system:emoticonCatalog];
    }
    //: return emoticonCatalog;
    return emoticonCatalog;
}

//: - (NSArray *)loadChartlet{
- (NSArray *)viewChartlet{
    //: NSArray *chatlets = nil;
    NSArray *chatlets = nil;
    //: if ([self.config respondsToSelector:@selector(charlets)])
    if ([self.config respondsToSelector:@selector(whiteInput)])
    {
        //: chatlets = [self.config charlets];
        chatlets = [self.config whiteInput];
        //: for (NIMInputEmoticonCatalog *item in chatlets) {
        for (WithTextSearch *item in chatlets) {
            //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initCharletLayout:self.nim_width];
            WorstedYarnLayout *layout = [[WorstedYarnLayout alloc] initAt:self.nim_width];
            //: item.layout = layout;
            item.layout = layout;
            //: item.pagesCount = [self numberOfPagesWithEmoticon:item];
            item.pagesCount = [self system:item];
        }
    }
    //: return chatlets;
    return chatlets;
}


//找到某组表情的起始位置
//: - (NSInteger)pageIndexWithEmoticon:(NIMInputEmoticonCatalog *)emoticonCatalog{
- (NSInteger)itemDown:(WithTextSearch *)emoticonCatalog{
    //: NSInteger pageIndex = 0;
    NSInteger pageIndex = 0;
    //: for (NIMInputEmoticonCatalog *emoticon in self.totalCatalogData) {
    for (WithTextSearch *emoticon in self.totalCatalogData) {
        //: if (emoticon == emoticonCatalog) {
        if (emoticon == emoticonCatalog) {
            //: break;
            break;
        }
        //: pageIndex += emoticon.pagesCount;
        pageIndex += emoticon.pagesCount;
    }
    //: return pageIndex;
    return pageIndex;
}

//: - (NSInteger)pageIndexWithTotalIndex:(NSInteger)index{
- (NSInteger)app:(NSInteger)index{
    //: NIMInputEmoticonCatalog *catelog = [self emoticonWithIndex:index];
    WithTextSearch *catelog = [self image:index];
    //: NSInteger begin = [self pageIndexWithEmoticon:catelog];
    NSInteger begin = [self itemDown:catelog];
    //: return index - begin;
    return index - begin;
}

//: - (NIMInputEmoticonCatalog *)emoticonWithIndex:(NSInteger)index {
- (WithTextSearch *)image:(NSInteger)index {
    //: NSInteger page = 0;
    NSInteger page = 0;
    //: NIMInputEmoticonCatalog *emoticon;
    WithTextSearch *emoticon;
    //: for (emoticon in self.totalCatalogData) {
    for (emoticon in self.totalCatalogData) {
        //: NSInteger newPage = page + emoticon.pagesCount;
        NSInteger newPage = page + emoticon.pagesCount;
        //: if (newPage > index) {
        if (newPage > index) {
            //: break;
            break;
        }
        //: page = newPage;
        page = newPage;
    }
    //: return emoticon;
    return emoticon;
}

//: - (NSInteger)numberOfPagesWithEmoticon:(NIMInputEmoticonCatalog *)emoticonCatalog
- (NSInteger)system:(WithTextSearch *)emoticonCatalog
{
    //: if(emoticonCatalog.emoticons.count % emoticonCatalog.layout.itemCountInPage == 0)
    if(emoticonCatalog.emoticons.count % emoticonCatalog.layout.itemCountInPage == 0)
    {
        //: return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage;
        return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage;
    }
    //: else
    else
    {
        //: return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage + 1;
        return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage + 1;
    }
}

//: - (void)pageViewScrollEnd: (WorkPageView *)pageView
- (void)create: (KeyNeedView *)pageView
             //: currentIndex: (NSInteger)index
             cell: (NSInteger)index
               //: totolPages: (NSInteger)pages{
               with: (NSInteger)pages{
    //: NIMInputEmoticonCatalog *emticon = [self emoticonWithIndex:index];
    WithTextSearch *emticon = [self image:index];
    //: self.emotPageController.numberOfPages = [emticon pagesCount];
    self.emotPageController.numberOfPages = [emticon pagesCount];
    //: self.emotPageController.currentPage = [self pageIndexWithTotalIndex:index];
    self.emotPageController.currentPage = [self app:index];

    //: NSInteger selectTabIndex = [self.totalCatalogData indexOfObject:emticon];
    NSInteger selectTabIndex = [self.totalCatalogData indexOfObject:emticon];
    //: [self.tabView selectTabIndex:selectTabIndex];
    [self.tabView scaleIndex:selectTabIndex];
}


//: #pragma mark - EmoticonButtonTouchDelegate
#pragma mark - EmoticonButtonTouchDelegate
//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID{
- (void)atId:(FrontwardsCount*)emoticon on:(NSString*)catalogID{
    //: if ([self.delegate respondsToSelector:@selector(selectedEmoticon:catalog:description:)]) {
    if ([self.delegate respondsToSelector:@selector(size:select:disable:)]) {


        //: if(emoticon.gif.length>0){
        if(emoticon.gif.length>0){
            //: [self.delegate selectedGifEmoticon: emoticon.filename];
            [self.delegate objectFile: emoticon.filename];
        //: }else{
        }else{
//            [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.tag];

                    //: if (emoticon.type == NIMEmoticonTypeUnicode) {
                    if (emoticon.type == NIMEmoticonTypeUnicode) {
                        //: [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.unicode];
                        [self.delegate size:emoticon.emoticonID select:catalogID disable:emoticon.unicode];
                    //: } else {
                    } else {
                        //: [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.tag];
                        [self.delegate size:emoticon.emoticonID select:catalogID disable:emoticon.tag];
                    }
        }


    }
}

//: - (void)didPressSend:(id)sender{
- (void)easyLay:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didPressSend:)]) {
    if ([self.delegate respondsToSelector:@selector(easyLay:)]) {
        //: [self.delegate didPressSend:sender];
        [self.delegate easyLay:sender];
    }
}

//: - (void)didPressDelete:(id)sender{
- (void)befores:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didPressDelete:)]) {
    if ([self.delegate respondsToSelector:@selector(befores:)]) {
        //: [self.delegate didPressDelete:sender];
        [self.delegate befores:sender];
    }
}


//: #pragma mark - InputEmoticonTabDelegate
#pragma mark - InputEmoticonTabDelegate
//: - (void)tabView:(WorkInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index{
- (void)off:(IntervalView *)tabView modeLog:(NSInteger) index{
    //: self.currentCatalogData = self.totalCatalogData[index];
    self.currentCatalogData = self.totalCatalogData[index];
    //: [self layoutEmoticonPageView];
    [self with];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)setCurrentCatalogData:(NIMInputEmoticonCatalog *)currentCatalogData{
- (void)setCurrentCatalogData:(WithTextSearch *)currentCatalogData{
    //: _currentCatalogData = currentCatalogData;
    _currentCatalogData = currentCatalogData;
    //: [self.emoticonPageView scrollToPage:[self pageIndexWithEmoticon:_currentCatalogData]];
    [self.emoticonPageView show:[self itemDown:_currentCatalogData]];
}

//: - (void)setTotalCatalogData:(NSArray *)totalCatalogData
- (void)setTotalCatalogData:(NSArray *)totalCatalogData
{
    //: _totalCatalogData = totalCatalogData;
    _totalCatalogData = totalCatalogData;
//    [self.tabView loadCatalogs:totalCatalogData];
}

//: - (NSArray *)allEmoticons{
- (NSArray *)allEmoticons{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMInputEmoticonCatalog *catalog in self.totalCatalogData) {
    for (WithTextSearch *catalog in self.totalCatalogData) {
        //: [array addObjectsFromArray:catalog.emoticons];
        [array addObjectsFromArray:catalog.emoticons];
    }
    //: return array;
    return array;
}


//: #pragma mark - Get
#pragma mark - Get
//: - (WorkInputEmoticonTabView *)tabView
- (IntervalView *)tabView
{
    //: if (!_tabView) {
    if (!_tabView) {
        //: _tabView = [[WorkInputEmoticonTabView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _tabView = [[IntervalView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        //: _tabView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _tabView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _tabView.delegate = self;
        _tabView.delegate = self;
//        [_tabView.sendButton addTarget:self action:@selector(didPressSend:) forControlEvents:UIControlEventTouchUpInside];
        //: [_tabView.sendButton addTarget:self action:@selector(didPressDelete:) forControlEvents:UIControlEventTouchUpInside];
        [_tabView.sendButton addTarget:self action:@selector(befores:) forControlEvents:UIControlEventTouchUpInside];

        //: [self addSubview:_tabView];
        [self addSubview:_tabView];

        //: if (_currentCatalogData.pagesCount > 0) {
        if (_currentCatalogData.pagesCount > 0) {
            //: _emotPageController.numberOfPages = [_currentCatalogData pagesCount];
            _emotPageController.numberOfPages = [_currentCatalogData pagesCount];
            //: _emotPageController.currentPage = 0;
            _emotPageController.currentPage = 0;
        }
    }
    //: return _tabView;
    return _tabView;
}

//: - (UIScrollView *)scrollView
- (UIScrollView *)scrollView
{
    //: if (!_scrollView)
    if (!_scrollView)
    {
        //: _scrollView = [[UIScrollView alloc]init];
        _scrollView = [[UIScrollView alloc]init];
        //: _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        _scrollView.pagingEnabled = YES;
        //: _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        //: _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        //: _scrollView.scrollsToTop = NO;
        _scrollView.scrollsToTop = NO;
    }
    //: return _scrollView;
    return _scrollView;
}

//: @end
@end
