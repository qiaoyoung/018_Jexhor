// __DEBUG__
// __CLOSE_PRINT__
//
//  CountPickerController.h
// Secret
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "PushKitMediaPickerDelegate.h"
#import "AddDelegate.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface PushKitMediaPickerController : TZImagePickerController
@interface CountPickerController : TZImagePickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;
- (instancetype)initWithExamine:(NSInteger)maxImagesCount;

//: @property (nonatomic, weak) id<PushKitMediaPickerDelegate> nim_delegate;
@property (nonatomic, weak) id<AddDelegate> nim_delegate;

//: @property(nonatomic, strong) NSArray<NSString *> *mediaTypes;
@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
