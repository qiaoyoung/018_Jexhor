// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkUsrInfoData.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkContactDefines.h"
#import "WorkContactDefines.h"

//: @class WorkKitInfo;
@class ConfirmationInfo;

//: @interface RiverlaUsrInfo : NSObject <NIMGroupMemberProtocol>
@interface WithInfo : NSObject <MemberProtocol>

//: @property (nonatomic,strong) WorkKitInfo *info;
@property (nonatomic,strong) ConfirmationInfo *info;

//: - (BOOL)isFriend;
- (BOOL)add;

//: @end
@end
