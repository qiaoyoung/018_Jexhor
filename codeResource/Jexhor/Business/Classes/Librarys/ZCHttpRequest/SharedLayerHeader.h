// __DEBUG__
// __CLOSE_PRINT__
//
//  SharedLayerHeader.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface ZCHttpRequestHeader : NSObject
@interface SharedLayerHeader : NSObject
//: +(NSDictionary *)getHeader;
+(NSDictionary *)input;
//: + (NSString *)getAppID;
+ (NSString *)by;

//: +(NSString *)getIOSVersion;
+(NSString *)versionLabelEmpty;
//: +(NSString*)deviceVersion;
+(NSString*)ofVersion;
//: @end
@end