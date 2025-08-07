
#import <Foundation/Foundation.h>

NSString *StringFromAppearSessionData(Byte *data);


//: notification.db
Byte mOldThreadCompleteName[] = {84, 15, 12, 114, 135, 180, 133, 197, 139, 193, 131, 6, 98, 100, 46, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 217};

//: update notifications set status  = ? where status < ? or status > ?
Byte appEndData[] = {23, 67, 3, 63, 32, 62, 32, 115, 117, 116, 97, 116, 115, 32, 114, 111, 32, 63, 32, 60, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 137};

//: serial
Byte kHideData[] = {23, 6, 12, 141, 215, 242, 187, 235, 154, 103, 201, 35, 108, 97, 105, 114, 101, 115, 223};

//: receiver
Byte k_messageValue[] = {16, 8, 10, 67, 235, 210, 171, 53, 166, 138, 114, 101, 118, 105, 101, 99, 101, 114, 65};

//: content
Byte userSessionValue[] = {5, 7, 3, 116, 110, 101, 116, 110, 111, 99, 251};

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
Byte dreamLimitContent[] = {93, 96, 10, 46, 46, 34, 98, 49, 245, 30, 41, 63, 44, 63, 44, 63, 44, 63, 44, 63, 40, 115, 101, 117, 108, 97, 118, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 115, 117, 116, 97, 116, 115, 44, 116, 110, 101, 116, 110, 111, 99, 44, 114, 101, 118, 105, 101, 99, 101, 114, 44, 114, 101, 100, 110, 101, 115, 44, 103, 97, 116, 101, 109, 105, 116, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 111, 116, 110, 105, 32, 116, 114, 101, 115, 110, 105, 121};

//: update notifications set status  = ? where serial = ?
Byte show_textValue[] = {41, 53, 4, 56, 63, 32, 61, 32, 108, 97, 105, 114, 101, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 34};

//: select count(serial) from notifications where status = ?
Byte showDeleteValue[] = {24, 56, 6, 73, 144, 82, 63, 32, 61, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 41, 108, 97, 105, 114, 101, 115, 40, 116, 110, 117, 111, 99, 32, 116, 99, 101, 108, 101, 115, 36};

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
Byte kButtonContent[] = {89, 165, 10, 200, 133, 77, 85, 200, 91, 187, 41, 114, 101, 103, 101, 116, 110, 105, 32, 115, 117, 116, 97, 116, 115, 44, 116, 120, 101, 116, 32, 116, 110, 101, 116, 110, 111, 99, 44, 116, 120, 101, 116, 32, 114, 101, 118, 105, 101, 99, 101, 114, 44, 116, 120, 101, 116, 32, 114, 101, 100, 110, 101, 115, 44, 114, 101, 103, 101, 116, 110, 105, 32, 103, 97, 116, 101, 109, 105, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 44, 121, 101, 107, 32, 121, 114, 97, 109, 105, 114, 112, 32, 114, 101, 103, 101, 116, 110, 105, 32, 108, 97, 105, 114, 101, 115, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 101, 108, 98, 97, 116, 32, 101, 116, 97, 101, 114, 99, 168};

//: select * from notifications where status != ? order by timetag desc limit ?
Byte kSendValue[] = {7, 75, 6, 66, 111, 71, 63, 32, 116, 105, 109, 105, 108, 32, 99, 115, 101, 100, 32, 103, 97, 116, 101, 109, 105, 116, 32, 121, 98, 32, 114, 101, 100, 114, 111, 32, 63, 32, 61, 33, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 42, 32, 116, 99, 101, 108, 101, 115, 8};

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
Byte notiAtTagTitle[] = {1, 92, 13, 158, 140, 112, 230, 15, 250, 203, 251, 121, 89, 63, 32, 116, 105, 109, 105, 108, 32, 99, 115, 101, 100, 32, 103, 97, 116, 101, 109, 105, 116, 32, 121, 98, 32, 114, 101, 100, 114, 111, 32, 63, 32, 61, 33, 32, 115, 117, 116, 97, 116, 115, 32, 100, 110, 97, 32, 102, 37, 32, 60, 32, 103, 97, 116, 101, 109, 105, 116, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 42, 32, 116, 99, 101, 108, 101, 115, 161};

//: create index if not exists timetagindex on notifications(timetag)
Byte show_scaleValue[] = {56, 65, 12, 58, 200, 75, 46, 1, 196, 182, 135, 14, 41, 103, 97, 116, 101, 109, 105, 116, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 110, 111, 32, 120, 101, 100, 110, 105, 103, 97, 116, 101, 109, 105, 116, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 120, 101, 100, 110, 105, 32, 101, 116, 97, 101, 114, 99, 171};

//: sender
Byte appTextName[] = {30, 6, 13, 131, 147, 245, 186, 138, 102, 40, 22, 244, 149, 114, 101, 100, 110, 101, 115, 64};

//: update notifications set status  = ? where status = ?
Byte dreamPlaceTitle[] = {63, 53, 6, 1, 33, 88, 63, 32, 61, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 22};

