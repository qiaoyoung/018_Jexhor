// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMUtil.h
// MessageContent
//
//  Created by chris on 15/8/10.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"

//: @interface WorkKitUtil : NSObject
@interface WantUtil : NSObject

//: + (NSString *)showNick:(NSString *)uid inMessage:(NIMMessage *)message;
+ (NSString *)text:(NSString *)uid should:(NIMMessage *)message;

//: + (NSString *)showNick:(NSString *)uid inSession:(NIMSession *)session;
+ (NSString *)teamSessionText:(NSString *)uid last:(NIMSession *)session;

//: + (NSString *)showTime:(NSTimeInterval)msglastTime showDetail:(BOOL)showDetail;
+ (NSString *)holder:(NSTimeInterval)msglastTime chorusLine:(BOOL)showDetail;

//: + (NSString *)messageTipContent:(NIMMessage *)message;
+ (NSString *)tingAcross:(NIMMessage *)message;

//: + (NSString *)durationTextWithSeconds:(NSTimeInterval)seconds;
+ (NSString *)showSeconds:(NSTimeInterval)seconds;

//: + (BOOL)canEditTeamInfo:(NIMTeamMember *)member;
+ (BOOL)random:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToTeam:(NIMTeamMember *)member;
+ (BOOL)translate:(NIMTeamMember *)member;

//: + (BOOL)canEditSuperTeamInfo:(NIMTeamMember *)member;
+ (BOOL)item:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToSuperTeam:(NIMTeamMember *)member;
+ (BOOL)compartmentView:(NIMTeamMember *)member;

//: @end
@end
