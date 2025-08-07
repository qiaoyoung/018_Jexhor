
#import <Foundation/Foundation.h>

@interface CageData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CageData

+ (instancetype)sharedInstance {
    static CageData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CageDataToCache:(Byte *)data {
    int seizeRagePath = data[0];
    Byte bornBlankAuthorize = data[1];
    int crucialCelebrity = data[2];
    for (int i = crucialCelebrity; i < crucialCelebrity + seizeRagePath; i++) {
        int value = data[i] + bornBlankAuthorize;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[crucialCelebrity + seizeRagePath] = 0;
    return data + crucialCelebrity;
}

- (NSString *)StringFromCageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CageDataToCache:data]];
}

//: message must be custom
- (NSString *)k_audienceFormat {
    /* static */ NSString *k_audienceFormat = nil;
    if (!k_audienceFormat) {
        Byte value[] = {22, 38, 13, 81, 227, 176, 130, 85, 171, 118, 26, 247, 66, 71, 63, 77, 77, 59, 65, 63, 250, 71, 79, 77, 78, 250, 60, 63, 250, 61, 79, 77, 78, 73, 71, 30};
        k_audienceFormat = [self StringFromCageData:value];
    }
    return k_audienceFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClinicConfig.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "ClinicConfig.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface ClinicConfig()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation ClinicConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[CageData sharedInstance] k_audienceFormat]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<CreateInfo> info = (id<CreateInfo>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info cell:message threadInWidth:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[CageData sharedInstance] k_audienceFormat]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<CreateInfo> info = (id<CreateInfo>)object.attachment;
    //: return [info cellContent:message];
    return [info chemicalElementName:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[CageData sharedInstance] k_audienceFormat]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<CreateInfo> info = (id<CreateInfo>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info visualPercept:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)linked:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [[CageData sharedInstance] k_audienceFormat]);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<CreateInfo> info = (id<CreateInfo>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(descriptionned:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info descriptionned:message];
}


//: @end
@end