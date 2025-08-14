// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowQuantityHolder.m
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCADisplayLinkHolder.h"
#import "ShowQuantityHolder.h"

//: @implementation NTESCADisplayLinkHolder
@implementation ShowQuantityHolder
{
    //: CADisplayLink *_displayLink;
    CADisplayLink *_displayLink;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _frameInterval = 1;
        _frameInterval = 1;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self stop];
    [self empty];
    //: _delegate = nil;
    _delegate = nil;
}

//: - (void)startCADisplayLinkWithDelegate:(id<NTESCADisplayLinkHolderDelegate>)delegate
- (void)orientation:(id<SumStyle>)delegate
{
    //: _delegate = delegate;
    _delegate = delegate;
    //: [self stop];
    [self empty];
    //: _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(onDisplayLink:)];
    _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(theIndicator:)];
    //: [_displayLink setFrameInterval:_frameInterval];
    [_displayLink setFrameInterval:_frameInterval];
    //: [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

//: - (void)stop
- (void)empty
{
    //: if (_displayLink){
    if (_displayLink){
        //: [_displayLink invalidate];
        [_displayLink invalidate];
        //: _displayLink = nil;
        _displayLink = nil;
    }
}

//: - (void)onDisplayLink: (CADisplayLink *) displayLink
- (void)theIndicator: (CADisplayLink *) displayLink
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onDisplayLinkFire:duration:displayLink:)]){
    if (_delegate && [_delegate respondsToSelector:@selector(enableShow:of:labelBlue:)]){
        //: [_delegate onDisplayLinkFire:self
        [_delegate enableShow:self
                            //: duration:displayLink.duration
                            of:displayLink.duration
                         //: displayLink:displayLink];
                         labelBlue:displayLink];
    }
}

//: @end
@end