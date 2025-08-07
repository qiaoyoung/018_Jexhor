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
//: #import "PushTeamCardMemberItem.h"
#import "CardSession.h"
//: #import "PushTeamMemberListDataSource.h"
#import "ShouldBackground.h"
//: #import "PushTeamListDataManager.h"
#import "MainRead.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol ColorDelegate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(PushTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)distance:(CardSession *)member model:(BOOL)mute;
//: - (void)onTeamMemberKicked:(PushTeamCardMemberItem *)member;
- (void)bottom:(CardSession *)member;

//: @end
@end

//: @interface PushTeamMemberCardViewController : UIViewController
@interface StraddleViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<ColorDelegate> delegate;

//: @property (nonatomic, strong) PushTeamListDataManager *teamListManager;
@property (nonatomic, strong) MainRead *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end
