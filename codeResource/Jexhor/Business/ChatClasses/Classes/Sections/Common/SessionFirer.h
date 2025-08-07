// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionFirer.h
// MessageContent
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitTimerHolder.h"
#import "ChangeHolder.h"

//: @class NIMKitFirerInfo;
@class ColorInfo;

//: @interface FFFKitNotificationFirer : NSObject<FFFKitTimerHolderDelegate>
@interface SessionFirer : NSObject<KitWith>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) FFFKitTimerHolder *timer;
@property (nonatomic,strong) ChangeHolder *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)imageTemp:(ColorInfo *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface ColorInfo : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)view;

//: - (NSString *)saveIdentity;
- (NSString *)userShow;

//: @end
@end