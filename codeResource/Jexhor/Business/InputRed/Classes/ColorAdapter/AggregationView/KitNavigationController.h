// __DEBUG__
// __CLOSE_PRINT__
//
//  KitNavigationController.h
// MessageContent
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "WorkKitMediaPickerDelegate.h"
#import "ChaseLab.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WorkKitMediaPickerController : TZImagePickerController
@interface KitNavigationController : TZImagePickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;
- (instancetype)initWithMaxBackgroundCountUpStreetwisePage:(NSInteger)maxImagesCount;

//: @property (nonatomic, weak) id<WorkKitMediaPickerDelegate> nim_delegate;
@property (nonatomic, weak) id<ChaseLab> nim_delegate;

//: @property(nonatomic, strong) NSArray<NSString *> *mediaTypes;
@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
