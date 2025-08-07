// __DEBUG__
// __CLOSE_PRINT__
//
//  SaveView.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class PushTeamSwitchTableViewCell;
@class SaveView;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol TempProtocol <NSObject>
//: - (void)cell:(PushTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)collection:(SaveView *)cell margin:(BOOL)on;
//: @end
@end

//: @interface PushTeamSwitchTableViewCell : UITableViewCell
@interface SaveView : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<TempProtocol> switchDelegate;

//: @end
@end
