// __DEBUG__
// __CLOSE_PRINT__
//
//  BuildEnableTool.h
// Secret
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, PushKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, PushKitAuthorizationStatus) {
    //: PushKitAuthorizationStatusAuthorized, 
    PushKitAuthorizationStatusAuthorized, // 已授权
    //: PushKitAuthorizationStatusDenied, 
    PushKitAuthorizationStatusDenied, // 拒绝
    //: PushKitAuthorizationStatusRestricted, 
    PushKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: PushKitAuthorizationStatusNotSupport 
    PushKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface PushKitAuthorizationTool : NSObject
@interface BuildEnableTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(PushKitAuthorizationStatus status))callback;
+ (void)groupDiscussion:(void(^)(PushKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(PushKitAuthorizationStatus status))callback;
+ (void)red:(void(^)(PushKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(PushKitAuthorizationStatus))callback;
+ (void)title:(void (^)(PushKitAuthorizationStatus))callback;

//: @end
@end
