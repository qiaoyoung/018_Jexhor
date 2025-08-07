// __DEBUG__
// __CLOSE_PRINT__
//
//  PushData.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "NameAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "SizeAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "PacketImage.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "AccumulationSecret.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "AttachmentOn.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface PushData : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)aggregationName:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END