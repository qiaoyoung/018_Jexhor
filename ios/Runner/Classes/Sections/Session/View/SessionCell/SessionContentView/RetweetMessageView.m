
#import <Foundation/Foundation.h>

@interface StorageMediumData : NSObject

+ (instancetype)sharedInstance;

//: 聊天记录
@property (nonatomic, copy) NSString *notiPollutionValue;

//: SendTextViewBkg
@property (nonatomic, copy) NSString *mainRowValue;

//: {18,25,17,25}
@property (nonatomic, copy) NSString *kColorContent;

//: null
@property (nonatomic, copy) NSString *app_scaleContent;

@end

@implementation StorageMediumData

+ (instancetype)sharedInstance {
    static StorageMediumData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StorageMediumDataToCache:(Byte *)data {
    int showOn = data[0];
    Byte textCousin = data[1];
    int atAssault = data[2];
    for (int i = atAssault; i < atAssault + showOn; i++) {
        int value = data[i] + textCousin;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[atAssault + showOn] = 0;
    return data + atAssault;
}

- (NSString *)StringFromStorageMediumData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StorageMediumDataToCache:data]];
}

//: SendTextViewBkg
- (NSString *)mainRowValue {
    if (!_mainRowValue) {
        Byte value[] = {15, 95, 13, 9, 252, 166, 36, 133, 3, 103, 152, 111, 47, 244, 6, 15, 5, 245, 6, 25, 21, 247, 10, 6, 24, 227, 12, 8, 221};
        _mainRowValue = [self StringFromStorageMediumData:value];
    }
    return _mainRowValue;
}

//: null
- (NSString *)app_scaleContent {
    if (!_app_scaleContent) {
        Byte value[] = {4, 47, 3, 63, 70, 61, 61, 5};
        _app_scaleContent = [self StringFromStorageMediumData:value];
    }
    return _app_scaleContent;
}

//: {18,25,17,25}
- (NSString *)kColorContent {
    if (!_kColorContent) {
        Byte value[] = {13, 54, 4, 53, 69, 251, 2, 246, 252, 255, 246, 251, 1, 246, 252, 255, 71, 254};
        _kColorContent = [self StringFromStorageMediumData:value];
    }
    return _kColorContent;
}

