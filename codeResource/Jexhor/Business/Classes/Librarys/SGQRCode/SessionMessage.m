// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGQRCodeLog.h"
#import "SessionMessage.h"

//: static SGQRCodeLog *singleton = nil;
static SessionMessage *userDialogData = nil;

//: @implementation SGQRCodeLog
@implementation SessionMessage

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)gen {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (userDialogData == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            userDialogData = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return userDialogData;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] gen];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)magnitude:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] gen];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)circle:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] gen];
}

//: @end
@end