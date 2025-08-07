// __DEBUG__
// __CLOSE_PRINT__
//
//  BarVideo.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESFileLocationHelper : NSObject
@interface BarVideo : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)findAdd;

//: + (NSString *)getAppTempPath;
+ (NSString *)blue;

//: + (NSString *)userDirectory;
+ (NSString *)chromaticColour;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)point:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)to:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)image:(NSString *)filename;

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename;
+ (NSString *)container:(NSString *)filename;

//: @end
@end