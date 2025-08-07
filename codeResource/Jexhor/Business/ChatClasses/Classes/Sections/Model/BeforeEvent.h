// __DEBUG__
// __CLOSE_PRINT__
//
//  BeforeEvent.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "PushMessageModel.h"
#import "PurseModel.h"

//: @interface PushKitEvent : NSObject
@interface BeforeEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) PushMessageModel *messageModel;
@property (nonatomic,strong) PurseModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const PushKitEventNameTapContent;
extern NSString *const dream_makeMsg;
//: extern NSString *const PushKitEventNameTapLabelLink;
extern NSString *const appCenterMsg;
//: extern NSString *const PushKitEventNameTapAudio;
extern NSString *const appAssetIdent;

//: extern NSString *const PushKitEventNameTapRepliedContent;
extern NSString *const m_titleMessage;
