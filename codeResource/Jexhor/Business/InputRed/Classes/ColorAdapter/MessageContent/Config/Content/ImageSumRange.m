// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageSumRange.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkFileContentConfig.h"
#import "ImageSumRange.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation WorkFileContentConfig
@implementation ImageSumRange

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: return CGSizeMake(110, 110);
    return CGSizeMake(110, 110);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: return @"WorkSessionFileTransContentView";
    return @"ProviderControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}



//: @end
@end
