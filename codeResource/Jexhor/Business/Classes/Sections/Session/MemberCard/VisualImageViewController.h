// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualImageViewController.h
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WorkTeamMemberListDataSource.h"
#import "ColorActionClean.h"
//: #import "WorkTeamListDataManager.h"
#import "ShowManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface TeamMemberNormalViewController : UIViewController
@interface VisualImageViewController : UIViewController

//: @property (nonatomic,strong) WorkTeamListDataManager *teamListManager;
@property (nonatomic,strong) ShowManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
