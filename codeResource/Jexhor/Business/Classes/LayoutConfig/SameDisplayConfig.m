
#import <Foundation/Foundation.h>

NSString *StringFromInfoLimitData(Byte *data);


//: message must be custom
Byte main_highlightValue[] = {76, 22, 7, 203, 18, 130, 254, 109, 111, 116, 115, 117, 99, 32, 101, 98, 32, 116, 115, 117, 109, 32, 101, 103, 97, 115, 115, 101, 109, 210};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SameDisplayConfig.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "SameDisplayConfig.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface SameDisplayConfig()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation SameDisplayConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromInfoLimitData(main_highlightValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<GermanismInfo> info = (id<GermanismInfo>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info colorSearched:message selectWidth:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromInfoLimitData(main_highlightValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<GermanismInfo> info = (id<GermanismInfo>)object.attachment;
    //: return [info cellContent:message];
    return [info provider:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromInfoLimitData(main_highlightValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<GermanismInfo> info = (id<GermanismInfo>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info key:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)bubbled:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromInfoLimitData(main_highlightValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<GermanismInfo> info = (id<GermanismInfo>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(pilloried:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info pilloried:message];
}


//: @end
@end

Byte * InfoLimitDataToCache(Byte *data) {
    int twinge = data[0];
    int exhibitComment = data[1];
    int shouldAgainst = data[2];
    if (!twinge) return data + shouldAgainst;
    for (int i = 0; i < exhibitComment / 2; i++) {
        int begin = shouldAgainst + i;
        int end = shouldAgainst + exhibitComment - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[shouldAgainst + exhibitComment] = 0;
    return data + shouldAgainst;
}

NSString *StringFromInfoLimitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)InfoLimitDataToCache(data)];
}  
