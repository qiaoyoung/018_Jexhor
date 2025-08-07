// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorTingManager.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface ColorTingManager : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)message;

//: - (void)start;
- (void)space;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)model:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)pressedFor:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)signature:(NSString *)userId;

//: @end
@end