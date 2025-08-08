
#import <Foundation/Foundation.h>

@interface NameTagData : NSObject

@end

@implementation NameTagData

+ (Byte *)NameTagDataToCache:(Byte *)data {
    int glossy = data[0];
    int shout = data[1];
    for (int i = 0; i < glossy / 2; i++) {
        int begin = shout + i;
        int end = shout + glossy - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[shout + glossy] = 0;
    return data + shout;
}

+ (NSString *)StringFromNameTagData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NameTagDataToCache:data]];
}  

//: message should be audio
+ (NSString *)userWithPortionValue {
    /* static */ NSString *userWithPortionValue = nil;
    if (!userWithPortionValue) {
        Byte value[] = {23, 11, 224, 83, 199, 105, 196, 15, 92, 52, 44, 111, 105, 100, 117, 97, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 101, 103, 97, 115, 115, 101, 109, 211};
        userWithPortionValue = [self StringFromNameTagData:value];
    }
    return userWithPortionValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountConfig.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkAudioContentConfig.h"
#import "AccountConfig.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation WorkAudioContentConfig
@implementation AccountConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], [NameTagData userWithPortionValue]);


    //: CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    //: NSInteger audioContentMinWidth = 90;
    NSInteger audioContentMinWidth = 90;
    //: NSInteger audioContentMaxWidth = (cellWidth - 170);
    NSInteger audioContentMaxWidth = (cellWidth - 170);
    //: NSInteger audioContentHeight = 30;
    NSInteger audioContentHeight = 30;
//    return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
    //: return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
    return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: return @"WorkSessionAudioContentView";
    return @"ThreadView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}

//: @end
@end
