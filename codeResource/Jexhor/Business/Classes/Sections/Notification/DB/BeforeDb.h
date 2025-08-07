// __DEBUG__
// __CLOSE_PRINT__
//
//  BeforeDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class OverdoObject;
//: @interface NTESCustomNotificationDB : NSObject
@interface BeforeDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)reply;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)barDown:(OverdoObject *)notification
                          //: limit:(NSInteger)limit;
                          before:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)readout:(OverdoObject *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)showBy:(OverdoObject *)notification;

//: - (void)deleteAllNotification;
- (void)selected;

//: - (void)markAllNotificationsAsRead;
- (void)notificationsEquallyAllReadMark;

//: @end
@end