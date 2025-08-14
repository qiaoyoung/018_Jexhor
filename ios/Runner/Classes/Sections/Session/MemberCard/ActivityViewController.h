// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityViewController.h
// MessageContent
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkTeamMemberListDataSource.h"
#import "ColorActionClean.h"
//: #import "WorkTeamListDataManager.h"
#import "ShowManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WorkTeamMuteMemberListViewController : UIViewController
@interface ActivityViewController : UIViewController

//: @property (nonatomic,strong) WorkTeamListDataManager *teamListManager;
@property (nonatomic,strong) ShowManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
