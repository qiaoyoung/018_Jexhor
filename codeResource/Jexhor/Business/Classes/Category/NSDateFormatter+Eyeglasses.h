// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDateFormatter+KIDateFormatter.h
//  Kitalker
//
//  Created by chen on 12-8-23.
//
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDateFormatter (KIAdditions)
@interface NSDateFormatter (Eyeglasses)

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)tab:(NSString *)format buttonFor:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)endWith:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)link:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)bottomOf:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)infoYear:(NSDate *)date;

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)dataDate:(NSString *)format twentyFourHours:(NSDate *)date;

//: @end
@end