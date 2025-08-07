// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchMax.h
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//
//M80TimerHolder，管理某个Timer，功能为
//1.隐藏NSTimer,使得NSTimer只能retain M80TimerHolder
//2.对于非repeats的Timer,执行一次后自动释放Timer
//3.对于repeats的Timer,需要持有M80TimerHolder的对象在析构时调用[M80TimerHolder stopTimer]

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class PushKitTimerHolder;
@class TouchMax;

//: @protocol PushKitTimerHolderDelegate <NSObject>
@protocol TempDelegate <NSObject>
//: - (void)onNIMKitTimerFired:(PushKitTimerHolder *)holder;
- (void)alongAndEnable:(TouchMax *)holder;
//: @end
@end

//: @interface PushKitTimerHolder : NSObject
@interface TouchMax : NSObject
//: @property (nonatomic,weak) id<PushKitTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<TempDelegate> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)repeats:(NSTimeInterval)seconds
          //: delegate:(id<PushKitTimerHolderDelegate>)delegate
          eigenvalueOfASquareMatrix:(id<TempDelegate>)delegate
           //: repeats:(BOOL)repeats;
           size:(BOOL)repeats;

//: - (void)stopTimer;
- (void)cardTimer;
//: @end
@end
