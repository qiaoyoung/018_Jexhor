// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceCenterModel.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "DeviceCenterModel.h"

//: @implementation SelectedListModel
@implementation DeviceCenterModel

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithView:(NSInteger)sid
                      //: Title:(NSString *)title{
                      representation:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[DeviceCenterModel alloc] initWithPresentOff:sid with:title nearBeginContext:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithPresentOff:(NSInteger)sid
                      //: Title:(NSString *)title
                      with:(NSString *)title
                    //: Context:(id)context{
                    nearBeginContext:(id)context{

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