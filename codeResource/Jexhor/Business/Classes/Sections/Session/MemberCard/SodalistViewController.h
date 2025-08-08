// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkTeamCardMemberItem.h"
#import "MessageItem.h"
//: #import "WorkTeamMemberListDataSource.h"
#import "ColorActionClean.h"
//: #import "WorkTeamListDataManager.h"
#import "ShowManager.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol SameDelegate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(WorkTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)send:(MessageItem *)member mute:(BOOL)mute;
//: - (void)onTeamMemberKicked:(WorkTeamCardMemberItem *)member;
- (void)to:(MessageItem *)member;

//: @end
@end

//: @interface WorkTeamMemberCardViewController : UIViewController
@interface SodalistViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<SameDelegate> delegate;

//: @property (nonatomic, strong) WorkTeamListDataManager *teamListManager;
@property (nonatomic, strong) ShowManager *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end
