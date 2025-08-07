// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageView.h
// Secret
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushKitDependency.h"
#import "PushKitDependency.h"

//: @interface PushAvatarImageView : UIControl
@interface ImageView : UIControl
//: @property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImage *image;
//: @property (nonatomic,assign) CGFloat cornerRadius;
@property (nonatomic,assign) CGFloat cornerRadius;

//: - (void)setAvatarBySession:(NIMSession *)session;
- (void)setModel:(NIMSession *)session;
//: - (void)setAvatarByMessage:(NIMMessage *)message;
- (void)setWorld:(NIMMessage *)message;

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)everyBarImage:(NSURL *)url messageColor:(UIImage *)placeholder;
//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;
- (void)image:(NSURL *)url set:(UIImage *)placeholder version:(SDWebImageOptions)options;

//: @end
@end
