
#import <Foundation/Foundation.h>

typedef struct {
    Byte coldProved;
    Byte *mageDefine;
    unsigned int legalFee;
	int custodyPosition;
	int satellite;
} StructEconomicalData;

@interface EconomicalData : NSObject

+ (instancetype)sharedInstance;

//: dealloc
@property (nonatomic, copy) NSString *show_theaterTextIdent;

//: font
@property (nonatomic, copy) NSString *user_vileInputText;

//: bounds
@property (nonatomic, copy) NSString *noti_discoveryIdent;

//: textContainerInset
@property (nonatomic, copy) NSString *user_sessionDistractText;

//: textAlignment
@property (nonatomic, copy) NSString *k_directId;

//: text
@property (nonatomic, copy) NSString *dream_adviserStr;

//: frame
@property (nonatomic, copy) NSString *k_itemUrl;

@end

@implementation EconomicalData

+ (instancetype)sharedInstance {
    static EconomicalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EconomicalDataToByte:(StructEconomicalData *)data {
    for (int i = 0; i < data->legalFee; i++) {
        data->mageDefine[i] ^= data->coldProved;
    }
    data->mageDefine[data->legalFee] = 0;
	if (data->legalFee >= 2) {
		data->custodyPosition = data->mageDefine[0];
		data->satellite = data->mageDefine[1];
	}
    return data->mageDefine;
}

- (NSString *)StringFromEconomicalData:(StructEconomicalData *)data {
    return [NSString stringWithUTF8String:(char *)[self EconomicalDataToByte:data]];
}

//: font
- (NSString *)user_vileInputText {
    if (!_user_vileInputText) {
        StructEconomicalData value = (StructEconomicalData){129, (Byte []){231, 238, 239, 245, 92}, 4, 142, 44};
        _user_vileInputText = [self StringFromEconomicalData:&value];
    }
    return _user_vileInputText;
}

//: text
- (NSString *)dream_adviserStr {
    if (!_dream_adviserStr) {
        StructEconomicalData value = (StructEconomicalData){79, (Byte []){59, 42, 55, 59, 113}, 4, 153, 10};
        _dream_adviserStr = [self StringFromEconomicalData:&value];
    }
    return _dream_adviserStr;
}

//: textContainerInset
- (NSString *)user_sessionDistractText {
    if (!_user_sessionDistractText) {
        StructEconomicalData value = (StructEconomicalData){213, (Byte []){161, 176, 173, 161, 150, 186, 187, 161, 180, 188, 187, 176, 167, 156, 187, 166, 176, 161, 63}, 18, 224, 242};
        _user_sessionDistractText = [self StringFromEconomicalData:&value];
    }
    return _user_sessionDistractText;
}

//: frame
- (NSString *)k_itemUrl {
    if (!_k_itemUrl) {
        StructEconomicalData value = (StructEconomicalData){59, (Byte []){93, 73, 90, 86, 94, 145}, 5, 40, 94};
        _k_itemUrl = [self StringFromEconomicalData:&value];
    }
    return _k_itemUrl;
}

//: textAlignment
- (NSString *)k_directId {
    if (!_k_directId) {
        StructEconomicalData value = (StructEconomicalData){85, (Byte []){33, 48, 45, 33, 20, 57, 60, 50, 59, 56, 48, 59, 33, 50}, 13, 190, 1};
        _k_directId = [self StringFromEconomicalData:&value];
    }
    return _k_directId;
}

//: dealloc
- (NSString *)show_theaterTextIdent {
    if (!_show_theaterTextIdent) {
        StructEconomicalData value = (StructEconomicalData){212, (Byte []){176, 177, 181, 184, 184, 187, 183, 149}, 7, 146, 56};
        _show_theaterTextIdent = [self StringFromEconomicalData:&value];
    }
    return _show_theaterTextIdent;
}

//: bounds
- (NSString *)noti_discoveryIdent {
    if (!_noti_discoveryIdent) {
        StructEconomicalData value = (StructEconomicalData){69, (Byte []){39, 42, 48, 43, 33, 54, 158}, 6, 24, 153};
        _noti_discoveryIdent = [self StringFromEconomicalData:&value];
    }
    return _noti_discoveryIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UITextView+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/6/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//
// 占位文字

// __M_A_C_R_O__
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: static const void *WZBPlaceholderViewKey = &WZBPlaceholderViewKey;
static const void *userToMessage = &userToMessage;
// 占位文字颜色
//: static const void *WZBPlaceholderColorKey = &WZBPlaceholderColorKey;
static const void *show_cellId = &show_cellId;
// 最大高度
//: static const void *WZBTextViewMaxHeightKey = &WZBTextViewMaxHeightKey;
static const void *userPullStr = &userPullStr;
// 最小高度
//: static const void *WZBTextViewMinHeightKey = &WZBTextViewMinHeightKey;
static const void *showCropFormat = &showCropFormat;
// 高度变化的block
//: static const void *WZBTextViewHeightDidChangedBlockKey = &WZBTextViewHeightDidChangedBlockKey;
static const void *m_nameStr = &m_nameStr;
// 存储添加的图片
//: static const void *WZBTextViewImageArrayKey = &WZBTextViewImageArrayKey;
static const void *k_pointTitle = &k_pointTitle;
// 存储最后一次改变高度后的值
//: static const void *WZBTextViewLastHeightKey = &WZBTextViewLastHeightKey;
static const void *notiToName = &notiToName;
//: @interface UITextView ()
@interface UITextView ()
// 存储添加的图片
//: @property (nonatomic, strong) NSMutableArray *imageArray;
@property (nonatomic, strong) NSMutableArray *imageArray;
// 存储最后一次改变高度后的值
//: @property (nonatomic, assign) CGFloat lastHeight;
@property (nonatomic, assign) CGFloat lastHeight;

//: @end
@end

//: @implementation UITextView (Util)
@implementation UITextView (Util)

//: #pragma mark - Swizzle Dealloc
#pragma mark - Swizzle Dealloc
//: + (void)load {
+ (void)load {
    // 交换dealoc
    //: Method dealoc = class_getInstanceMethod(self.class, NSSelectorFromString(@"dealloc"));
    Method dealoc = class_getInstanceMethod(self.class, NSSelectorFromString([EconomicalData sharedInstance].show_theaterTextIdent));
    //: Method myDealoc = class_getInstanceMethod(self.class, @selector(myDealoc));
    Method myDealoc = class_getInstanceMethod(self.class, @selector(recordingGreen));
    //: method_exchangeImplementations(dealoc, myDealoc);
    method_exchangeImplementations(dealoc, myDealoc);
}

//: - (void)myDealoc {
- (void)recordingGreen {
    // 移除监听
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, userToMessage);

    // 如果有值才去调用，这步很重要
    //: if (placeholderView) {
    if (placeholderView) {
        //: NSArray *propertys = @[@"frame", @"bounds", @"font", @"text", @"textAlignment", @"textContainerInset"];
        NSArray *propertys = @[[EconomicalData sharedInstance].k_itemUrl, [EconomicalData sharedInstance].noti_discoveryIdent, [EconomicalData sharedInstance].user_vileInputText, [EconomicalData sharedInstance].dream_adviserStr, [EconomicalData sharedInstance].k_directId, [EconomicalData sharedInstance].user_sessionDistractText];
        //: for (NSString *property in propertys) {
        for (NSString *property in propertys) {
            //: @try {
            @try {
                //: [self removeObserver:self forKeyPath:property];
                [self removeObserver:self forKeyPath:property];
            //: } @catch (NSException *exception) {}
            } @catch (NSException *exception) {}
        }
    }
    //: [self myDealoc];
    [self recordingGreen];
}

//: #pragma mark - set && get
#pragma mark - set && get
//: - (UITextView *)placeholderView {
- (UITextView *)downParadigm {

    // 为了让占位文字和textView的实际文字位置能够完全一致，这里用UITextView
    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, userToMessage);

    //: if (!placeholderView) {
    if (!placeholderView) {

        // 初始化数组
        //: self.imageArray = [NSMutableArray array];
        self.imageArray = [NSMutableArray array];

        //: placeholderView = [[UITextView alloc] init];
        placeholderView = [[UITextView alloc] init];
        // 动态添加属性的本质是: 让对象的某个属性与值产生关联
        //: objc_setAssociatedObject(self, WZBPlaceholderViewKey, placeholderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        objc_setAssociatedObject(self, userToMessage, placeholderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        //: placeholderView = placeholderView;
        placeholderView = placeholderView;

        // 设置基本属性
        //: self.scrollEnabled = placeholderView.scrollEnabled = placeholderView.showsHorizontalScrollIndicator = placeholderView.showsVerticalScrollIndicator = placeholderView.userInteractionEnabled = NO;
        self.scrollEnabled = placeholderView.scrollEnabled = placeholderView.showsHorizontalScrollIndicator = placeholderView.showsVerticalScrollIndicator = placeholderView.userInteractionEnabled = NO;
        //: placeholderView.textColor = [UIColor colorWithInt:0xffc4c4c4];
        placeholderView.textColor = [UIColor with:0xffc4c4c4];
        //: placeholderView.backgroundColor = [UIColor clearColor];
        placeholderView.backgroundColor = [UIColor clearColor];
        //: [self refreshPlaceholderView];
        [self reloadVersion];
        //: [self addSubview:placeholderView];
        [self addSubview:placeholderView];

        // 监听文字改变
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextChange) name:UITextViewTextDidChangeNotification object:self];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(variationMedia) name:UITextViewTextDidChangeNotification object:self];

        // 这些属性改变时，都要作出一定的改变，尽管已经监听了TextDidChange的通知，也要监听text属性，因为通知监听不到setText：
        //: NSArray *propertys = @[@"frame", @"bounds", @"font", @"text", @"textAlignment", @"textContainerInset"];
        NSArray *propertys = @[[EconomicalData sharedInstance].k_itemUrl, [EconomicalData sharedInstance].noti_discoveryIdent, [EconomicalData sharedInstance].user_vileInputText, [EconomicalData sharedInstance].dream_adviserStr, [EconomicalData sharedInstance].k_directId, [EconomicalData sharedInstance].user_sessionDistractText];

        // 监听属性
        //: for (NSString *property in propertys) {
        for (NSString *property in propertys) {
            //: [self addObserver:self forKeyPath:property options:NSKeyValueObservingOptionNew context:nil];
            [self addObserver:self forKeyPath:property options:NSKeyValueObservingOptionNew context:nil];
        }
    }
    //: return placeholderView;
    return placeholderView;
}

