// __DEBUG__
// __CLOSE_PRINT__
//
//  SecretHelper.h
// Secret
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface FFFKitFileLocationHelper : NSObject
@interface SecretHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)domain;

//: + (NSString *)getAppTempPath;
+ (NSString *)button;

//: + (NSString *)userDirectory;
+ (NSString *)openNoticeVisible;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)show:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)key:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)sizeOffShared:(NSString *)filename;

//: @end
@end