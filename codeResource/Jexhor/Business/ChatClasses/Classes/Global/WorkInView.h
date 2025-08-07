// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkInView.h
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushCommonTableViewCell.h"
#import "ViewTitle.h"

//: @interface PushKitSwitcherCell : UITableViewCell<PushCommonTableViewCell>
@interface WorkInView : UITableViewCell<ViewTitle>

//: @property(nonatomic,strong,readonly) UISwitch *switcher;
@property(nonatomic,strong,readonly) UISwitch *switcher;

//: @end
@end
