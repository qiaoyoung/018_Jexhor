// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+MessageNeed.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+MessageNeed.h"

//: static __weak id currentFirstResponder;
static __weak id dream_editStateTapValue;
//: static __weak id currentSecodResponder;
static __weak id show_versionName;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (MessageNeed)

//: + (instancetype)currentFirstResponder {
+ (instancetype)output {
    //: currentFirstResponder = nil;
    dream_editStateTapValue = nil;
    //: currentSecodResponder = nil;
    show_versionName = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(infoResponder:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return dream_editStateTapValue;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)message{
    //: currentFirstResponder = nil;
    dream_editStateTapValue = nil;
    //: currentSecodResponder = nil;
    show_versionName = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(infoResponder:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return show_versionName;
}

//: - (void)findFirstResponder:(id)sender {
- (void)infoResponder:(id)sender {
    //: currentFirstResponder = self;
    dream_editStateTapValue = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder textDown:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)textDown:(id)sender{
    //: currentSecodResponder = self;
    show_versionName = self;
}

//: @end
@end