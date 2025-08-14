// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowQuantityHolder.h
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
@class ShowQuantityHolder;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol SumStyle <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)enableShow:(ShowQuantityHolder *)holder
                 //: duration:(NSTimeInterval)duration
                 of:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              labelBlue:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface ShowQuantityHolder : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<SumStyle> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)orientation: (id<SumStyle>)delegate;

//: - (void)stop;
- (void)empty;

//: @end
@end