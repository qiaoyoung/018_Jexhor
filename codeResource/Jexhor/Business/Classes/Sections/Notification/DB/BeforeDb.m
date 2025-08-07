
#import <Foundation/Foundation.h>

@interface DetectiveData : NSObject

@end

@implementation DetectiveData

+ (Byte *)DetectiveDataToCache:(Byte *)data {
    int downInput = data[0];
    Byte professionDoing = data[1];
    int showAt = data[2];
    for (int i = showAt; i < showAt + downInput; i++) {
        int value = data[i] + professionDoing;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[showAt + downInput] = 0;
    return data + showAt;
}

+ (NSString *)StringFromDetectiveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DetectiveDataToCache:data]];
}

//: update notifications set status  = ? where serial = ?
+ (NSString *)noti_tapWipeKey {
    /* static */ NSString *noti_tapWipeKey = nil;
    if (!noti_tapWipeKey) {
        Byte value[] = {53, 78, 12, 108, 109, 188, 185, 73, 231, 228, 248, 11, 39, 34, 22, 19, 38, 23, 210, 32, 33, 38, 27, 24, 27, 21, 19, 38, 27, 33, 32, 37, 210, 37, 23, 38, 210, 37, 38, 19, 38, 39, 37, 210, 210, 239, 210, 241, 210, 41, 26, 23, 36, 23, 210, 37, 23, 36, 27, 19, 30, 210, 239, 210, 241, 25};
        noti_tapWipeKey = [self StringFromDetectiveData:value];
    }
    return noti_tapWipeKey;
}

//: select * from notifications where status != ? order by timetag desc limit ?
+ (NSString *)k_distinctionIdent {
    /* static */ NSString *k_distinctionIdent = nil;
    if (!k_distinctionIdent) {
        Byte value[] = {75, 45, 5, 237, 61, 70, 56, 63, 56, 54, 71, 243, 253, 243, 57, 69, 66, 64, 243, 65, 66, 71, 60, 57, 60, 54, 52, 71, 60, 66, 65, 70, 243, 74, 59, 56, 69, 56, 243, 70, 71, 52, 71, 72, 70, 243, 244, 16, 243, 18, 243, 66, 69, 55, 56, 69, 243, 53, 76, 243, 71, 60, 64, 56, 71, 52, 58, 243, 55, 56, 70, 54, 243, 63, 60, 64, 60, 71, 243, 18, 206};
        k_distinctionIdent = [self StringFromDetectiveData:value];
    }
    return k_distinctionIdent;
}

//: receiver
+ (NSString *)user_showFormat {
    /* static */ NSString *user_showFormat = nil;
    if (!user_showFormat) {
        Byte value[] = {8, 54, 3, 60, 47, 45, 47, 51, 64, 47, 60, 186};
        user_showFormat = [self StringFromDetectiveData:value];
    }
    return user_showFormat;
}

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
+ (NSString *)userFabricName {
    /* static */ NSString *userFabricName = nil;
    if (!userFabricName) {
        Byte value[] = {96, 82, 3, 23, 28, 33, 19, 32, 34, 206, 23, 28, 34, 29, 206, 28, 29, 34, 23, 20, 23, 17, 15, 34, 23, 29, 28, 33, 214, 34, 23, 27, 19, 34, 15, 21, 218, 33, 19, 28, 18, 19, 32, 218, 32, 19, 17, 19, 23, 36, 19, 32, 218, 17, 29, 28, 34, 19, 28, 34, 218, 33, 34, 15, 34, 35, 33, 215, 206, 206, 206, 206, 206, 206, 206, 206, 206, 206, 206, 206, 206, 206, 36, 15, 26, 35, 19, 33, 214, 237, 218, 237, 218, 237, 218, 237, 218, 237, 215, 76};
        userFabricName = [self StringFromDetectiveData:value];
    }
    return userFabricName;
}

//: create index if not exists readindex on notifications(status)
+ (NSString *)appTingFormat {
    /* static */ NSString *appTingFormat = nil;
    if (!appTingFormat) {
        Byte value[] = {61, 17, 8, 239, 16, 33, 116, 120, 82, 97, 84, 80, 99, 84, 15, 88, 93, 83, 84, 103, 15, 88, 85, 15, 93, 94, 99, 15, 84, 103, 88, 98, 99, 98, 15, 97, 84, 80, 83, 88, 93, 83, 84, 103, 15, 94, 93, 15, 93, 94, 99, 88, 85, 88, 82, 80, 99, 88, 94, 93, 98, 23, 98, 99, 80, 99, 100, 98, 24, 8};
        appTingFormat = [self StringFromDetectiveData:value];
    }
    return appTingFormat;
}

