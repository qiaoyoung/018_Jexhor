// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordView.h
//  天天网
//
//  Created by zhaoweibing on 14-4-25.
//  Copyright (c) 2014年 Ios. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface ShowNotice : UIView
@interface RecordView : UIView

//: + (ShowNotice *)showNoticeTo:(UIView *)view animated:(BOOL)animated;
+ (RecordView *)blue:(UIView *)view status:(BOOL)animated;

//: - (void)hideNoticeAnimated:(BOOL)animated;
- (void)tingAnimated:(BOOL)animated;


//: @end
@end