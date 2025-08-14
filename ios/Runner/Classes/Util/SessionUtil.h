// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionUtil.h
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
// 最近会话本地扩展标记类型

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
    // @ 标记
    //: NTESRecentSessionMarkTypeAt,
    NTESRecentSessionMarkTypeAt,
    // 置顶标记（已废弃）
    //: NTESRecentSessionMarkTypeTop,
    NTESRecentSessionMarkTypeTop,
//: };
};

//: @interface NTESSessionUtil : NSObject
@interface SessionUtil : NSObject

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)image:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  remote:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSize;
                                  viewQuick:(CGSize)imageMaxSize;

//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session;
+ (NSString *)name:(NSString*)uid progressSession:(NIMSession*)session;

//接收时间格式化
//: + (NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail;
+ (NSString*)path:(NSTimeInterval) msglastTime pollex:(BOOL)showDetail;

//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)quickHandler:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  signal:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler;
               info:(void (^)(AVAssetExportSession*))handler;


//: + (NSDictionary *)dictByJsonData:(NSData *)data;
+ (NSDictionary *)should:(NSData *)data;

//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString;
+ (NSDictionary *)with:(NSString *)jsonString;

//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message;
+ (BOOL)dataConverter:(NIMMessage *)message;

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message;
+ (BOOL)row:(NIMMessage *)message;

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message;
+ (BOOL)by:(NIMMessage *)message;

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notificaton;
+ (NSString *)groundBubble:(NIMRevokeMessageNotification *)notificaton;

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript;
+ (NSString *)extra:(NSString *)postscript;

//: + (void)addRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)save:(NIMSession *)session viewType:(NTESRecentSessionMarkType)type;

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)past:(NIMSession *)session characteristicRootOfASquareMatrix:(NTESRecentSessionMarkType)type;

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type;
+ (BOOL)itemBackground:(NIMRecentSession *)recent cell:(NTESRecentSessionMarkType)type;



//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail;
+ (NSString *)info:(NSString *)userId layer:(BOOL)detail;

//: + (NSString *)formatAutoLoginMessage:(NSError *)error;
+ (NSString *)completeByShared:(NSError *)error;

//: @end
@end