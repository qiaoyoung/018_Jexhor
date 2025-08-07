// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Recent.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NSString * emptyString(NSString *anMaybeEmptyString);
NSString * emptyString(NSString *anMaybeEmptyString);

//: @interface NSString (NTES)
@interface NSString (Recent)

//: - (CGSize)stringSizeWithFont:(UIFont *)font;
- (CGSize)toFont:(UIFont *)font;

//: - (NSString *)MD5String;
- (NSString *)upNeed;

//: - (NSUInteger)getBytesLength;
- (NSUInteger)timing;

//: - (NSString *)stringByDeletingPictureResolution;
- (NSString *)empty;

//: - (NSString *)tokenByPassword;
- (NSString *)quick;

//: - (NSString *)ntes_localized;
- (NSString *)shouldLocalized;

//: + (NSString *)randomStringWithLength:(NSUInteger)length;
+ (NSString *)voice:(NSUInteger)length;

//: @end
@end