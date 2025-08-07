
#import <Foundation/Foundation.h>

@interface YaSuccessData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation YaSuccessData

+ (instancetype)sharedInstance {
    static YaSuccessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)YaSuccessDataToCache:(Byte *)data {
    int maxChange = data[0];
    int needColor = data[1];
    for (int i = 0; i < maxChange / 2; i++) {
        int begin = needColor + i;
        int end = needColor + maxChange - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[needColor + maxChange] = 0;
    return data + needColor;
}

- (NSString *)StringFromYaSuccessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self YaSuccessDataToCache:data]];
}  

//: 按住查看
- (NSString *)notiAccountingValue {
    /* static */ NSString *notiAccountingValue = nil;
    if (!notiAccountingValue) {
        Byte value[] = {12, 5, 234, 13, 179, 139, 156, 231, 165, 159, 230, 143, 189, 228, 137, 140, 230, 93};
        notiAccountingValue = [self StringFromYaSuccessData:value];
    }
    return notiAccountingValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResearchLabView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionSnapchatContentView.h"
#import "ResearchLabView.h"
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";
NSString *const dream_crossCornerValue = @"NIMDemoEventNameOpenSnapPicture";
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";
NSString *const mainUserValue = @"NIMDemoEventNameCloseSnapPicture";


//: @interface NTESSessionSnapchatContentView()
@interface ResearchLabView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation NTESSessionSnapchatContentView
@implementation ResearchLabView


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initViewKey{
    //: self = [super initSessionMessageContentView];
    self = [super initViewKey];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressedApp:)];
        //: [self addGestureRecognizer:_longpressGesture];
        [self addGestureRecognizer:_longpressGesture];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;//图片背景自带气泡。。

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:13.f];
        _label.font = [UIFont systemFontOfSize:13.f];
        //: _label.textColor = [UIColor grayColor];
        _label.textColor = [UIColor grayColor];
        //: _label.text = @"按住查看".ntes_localized;
        _label.text = [[YaSuccessData sharedInstance] notiAccountingValue].shouldLocalized;
        //: [_label sizeToFit];
        [_label sizeToFit];
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)model{
- (void)panorama:(ShowModel *)model{
    //: [super refresh:model];
    [super panorama:model];
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    PassePartoutAccount *attachment = (PassePartoutAccount *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉FFFMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self belowOf:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)belowOf:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(propertyLine:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate propertyLine:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    PassePartoutAccount *attachment = (PassePartoutAccount *)customObject.attachment;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: UIImage *showCoverImage = attachment.showCoverImage;
    UIImage *showCoverImage = attachment.showCoverImage;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;

    //: CGFloat customSnapMessageImageRightToText = 5.f;
    CGFloat customSnapMessageImageRightToText = 5.f;
    //: CGFloat customSnapMessageTextBottom = 20.f;
    CGFloat customSnapMessageTextBottom = 20.f;
    //: self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    //: self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
    self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
}



//: - (void)onLongPressDown:(UILongPressGestureRecognizer *)recognizer
- (void)pressedApp:(UILongPressGestureRecognizer *)recognizer
{
    //: NIMMessage *message = self.model.message;
    NIMMessage *message = self.model.message;
    //: if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
    if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
        //: return;
        return;
    }
    //: if (recognizer.state != UIGestureRecognizerStateBegan) {
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        //: return;
        return;
    }
    //: recognizer.enabled = NO;
    recognizer.enabled = NO;
    //: [self goOpen];
    [self phone];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)recorded:(id)sender{
    //: if (self.presentedView) {
    if (self.view) {
        //: [self goClose];
        [self getAbout];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)ting:(id)sender{
    //: if (self.presentedView) {
    if (self.view) {
        //: [self goClose];
        [self getAbout];
    }
}

//: - (void)goOpen{
- (void)phone{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(aboveImage:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = dream_crossCornerValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate aboveImage:event];
    }
}

//: - (void)goClose{
- (void)getAbout{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(aboveImage:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = mainUserValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate aboveImage:event];
    }
}


//: @end
@end