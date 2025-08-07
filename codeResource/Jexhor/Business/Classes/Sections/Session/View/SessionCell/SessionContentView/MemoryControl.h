// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryControl.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"
//: #import "M80AttributedLabel.h"
#import "InsertView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const main_dataValue = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : PushSessionMessageContentView
@interface MemoryControl : MoldControl

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) InsertView *label;

//: @end
@end
