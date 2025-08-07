
#import <Foundation/Foundation.h>

@interface EqualData : NSObject

+ (instancetype)sharedInstance;

//: H:|-0-[_progressView]-0-|
@property (nonatomic, copy) NSString *kEconomicTitle;

//: #A148FF
@property (nonatomic, copy) NSString *k_rabbitName;

//: V:|-0-[_progressView]-0-|
@property (nonatomic, copy) NSString *k_recipientColdId;

@end

@implementation EqualData

+ (instancetype)sharedInstance {
    static EqualData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EqualDataToCache:(Byte *)data {
    int cramExpose = data[0];
    Byte snapTerm = data[1];
    int involved = data[2];
    for (int i = involved; i < involved + cramExpose; i++) {
        int value = data[i] + snapTerm;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[involved + cramExpose] = 0;
    return data + involved;
}

- (NSString *)StringFromEqualData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EqualDataToCache:data]];
}

//: V:|-0-[_progressView]-0-|
- (NSString *)k_recipientColdId {
    if (!_k_recipientColdId) {
        Byte value[] = {25, 76, 4, 12, 10, 238, 48, 225, 228, 225, 15, 19, 36, 38, 35, 27, 38, 25, 39, 39, 10, 29, 25, 43, 17, 225, 228, 225, 48, 173};
        _k_recipientColdId = [self StringFromEqualData:value];
    }
    return _k_recipientColdId;
}

//: H:|-0-[_progressView]-0-|
- (NSString *)kEconomicTitle {
    if (!_kEconomicTitle) {
        Byte value[] = {25, 86, 7, 62, 107, 222, 174, 242, 228, 38, 215, 218, 215, 5, 9, 26, 28, 25, 17, 28, 15, 29, 29, 0, 19, 15, 33, 7, 215, 218, 215, 38, 188};
        _kEconomicTitle = [self StringFromEqualData:value];
    }
    return _kEconomicTitle;
}

//: #A148FF
- (NSString *)k_rabbitName {
    if (!_k_rabbitName) {
        Byte value[] = {7, 97, 11, 54, 135, 37, 40, 105, 194, 213, 38, 194, 224, 208, 211, 215, 229, 229, 166};
        _k_rabbitName = [self StringFromEqualData:value];
    }
    return _k_rabbitName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GeorgiaHomeBoyView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoadProgressView.h"
#import "GeorgiaHomeBoyView.h"

//: @implementation FFFLoadProgressView
@implementation GeorgiaHomeBoyView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: if (self) {
    if (self) {
        //: _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        //: [self addSubview:_maskView];
        [self addSubview:_maskView];

//        _progressLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _progressLabel.backgroundColor = [UIColor clearColor];
//        _progressLabel.font = [UIFont systemFontOfSize:16];
//        _progressLabel.textColor = [UIColor whiteColor];
//        [self addSubview:_progressLabel];
//
//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//        [self addSubview:_activity];

        //: self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        //: self.progressView.backgroundColor = [UIColor clearColor];
        self.progressView.backgroundColor = [UIColor clearColor];
        //: self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        //: self.progressView.showsText = YES;
        self.progressView.showsText = YES;
        //: self.progressView.tintColor = [UIColor colorWithHexString:@"#A148FF"];
        self.progressView.tintColor = [UIColor user:[EqualData sharedInstance].k_rabbitName];
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[BubbleHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];

        //: [self addSubview:self.progressView];
        [self addSubview:self.progressView];

        //: NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[EqualData sharedInstance].k_recipientColdId options:0 metrics:nil views:views]];
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[EqualData sharedInstance].kEconomicTitle options:0 metrics:nil views:views]];

    }

    //: return self;
    return self;
}



//: - (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
- (void)soapBubble:(CGRect)maskRect upMask:(UIImageView*)messageContentImageView
{
    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.frame = maskRect;
    maskLayer.frame = maskRect;
    //: maskLayer.contentsGravity = kCAGravityResize;
    maskLayer.contentsGravity = kCAGravityResize;


    //: messageContentImageView.layer.mask = maskLayer;
    messageContentImageView.layer.mask = maskLayer;
    //: messageContentImageView.layer.masksToBounds = YES;
    messageContentImageView.layer.masksToBounds = YES;
}
//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _maskView.frame = self.bounds;
    _maskView.frame = self.bounds;

//    CGFloat activityHeight = CGRectGetHeight(_activity.bounds);
//    CGSize  size = [_progressLabel.text sizeWithAttributes:@{NSFontAttributeName:_progressLabel.font}];
//
//    CGFloat progressHeight = size.height;
//
//    CGFloat totalHeight = activityHeight;
//    if (progressHeight) {
//        totalHeight += kPadding + size.height;
//    }
//
//    CGFloat y = (CGRectGetHeight(self.bounds) - totalHeight)/2.0;
//    _activity.center = CGPointMake(CGRectGetMidX(self.bounds), y+CGRectGetMidY(_activity.bounds));
//
//    _progressLabel.bounds = CGRectMake(0, 0, size.width, size.height);
//    _progressLabel.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMaxY(_activity.frame) + kPadding + size.height/2.0);


    //: CGRect frame = self.bounds;
    CGRect frame = self.bounds;
    //: frame.origin.x = frame.origin.x - 4;
    frame.origin.x = frame.origin.x - 4;
    //: frame.origin.y = frame.origin.y - 4;
    frame.origin.y = frame.origin.y - 4;
    //: frame.size.width = frame.size.width + 12;
    frame.size.width = frame.size.width + 12;
    //: frame.size.height = frame.size.height + 8;
    frame.size.height = frame.size.height + 8;
    //: [self maskBubbleImageView:frame markImageView:_maskView];
    [self soapBubble:frame upMask:_maskView];
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setClean:(CGFloat)progress {
    //: if (progress > self.maxProgress) {
    if (progress > self.maxProgress) {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(self.maxProgress*100)];
//        [_activity stopAnimating];
    //: }else if (progress <= 0) {
    }else if (progress <= 0) {
//        _progressLabel.text = @"0%";
//        [_activity startAnimating];
    //: }else {
    }else {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(progress*100)];
//        [_activity startAnimating];
        //: self.progressView.progress = progress;
        self.progressView.progress = progress;
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: @end
@end