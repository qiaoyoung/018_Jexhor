
#import <Foundation/Foundation.h>

typedef struct {
    Byte storm;
    Byte *weakness;
    unsigned int sky;
	int storageColor;
	int acting;
} StructStereoCliffData;

@interface StereoCliffData : NSObject

+ (instancetype)sharedInstance;

//: #612CF9
@property (nonatomic, copy) NSString *show_coverIdent;

//: invalid item selector!
@property (nonatomic, copy) NSString *app_destinationStr;

@end

@implementation StereoCliffData

+ (instancetype)sharedInstance {
    static StereoCliffData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StereoCliffDataToByte:(StructStereoCliffData *)data {
    for (int i = 0; i < data->sky; i++) {
        data->weakness[i] ^= data->storm;
    }
    data->weakness[data->sky] = 0;
	if (data->sky >= 2) {
		data->storageColor = data->weakness[0];
		data->acting = data->weakness[1];
	}
    return data->weakness;
}

- (NSString *)StringFromStereoCliffData:(StructStereoCliffData *)data {
    return [NSString stringWithUTF8String:(char *)[self StereoCliffDataToByte:data]];
}

//: #612CF9
- (NSString *)show_coverIdent {
    if (!_show_coverIdent) {
        StructStereoCliffData value = (StructStereoCliffData){78, (Byte []){109, 120, 127, 124, 13, 8, 119, 18}, 7, 63, 52};
        _show_coverIdent = [self StringFromStereoCliffData:&value];
    }
    return _show_coverIdent;
}

//: invalid item selector!
- (NSString *)app_destinationStr {
    if (!_app_destinationStr) {
        StructStereoCliffData value = (StructStereoCliffData){227, (Byte []){138, 141, 149, 130, 143, 138, 135, 195, 138, 151, 134, 142, 195, 144, 134, 143, 134, 128, 151, 140, 145, 194, 166}, 22, 25, 113};
        _app_destinationStr = [self StringFromStereoCliffData:&value];
    }
    return _app_destinationStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESInputMoreContainerView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushInputMoreContainerView.h"
#import "GhbView.h"
//: #import "PushPageView.h"
#import "PageShowWorldView.h"
//: #import "PushMediaItem.h"
#import "RecordAlbumItem.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: NSInteger NIMMaxItemCountInPage = 8;
NSInteger main_cellMessage = 8;
//: NSInteger NIMButtonItemWidth = 75;
NSInteger userErrorStr = 75;
//: NSInteger NIMButtonItemHeight = 85;
NSInteger app_spaceId = 85;
//: NSInteger NIMPageRowCount = 2;
NSInteger showQuantityBorderStr = 2;
//: NSInteger NIMPageColumnCount = 4;
NSInteger userPullData = 4;
//: NSInteger NIMButtonBegintLeftX = 11;
NSInteger main_recentTagData = 11;




//: @interface PushInputMoreContainerView() <PushPageViewDataSource,PushPageViewDelegate,CustomMediaPickerViewDelegate>
@interface GhbView() <TouchContent,MessageCreateAdd,CellDelegate>
{
    //: NSArray *_mediaButtons;
    NSArray *_mediaButtons;
    //: NSArray *_mediaItems;
    NSArray *_mediaItems;
}


//: @property (nonatomic, strong) PushPageView *pageView;
@property (nonatomic, strong) PageShowWorldView *pageView;

//: @end
@end

//: @implementation PushInputMoreContainerView
@implementation GhbView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        _pageView = [[PageShowWorldView alloc] initWithFrame:CGRectZero];
//        _pageView.dataSource = self;
//        [self addSubview:_pageView];

        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOffset = CGSizeMake(0,-4);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 16;
        self.layer.shadowRadius = 16;

        //: [self setup];
        [self on];
    }
    //: return self;
    return self;
}

//: - (void)setConfig:(id<PushSessionConfig>)config
- (void)setConfig:(id<CreateTop>)config
{
    //: _config = config;
    _config = config;
//    [self genMediaButtons];
//    [self.pageView reloadData];
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: return CGSizeMake(size.width, 400.f);
    return CGSizeMake(size.width, 400.f);
}

