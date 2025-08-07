// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewHolder.h
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

//: @class NTESTimerHolder;
@class ViewHolder;

//: @protocol NTESTimerHolderDelegate <NSObject>
@protocol TinctureLab <NSObject>
//: - (void)onNTESTimerFired:(NTESTimerHolder *)holder;
- (void)windowwed:(ViewHolder *)holder;
//: @end
@end

//: @interface NTESTimerHolder : NSObject
@interface ViewHolder : NSObject
//: @property (nonatomic,weak) id<NTESTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<TinctureLab> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)messageRepeats:(NSTimeInterval)seconds
          //: delegate:(id<NTESTimerHolderDelegate>)delegate
          textBubble:(id<TinctureLab>)delegate
           //: repeats:(BOOL)repeats;
           shouldLabel:(BOOL)repeats;

//: - (void)stopTimer;
- (void)user;
//: @end
@end