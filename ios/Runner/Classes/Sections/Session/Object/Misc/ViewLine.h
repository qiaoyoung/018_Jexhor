// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESJanKenPonAttachment;
@class ImageCount;
//: @class NTESSnapchatAttachment;
@class PassePartoutAccount;
//: @class NTESWhiteboardAttachment;
@class ClickText;
//: @class NTESRedPacketAttachment;
@class ItemViewAttachment;
//: @class NTESRedPacketTipAttachment;
@class NameButton;
//: @class NTESMultiRetweetAttachment;
@class ViewColor;
//: @class NTESShareCardAttachment;
@class InputAttachment;

//: @interface NTESSessionMsgConverter : NSObject
@interface ViewLine : NSObject

//: + (NIMMessage *)msgWithText:(NSString *)text;
+ (NIMMessage *)distant:(NSString *)text;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)name:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)representation:(NSString *)path;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)enableAudio:(NSString *)filePath;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)last:(NSString *)filePath;

//: + (NIMMessage *)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment;
+ (NIMMessage *)backgroundPon:(ImageCount *)attachment;

//: + (NIMMessage *)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment;
+ (NIMMessage *)districtManager:(PassePartoutAccount *)attachment;

//: + (NIMMessage *)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment;
+ (NIMMessage *)videoSendAttachment:(ClickText *)attachment;

//: + (NIMMessage *)msgWithFilePath:(NSString *)path;
+ (NIMMessage *)screen:(NSString *)path;

//: + (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)option:(NSData *)data fileMax:(NSString *)extension;

//: + (NIMMessage *)msgWithTip:(NSString *)tip;
+ (NIMMessage *)view:(NSString *)tip;

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)menu:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              range:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt;
         bringHome:(NSString *)revokeCallbackExt;

//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment;
+ (NIMMessage *)fullMoonPacket:(ItemViewAttachment *)attachment;

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment;
+ (NIMMessage *)anHolder:(NameButton *)attachment;

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment;
+ (NIMMessage *)value:(ViewColor *)attachment;

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;
+ (NIMMessage *)direct:(NIMMessage *)revocationMessage;

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment;
+ (NIMMessage *)locationBottom:(InputAttachment *)attachment;

//: @end
@end