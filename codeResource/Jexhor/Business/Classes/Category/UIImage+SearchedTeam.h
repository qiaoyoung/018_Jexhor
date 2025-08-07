// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+SearchedTeam.h
//  NIM
//
//  Created by chris on 15/7/13.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (NTES)
@interface UIImage (SearchedTeam)

//: + (UIImage *)fetchImage:(NSString *)imageNameOrPath;
+ (UIImage *)originImage:(NSString *)imageNameOrPath;

//: - (UIImage *)imageForAvatarUpload;
- (UIImage *)content;

//: @end
@end