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
//: #import "PushCardDataSourceProtocol.h"
#import "PushCardDataSourceProtocol.h"

//: @interface NIMCardMemberItem : NSObject<PushKitCardHeaderData>
@interface OffBackgroundData : NSObject<PushKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface PushTeamCardMemberItem : NSObject<PushKitCardHeaderData>
@interface CardSession : NSObject<PushKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWith:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      kibbutznik:(NIMTeamType)teamType;

//: @end
@end
