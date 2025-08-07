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
//: #import "FFFSessionViewController.h"
#import "AccountViewController.h"
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

//: @class FFFSessionViewController;
@class AccountViewController;

//: @interface FFFSessionConfigurator : NSObject
@interface ModeStatus : NSObject

//: - (void)setup:(FFFSessionViewController *)vc;
- (void)send:(AccountViewController *)vc;

//: @end
@end