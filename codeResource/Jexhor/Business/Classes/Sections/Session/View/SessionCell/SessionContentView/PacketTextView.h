// __DEBUG__
// __CLOSE_PRINT__
//
//  PacketTextView.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionMessageContentView.h"
#import "TextControl.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const m_libraryValue = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : WorkSessionMessageContentView
@interface PacketTextView : TextControl

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) VideoTextView *label;

//: @end
@end
