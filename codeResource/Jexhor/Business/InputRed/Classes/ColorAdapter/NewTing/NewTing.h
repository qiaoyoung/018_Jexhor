// __DEBUG__
// __CLOSE_PRINT__
//
//  NewTing.h
// MessageContent
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, WorkKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, WorkKitAuthorizationStatus) {
    //: WorkKitAuthorizationStatusAuthorized, 
    WorkKitAuthorizationStatusAuthorized, // 已授权
    //: WorkKitAuthorizationStatusDenied, 
    WorkKitAuthorizationStatusDenied, // 拒绝
    //: WorkKitAuthorizationStatusRestricted, 
    WorkKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: WorkKitAuthorizationStatusNotSupport 
    WorkKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface WorkKitAuthorizationTool : NSObject
@interface NewTing : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(WorkKitAuthorizationStatus status))callback;
+ (void)label:(void(^)(WorkKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(WorkKitAuthorizationStatus status))callback;
+ (void)requestPin:(void(^)(WorkKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(WorkKitAuthorizationStatus))callback;
+ (void)bottomAuthorization:(void (^)(WorkKitAuthorizationStatus))callback;

//: @end
@end
