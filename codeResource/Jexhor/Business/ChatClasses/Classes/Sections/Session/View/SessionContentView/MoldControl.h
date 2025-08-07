// __DEBUG__
// __CLOSE_PRINT__
//
//  MoldControl.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushKitEvent.h"
#import "BeforeEvent.h"

//: typedef NS_ENUM (NSInteger, PushSessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, PushSessionMessageContentViewLayout){
    //: PushSessionMessageContentViewLayoutAuto = 0, 
    PushSessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: PushSessionMessageContentViewLayoutLeft, 
    PushSessionMessageContentViewLayoutLeft, //左边布局
    //: PushSessionMessageContentViewLayoutRight, 
    PushSessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol TapColor <NSObject>

//: - (void)onCatchEvent:(PushKitEvent *)event;
- (void)parametering:(BeforeEvent *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)duringFrame:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)enableComplete:(NIMMessage *)message pastLength:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)bottoms:(NIMMessage *)message;


//: @end
@end

//: @class PushMessageModel;
@class PurseModel;

//: @interface PushSessionMessageContentView : UIControl
@interface MoldControl : UIControl

//: @property (nonatomic,strong,readonly) PushMessageModel *model;
@property (nonatomic,strong,readonly) PurseModel *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) PushSessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) PushSessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<TapColor> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initAssemblage;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(PushMessageModel*)data;
- (void)name:(PurseModel*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)played:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)pasting:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)enabled:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)link:(UIControlState)state array:(BOOL)outgoing;

//: @end
@end