//: - (void)setPlaceholder:(NSString *)placeholder
- (void)setPlaceholder:(NSString *)placeholder
{
    // 为placeholder赋值
    //: [self placeholderView].text = placeholder;
    [self downParadigm].text = placeholder;
}

//: - (NSString *)placeholder
- (NSString *)placeholder
{
    // 如果有placeholder值才去调用，这步很重要
    //: if (self.placeholderExist) {
    if (self.selected) {
        //: return [self placeholderView].text;
        return [self downParadigm].text;
    }
    //: return nil;
    return nil;
}

//: - (void)setPlaceholderColor:(UIColor *)placeholderColor
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    // 如果有placeholder值才去调用，这步很重要
    //: if (!self.placeholderExist) {
    if (!self.selected) {
        //: NSLog(@"Please set the placeholder value first!");
    //: } else {
    } else {
        //: self.placeholderView.textColor = placeholderColor;
        self.downParadigm.textColor = placeholderColor;

        // 动态添加属性的本质是: 让对象的某个属性与值产生关联
        //: objc_setAssociatedObject(self, WZBPlaceholderColorKey, placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        objc_setAssociatedObject(self, show_cellId, placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

//: - (UIColor *)placeholderColor {
- (UIColor *)placeholderColor {
    //: return objc_getAssociatedObject(self, WZBPlaceholderColorKey);
    return objc_getAssociatedObject(self, show_cellId);
}

//: - (void)setMaxHeight:(CGFloat)maxHeight {
- (void)setMaxHeight:(CGFloat)maxHeight {

    //: CGFloat max = maxHeight;
    CGFloat max = maxHeight;
    //: [self placeholderView];
    [self downParadigm];
    // 如果传入的最大高度小于textView本身的高度，则让最大高度等于本身高度
    //: if (maxHeight < self.frame.size.height) {
    if (maxHeight < self.frame.size.height) {
        //: max = self.frame.size.height;
        max = self.frame.size.height;
    }

    //: objc_setAssociatedObject(self, WZBTextViewMaxHeightKey, [NSString stringWithFormat:@"%lf", max], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, userPullStr, [NSString stringWithFormat:@"%lf", max], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (CGFloat)maxHeight {
- (CGFloat)maxHeight {
    //: return [objc_getAssociatedObject(self, WZBTextViewMaxHeightKey) doubleValue];
    return [objc_getAssociatedObject(self, userPullStr) doubleValue];
}

//: - (void)setMinHeight:(CGFloat)minHeight {
- (void)setMinHeight:(CGFloat)minHeight {
    //: objc_setAssociatedObject(self, WZBTextViewMinHeightKey, [NSString stringWithFormat:@"%lf", minHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, showCropFormat, [NSString stringWithFormat:@"%lf", minHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (CGFloat)minHeight {
- (CGFloat)minHeight {
    //: return [objc_getAssociatedObject(self, WZBTextViewMinHeightKey) doubleValue];
    return [objc_getAssociatedObject(self, showCropFormat) doubleValue];
}

//: - (void)setLastHeight:(CGFloat)lastHeight {
- (void)setLastHeight:(CGFloat)lastHeight {
    //: objc_setAssociatedObject(self, WZBTextViewLastHeightKey, [NSString stringWithFormat:@"%lf", lastHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, notiToName, [NSString stringWithFormat:@"%lf", lastHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (CGFloat)lastHeight {
- (CGFloat)lastHeight {
    //: return [objc_getAssociatedObject(self, WZBTextViewLastHeightKey) doubleValue];
    return [objc_getAssociatedObject(self, notiToName) doubleValue];
}

//: - (void)setTextViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged {
- (void)setTextViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged {
    //: objc_setAssociatedObject(self, WZBTextViewHeightDidChangedBlockKey, textViewHeightDidChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, m_nameStr, textViewHeightDidChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (textViewHeightDidChangedBlock)textViewHeightDidChanged {
- (textViewHeightDidChangedBlock)textViewHeightDidChanged {
    //: void(^textViewHeightDidChanged)(CGFloat currentHeight) = objc_getAssociatedObject(self, WZBTextViewHeightDidChangedBlockKey);
    void(^textViewHeightDidChanged)(CGFloat currentHeight) = objc_getAssociatedObject(self, m_nameStr);
    //: return textViewHeightDidChanged;
    return textViewHeightDidChanged;
}

//: - (void)setImageArray:(NSMutableArray *)imageArray {
- (void)setImageArray:(NSMutableArray *)imageArray {
    //: objc_setAssociatedObject(self, WZBTextViewImageArrayKey, imageArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, k_pointTitle, imageArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: - (NSMutableArray *)imageArray {
- (NSMutableArray *)imageArray {
    //: return objc_getAssociatedObject(self, WZBTextViewImageArrayKey);
    return objc_getAssociatedObject(self, k_pointTitle);
}

//: - (NSArray *)getImages {
- (NSArray *)overSize {
    //: return self.imageArray;
    return self.imageArray;
}

//: #pragma mark - KVO监听属性改变
#pragma mark - KVO监听属性改变
//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    //: [self refreshPlaceholderView];
    [self reloadVersion];
    //: if ([keyPath isEqualToString:@"text"]) [self textViewTextChange];
    if ([keyPath isEqualToString:[EconomicalData sharedInstance].dream_adviserStr]) [self variationMedia];
}

//: - (void)refreshPlaceholderView {
- (void)reloadVersion {

    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, userToMessage);

    // 如果有值才去调用，这步很重要
    //: if (placeholderView) {
    if (placeholderView) {
        //: self.placeholderView.frame = self.bounds;
        self.downParadigm.frame = self.bounds;
        //: self.placeholderView.font = self.font;
        self.downParadigm.font = self.font;
        //: self.placeholderView.textAlignment = self.textAlignment;
        self.downParadigm.textAlignment = self.textAlignment;
        //: self.placeholderView.textContainerInset = self.textContainerInset;
        self.downParadigm.textContainerInset = self.textContainerInset;
    }
}

//: - (void)textViewTextChange {
- (void)variationMedia {
    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, userToMessage);

    // 如果有值才去调用，这步很重要
    //: if (placeholderView) {
    if (placeholderView) {
        //: self.placeholderView.hidden = (self.text.length > 0 && self.text);
        self.downParadigm.hidden = (self.text.length > 0 && self.text);
    }

    //: if (self.maxHeight >= self.bounds.size.height) {
    if (self.maxHeight >= self.bounds.size.height) {

        // 计算高度
        //: NSInteger currentHeight = ceil([self sizeThatFits:CGSizeMake(self.bounds.size.width, 0x1.fffffep+127f)].height);
        NSInteger currentHeight = ceil([self sizeThatFits:CGSizeMake(self.bounds.size.width, 0x1.fffffep+127f)].height);

        // 如果高度有变化，调用block
        //: if (currentHeight != self.lastHeight) {
        if (currentHeight != self.lastHeight) {
            // 是否可以滚动
            //: self.scrollEnabled = currentHeight >= self.maxHeight;
            self.scrollEnabled = currentHeight >= self.maxHeight;
            //: CGFloat currentTextViewHeight = currentHeight >= self.maxHeight ? self.maxHeight : currentHeight;
            CGFloat currentTextViewHeight = currentHeight >= self.maxHeight ? self.maxHeight : currentHeight;
            // 改变textView的高度
            //: if (currentTextViewHeight >= self.minHeight) {
            if (currentTextViewHeight >= self.minHeight) {
                //: CGRect frame = self.frame;
                CGRect frame = self.frame;
                //: frame.size.height = currentTextViewHeight;
                frame.size.height = currentTextViewHeight;
                //: self.frame = frame;
                self.frame = frame;
                // 调用block
                //: if (self.textViewHeightDidChanged) self.textViewHeightDidChanged(currentTextViewHeight);
                if (self.textViewHeightDidChanged) self.textViewHeightDidChanged(currentTextViewHeight);
                // 记录当前高度
                //: self.lastHeight = currentTextViewHeight;
                self.lastHeight = currentTextViewHeight;
            }
        }
    }

    //: if (!self.isFirstResponder) [self becomeFirstResponder];
    if (!self.isFirstResponder) [self becomeFirstResponder];
}

//: - (void)autoHeightWithMaxHeight:(CGFloat)maxHeight {
- (void)view:(CGFloat)maxHeight {
    //: [self autoHeightWithMaxHeight:maxHeight textViewHeightDidChanged:nil];
    [self ghbNameChanged:maxHeight message:nil];
}

//: - (void)autoHeightWithMaxHeight:(CGFloat)maxHeight textViewHeightDidChanged:(void(^)(CGFloat currentTextViewHeight))textViewHeightDidChanged {
- (void)ghbNameChanged:(CGFloat)maxHeight message:(void(^)(CGFloat currentTextViewHeight))textViewHeightDidChanged {
    //: [self placeholderView];
    [self downParadigm];
    //: self.maxHeight = maxHeight;
    self.maxHeight = maxHeight;
    //: if (textViewHeightDidChanged) self.textViewHeightDidChanged = textViewHeightDidChanged;
    if (textViewHeightDidChanged) self.textViewHeightDidChanged = textViewHeightDidChanged;
}

// 判断是否有placeholder值，这步很重要
//: - (BOOL)placeholderExist {
- (BOOL)selected {

    // 获取对应属性的值
    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, userToMessage);

    // 如果有placeholder值
    //: if (placeholderView) return YES;
    if (placeholderView) return YES;

    //: return NO;
    return NO;
}

//: - (void)addImage:(UIImage *)image {
- (void)image:(UIImage *)image {
    //: [self addImage:image size:CGSizeZero];
    [self thoughtImage:image size:CGSizeZero];
}

/* 添加一张图片 image:要添加的图片 size:图片大小 */
//: - (void)addImage:(UIImage *)image size:(CGSize)size {
- (void)thoughtImage:(UIImage *)image size:(CGSize)size {
    //: [self insertImage:image size:size index:self.attributedText.length > 0 ? self.attributedText.length : 0];
    [self text:image clean:size user:self.attributedText.length > 0 ? self.attributedText.length : 0];
}
/* 插入一张图片 image:要添加的图片 size:图片大小 index:插入的位置 */
//: - (void)insertImage:(UIImage *)image size:(CGSize)size index:(NSInteger)index {
- (void)text:(UIImage *)image clean:(CGSize)size user:(NSInteger)index {
    //: [self addImage:image size:size index:index multiple:-1];
    [self path:image missive:size manager:index up:-1];
}

/* 添加一张图片 image:要添加的图片 multiple:放大／缩小的倍数 */
//: - (void)addImage:(UIImage *)image multiple:(CGFloat)multiple {
- (void)range:(UIImage *)image imageSearched:(CGFloat)multiple {
    //: [self addImage:image size:CGSizeZero index:self.attributedText.length > 0 ? self.attributedText.length : 0 multiple:multiple];
    [self path:image missive:CGSizeZero manager:self.attributedText.length > 0 ? self.attributedText.length : 0 up:multiple];
}
/* 插入一张图片 image:要添加的图片 multiple:放大／缩小的倍数 index:插入的位置 */
//: - (void)insertImage:(UIImage *)image multiple:(CGFloat)multiple index:(NSInteger)index {
- (void)wipeAwayIndex:(UIImage *)image duringVisualizationFloat:(CGFloat)multiple disable:(NSInteger)index {
    //: [self addImage:image size:CGSizeZero index:index multiple:multiple];
    [self path:image missive:CGSizeZero manager:index up:multiple];
}

//: - (void)addImage:(UIImage *)image size:(CGSize)size index:(NSInteger)index multiple:(CGFloat)multiple {
- (void)path:(UIImage *)image missive:(CGSize)size manager:(NSInteger)index up:(CGFloat)multiple {
    //: if (image) [self.imageArray addObject:image];
    if (image) [self.imageArray addObject:image];
    //: NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //: NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    //: textAttachment.image = image;
    textAttachment.image = image;
    //: CGRect bounds = textAttachment.bounds;
    CGRect bounds = textAttachment.bounds;
    //: if (!__CGSizeEqualToSize(size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(size, CGSizeZero)) {
        //: bounds.size = size;
        bounds.size = size;
        //: textAttachment.bounds = bounds;
        textAttachment.bounds = bounds;
    //: } else if (multiple <= 0) {
    } else if (multiple <= 0) {
        //: CGFloat oldWidth = textAttachment.image.size.width;
        CGFloat oldWidth = textAttachment.image.size.width;
        //: CGFloat scaleFactor = oldWidth / (self.frame.size.width - 10);
        CGFloat scaleFactor = oldWidth / (self.frame.size.width - 10);
        //: textAttachment.image = [UIImage imageWithCGImage:textAttachment.image.CGImage scale:scaleFactor orientation:UIImageOrientationUp];
        textAttachment.image = [UIImage imageWithCGImage:textAttachment.image.CGImage scale:scaleFactor orientation:UIImageOrientationUp];
    //: } else {
    } else {
        //: bounds.size = image.size;
        bounds.size = image.size;
        //: textAttachment.bounds = bounds;
        textAttachment.bounds = bounds;
    }

    //: NSAttributedString *attrStringWithImage = [NSAttributedString attributedStringWithAttachment:textAttachment];
    NSAttributedString *attrStringWithImage = [NSAttributedString attributedStringWithAttachment:textAttachment];
    //: [attributedString replaceCharactersInRange:NSMakeRange(index, 0) withAttributedString:attrStringWithImage];
    [attributedString replaceCharactersInRange:NSMakeRange(index, 0) withAttributedString:attrStringWithImage];
    //: self.attributedText = attributedString;
    self.attributedText = attributedString;
    //: [self textViewTextChange];
    [self variationMedia];
    //: [self refreshPlaceholderView];
    [self reloadVersion];

}
//: @end
@end
