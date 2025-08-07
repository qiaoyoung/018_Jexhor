// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFSessionConfigurateProtocol.h
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "ShowModel.h"

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
@protocol MagnitudeeractorDelegate <NSObject>

//: - (void)didFetchMessageData;
- (void)fetchForPile;

//: - (void)didRefreshMessageData;
- (void)tingMail;

//: - (void)didPullUpMessageData;
- (void)titleManager;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol WithText <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)limit:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)imageRadiogram:(NIMMessage *)message title_strong:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)completion:(NIMMessage *)message viewCompletion:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)colorTo:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          searched_strong:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         displacePath:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)red:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)message:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             punctuate:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)voice:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              completion:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             date:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)object:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          media:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             streetwise:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)commentMessages:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)holder:(NSArray *)messages;

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message;
- (ShowModel *)pin:(NIMMessage *)message;

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message;
- (ShowModel *)more:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)unwelcomeRange:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)data:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)with;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)fieldRead:(BOOL)needMarkDataModel;

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message;
- (ShowModel *)modelByQuestion:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)directFlip;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)userTeam:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)sendBlue:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)app:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)valueChange:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)noRemove:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)full:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)packet:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)when:(ShowModel *)model;

//排版接口

//: - (void)resetLayout;
- (void)show;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)redBy:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)nim;

//: - (void)pullUp;
- (void)step;

//按钮响应接口
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel;
- (void)to:(ShowModel *)messageModel;

//: - (void)mediaPicturePressed;
- (void)enablePressed;

//: - (void)mediaShootPressed;
- (void)sendCelluloidWith;

//: - (void)mediaLocationPressed;
- (void)child;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)alongTo;

//: - (void)onViewDidDisappear;
- (void)familyTitle;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)send;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setSend:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setBottleDoingPacket:(NIMMessage *)message;

//: @end
@end