//: 聊天记录
- (NSString *)notiPollutionValue {
    if (!_notiPollutionValue) {
        Byte value[] = {12, 36, 13, 34, 22, 77, 129, 52, 70, 48, 50, 6, 42, 196, 93, 102, 193, 128, 133, 196, 138, 140, 193, 153, 113, 37};
        _notiPollutionValue = [self StringFromStorageMediumData:value];
    }
    return _notiPollutionValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RetweetMessageView.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMultiRetweetContentView.h"
#import "RetweetMessageView.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ViewColor.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"

//: NSString *const NIMDemoEventNameOpenMergeMessage = @"NIMDemoEventNameOpenMergeMessage";
NSString *const mMinValue = @"NIMDemoEventNameOpenMergeMessage";

//: @interface NTESSessionMultiRetweetContentView ()
@interface RetweetMessageView ()

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSMutableArray <M80AttributedLabel *> *messageLabs;
@property (nonatomic, strong) NSMutableArray <VideoTextView *> *messageLabs;

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UIImage *bkNormalImage;
@property (nonatomic, strong) UIImage *bkNormalImage;

//: @property (nonatomic, strong) UIButton *touchBtn;
@property (nonatomic, strong) UIButton *touchBtn;

//: @end
@end

//: @implementation NTESSessionMultiRetweetContentView
@implementation RetweetMessageView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initViewKey{
    //: self = [super initSessionMessageContentView];
    self = [super initViewKey];
    //: if (self) {
    if (self) {
        //: static UIImage *bkNormalImage = nil;
        static UIImage *bkNormalImage = nil;
        //: static dispatch_once_t onceToken;
        static dispatch_once_t onceToken;
        //: _dispatch_once(&onceToken, ^{
        _dispatch_once(&onceToken, ^{
            //: bkNormalImage = [[UIImage imageNamed:@"SendTextViewBkg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            bkNormalImage = [[UIImage imageNamed:[StorageMediumData sharedInstance].mainRowValue] resizableImageWithCapInsets:UIEdgeInsetsFromString([StorageMediumData sharedInstance].kColorContent) resizingMode:UIImageResizingModeStretch];
        //: });
        });
        //: _bkNormalImage = bkNormalImage;
        _bkNormalImage = bkNormalImage;
        //: _messageLabs = [NSMutableArray array];
        _messageLabs = [NSMutableArray array];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.line];
        [self addSubview:self.line];
        //: [self addSubview:self.subTitleLabel];
        [self addSubview:self.subTitleLabel];
        //: [self addSubview:self.touchBtn];
        [self addSubview:self.touchBtn];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(WorkMessageModel *)data{
- (void)panorama:(ShowModel *)data{
    //: [super refresh:data];
    [super panorama:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESMultiRetweetAttachment *attachment = (NTESMultiRetweetAttachment *)object.attachment;
    ViewColor *attachment = (ViewColor *)object.attachment;

    //: [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: [_messageLabs removeAllObjects];
    [_messageLabs removeAllObjects];

    //: _titleLabel.text = [attachment formatTitleMessage];
    _titleLabel.text = [attachment alongMessage];

    //: for (NTESMessageAbstract *abstract in attachment.abstracts) {
    for (TeamAbstract *abstract in attachment.abstracts) {
        //: M80AttributedLabel *lab = [self setupMessageLabel];
        VideoTextView *lab = [self circleHolder];
        //: [lab nim_setText:[attachment formatAbstractMessage:abstract]];
        [lab infoCookie:[attachment end:abstract]];
        //: [_messageLabs addObject:lab];
        [_messageLabs addObject:lab];
        //: [self addSubview:lab];
        [self addSubview:lab];
    }
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing {
- (UIImage *)text:(UIControlState)state on:(BOOL)outgoing {
    //: return _bkNormalImage;
    return _bkNormalImage;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat inset = 12.0;
    CGFloat inset = 12.0;
    //: _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    //: if (_messageLabs.count != 0) {
    if (_messageLabs.count != 0) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: __block CGFloat yOffset = 0;
        __block CGFloat yOffset = 0;
        //: [_messageLabs enumerateObjectsUsingBlock:^(M80AttributedLabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_messageLabs enumerateObjectsUsingBlock:^(VideoTextView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            //: obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            //: yOffset += (obj.height + padding);
            yOffset += (obj.height + padding);
        //: }];
        }];
        //: M80AttributedLabel *lastLab = [_messageLabs lastObject];
        VideoTextView *lastLab = [_messageLabs lastObject];
        //: _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
    //: } else {
    } else {
        //: _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
    }
    //: _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    //: _touchBtn.frame = self.bounds;
    _touchBtn.frame = self.bounds;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)touchAction:(UIButton *)sender {
- (void)ofs:(UIButton *)sender {
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(aboveImage:)]) {
        //: WorkKitEvent *event = [[WorkKitEvent alloc] init];
        WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
        //: event.eventName = NIMDemoEventNameOpenMergeMessage;
        event.eventName = mMinValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate aboveImage:event];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        //: _titleLabel.text = @"null";
        _titleLabel.text = [StorageMediumData sharedInstance].app_scaleContent;
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: [_titleLabel sizeToFit];
        [_titleLabel sizeToFit];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)subTitleLabel {
- (UILabel *)subTitleLabel {
    //: if (!_subTitleLabel) {
    if (!_subTitleLabel) {
        //: _subTitleLabel = [self setupContentLabel];
        _subTitleLabel = [self to];
        //: _subTitleLabel.text = @"聊天记录".ntes_localized;
        _subTitleLabel.text = [StorageMediumData sharedInstance].notiPollutionValue.shouldLocalized;
        //: [_subTitleLabel sizeToFit];
        [_subTitleLabel sizeToFit];
    }
    //: return _subTitleLabel;
    return _subTitleLabel;
}

//: - (UIButton *)touchBtn {
- (UIButton *)touchBtn {
    //: if (!_touchBtn) {
    if (!_touchBtn) {
        //: _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_touchBtn addTarget:self action:@selector(touchAction:) forControlEvents:UIControlEventTouchUpInside];
        [_touchBtn addTarget:self action:@selector(ofs:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _touchBtn;
    return _touchBtn;
}


//: - (UILabel *)setupContentLabel {
- (UILabel *)to {
    //: UILabel *ret = [[UILabel alloc] init];
    UILabel *ret = [[UILabel alloc] init];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.textAlignment = NSTextAlignmentLeft;
    ret.textAlignment = NSTextAlignmentLeft;
    //: ret.text = @"null";
    ret.text = [StorageMediumData sharedInstance].app_scaleContent;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: [ret sizeToFit];
    [ret sizeToFit];
    //: return ret;
    return ret;
}

//: - (M80AttributedLabel *)setupMessageLabel {
- (VideoTextView *)circleHolder {
    //: M80AttributedLabel *ret = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    VideoTextView *ret = [[VideoTextView alloc] initWithFrame:CGRectZero];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.numberOfLines = 1;
    ret.numberOfLines = 1;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: return ret;
    return ret;
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor lightGrayColor];
        _line.backgroundColor = [UIColor lightGrayColor];
    }
    //: return _line;
    return _line;
}
//: @end
@end
