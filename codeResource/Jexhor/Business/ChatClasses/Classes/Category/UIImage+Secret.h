// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Secret.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (Secret)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)noRecording:(NSString *)imageName title:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)max:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              crunchSize:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              secondText:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)info:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)off;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)blueMain;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)searched:(CGSize)size;

//: @end
@end