//: create index if not exists timetagindex on notifications(timetag)
+ (NSString *)dream_pressedFormat {
    /* static */ NSString *dream_pressedFormat = nil;
    if (!dream_pressedFormat) {
        Byte value[] = {65, 38, 8, 196, 117, 171, 158, 254, 61, 76, 63, 59, 78, 63, 250, 67, 72, 62, 63, 82, 250, 67, 64, 250, 72, 73, 78, 250, 63, 82, 67, 77, 78, 77, 250, 78, 67, 71, 63, 78, 59, 65, 67, 72, 62, 63, 82, 250, 73, 72, 250, 72, 73, 78, 67, 64, 67, 61, 59, 78, 67, 73, 72, 77, 2, 78, 67, 71, 63, 78, 59, 65, 3, 118};
        dream_pressedFormat = [self StringFromDetectiveData:value];
    }
    return dream_pressedFormat;
}

//: update notifications set status  = ? where status < ? or status > ?
+ (NSString *)userResembleInputStr {
    /* static */ NSString *userResembleInputStr = nil;
    if (!userResembleInputStr) {
        Byte value[] = {67, 40, 5, 82, 228, 77, 72, 60, 57, 76, 61, 248, 70, 71, 76, 65, 62, 65, 59, 57, 76, 65, 71, 70, 75, 248, 75, 61, 76, 248, 75, 76, 57, 76, 77, 75, 248, 248, 21, 248, 23, 248, 79, 64, 61, 74, 61, 248, 75, 76, 57, 76, 77, 75, 248, 20, 248, 23, 248, 71, 74, 248, 75, 76, 57, 76, 77, 75, 248, 22, 248, 23, 14};
        userResembleInputStr = [self StringFromDetectiveData:value];
    }
    return userResembleInputStr;
}

//: sender
+ (NSString *)kCropValue {
    /* static */ NSString *kCropValue = nil;
    if (!kCropValue) {
        Byte value[] = {6, 94, 3, 21, 7, 16, 6, 7, 20, 94};
        kCropValue = [self StringFromDetectiveData:value];
    }
    return kCropValue;
}

//: content
+ (NSString *)k_jumpTitle {
    /* static */ NSString *k_jumpTitle = nil;
    if (!k_jumpTitle) {
        Byte value[] = {7, 77, 11, 182, 82, 67, 195, 211, 55, 178, 36, 22, 34, 33, 39, 24, 33, 39, 112};
        k_jumpTitle = [self StringFromDetectiveData:value];
    }
    return k_jumpTitle;
}

//: timetag
+ (NSString *)mainEconomicalValue {
    /* static */ NSString *mainEconomicalValue = nil;
    if (!mainEconomicalValue) {
        Byte value[] = {7, 11, 13, 224, 155, 126, 218, 241, 68, 133, 6, 175, 17, 105, 94, 98, 90, 105, 86, 92, 218};
        mainEconomicalValue = [self StringFromDetectiveData:value];
    }
    return mainEconomicalValue;
}

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
+ (NSString *)mainDepartKey {
    /* static */ NSString *mainDepartKey = nil;
    if (!mainDepartKey) {
        Byte value[] = {165, 80, 13, 208, 232, 180, 154, 48, 133, 227, 60, 81, 117, 19, 34, 21, 17, 36, 21, 208, 36, 17, 18, 28, 21, 208, 25, 22, 208, 30, 31, 36, 208, 21, 40, 25, 35, 36, 35, 208, 30, 31, 36, 25, 22, 25, 19, 17, 36, 25, 31, 30, 35, 216, 35, 21, 34, 25, 17, 28, 208, 25, 30, 36, 21, 23, 21, 34, 208, 32, 34, 25, 29, 17, 34, 41, 208, 27, 21, 41, 220, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 208, 36, 25, 29, 21, 36, 17, 23, 208, 25, 30, 36, 21, 23, 21, 34, 220, 35, 21, 30, 20, 21, 34, 208, 36, 21, 40, 36, 220, 34, 21, 19, 21, 25, 38, 21, 34, 208, 36, 21, 40, 36, 220, 19, 31, 30, 36, 21, 30, 36, 208, 36, 21, 40, 36, 220, 35, 36, 17, 36, 37, 35, 208, 25, 30, 36, 21, 23, 21, 34, 217, 22};
        mainDepartKey = [self StringFromDetectiveData:value];
    }
    return mainDepartKey;
}

//: notification.db
+ (NSString *)kAtId {
    /* static */ NSString *kAtId = nil;
    if (!kAtId) {
        Byte value[] = {15, 12, 13, 110, 20, 141, 111, 180, 223, 184, 198, 77, 197, 98, 99, 104, 93, 90, 93, 87, 85, 104, 93, 99, 98, 34, 88, 86, 199};
        kAtId = [self StringFromDetectiveData:value];
    }
    return kAtId;
}

