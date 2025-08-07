
#import <Foundation/Foundation.h>

@interface ShowAspectData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ShowAspectData

+ (instancetype)sharedInstance {
    static ShowAspectData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ShowAspectDataToCache:(Byte *)data {
    int colorView = data[0];
    Byte discovery = data[1];
    int wakeStress = data[2];
    for (int i = wakeStress; i < wakeStress + colorView; i++) {
        int value = data[i] + discovery;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[wakeStress + colorView] = 0;
    return data + wakeStress;
}

- (NSString *)StringFromShowAspectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShowAspectDataToCache:data]];
}

//: 按住查看
- (NSString *)appMoralFabricKey {
    /* static */ NSString *appMoralFabricKey = nil;
    if (!appMoralFabricKey) {
        Byte value[] = {12, 35, 13, 118, 141, 108, 255, 23, 199, 128, 187, 236, 1, 195, 105, 102, 193, 154, 108, 195, 124, 130, 196, 121, 104, 107};
        appMoralFabricKey = [self StringFromShowAspectData:value];
    }
    return appMoralFabricKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellContentView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionSnapchatContentView.h"
#import "CellContentView.h"
//: #import "NTESSnapchatAttachment.h"
#import "NameAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";
NSString *const showFlexibleCenterMacId = @"NIMDemoEventNameOpenSnapPicture";
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";
NSString *const mainNameStr = @"NIMDemoEventNameCloseSnapPicture";


//: @interface NTESSessionSnapchatContentView()
@interface CellContentView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation NTESSessionSnapchatContentView
@implementation CellContentView


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initAssemblage{
    //: self = [super initSessionMessageContentView];
    self = [super initAssemblage];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(viewing:)];
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
        _label.text = [[ShowAspectData sharedInstance] appMoralFabricKey].ting;
        //: [_label sizeToFit];
        [_label sizeToFit];
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)model{
- (void)name:(PurseModel *)model{
    //: [super refresh:model];
    [super name:model];
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    NameAttachment *attachment = (NameAttachment *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉FFFMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self picture:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)picture:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(duringFrame:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate duringFrame:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    NameAttachment *attachment = (NameAttachment *)customObject.attachment;
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
- (void)viewing:(UILongPressGestureRecognizer *)recognizer
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
    [self vertical];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)played:(id)sender{
    //: if (self.presentedView) {
    if (self.tableMessage) {
        //: [self goClose];
        [self spectrum];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)pasting:(id)sender{
    //: if (self.presentedView) {
    if (self.tableMessage) {
        //: [self goClose];
        [self spectrum];
    }
}

//: - (void)goOpen{
- (void)vertical{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(parametering:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        BeforeEvent *event = [[BeforeEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = showFlexibleCenterMacId;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate parametering:event];
    }
}

//: - (void)goClose{
- (void)spectrum{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(parametering:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        BeforeEvent *event = [[BeforeEvent alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = mainNameStr;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate parametering:event];
    }
}


//: @end
@end