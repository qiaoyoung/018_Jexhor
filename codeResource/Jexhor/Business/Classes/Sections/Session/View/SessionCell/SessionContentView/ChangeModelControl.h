// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeModelControl.h
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"

//: @class M80AttributedLabel;
@class InsertView;




//: @interface NTESSessionWhiteBoardContentView : PushSessionMessageContentView
@interface ChangeModelControl : MoldControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) InsertView *textLabel;

//: @end
@end
