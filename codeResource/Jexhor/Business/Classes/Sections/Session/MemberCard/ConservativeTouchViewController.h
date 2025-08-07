// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushTeamMemberListDataSource.h"
#import "ShouldBackground.h"
//: #import "PushTeamListDataManager.h"
#import "MainRead.h"

//: @interface CCCTeamMemberListViewController : UIViewController
@interface ConservativeTouchViewController : UIViewController

//: @property (nonatomic,strong) PushTeamListDataManager *teamListManager;
@property (nonatomic,strong) MainRead *teamListManager;

//: - (instancetype)initWithDataSource:(PushTeamListDataManager *)dataSource;
- (instancetype)initWithIcon:(MainRead *)dataSource;

//: @end
@end
