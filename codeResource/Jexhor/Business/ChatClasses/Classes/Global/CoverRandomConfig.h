// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverRandomConfig.h
// Secret
//
//  Created by chris on 2017/10/25.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushKitSetting.h"
#import "SchoolbagTaskSurroundingsBlock.h"

//: @class PushKitSettings;
@class InputSignalSettings;
//: @class NIMMessage;
@class NIMMessage;

//: typedef NS_ENUM(NSInteger,NIMKitAvatarType) {
typedef NS_ENUM(NSInteger,NIMKitAvatarType) {
    /*矩形直角头像*/
    //: NIMKitAvatarTypeNone,
    NIMKitAvatarTypeNone,
    /*圆形头像*/
    //: NIMKitAvatarTypeRounded,
    NIMKitAvatarTypeRounded,
    /*圆角头像*/
    //: NIMKitAvatarTypeRadiusCorner,
    NIMKitAvatarTypeRadiusCorner,
//: };
};

//: @interface PushKitConfig : NSObject
@interface CoverRandomConfig : NSObject


/*全局设置*/

/**
 *  每隔多久显示一条消息
 */
//: @property (nonatomic, assign) NSTimeInterval messageInterval;
@property (nonatomic, assign) NSTimeInterval messageInterval;

/**
 *  每次抓取的消息个数
 */
//: @property (nonatomic, assign) NSInteger messageLimit;
@property (nonatomic, assign) NSInteger messageLimit;


/**
 *  录音的最大时长
 */
//: @property (nonatomic, assign) NSTimeInterval recordMaxDuration;
@property (nonatomic, assign) NSTimeInterval recordMaxDuration;


/**
 *  输入框的占位符
 */
//: @property (nonatomic, copy) NSString *placeholder;
@property (nonatomic, copy) NSString *placeholder;


/**
 *  输入框能容纳的最大字符长度
 */
//: @property (nonatomic, assign) NSInteger inputMaxLength;
@property (nonatomic, assign) NSInteger inputMaxLength;


/**
 *  cell 的背景色
 */
//: @property (nonatomic, strong) UIColor *cellBackgroundColor;
@property (nonatomic, strong) UIColor *cellBackgroundColor;


/**
 *  头像类型
 */
//: @property (nonatomic, assign) NIMKitAvatarType avatarType;
@property (nonatomic, assign) NIMKitAvatarType avatarType;


/**
 *  昵称字体
 */
//: @property (nonatomic, strong) UIFont *nickFont;
@property (nonatomic, strong) UIFont *nickFont;

/**
 *  已读回执字体
 */
//: @property (nonatomic, strong) UIFont *receiptFont;
@property (nonatomic, strong) UIFont *receiptFont;

/**
 *  昵称颜色
 */
//: @property (nonatomic, strong) UIColor *nickColor;
@property (nonatomic, strong) UIColor *nickColor;


/**
 *  已读回执颜色
 */
//: @property (nonatomic, strong) UIColor *receiptColor;
@property (nonatomic, strong) UIColor *receiptColor;


/**
 *  左侧气泡设置
 */
//: @property (nonatomic, strong) PushKitSettings *leftBubbleSettings;
@property (nonatomic, strong) InputSignalSettings *leftBubbleSettings;

/**
 *  右侧气泡设置
 */
//: @property (nonatomic, strong) PushKitSettings *rightBubbleSettings;
@property (nonatomic, strong) InputSignalSettings *rightBubbleSettings;


/*默认内置配置*/

//: - (NSArray *)defaultMediaItems;
- (NSArray *)name;

//: - (NSArray *)defaultMenuItemsWithMessage:(NIMMessage *)message;
- (NSArray *)onMessage:(NIMMessage *)message;

//: - (CGFloat)maxNotificationTipPadding;
- (CGFloat)family;


/*根据消息取到配置*/

//: - (PushKitSetting *)setting:(NIMMessage *)message;
- (SchoolbagTaskSurroundingsBlock *)click:(NIMMessage *)message;


/*被回复消息取到配置*/

//: - (PushKitSetting *)repliedSetting:(NIMMessage *)message;
- (SchoolbagTaskSurroundingsBlock *)select:(NIMMessage *)message;

//: @end
@end




/**
 *  组件 UI 设置
 */
//: @interface PushKitSettings : NSObject
@interface InputSignalSettings : NSObject

/**
 *  文本类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *textSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *textSetting;

/**
 *  音频类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *audioSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *audioSetting;

/**
 *  视频类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *videoSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *videoSetting;

/**
 *  文件类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *fileSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *fileSetting;

/**
 *  图片类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *imageSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *imageSetting;

/**
 *  地理位置类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *locationSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *locationSetting;

/**
 *  提示类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *tipSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *tipSetting;

/**
 *  Rtc话单类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *rtcCallRecordSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *rtcCallRecordSetting;

/**
 *  无法识别类型消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *unsupportSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *unsupportSetting;

/**
 *  群组通知类型通知消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *teamNotificationSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *teamNotificationSetting;

/**
 *  群组通知类型通知消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *superTeamNotificationSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *superTeamNotificationSetting;

/**
 *  聊天室类型类型通知消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *chatroomNotificationSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *chatroomNotificationSetting;

/**
 *  网络电话类型类型通知消息设置
 */
//: @property (nonatomic, strong) PushKitSetting *netcallNotificationSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *netcallNotificationSetting;

/**
 *  被回复消息的设置
 */
//: @property (nonatomic, strong) PushKitSetting *repliedSetting;
@property (nonatomic, strong) SchoolbagTaskSurroundingsBlock *repliedSetting;


//: @end
@end
