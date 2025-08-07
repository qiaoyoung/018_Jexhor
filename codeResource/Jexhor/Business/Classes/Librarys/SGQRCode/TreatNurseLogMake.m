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
#import "TreatNurseLogMake.h"

//: static SGQRCodeLog *singleton = nil;
static TreatNurseLogMake *appBlockKey = nil;

//: @implementation SGQRCodeLog
@implementation TreatNurseLogMake

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)queryed {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (appBlockKey == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            appBlockKey = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return appBlockKey;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] queryed];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)imageBack:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] queryed];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)atZone:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] queryed];
}

//: @end
@end