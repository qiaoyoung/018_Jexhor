// __DEBUG__
// __CLOSE_PRINT__
//
//  EnterName.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @class MyUserKitLocationPoint;
@class MyUserKitLocationPoint;

//: @interface WorkMessageMaker : NSObject
@interface EnterName : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)child:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)name:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)greenish:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)reply:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)birdSEyeView:(NSData *)data min:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)show:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface GeneratorMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)openExt:(int64_t)type
                             //: content:(NSString *)content
                             index:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 speedyTing:(NSString *)ext;

//: @end
@end
