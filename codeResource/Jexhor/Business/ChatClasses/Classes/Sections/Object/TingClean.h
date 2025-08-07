// __DEBUG__
// __CLOSE_PRINT__
//
//  TingClean.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFKitMessageProvider.h"
#import "SpecsText.h"
//: #import "FFFSessionConfig.h"
#import "LineConfig.h"

//: @class FFFMessageModel;
@class ShowModel;

//: @interface FFFSessionMsgDatasource : NSObject
@interface TingClean : NSObject

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithNascence:(NIMSession*)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         container:(id<LineConfig>)sessionConfig;


//: @property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) NSMutableArray *items;
//: @property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
//: @property (nonatomic, readonly) NSInteger messageLimit; 
@property (nonatomic, readonly) NSInteger messageLimit; //每页消息显示条数
//: @property (nonatomic, readonly) NSInteger showTimeInterval; 
@property (nonatomic, readonly) NSInteger showTimeInterval; //两条消息相隔多久显示一条时间戳
//: @property (nonatomic, weak) id<FFFSessionConfig> sessionConfig;
@property (nonatomic, weak) id<LineConfig> sessionConfig;

//: - (NSInteger)indexAtModelArray:(FFFMessageModel*)model;
- (NSInteger)casket:(ShowModel*)model;

//复位消息
//: - (void)resetMessages:(void(^)(NSError *error)) handler;
- (void)infoOutside:(void(^)(NSError *error)) handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)input:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;
- (void)historicPeriod:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
//: - (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;
- (void)media:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)marginOf:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)ting:(ShowModel *)model;

//添加消息，会根据时间戳插入到相应位置
//: - (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;
- (NSArray<NSNumber *> *)tool:(NSArray*)models;

//添加消息，直接插入消息列表末尾
//: - (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;
- (NSArray<NSNumber *> *)tagComplete:(NSArray *)models;

//删除消息
//: - (NSArray<NSNumber *> *)deleteMessageModel:(FFFMessageModel*)model;
- (NSArray<NSNumber *> *)shadeMargin:(ShowModel*)model;

//根据范围批量删除消息
//: - (NSArray<NSNumber *> *)deleteModels:(NSRange)range;
- (NSArray<NSNumber *> *)title:(NSRange)range;

// 添加pin
//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)menu:(NIMMessage *)message cut:(void (^)(NSError *))handler;

// 移除pin
//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)minorLeagueTeam:(NIMMessage *)message change:(void (^)(NSError *))handler;

//清理缓存数据
//: - (void)cleanCache;
- (void)message;

//是否显示选择
//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)lineText:(BOOL)isShow;

//: @end
@end