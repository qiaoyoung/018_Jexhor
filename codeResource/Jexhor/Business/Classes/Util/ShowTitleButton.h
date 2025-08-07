// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowTitleButton.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ImageCount.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "NTESRedPacketAttachment.h"
#import "ItemViewAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "NameButton.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ViewColor.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface ShowTitleButton : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)dataTitle:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END