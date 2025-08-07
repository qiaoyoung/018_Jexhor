// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageHelper.h
// MessageContent
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface FFFKitFileLocationHelper : NSObject
@interface ImageHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)alongPath;

//: + (NSString *)getAppTempPath;
+ (NSString *)pinPath;

//: + (NSString *)userDirectory;
+ (NSString *)streetwise;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)key:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)soundVideo:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)notSession:(NSString *)filename;

//: @end
@end