//: select count(serial) from notifications where status = ?
+ (NSString *)mSubUrl {
    /* static */ NSString *mSubUrl = nil;
    if (!mSubUrl) {
        Byte value[] = {56, 11, 7, 5, 163, 239, 88, 104, 90, 97, 90, 88, 105, 21, 88, 100, 106, 99, 105, 29, 104, 90, 103, 94, 86, 97, 30, 21, 91, 103, 100, 98, 21, 99, 100, 105, 94, 91, 94, 88, 86, 105, 94, 100, 99, 104, 21, 108, 93, 90, 103, 90, 21, 104, 105, 86, 105, 106, 104, 21, 50, 21, 52, 158};
        mSubUrl = [self StringFromDetectiveData:value];
    }
    return mSubUrl;
}

//: update notifications set status  = ? where status = ?
+ (NSString *)kButtTerritoryUrl {
    /* static */ NSString *kButtTerritoryUrl = nil;
    if (!kButtTerritoryUrl) {
        Byte value[] = {53, 85, 3, 32, 27, 15, 12, 31, 16, 203, 25, 26, 31, 20, 17, 20, 14, 12, 31, 20, 26, 25, 30, 203, 30, 16, 31, 203, 30, 31, 12, 31, 32, 30, 203, 203, 232, 203, 234, 203, 34, 19, 16, 29, 16, 203, 30, 31, 12, 31, 32, 30, 203, 232, 203, 234, 107};
        kButtTerritoryUrl = [self StringFromDetectiveData:value];
    }
    return kButtTerritoryUrl;
}

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
+ (NSString *)mainHorrorTitle {
    /* static */ NSString *mainHorrorTitle = nil;
    if (!mainHorrorTitle) {
        Byte value[] = {92, 28, 4, 147, 87, 73, 80, 73, 71, 88, 4, 14, 4, 74, 86, 83, 81, 4, 82, 83, 88, 77, 74, 77, 71, 69, 88, 77, 83, 82, 87, 4, 91, 76, 73, 86, 73, 4, 88, 77, 81, 73, 88, 69, 75, 4, 32, 4, 9, 74, 4, 69, 82, 72, 4, 87, 88, 69, 88, 89, 87, 4, 5, 33, 4, 35, 4, 83, 86, 72, 73, 86, 4, 70, 93, 4, 88, 77, 81, 73, 88, 69, 75, 4, 72, 73, 87, 71, 4, 80, 77, 81, 77, 88, 4, 35, 11};
        mainHorrorTitle = [self StringFromDetectiveData:value];
    }
    return mainHorrorTitle;
}

//: serial
+ (NSString *)show_vileContent {
    /* static */ NSString *show_vileContent = nil;
    if (!show_vileContent) {
        Byte value[] = {6, 23, 11, 103, 232, 163, 34, 40, 191, 1, 75, 92, 78, 91, 82, 74, 85, 61};
        show_vileContent = [self StringFromDetectiveData:value];
    }
    return show_vileContent;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeforeDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "BeforeDb.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import "NTESCustomNotificationObject.h"
#import "OverdoObject.h"

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
@interface BeforeDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation BeforeDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)reply { static BeforeDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[BeforeDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self keyDay];
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
    nameAttach(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)barDown:(OverdoObject *)notification
                          //: limit:(NSInteger)limit{
                          before:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:[DetectiveData mainHorrorTitle],
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = [DetectiveData k_distinctionIdent];
    }
    //: io_sync_safe(^{
    nameAttach(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            OverdoObject *notification = [[OverdoObject alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:[DetectiveData show_vileContent]];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:[DetectiveData mainEconomicalValue]];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:[DetectiveData kCropValue]];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:[DetectiveData user_showFormat]];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:[DetectiveData k_jumpTitle]];
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
- (BOOL)readout:(OverdoObject *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    nameAttach(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = [DetectiveData userFabricName];

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
- (void)showBy:(OverdoObject *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = [DetectiveData noti_tapWipeKey];
    //: io_async(^{
    nameUnitImage(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self session];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)selected{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = [DetectiveData userResembleInputStr];
    //: io_async(^{
    nameUnitImage(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self session];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)notificationsEquallyAllReadMark{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = [DetectiveData kButtTerritoryUrl];
    //: io_sync_safe(^{
    nameAttach(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self session];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)session{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = [DetectiveData mSubUrl];
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
- (void)keyDay
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[BarVideo chromaticColour] stringByAppendingString:[DetectiveData kAtId]];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[[DetectiveData mainDepartKey],

                          //: @"create index if not exists readindex on notifications(status)",
                          [DetectiveData appTingFormat],
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          [DetectiveData dream_pressedFormat]];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self session];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const kMinData = &kMinData;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t sumDispatch()
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
        dispatch_queue_set_specific(queue, kMinData, (void *)kMinData, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void nameAttach(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(kMinData))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(sumDispatch(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void nameUnitImage(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(sumDispatch(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end