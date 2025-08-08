// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageFactorView.h
// MessageContent
//
//  Created by chris on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionMessageContentView.h"
#import "TextControl.h"
//: #import "WorkKitDependency.h"
#import "WorkKitDependency.h"

//: @interface WorkSessionNetChatNotifyContentView : WorkSessionMessageContentView
@interface MessageFactorView : TextControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) VideoTextView *textLabel;

//: @end
@end
