// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.m
//  VideoTextView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableAttributedString+M80.h"
#import "NSMutableAttributedString+M80.h"

//: @implementation NSMutableAttributedString (M80)
@implementation NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color
- (void)cleanDate:(UIColor*)color
{
    //: [self m80_setTextColor:color range:NSMakeRange(0, [self length])];
    [self status:color militaryQuartersRange:NSMakeRange(0, [self length])];
}

//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range
- (void)status:(UIColor*)color militaryQuartersRange:(NSRange)range
{
    //: [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
    [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
}


//: - (void)m80_setFont:(UIFont*)font
- (void)doingKey:(UIFont*)font
{
    //: [self m80_setFont:font range:NSMakeRange(0, [self length])];
    [self be:font overMenu:NSMakeRange(0, [self length])];
}

//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range
- (void)be:(UIFont*)font overMenu:(NSRange)range
{
    //: if (font)
    if (font)
    {
        //: [self addAttributes:@{NSFontAttributeName:font} range:range];
        [self addAttributes:@{NSFontAttributeName:font} range:range];
    }
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)ground:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 packet:(CTUnderlineStyleModifiers)modifier
{
    //: [self m80_setUnderlineStyle:style
    [self analogDigitalConverter:style
                   //: modifier:modifier
                   session:modifier
                      //: range:NSMakeRange(0, self.length)];
                      color:NSMakeRange(0, self.length)];
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)analogDigitalConverter:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 session:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range
                    color:(NSRange)range
{
    //: [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
    [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
}

//: @end
@end