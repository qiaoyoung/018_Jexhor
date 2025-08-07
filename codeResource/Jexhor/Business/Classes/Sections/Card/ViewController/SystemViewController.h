// __DEBUG__
// __CLOSE_PRINT__
//
//  SystemViewController.h
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
@interface SystemViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithAdd:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)read:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)reply:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)iconing:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)infoChange:(id)sender;

//: - (void)chat;
- (void)show;
//: - (void)deleteFriend;
- (void)tapCell;
//: -(void)addFriend;
-(void)inputFriend;
//: @end
@end