//: timetag
Byte k_viewName[] = {20, 7, 9, 125, 213, 28, 78, 152, 86, 103, 97, 116, 101, 109, 105, 116, 145};

//: create index if not exists readindex on notifications(status)
Byte show_successData[] = {19, 61, 5, 118, 2, 41, 115, 117, 116, 97, 116, 115, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 110, 111, 32, 120, 101, 100, 110, 105, 100, 97, 101, 114, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 120, 101, 100, 110, 105, 32, 101, 116, 97, 101, 114, 99, 68};

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoMessageDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "VideoMessageDb.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import "NTESCustomNotificationObject.h"
#import "ObjectFrame.h"

//: typedef NS_ENUM(NSInteger, CustomNotificationStatus){
typedef NS_ENUM(NSInteger, CustomNotificationStatus){
    //: CustomNotificationStatusNone = 0,
    CustomNotificationStatusNone = 0,
    //: CustomNotificationStatusRead = 1,
    CustomNotificationStatusRead = 1,
    //: CustomNotificationStatusDeleted = 2,
    CustomNotificationStatusDeleted = 2,
//: };
};

//: @interface NTESCustomNotificationDB ()
@interface VideoMessageDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation VideoMessageDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)exhibit { static VideoMessageDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[VideoMessageDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self viewTo];
    }
    //: return self;
    return self;
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)bubble:(ObjectFrame *)notification
                          //: limit:(NSInteger)limit{
                          pin:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:StringFromAppearSessionData(notiAtTagTitle),
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = StringFromAppearSessionData(kSendValue);
    }
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            ObjectFrame *notification = [[ObjectFrame alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:StringFromAppearSessionData(kHideData)];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:StringFromAppearSessionData(k_viewName)];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:StringFromAppearSessionData(appTextName)];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:StringFromAppearSessionData(k_messageValue)];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:StringFromAppearSessionData(userSessionValue)];
            //: [array addObject:notification];
            [array addObject:notification];
        }
        //: [rs close];
        [rs close];
        //: result = array;
        result = array;
    //: });
    });

    //: return result;
    return result;

}

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification{
- (BOOL)location:(ObjectFrame *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = StringFromAppearSessionData(dreamLimitContent);

            //: if (![self.db executeUpdate:sql,
            if (![self.db executeUpdate:sql,
                  //: @(notification.timestamp),
                  @(notification.timestamp),
                  //: notification.sender,
                  notification.sender,
                  //: notification.receiver,
                  notification.receiver,
                  //: notification.content,
                  notification.content,
                  //: @(status)])
                  @(status)])
            {
            }
            //: else
            else
            {
                //: notification.serial = (NSInteger)[self.db lastInsertRowId];
                notification.serial = (NSInteger)[self.db lastInsertRowId];
                //: if (notification.needBadge) {
                if (notification.needBadge) {
                    //: self.unreadCount++;
                    self.unreadCount++;
                }
                //: result = YES;
                result = YES;
            }
        }
    //: });
    });
    //: return result;
    return result;

}

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification{
- (void)questionShow:(ObjectFrame *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = StringFromAppearSessionData(show_textValue);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self highSumUnread];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)hideDisable{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = StringFromAppearSessionData(appEndData);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self highSumUnread];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)text{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = StringFromAppearSessionData(dreamPlaceTitle);
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self highSumUnread];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)highSumUnread{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = StringFromAppearSessionData(showDeleteValue);
    //: FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    //: if ([rs next])
    if ([rs next])
    {
        //: count = (NSInteger)[rs intForColumnIndex:0];
        count = (NSInteger)[rs intForColumnIndex:0];
    }
    //: [rs close];
    [rs close];

    //: if (count != _unreadCount)
    if (count != _unreadCount)
    {
        //: self.unreadCount = count;
        self.unreadCount = count;
    }
}


//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)viewTo
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[LineHelper remove] stringByAppendingString:StringFromAppearSessionData(mOldThreadCompleteName)];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[StringFromAppearSessionData(kButtonContent),

                          //: @"create index if not exists readindex on notifications(status)",
                          StringFromAppearSessionData(show_successData),
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          StringFromAppearSessionData(show_scaleValue)];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self highSumUnread];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const user_messageFormatTitle = &user_messageFormatTitle;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t NTESDispatchIOQueue()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchIOSpecificKey, (void *)NTESDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, user_messageFormatTitle, (void *)user_messageFormatTitle, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void io_sync_safe(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(user_messageFormatTitle))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(NTESDispatchIOQueue(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void io_async(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(NTESDispatchIOQueue(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end

Byte * AppearSessionDataToCache(Byte *data) {
    int withView = data[0];
    int canDoing = data[1];
    int commentSize = data[2];
    if (!withView) return data + commentSize;
    for (int i = 0; i < canDoing / 2; i++) {
        int begin = commentSize + i;
        int end = commentSize + canDoing - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[commentSize + canDoing] = 0;
    return data + commentSize;
}

NSString *StringFromAppearSessionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AppearSessionDataToCache(data)];
}  