//: - (void)setup {
- (void)on {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    _albumPickerView = [[CustomView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.maxSelectionCount = 5; 
    _albumPickerView.maxSelectionCount = 5; // 设置最大选择数量
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.allowCamera = YES; 
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
    //: [self addSubview:_albumPickerView];
    [self addSubview:_albumPickerView];

//    // 添加边框
//    _albumPickerView.layer.borderWidth = 1.0;
//    _albumPickerView.layer.borderColor = [UIColor darkGrayColor].CGColor;
//    _albumPickerView.layer.cornerRadius = 8.0;
//    _albumPickerView.clipsToBounds = YES;
}

//: #pragma mark - CustomAlbumPickerViewDelegate
#pragma mark - CustomAlbumPickerViewDelegate
//: - (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)pulling:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);

        //: if ([self.delegate respondsToSelector:@selector(PickerDidSelectAssets:)]) {
        if ([self.delegate respondsToSelector:@selector(displaying:)]) {
            //: [self.delegate PickerDidSelectAssets:assets];
            [self.delegate displaying:assets];
        }

    // 在这里处理选择的图片

    // 可以选择自动隐藏相册选择器
//     [self.albumPickerView removeFromSuperview];

//    if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
//        [self.actionDelegate onTapAlbunArray:assets];
//    }
}

//: - (void)mediaPickerDidTapCamera {
- (void)stateMessage {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(lengthsing:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate lengthsing:nil];
    }
}

//: - (void)genMediaButtons
- (void)shouldButtons
{
    //: NSMutableArray *mediaButtons = [NSMutableArray array];
    NSMutableArray *mediaButtons = [NSMutableArray array];
    //: NSMutableArray *mediaItems = [NSMutableArray array];
    NSMutableArray *mediaItems = [NSMutableArray array];
    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [MyUserKit sharedKit].config.defaultMediaItems;
        items = [Secret highlight].config.name;
    }
    //: else if([self.config respondsToSelector:@selector(mediaItems)])
    else if([self.config respondsToSelector:@selector(noName)])
    {
        //: items = [self.config mediaItems];
        items = [self.config noName];
    }
    //: [items enumerateObjectsUsingBlock:^(PushMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(RecordAlbumItem *item, NSUInteger idx, BOOL *stop) {
        //: [mediaItems addObject:item];
        [mediaItems addObject:item];

        //: UIButton *btn = [[UIButton alloc] init];
        UIButton *btn = [[UIButton alloc] init];
        //: btn.tag = idx;
        btn.tag = idx;
        //: [btn setImage:item.normalImage forState:UIControlStateNormal];
        [btn setImage:item.normalImage forState:UIControlStateNormal];
        //: [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        //: [btn setTitle:item.title forState:UIControlStateNormal];
        [btn setTitle:item.title forState:UIControlStateNormal];
        //: [btn setTitleColor:[UIColor colorWithHexString:@"#612CF9"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor user:[StereoCliffData sharedInstance].show_coverIdent] forState:UIControlStateNormal];
        //: btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [btn setTitleEdgeInsets:UIEdgeInsetsMake(76, -75, 0, 0)];
        //: [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        //: [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self calculateWidthWithFont:14 Text:item.title])];
        [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self cellSession:14 view:item.title])];

        //: [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        //: btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [mediaButtons addObject:btn];
        [mediaButtons addObject:btn];

    //: }];
    }];
    //: _mediaButtons = mediaButtons;
    _mediaButtons = mediaButtons;
    //: _mediaItems = mediaItems;
    _mediaItems = mediaItems;
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)cellSession:(NSInteger)Font view:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}



//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width)
    if (originalWidth != frame.size.width)
    {
        //: self.pageView.frame = self.bounds;
        self.pageView.frame = self.bounds;
        //: [self.pageView reloadData];
        [self.pageView team];
    }
}

//: - (void)dealloc
- (void)dealloc
{
    //: _pageView.dataSource = nil;
    _pageView.dataSource = nil;
}


//: #pragma mark PageViewDataSource
#pragma mark PageViewDataSource
//: - (NSInteger)numberOfPages: (PushPageView *)pageView
- (NSInteger)ranges: (PageShowWorldView *)pageView
{
    //: NSInteger count = [_mediaButtons count] / NIMMaxItemCountInPage;
    NSInteger count = [_mediaButtons count] / main_cellMessage;
    //: count = ([_mediaButtons count] % NIMMaxItemCountInPage == 0) ? count: count + 1;
    count = ([_mediaButtons count] % main_cellMessage == 0) ? count: count + 1;
    //: return ((count) > (1) ? (count) : (1));
    return ((count) > (1) ? (count) : (1));
}

