
#import <Foundation/Foundation.h>

@interface RecipientData : NSObject

+ (instancetype)sharedInstance;

//: icon_whiteboard_session_msg
@property (nonatomic, copy) NSString *noti_enableName;

@end

@implementation RecipientData

+ (instancetype)sharedInstance {
    static RecipientData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RecipientDataToCache:(Byte *)data {
    int adviser = data[0];
    int child = data[1];
    for (int i = 0; i < adviser / 2; i++) {
        int begin = child + i;
        int end = child + adviser - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[child + adviser] = 0;
    return data + child;
}

- (NSString *)StringFromRecipientData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RecipientDataToCache:data]];
}  

//: icon_whiteboard_session_msg
- (NSString *)noti_enableName {
    if (!_noti_enableName) {
        Byte value[] = {27, 12, 181, 225, 66, 138, 97, 207, 255, 75, 123, 252, 103, 115, 109, 95, 110, 111, 105, 115, 115, 101, 115, 95, 100, 114, 97, 111, 98, 101, 116, 105, 104, 119, 95, 110, 111, 99, 105, 149};
        _noti_enableName = [self StringFromRecipientData:value];
    }
    return _noti_enableName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeModelControl.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "ChangeModelControl.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "M80AttributedLabel.h"
#import "InsertView.h"
//: #import "FFFKitUtil.h"
#import "KitUtil.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface ChangeModelControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation ChangeModelControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initAssemblage
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initAssemblage]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[InsertView alloc] initWithFrame:CGRectZero];
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
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[RecipientData sharedInstance].noti_enableName]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)name:(PurseModel *)data{
    //: [super refresh:data];
    [super name:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    DoingAttachment *attach = (DoingAttachment *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.menuOn;

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
    CGSize contentSize = [self.model victoryQuery:tableViewWidth];
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