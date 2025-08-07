// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoManager.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface VideoManager : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)date;

//: - (void)start;
- (void)tagComment;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)unwelcome:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)manager:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)userTempDisableLandDoingLine:(NSString *)userId;

//: @end
@end