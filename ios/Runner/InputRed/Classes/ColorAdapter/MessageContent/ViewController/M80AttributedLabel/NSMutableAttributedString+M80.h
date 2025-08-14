// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.h
//  VideoTextView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabelDefines.h"
#import "M80AttributedLabelDefines.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSMutableAttributedString (M80)
@interface NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color;
- (void)cleanDate:(UIColor*)color;
//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range;
- (void)status:(UIColor*)color militaryQuartersRange:(NSRange)range;

//: - (void)m80_setFont:(UIFont*)font;
- (void)doingKey:(UIFont*)font;
//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range;
- (void)be:(UIFont*)font overMenu:(NSRange)range;

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)ground:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier;
                 packet:(CTUnderlineStyleModifiers)modifier;
//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)analogDigitalConverter:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 session:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range;
                    color:(NSRange)range;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END