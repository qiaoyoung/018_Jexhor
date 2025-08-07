// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoMessageDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class ObjectFrame;
//: @interface NTESCustomNotificationDB : NSObject
@interface VideoMessageDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)exhibit;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)bubble:(ObjectFrame *)notification
                          //: limit:(NSInteger)limit;
                          pin:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)location:(ObjectFrame *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)questionShow:(ObjectFrame *)notification;

//: - (void)deleteAllNotification;
- (void)hideDisable;

//: - (void)markAllNotificationsAsRead;
- (void)text;

//: @end
@end