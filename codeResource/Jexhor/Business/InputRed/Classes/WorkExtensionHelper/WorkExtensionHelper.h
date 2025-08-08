// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkExtensionHelper.h
// MessageContent
//
//  Created by amao on 4/25/16.
//  Copyright © 2016 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSString (NIMKitExtension)
@interface NSString (RecordMessageTeam)
//: - (NSDictionary *)nimkit_jsonDict;
- (NSDictionary *)nimkit;
//: @end
@end


//: @interface NSDictionary (NIMKitExtension)
@interface NSDictionary (RecordMessageTeam)
//: - (NSString *)nimkit_jsonString;
- (NSString *)color;
//: @end
@end
