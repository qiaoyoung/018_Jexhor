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
//: #import "SGPermission.h"
#import "SkimOverPermission.h"
//: #import "SGPermissionCamera.h"
#import "CountroduceCamera.h"
//: #import "SGPermissionPhoto.h"
#import "TopQuantityContainer.h"

//: @interface SGPermission ()
@interface SkimOverPermission ()
//: @property (nonatomic, assign) SGPermissionType type;
@property (nonatomic, assign) SGPermissionType type;
//: @end
@end

//: @implementation SGPermission
@implementation SkimOverPermission

//: - (void)initWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
- (void)initWithPastAction:(SGPermissionType)type view:(SGPermissionBlock)block {
    //: [SGPermission permissionWithType:type completion:block];
    [SkimOverPermission streetSmart:type bubbleQuick:block];
}

//: + (void)permissionWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
+ (void)streetSmart:(SGPermissionType)type bubbleQuick:(SGPermissionBlock)block {
    //: SGPermission *permission = [[SGPermission alloc] init];
    SkimOverPermission *permission = [[SkimOverPermission alloc] init];
    //: permission.type = type;
    permission.type = type;

    //: if (type == SGPermissionTypeCamera) {
    if (type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera camera:^(SGPermissionCamera * _Nonnull camera, SGPermissionStatus status) {
        [CountroduceCamera waterCooler:^(CountroduceCamera * _Nonnull camera, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    //: } else if (type == SGPermissionTypePhoto) {
    } else if (type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto photo:^(SGPermissionPhoto * _Nonnull photos, SGPermissionStatus status) {
        [TopQuantityContainer bottom:^(TopQuantityContainer * _Nonnull photos, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    }
}

//: - (void)request:(void (^)(BOOL))handler {
- (void)message:(void (^)(BOOL))handler {
    //: if (self.type == SGPermissionTypeCamera) {
    if (self.type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera request:handler];
        [CountroduceCamera emotionChild:handler];
    //: } else if (self.type == SGPermissionTypePhoto) {
    } else if (self.type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto request:handler];
        [TopQuantityContainer separate:handler];
    }
}

//: @end
@end