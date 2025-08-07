
#import <Foundation/Foundation.h>

NSString *StringFromMiddleData(Byte *data);


//: NTESChatroomTextContentView
Byte notiVideoShowText[] = {73, 27, 41, 4, 119, 125, 110, 124, 108, 145, 138, 157, 155, 152, 152, 150, 125, 142, 161, 157, 108, 152, 151, 157, 142, 151, 157, 127, 146, 142, 160, 153};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThreadConfig.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "ThreadConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface ThreadConfig()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) VideoTextView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation ThreadConfig

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label infoCookie:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return StringFromMiddleData(notiVideoShowText);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (VideoTextView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[VideoTextView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)bubbled:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end

Byte * MiddleDataToCache(Byte *data) {
    int demonstrateDog = data[0];
    int zingBind = data[1];
    Byte lengthEducator = data[2];
    int judgment = data[3];
    if (!demonstrateDog) return data + judgment;
    for (int i = judgment; i < judgment + zingBind; i++) {
        int value = data[i] - lengthEducator;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[judgment + zingBind] = 0;
    return data + judgment;
}

NSString *StringFromMiddleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MiddleDataToCache(data)];
}
