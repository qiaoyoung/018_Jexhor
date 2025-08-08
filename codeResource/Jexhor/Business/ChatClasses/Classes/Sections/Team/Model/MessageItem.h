// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamCardMemberItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkCardDataSourceProtocol.h"
#import "WorkCardDataSourceProtocol.h"

//: @interface NIMCardMemberItem : NSObject<WorkKitCardHeaderData>
@interface MinorLeagueTeamTing : NSObject<WorkKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface WorkTeamCardMemberItem : NSObject<WorkKitCardHeaderData>
@interface MessageItem : NSObject<WorkKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithNeedThread:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      voiceMessage:(NIMTeamType)teamType;

//: @end
@end
