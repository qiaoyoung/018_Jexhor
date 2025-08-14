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
//: #import "WorkTeamMemberListDataSource.h"
#import "ColorActionClean.h"
//: #import "WorkTeamListDataManager.h"
#import "ShowManager.h"

//: @interface CCCTeamMemberListViewController : UIViewController
@interface OnenseViewController : UIViewController

//: @property (nonatomic,strong) WorkTeamListDataManager *teamListManager;
@property (nonatomic,strong) ShowManager *teamListManager;

//: - (instancetype)initWithDataSource:(WorkTeamListDataManager *)dataSource;
- (instancetype)initWithName:(ShowManager *)dataSource;

//: @end
@end
