// __DEBUG__
// __CLOSE_PRINT__
//
//  PacketConfig.m
// MessageContent
//
//  Created by chris on 16/1/21.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkTipContentConfig.h"
#import "PacketConfig.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation WorkTipContentConfig
@implementation PacketConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: CGFloat messageWidth = cellWidth;
    CGFloat messageWidth = cellWidth;
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = [WorkKitUtil messageTipContent:message];
    label.text = [WantUtil tingAcross:message];
    //: label.font = [[MyUserKit sharedKit].config setting:message].font;
    label.font = [[MessageContent secretResolution].config ofSetting:message].font;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [MessageContent secretResolution].config.close;
    //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: return @"WorkSessionNotificationContentView";
    return @"SoundView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)bubbled:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end
