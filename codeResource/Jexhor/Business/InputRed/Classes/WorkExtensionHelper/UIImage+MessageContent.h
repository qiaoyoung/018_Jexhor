// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+MessageContent.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (MessageContent)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)name:(NSString *)imageName color:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)link:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              quantity:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              session:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)view:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)imageFormatUpload;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)quick;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)image:(CGSize)size;

//: @end
@end