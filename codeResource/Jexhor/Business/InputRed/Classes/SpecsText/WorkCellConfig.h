// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkCellConfig.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class WorkSessionMessageContentView;
@class TextControl;
//: @class WorkMessageModel;
@class ShowModel;

//: @protocol WorkCellLayoutConfig <NSObject>
@protocol TingConfig <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(WorkMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)from:(ShowModel *)model bubble:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(WorkMessageModel *)model;
- (NSString *)change:(ShowModel *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(WorkMessageModel *)model;
- (UIEdgeInsets)text:(ShowModel *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(WorkMessageModel *)model;
- (UIEdgeInsets)container:(ShowModel *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(WorkMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)temp:(ShowModel *)model disable:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(WorkMessageModel *)model;
- (NSString *)area:(ShowModel *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(WorkMessageModel *)model;
- (UIEdgeInsets)message:(ShowModel *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(WorkMessageModel *)model;
- (UIEdgeInsets)user:(ShowModel *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(WorkMessageModel *)model;
- (BOOL)shouldTitleImpression:(ShowModel *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(WorkMessageModel *)model;
- (CGPoint)back:(ShowModel *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(WorkMessageModel *)model;
- (CGSize)enableRefresh:(ShowModel *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(WorkMessageModel *)model;
- (BOOL)demonstrate:(ShowModel *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(WorkMessageModel *)model;
- (CGPoint)index:(ShowModel *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(WorkMessageModel *)model;
- (BOOL)header:(ShowModel *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(WorkMessageModel *)model;
- (NSArray *)with:(ShowModel *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(WorkMessageModel *)model;
- (BOOL)sessions:(ShowModel *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(WorkMessageModel *)model;
- (BOOL)should:(ShowModel *)model;


//: @end
@end
