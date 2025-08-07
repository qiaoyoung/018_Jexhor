// __DEBUG__
// __CLOSE_PRINT__
//
//  PushCellConfig.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class PushSessionMessageContentView;
@class MoldControl;
//: @class PushMessageModel;
@class PurseModel;

//: @protocol PushCellLayoutConfig <NSObject>
@protocol MessageImageContainer <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(PushMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)item:(PurseModel *)model user:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(PushMessageModel *)model;
- (NSString *)mark:(PurseModel *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(PushMessageModel *)model;
- (UIEdgeInsets)tap:(PurseModel *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(PushMessageModel *)model;
- (UIEdgeInsets)dataCellInput:(PurseModel *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(PushMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)temp:(PurseModel *)model length:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(PushMessageModel *)model;
- (NSString *)atDisable:(PurseModel *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(PushMessageModel *)model;
- (UIEdgeInsets)ting:(PurseModel *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(PushMessageModel *)model;
- (UIEdgeInsets)item:(PurseModel *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(PushMessageModel *)model;
- (BOOL)buttonTitle:(PurseModel *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(PushMessageModel *)model;
- (CGPoint)progressOf:(PurseModel *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(PushMessageModel *)model;
- (CGSize)gray:(PurseModel *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(PushMessageModel *)model;
- (BOOL)show:(PurseModel *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(PushMessageModel *)model;
- (CGPoint)size:(PurseModel *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(PushMessageModel *)model;
- (BOOL)showOption:(PurseModel *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(PushMessageModel *)model;
- (NSArray *)electViews:(PurseModel *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(PushMessageModel *)model;
- (BOOL)remotes:(PurseModel *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(PushMessageModel *)model;
- (BOOL)extra:(PurseModel *)model;


//: @end
@end
