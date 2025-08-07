// __DEBUG__
// __CLOSE_PRINT__
//
//  BarModel.h
// Secret
//
//  Created by amao on 8/13/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMSession;
@class NIMSession;
//: @class FFFKitInfo;
@class DataTeam;
//: @class FFFKitInfoFetchOption;
@class AttributeQuantityOption;
//: @class NIMMessage;
@class NIMMessage;

//: @protocol FFFKitDataProvider <NSObject>
@protocol BarModel <NSObject>

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
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (DataTeam *)infoAndStraddleOption:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option;
                    item:(AttributeQuantityOption *)option;


/**
 *  上层提供群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (DataTeam *)show:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option;
                    corner:(AttributeQuantityOption *)option;

/**
 *  上层提供超大群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (DataTeam *)of:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option;
                         enableence_strong:(AttributeQuantityOption *)option;

/**
*  上层提供被回复消息内容给统一格式的接口
*
*  @param message 被回复的消息
*
*  @return 回复展示内容
*/
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)nameMessage:(NIMMessage *)message;

//: @end
@end