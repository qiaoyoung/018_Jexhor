// __DEBUG__
// __CLOSE_PRINT__
//
//  ControlView.h
// Secret
//
//  Created by chris on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"
//: #import "PushKitDependency.h"
#import "PushKitDependency.h"

//: @interface PushSessionNetChatNotifyContentView : PushSessionMessageContentView
@interface ControlView : MoldControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) InsertView *textLabel;

//: @end
@end
