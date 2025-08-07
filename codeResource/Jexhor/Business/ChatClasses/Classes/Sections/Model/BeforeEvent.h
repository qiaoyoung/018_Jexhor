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
//: #import "FFFMessageModel.h"
#import "PurseModel.h"

//: @interface FFFKitEvent : NSObject
@interface BeforeEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) FFFMessageModel *messageModel;
@property (nonatomic,strong) PurseModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const FFFKitEventNameTapContent;
extern NSString *const dream_makeMsg;
//: extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const appCenterMsg;
//: extern NSString *const FFFKitEventNameTapAudio;
extern NSString *const appAssetIdent;

//: extern NSString *const FFFKitEventNameTapRepliedContent;
extern NSString *const m_titleMessage;