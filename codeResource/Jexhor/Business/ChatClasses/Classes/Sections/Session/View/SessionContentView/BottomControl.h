// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomControl.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionMessageContentView.h"
#import "TextControl.h"

//: @class M80AttributedLabel;
@class VideoTextView;

//: @interface WorkSessionTextContentView : WorkSessionMessageContentView
@interface BottomControl : TextControl

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) VideoTextView *textView;

//: @end
@end
