// __DEBUG__
// __CLOSE_PRINT__
//
//  PushSessionConfigurateProtocol.h
// Secret
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushMessageModel.h"
#import "PurseModel.h"

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
    //: NIMKitSessionStateNormal = 0,
    NIMKitSessionStateNormal = 0,
    //: NIMKitSessionStateSelect,
    NIMKitSessionStateSelect,
//: };
};

//: @protocol NIMSessionInteractorDelegate <NSObject>
@protocol DeviceSecret <NSObject>

//: - (void)didFetchMessageData;
- (void)messageData;

//: - (void)didRefreshMessageData;
- (void)nameDismiss;

//: - (void)didPullUpMessageData;
- (void)pictureItem;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol LabelCrossSumeractor <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)mailDelete:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)nameMessage:(NIMMessage *)message textMessage:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)lastQuick:(NIMMessage *)message data:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)cell:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          bar:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         tingShow:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)color:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)dataFormatting:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             actuarialTable:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)distinguish:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              custom:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             queryed:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)broadcast:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          showCompletion:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             key:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)along:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)background:(NSArray *)messages;

//: - (PushMessageModel *)updateMessage:(NIMMessage *)message;
- (PurseModel *)device:(NIMMessage *)message;

//: - (PushMessageModel *)deleteMessage:(NIMMessage *)message;
- (PurseModel *)itemInAdd:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)content:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)crop:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)ofItems;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)characteriseSizeRead:(BOOL)needMarkDataModel;

//: - (PushMessageModel *)findMessageModel:(NIMMessage *)message;
- (PurseModel *)select:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)inputMargin;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)send:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)viewMessages:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)valueWith:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)dateExamine:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)info:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)kind:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)value:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(PushMessageModel *)model;
- (void)origin:(PurseModel *)model;

//排版接口

//: - (void)resetLayout;
- (void)resetLayout;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)system:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)light;

//: - (void)pullUp;
- (void)statisticalTable;

//按钮响应接口
//: - (void)mediaAudioPressed:(PushMessageModel *)messageModel;
- (void)pin:(PurseModel *)messageModel;

//: - (void)mediaPicturePressed;
- (void)marginWithPressed;

//: - (void)mediaShootPressed;
- (void)title;

//: - (void)mediaLocationPressed;
- (void)stepWith;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)need;

//: - (void)onViewDidDisappear;
- (void)with;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)color;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setColor:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setReferenceMessage:(NIMMessage *)message;

//: @end
@end
