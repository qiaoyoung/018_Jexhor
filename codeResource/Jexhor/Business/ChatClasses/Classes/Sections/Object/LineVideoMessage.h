// __DEBUG__
// __CLOSE_PRINT__
//
//  LineVideoMessage.h
// MessageContent
//
//  Created by chris on 2017/1/13.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NIMMessage;
@class NIMMessage;

//: @interface WorkKitAudioCenter : NSObject
@interface LineVideoMessage : NSObject

//: @property (nonatomic,strong) NIMMessage *currentPlayingMessage;
@property (nonatomic,strong) NIMMessage *currentPlayingMessage;

//: + (instancetype)instance;
+ (instancetype)pinThan;

//: - (void)play:(NIMMessage *)message;
- (void)title:(NIMMessage *)message;

//: @end
@end
