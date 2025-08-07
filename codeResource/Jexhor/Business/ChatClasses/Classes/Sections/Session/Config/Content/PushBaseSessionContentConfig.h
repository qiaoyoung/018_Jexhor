// __DEBUG__
// __CLOSE_PRINT__
//
//  PushBaseSessionContentConfig.h
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol RawDataVoice <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)session:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)messageUser:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)linked:(NIMMessage *)message;

//: @end
@end

//: @interface PushSessionContentConfigFactory : NSObject
@interface OffdSessionFactory : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)nearContent;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<RawDataVoice>)end:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<RawDataVoice>)shouldBy:(NIMMessage *)message;

//: @end
@end
