// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// Secret
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface TingMargin : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface PushInputAtCache : NSObject
@interface VoiceSharedCache : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)read:(NSString *)sendText;

//: - (void)clean;
- (void)image;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)lengthEdge:(TingMargin *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (TingMargin *)totalry:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (TingMargin *)pop:(NSString *)name;

//: @end
@end
