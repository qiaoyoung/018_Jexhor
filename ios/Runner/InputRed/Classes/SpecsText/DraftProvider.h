// __DEBUG__
// __CLOSE_PRINT__
//
//  DraftProvider.h
// MessageContent
//
//  Created by amao on 8/13/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMSession;
@class NIMSession;
//: @class WorkKitInfo;
@class ConfirmationInfo;
//: @class WorkKitInfoFetchOption;
@class RangeOption;
//: @class NIMMessage;
@class NIMMessage;

//: @protocol WorkKitDataProvider <NSObject>
@protocol DraftProvider <NSObject>

//: @optional
@optional

/**
 *  上层提供用户信息的接口
 *
 *  @param userId  用户ID
 *  @param option  获取选项
 *
 *  @return 用户信息
 */
//: - (WorkKitInfo *)infoByUser:(NSString *)userId
- (ConfirmationInfo *)recent:(NSString *)userId
                    //: option:(WorkKitInfoFetchOption *)option;
                    blue:(RangeOption *)option;


/**
 *  上层提供群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (WorkKitInfo *)infoByTeam:(NSString *)teamId
- (ConfirmationInfo *)info:(NSString *)teamId
                    //: option:(WorkKitInfoFetchOption *)option;
                    comment:(RangeOption *)option;

/**
 *  上层提供超大群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (WorkKitInfo *)infoBySuperTeam:(NSString *)teamId
- (ConfirmationInfo *)item:(NSString *)teamId
                         //: option:(WorkKitInfoFetchOption *)option;
                         pit:(RangeOption *)option;

/**
*  上层提供被回复消息内容给统一格式的接口
*
*  @param message 被回复的消息
*
*  @return 回复展示内容
*/
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)bared:(NIMMessage *)message;

//: @end
@end
