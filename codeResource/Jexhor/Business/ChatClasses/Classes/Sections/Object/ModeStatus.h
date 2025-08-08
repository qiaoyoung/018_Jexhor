// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionViewConfigurator.h
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionViewController.h"
#import "AccountViewController.h"
//: #import "WorkSessionConfigurateProtocol.h"
#import "WorkSessionConfigurateProtocol.h"

//: @class WorkSessionViewController;
@class AccountViewController;

//: @interface WorkSessionConfigurator : NSObject
@interface ModeStatus : NSObject

//: - (void)setup:(WorkSessionViewController *)vc;
- (void)send:(AccountViewController *)vc;

//: @end
@end
