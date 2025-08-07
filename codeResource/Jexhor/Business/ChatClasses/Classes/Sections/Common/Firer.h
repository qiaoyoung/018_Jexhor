// __DEBUG__
// __CLOSE_PRINT__
//
//  Firer.h
// Secret
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushKitTimerHolder.h"
#import "TouchMax.h"

//: @class NIMKitFirerInfo;
@class JointMax;

//: @interface PushKitNotificationFirer : NSObject<PushKitTimerHolderDelegate>
@interface Firer : NSObject<TempDelegate>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) PushKitTimerHolder *timer;
@property (nonatomic,strong) TouchMax *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)textOf:(JointMax *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface JointMax : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)media;

//: - (NSString *)saveIdentity;
- (NSString *)team;

//: @end
@end