//: - (UIView*)mediaPageView:(PushPageView*)pageView beginItem:(NSInteger)begin endItem:(NSInteger)end
- (UIView*)imageItem:(PageShowWorldView*)pageView color:(NSInteger)begin enable:(NSInteger)end
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - NIMPageColumnCount * NIMButtonItemWidth) / (NIMPageColumnCount +1);
    NSInteger span = (self.nim_width - userPullData * userErrorStr) / (userPullData +1);
    //: CGFloat startY = NIMButtonBegintLeftX;
    CGFloat startY = main_recentTagData;
    //: NSInteger coloumnIndex = 0;
    NSInteger coloumnIndex = 0;
    //: NSInteger rowIndex = 0;
    NSInteger rowIndex = 0;
    //: NSInteger indexInPage = 0;
    NSInteger indexInPage = 0;
    //: for (NSInteger index = begin; index < end; index ++)
    for (NSInteger index = begin; index < end; index ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:index];
        UIButton *button = [_mediaButtons objectAtIndex:index];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(doing:) forControlEvents:UIControlEventTouchUpInside];
        //计算位置
        //: rowIndex = indexInPage / NIMPageColumnCount;
        rowIndex = indexInPage / userPullData;
        //: coloumnIndex= indexInPage % NIMPageColumnCount;
        coloumnIndex= indexInPage % userPullData;
        //: CGFloat x = span + (NIMButtonItemWidth + span) * coloumnIndex;
        CGFloat x = span + (userErrorStr + span) * coloumnIndex;
        //: CGFloat y = 0.0;
        CGFloat y = 0.0;
        //: if (rowIndex > 0)
        if (rowIndex > 0)
        {
            //: y = rowIndex * NIMButtonItemHeight + startY + 15;
            y = rowIndex * app_spaceId + startY + 15;
        }
        //: else
        else
        {
            //: y = rowIndex * NIMButtonItemHeight + startY;
            y = rowIndex * app_spaceId + startY;
        }
        //: [button setFrame:CGRectMake(x, y, NIMButtonItemWidth, NIMButtonItemHeight)];
        [button setFrame:CGRectMake(x, y, userErrorStr, app_spaceId)];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: return subView;
    return subView;
}

//: - (UIView*)oneLineMediaInPageView:(PushPageView *)pageView
- (UIView*)by:(PageShowWorldView *)pageView
                       //: viewInPage: (NSInteger)index
                       dateShow: (NSInteger)index
                            //: count:(NSInteger)count
                            toCount:(NSInteger)count
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - count * NIMButtonItemWidth) / (count +1);
    NSInteger span = (self.nim_width - count * userErrorStr) / (count +1);

    //: for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(doing:) forControlEvents:UIControlEventTouchUpInside];
        //: CGRect iconRect = CGRectMake(span + (NIMButtonItemWidth + span) * btnIndex, 0, NIMButtonItemWidth, NIMButtonItemHeight);
        CGRect iconRect = CGRectMake(span + (userErrorStr + span) * btnIndex, 0, userErrorStr, app_spaceId);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
    }
    //: return subView;
    return subView;
}

//: - (UIView *)pageView: (PushPageView *)pageView viewInPage: (NSInteger)index
- (UIView *)teamValue: (PageShowWorldView *)pageView addWith: (NSInteger)index
{
    //: if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) 
    if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) //一行显示2个或者3个
    {
        //: return [self oneLineMediaInPageView:pageView viewInPage:index count:[_mediaButtons count]];
        return [self by:pageView dateShow:index toCount:[_mediaButtons count]];
    }

    //: if (index < 0)
    if (index < 0)
    {
        //: assert(0);
        assert(0);
        //: index = 0;
        index = 0;
    }
    //: NSInteger begin = index * NIMMaxItemCountInPage;
    NSInteger begin = index * main_cellMessage;
    //: NSInteger end = (index + 1) * NIMMaxItemCountInPage;
    NSInteger end = (index + 1) * main_cellMessage;
    //: if (end > [_mediaButtons count])
    if (end > [_mediaButtons count])
    {
        //: end = [_mediaButtons count];
        end = [_mediaButtons count];
    }
    //: return [self mediaPageView:pageView beginItem:begin endItem:end];
    return [self imageItem:pageView color:begin enable:end];
}

//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchButton:(id)sender
- (void)doing:(id)sender
{
    //: NSInteger index = [(UIButton *)sender tag];
    NSInteger index = [(UIButton *)sender tag];
    //: PushMediaItem *item = _mediaItems[index];
    RecordAlbumItem *item = _mediaItems[index];
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(shareMedia:)]) {
        //: BOOL handled = [_actionDelegate onTapMediaItem:item];
        BOOL handled = [_actionDelegate shareMedia:item];
        //: if (!handled) {
        if (!handled) {
            //: NSAssert(0, @"invalid item selector!");
            NSAssert(0, [StereoCliffData sharedInstance].app_destinationStr);
        }
    }

}

//: @end
@end
