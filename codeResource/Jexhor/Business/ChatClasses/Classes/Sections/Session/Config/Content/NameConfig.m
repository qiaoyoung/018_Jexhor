
#import <Foundation/Foundation.h>

NSString *StringFromDownwardsData(Byte *data);


//: message should be audio
Byte mainMaxiIdent[] = {16, 23, 9, 88, 29, 4, 140, 167, 131, 111, 105, 100, 117, 97, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 101, 103, 97, 115, 115, 101, 109, 23};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameConfig.m
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAudioContentConfig.h"
#import "NameConfig.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @implementation FFFAudioContentConfig
@implementation NameConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], StringFromDownwardsData(mainMaxiIdent));


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
- (NSString *)session:(NIMMessage *)message
{
    //: return @"FFFSessionAudioContentView";
    return @"ReadControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Secret highlight].config click:message].contentInsets;
}

//: @end
@end

Byte * DownwardsDataToCache(Byte *data) {
    int balanced = data[0];
    int artGenerally = data[1];
    int lividity = data[2];
    if (!balanced) return data + lividity;
    for (int i = 0; i < artGenerally / 2; i++) {
        int begin = lividity + i;
        int end = lividity + artGenerally - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[lividity + artGenerally] = 0;
    return data + lividity;
}

NSString *StringFromDownwardsData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DownwardsDataToCache(data)];
}  
