
#import <Foundation/Foundation.h>

@interface ByHandleData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ByHandleData

+ (instancetype)sharedInstance {
    static ByHandleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ByHandleDataToCache:(Byte *)data {
    int disableLength = data[0];
    Byte bigness = data[1];
    int crisis = data[2];
    for (int i = crisis; i < crisis + disableLength; i++) {
        int value = data[i] - bigness;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[crisis + disableLength] = 0;
    return data + crisis;
}

- (NSString *)StringFromByHandleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ByHandleDataToCache:data]];
}

//: icon_whiteboard_session_msg
- (NSString *)notiBrokerValue {
    /* static */ NSString *notiBrokerValue = nil;
    if (!notiBrokerValue) {
        Byte value[] = {27, 70, 8, 218, 181, 178, 222, 42, 175, 169, 181, 180, 165, 189, 174, 175, 186, 171, 168, 181, 167, 184, 170, 165, 185, 171, 185, 185, 175, 181, 180, 165, 179, 185, 173, 62};
        notiBrokerValue = [self StringFromByHandleData:value];
    }
    return notiBrokerValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BoardMemberView.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "BoardMemberView.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface BoardMemberView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation BoardMemberView

//: -(instancetype)initSessionMessageContentView
-(instancetype)initViewKey
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initViewKey]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[VideoTextView alloc] initWithFrame:CGRectZero];
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[[ByHandleData sharedInstance] notiBrokerValue]]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)panorama:(ShowModel *)data{
    //: [super refresh:data];
    [super panorama:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    ClickText *attach = (ClickText *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.incandescenceLine;

    //: [_textLabel setText:text];
    [_textLabel setText:text];
    //: if (!data.message.isOutgoingMsg) {
    if (!data.message.isOutgoingMsg) {
        //: _textLabel.textColor = [UIColor blackColor];
        _textLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: _textLabel.textColor = [UIColor whiteColor];
        _textLabel.textColor = [UIColor whiteColor];
    }

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.width;
    CGFloat tableViewWidth = self.superview.width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model all:tableViewWidth];
    //: self.imageView.left = contentInsets.left;
    self.imageView.left = contentInsets.left;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    //: CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}
//: @end
@end