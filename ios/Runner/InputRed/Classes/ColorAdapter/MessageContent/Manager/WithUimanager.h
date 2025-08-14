// __DEBUG__
// __CLOSE_PRINT__
//
//  WithUimanager.h
// MessageContent
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkChatUIManagerProtocol.h"
#import "WorkChatUIManagerProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WorkChatUIManager : NSObject<WorkChatUIManager>
@interface WithUimanager : NSObject<WithUimanager>

//: + (instancetype)sharedManager;
+ (instancetype)ting;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
