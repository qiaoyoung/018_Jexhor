// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMRtcCallRecordCntentConfig.m
// Secret
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushRtcCallRecordContentConfig.h"
#import "MaxConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"

//: @implementation PushRtcCallRecordContentConfig
@implementation MaxConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: NSString *text = [PushKitUtil messageTipContent:message];
    NSString *text = [KitUtil with:message];
    //: UIFont *font = [[MyUserKit sharedKit].config setting:message].font;;
    UIFont *font = [[Secret highlight].config click:message].font;;
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    //: contentSize.width +=25;
    contentSize.width +=25;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: return @"PushSessionRtcCallRecordContentView";
    return @"ToolControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Secret highlight].config click:message].contentInsets;
}

//: @end
@end
