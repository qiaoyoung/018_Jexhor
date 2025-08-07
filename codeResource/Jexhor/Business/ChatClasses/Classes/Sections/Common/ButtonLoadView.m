
#import <Foundation/Foundation.h>

@interface RecallSwitchendData : NSObject

@end

@implementation RecallSwitchendData

+ (Byte *)RecallSwitchendDataToCache:(Byte *)data {
    int labelSeries = data[0];
    Byte dipCountoLocal = data[1];
    int labelDelete = data[2];
    for (int i = labelDelete; i < labelDelete + labelSeries; i++) {
        int value = data[i] + dipCountoLocal;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[labelDelete + labelSeries] = 0;
    return data + labelDelete;
}

+ (NSString *)StringFromRecallSwitchendData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RecallSwitchendDataToCache:data]];
}

//: V:|-0-[_progressView]-0-|
+ (NSString *)show_robotName {
    /* static */ NSString *show_robotName = nil;
    if (!show_robotName) {
        Byte value[] = {25, 53, 5, 43, 122, 33, 5, 71, 248, 251, 248, 38, 42, 59, 61, 58, 50, 61, 48, 62, 62, 33, 52, 48, 66, 40, 248, 251, 248, 71, 217};
        show_robotName = [self StringFromRecallSwitchendData:value];
    }
    return show_robotName;
}

//: #A148FF
+ (NSString *)show_commentValue {
    /* static */ NSString *show_commentValue = nil;
    if (!show_commentValue) {
        Byte value[] = {7, 86, 4, 221, 205, 235, 219, 222, 226, 240, 240, 161};
        show_commentValue = [self StringFromRecallSwitchendData:value];
    }
    return show_commentValue;
}

//: H:|-0-[_progressView]-0-|
+ (NSString *)notiThreadText {
    /* static */ NSString *notiThreadText = nil;
    if (!notiThreadText) {
        Byte value[] = {25, 89, 5, 209, 39, 239, 225, 35, 212, 215, 212, 2, 6, 23, 25, 22, 14, 25, 12, 26, 26, 253, 16, 12, 30, 4, 212, 215, 212, 35, 43};
        notiThreadText = [self StringFromRecallSwitchendData:value];
    }
    return notiThreadText;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonLoadView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoadProgressView.h"
#import "ButtonLoadView.h"

//: @implementation FFFLoadProgressView
@implementation ButtonLoadView

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
        self.progressView.tintColor = [UIColor ground:[RecallSwitchendData show_commentValue]];
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[QuantityHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];

        //: [self addSubview:self.progressView];
        [self addSubview:self.progressView];

        //: NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[RecallSwitchendData show_robotName] options:0 metrics:nil views:views]];
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[RecallSwitchendData notiThreadText] options:0 metrics:nil views:views]];

    }

    //: return self;
    return self;
}



//: - (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
- (void)pop:(CGRect)maskRect toiletKit:(UIImageView*)messageContentImageView
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
    [self pop:frame toiletKit:_maskView];
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setFind:(CGFloat)progress {
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