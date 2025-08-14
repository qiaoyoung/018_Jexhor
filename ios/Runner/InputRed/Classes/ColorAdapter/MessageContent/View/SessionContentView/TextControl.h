// __DEBUG__
// __CLOSE_PRINT__
//
//  TextControl.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkKitEvent.h"
#import "WrittenAccountLab.h"

//: typedef NS_ENUM (NSInteger, WorkSessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, WorkSessionMessageContentViewLayout){
    //: WorkSessionMessageContentViewLayoutAuto = 0, 
    WorkSessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: WorkSessionMessageContentViewLayoutLeft, 
    WorkSessionMessageContentViewLayoutLeft, //左边布局
    //: WorkSessionMessageContentViewLayoutRight, 
    WorkSessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol ModeBar <NSObject>

//: - (void)onCatchEvent:(WorkKitEvent *)event;
- (void)aboveImage:(WrittenAccountLab *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)propertyLine:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)bimestrial:(NIMMessage *)message bar:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)chamfers:(NIMMessage *)message;


//: @end
@end

//: @class WorkMessageModel;
@class ShowModel;

//: @interface WorkSessionMessageContentView : UIControl
@interface TextControl : UIControl

//: @property (nonatomic,strong,readonly) WorkMessageModel *model;
@property (nonatomic,strong,readonly) ShowModel *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) WorkSessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) WorkSessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<ModeBar> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initViewKey;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(WorkMessageModel*)data;
- (void)panorama:(ShowModel*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)recorded:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)ting:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)osculated:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)text:(UIControlState)state on:(BOOL)outgoing;

//: @end
@end
