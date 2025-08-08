// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeHolder.h
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

//: @class WorkKitTimerHolder;
@class ChangeHolder;

//: @protocol WorkKitTimerHolderDelegate <NSObject>
@protocol KitWith <NSObject>
//: - (void)onNIMKitTimerFired:(WorkKitTimerHolder *)holder;
- (void)alonging:(ChangeHolder *)holder;
//: @end
@end

//: @interface WorkKitTimerHolder : NSObject
@interface ChangeHolder : NSObject
//: @property (nonatomic,weak) id<WorkKitTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<KitWith> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)limit:(NSTimeInterval)seconds
          //: delegate:(id<WorkKitTimerHolderDelegate>)delegate
          byRepeatsHolderDelegate:(id<KitWith>)delegate
           //: repeats:(BOOL)repeats;
           data:(BOOL)repeats;

//: - (void)stopTimer;
- (void)untilCheck;
//: @end
@end
