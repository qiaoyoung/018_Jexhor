// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchMax.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushKitTimerHolder.h"
#import "TouchMax.h"

//: @interface PushKitTimerHolder ()
@interface TouchMax ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)canRecord: (NSTimer *)timer;
//: @end
@end

//: @implementation PushKitTimerHolder
@implementation TouchMax

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self cardTimer];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)repeats: (NSTimeInterval)seconds
          //: delegate: (id<PushKitTimerHolderDelegate>)delegate
          eigenvalueOfASquareMatrix: (id<TempDelegate>)delegate
           //: repeats: (BOOL)repeats
           size: (BOOL)repeats
{
    //: _timerDelegate = delegate;
    _timerDelegate = delegate;
    //: _repeats = repeats;
    _repeats = repeats;
    //: if (_timer)
    if (_timer)
    {
        //: [_timer invalidate];
        [_timer invalidate];
        //: _timer = nil;
        _timer = nil;
    }
    //: _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
                                              //: target:self
                                              target:self
                                            //: selector:@selector(onTimer:)
                                            selector:@selector(canRecord:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)cardTimer
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)canRecord: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(alongAndEnable:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate alongAndEnable:self];
    }
}

//: @end
@end
