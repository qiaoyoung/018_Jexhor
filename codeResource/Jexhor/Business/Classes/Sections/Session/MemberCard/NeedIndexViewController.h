// __DEBUG__
// __CLOSE_PRINT__
//
//  NeedIndexViewController.h
// Secret
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushTeamMemberListDataSource.h"
#import "ShouldBackground.h"
//: #import "PushTeamListDataManager.h"
#import "MainRead.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface PushTeamMuteMemberListViewController : UIViewController
@interface NeedIndexViewController : UIViewController

//: @property (nonatomic,strong) PushTeamListDataManager *teamListManager;
@property (nonatomic,strong) MainRead *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
