// __DEBUG__
// __CLOSE_PRINT__
//
//  LineHelper.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESFileLocationHelper : NSObject
@interface LineHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)icon;

//: + (NSString *)getAppTempPath;
+ (NSString *)container;

//: + (NSString *)userDirectory;
+ (NSString *)remove;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)message:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)session:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)pinBy:(NSString *)filename;

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename;
+ (NSString *)inputIconFile:(NSString *)filename;

//: @end
@end