// __DEBUG__
// __CLOSE_PRINT__
//
//  ToTapDatasource.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "PushKitMessageProvider.h"
#import "CountProvider.h"
//: #import "PushSessionConfig.h"
#import "CreateTop.h"

//: @class PushMessageModel;
@class PurseModel;

//: @interface PushSessionMsgDatasource : NSObject
@interface ToTapDatasource : NSObject

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithComment:(NIMSession*)session
                         //: config:(id<PushSessionConfig>)sessionConfig;
                         find:(id<CreateTop>)sessionConfig;


//: @property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) NSMutableArray *items;
//: @property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
//: @property (nonatomic, readonly) NSInteger messageLimit; 
@property (nonatomic, readonly) NSInteger messageLimit; //每页消息显示条数
//: @property (nonatomic, readonly) NSInteger showTimeInterval; 
@property (nonatomic, readonly) NSInteger showTimeInterval; //两条消息相隔多久显示一条时间戳
//: @property (nonatomic, weak) id<PushSessionConfig> sessionConfig;
@property (nonatomic, weak) id<CreateTop> sessionConfig;

//: - (NSInteger)indexAtModelArray:(PushMessageModel*)model;
- (NSInteger)colorDoing:(PurseModel*)model;

//复位消息
//: - (void)resetMessages:(void(^)(NSError *error)) handler;
- (void)allow:(void(^)(NSError *error)) handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)morrowMessages:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;
- (void)text:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
//: - (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;
- (void)pull:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)max:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(PushMessageModel *)model;
- (void)length:(PurseModel *)model;

//添加消息，会根据时间戳插入到相应位置
//: - (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;
- (NSArray<NSNumber *> *)error:(NSArray*)models;

//添加消息，直接插入消息列表末尾
//: - (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;
- (NSArray<NSNumber *> *)shouldModels:(NSArray *)models;

//删除消息
//: - (NSArray<NSNumber *> *)deleteMessageModel:(PushMessageModel*)model;
- (NSArray<NSNumber *> *)area:(PurseModel*)model;

//根据范围批量删除消息
//: - (NSArray<NSNumber *> *)deleteModels:(NSRange)range;
- (NSArray<NSNumber *> *)provider:(NSRange)range;

// 添加pin
//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)titleEnable:(NIMMessage *)message tvCallback:(void (^)(NSError *))handler;

// 移除pin
//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)eviscerateControl:(NIMMessage *)message bubble:(void (^)(NSError *))handler;

//清理缓存数据
//: - (void)cleanCache;
- (void)addRed;

//是否显示选择
//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)summateSearch:(BOOL)isShow;

//: @end
@end
