// __DEBUG__
// __CLOSE_PRINT__
//
//  AddEnablely.h
// Secret
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

//: @interface FFFMessageMaker : NSObject
@interface AddEnablely : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)margin:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)image:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)session:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)domain:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)success:(NSData *)data cancel:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)user:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface MessageMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)item:(int64_t)type
                             //: content:(NSString *)content
                             createGround:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 input:(NSString *)ext;

//: @end
@end