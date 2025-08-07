// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageLine.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "MessageLine.h"

//: @implementation SelectedListModel
@implementation MessageLine

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithHockeyTeam:(NSInteger)sid
                      //: Title:(NSString *)title{
                      message:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[MessageLine alloc] initWithName:sid layer:title contextPressedSelect:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithName:(NSInteger)sid
                      //: Title:(NSString *)title
                      layer:(NSString *)title
                    //: Context:(id)context{
                    contextPressedSelect:(id)context{

    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: _sid = sid;
        _sid = sid;

        //: _title = title;
        _title = title;

        //: _context = context;
        _context = context;
    }

    //: return self;
    return self;
}

//: @end
@end