// __DEBUG__
// __CLOSE_PRINT__
//
//  AdHominemBubbleViewController.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContactDataMember;
@class ContactDataMember;

//: @interface NTESPersonalCardViewController : UIViewController
@interface AdHominemBubbleViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithButtonBy:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)walking:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)noticeGroup:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)nameChange:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)doItem:(id)sender;

//: - (void)chat;
- (void)tap;
//: - (void)deleteFriend;
- (void)dataWith;
//: -(void)addFriend;
-(void)lifeHistory;
//: @end
@end