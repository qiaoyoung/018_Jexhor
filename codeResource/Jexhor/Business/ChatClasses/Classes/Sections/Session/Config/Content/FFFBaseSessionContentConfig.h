// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFBaseSessionContentConfig.h
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol CellTitleConfig <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)on:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)team:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)bubbled:(NIMMessage *)message;

//: @end
@end

//: @interface FFFSessionContentConfigFactory : NSObject
@interface SameModeFactory : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)letter;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<CellTitleConfig>)independent:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<CellTitleConfig>)towardView:(NIMMessage *)message;

//: @end
@end