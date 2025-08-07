// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeCircle.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESMessageModel;
@class ActionMessageModel;
//: @class NTESMultiRetweetAttachment;
@class ViewColor;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMergeMessageDataSource : NSObject
@interface RangeCircle : NSObject

//: @property (nonatomic, strong) NSMutableArray<NTESMessageModel *> *items;
@property (nonatomic, strong) NSMutableArray<ActionMessageModel *> *items;

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)plunk:(ViewColor *)attachment
                    //: completion:(void (^)(NSString *msg))complete;
                    corner:(void (^)(NSString *msg))complete;

//: - (NSIndexPath * _Nullable)updateMessage:(NIMMessage *)message;
- (NSIndexPath * _Nullable)broadcastLanguage:(NIMMessage *)message;

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message;
- (ActionMessageModel *)list:(NIMMessage *)message;

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages;
- (NSMutableArray<ActionMessageModel *> *)value:(NSMutableArray <NIMMessage *> *)messages;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END