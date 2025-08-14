// __DEBUG__
// __CLOSE_PRINT__
//
//  CellView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkMessageCellProtocol.h"
#import "WorkMessageCellProtocol.h"
//: #import "WorkTimestampModel.h"
#import "EngraftTing.h"

//: @class WorkSessionMessageContentView;
@class TextControl;
//: @class WorkAvatarImageView;
@class ButtonControl;
//: @class WorkBadgeView;
@class AggregationView;

//: @interface WorkMessageCell : UITableViewCell
@interface CellView : UITableViewCell

//: @property (nonatomic, strong) WorkAvatarImageView *headImageView;
@property (nonatomic, strong) ButtonControl *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
//: @property (nonatomic, strong) UIView *bubblesBackgroundView; 
@property (nonatomic, strong) UIView *bubblesBackgroundView; //气泡背景视图
//: @property (nonatomic, strong) WorkSessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) TextControl *replyedBubbleView; //被回复内容区域

//: @property (nonatomic, strong) WorkSessionMessageContentView *bubbleView;
@property (nonatomic, strong) TextControl *bubbleView;//内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; //发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton; //重试
//: @property (nonatomic, strong) WorkBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) AggregationView *audioPlayedIcon; //语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton; //已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton; //选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask; //选择遮罩

//: @property (nonatomic, readonly) WorkMessageModel *model;
@property (nonatomic, readonly) ShowModel *model;

//: @property (nonatomic, weak) id<WorkMessageCellDelegate> delegate;
@property (nonatomic, weak) id<SystemCircle> delegate;

//: - (void)refreshData:(WorkMessageModel *)data;
- (void)flushVideo:(ShowModel *)data;

//: @end
@end
