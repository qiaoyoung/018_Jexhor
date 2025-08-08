// __DEBUG__
// __CLOSE_PRINT__
//
//  WrittenAccountLab.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WorkMessageModel.h"
#import "ShowModel.h"

//: @interface WorkKitEvent : NSObject
@interface WrittenAccountLab : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) WorkMessageModel *messageModel;
@property (nonatomic,strong) ShowModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const WorkKitEventNameTapContent;
extern NSString *const userTopData;
//: extern NSString *const WorkKitEventNameTapLabelLink;
extern NSString *const k_onText;
//: extern NSString *const WorkKitEventNameTapAudio;
extern NSString *const kTitleData;

//: extern NSString *const WorkKitEventNameTapRepliedContent;
extern NSString *const dreamSumObjectText;
