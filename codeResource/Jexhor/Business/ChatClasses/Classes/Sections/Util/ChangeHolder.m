// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkKitTimerHolder.h"
#import "ChangeHolder.h"

//: @interface WorkKitTimerHolder ()
@interface ChangeHolder ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)optionsed: (NSTimer *)timer;
//: @end
@end

//: @implementation WorkKitTimerHolder
@implementation ChangeHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self untilCheck];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)limit: (NSTimeInterval)seconds
          //: delegate: (id<WorkKitTimerHolderDelegate>)delegate
          byRepeatsHolderDelegate: (id<KitWith>)delegate
           //: repeats: (BOOL)repeats
           data: (BOOL)repeats
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
                                            selector:@selector(optionsed:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)untilCheck
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)optionsed: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(alonging:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate alonging:self];
    }
}

//: @end
@end
