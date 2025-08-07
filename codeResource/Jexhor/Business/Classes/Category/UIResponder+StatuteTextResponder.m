// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+StatuteTextResponder.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+StatuteTextResponder.h"

//: static __weak id currentFirstResponder;
static __weak id appOffceText;
//: static __weak id currentSecodResponder;
static __weak id main_eventItemMessage;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (StatuteTextResponder)

//: + (instancetype)currentFirstResponder {
+ (instancetype)upwardlyDigitizer24HourMagnitudeerval {
    //: currentFirstResponder = nil;
    appOffceText = nil;
    //: currentSecodResponder = nil;
    main_eventItemMessage = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(untilMember:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return appOffceText;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)ordinal{
    //: currentFirstResponder = nil;
    appOffceText = nil;
    //: currentSecodResponder = nil;
    main_eventItemMessage = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(untilMember:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return main_eventItemMessage;
}

//: - (void)findFirstResponder:(id)sender {
- (void)untilMember:(id)sender {
    //: currentFirstResponder = self;
    appOffceText = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder equal:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)equal:(id)sender{
    //: currentSecodResponder = self;
    main_eventItemMessage = self;
}

//: @end
@end