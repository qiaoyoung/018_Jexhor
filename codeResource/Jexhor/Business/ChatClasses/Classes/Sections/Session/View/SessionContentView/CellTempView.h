// __DEBUG__
// __CLOSE_PRINT__
//
//  CellTempView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "MoldControl.h"

//: @class M80AttributedLabel;
@class InsertView;

//: @interface FFFSessionTextContentView : FFFSessionMessageContentView
@interface CellTempView : MoldControl

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) InsertView *textView;

//: @end
@end