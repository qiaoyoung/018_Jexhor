// __DEBUG__
// __CLOSE_PRINT__
//
//  OstentateHolder.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class OstentateHolder;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol TextModelWith <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)light:(OstentateHolder *)holder
                 //: duration:(NSTimeInterval)duration
                 message:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              inputSize:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface OstentateHolder : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<TextModelWith> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)status: (id<TextModelWith>)delegate;

//: - (void)stop;
- (void)cell;

//: @end
@end