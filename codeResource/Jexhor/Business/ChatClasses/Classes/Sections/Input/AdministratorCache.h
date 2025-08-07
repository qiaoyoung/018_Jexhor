// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// MessageContent
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface OpendSessionItem : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface FFFInputAtCache : NSObject
@interface AdministratorCache : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)custom:(NSString *)sendText;

//: - (void)clean;
- (void)recording;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)view:(OpendSessionItem *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (OpendSessionItem *)button:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (OpendSessionItem *)modification:(NSString *)name;

//: @end
@end