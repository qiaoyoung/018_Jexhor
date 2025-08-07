// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface RedUser:NSObject<MemberProtocol>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) ConfirmationInfo *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithTitle:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface LineMember:NSObject<MemberProtocol>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) ConfirmationInfo *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithTeamRead:(NSString *)userId
                       //: session:(NIMSession *)session;
                       groupDiscussion:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface SendSame:NSObject<MemberProtocol>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) ConfirmationInfo *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithDisable:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      house:(NIMKitTeamType)teamType;

//: @end
@end