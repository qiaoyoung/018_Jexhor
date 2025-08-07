// __DEBUG__
// __CLOSE_PRINT__
//
//  PushGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushContactDefines.h"
#import "PushContactDefines.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface UsufructuaryUser:NSObject<ToolTextEnablely>

//: @property (nonatomic,readonly) PushKitInfo *info;
@property (nonatomic,readonly) DataTeam *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithCenter:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface CoverMember:NSObject<ToolTextEnablely>

//: @property (nonatomic,readonly) PushKitInfo *info;
@property (nonatomic,readonly) DataTeam *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithRuddy:(NSString *)userId
                       //: session:(NIMSession *)session;
                       sendBy:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface MasterTeam:NSObject<ToolTextEnablely>

//: @property (nonatomic,readonly) PushKitInfo *info;
@property (nonatomic,readonly) DataTeam *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithType:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      childLink:(NIMKitTeamType)teamType;

//: @end
@end
