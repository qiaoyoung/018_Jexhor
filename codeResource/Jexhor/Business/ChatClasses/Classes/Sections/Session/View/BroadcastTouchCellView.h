// __DEBUG__
// __CLOSE_PRINT__
//
//  BroadcastTouchCellView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushMessageCellProtocol.h"
#import "PushMessageCellProtocol.h"
//: #import "PushTimestampModel.h"
#import "PushSharedNeed.h"

//: @class PushSessionMessageContentView;
@class MoldControl;
//: @class PushAvatarImageView;
@class ImageView;
//: @class PushBadgeView;
@class AccumulationCellView;

//: @interface PushMessageCell : UITableViewCell
@interface BroadcastTouchCellView : UITableViewCell

//: @property (nonatomic, strong) PushAvatarImageView *headImageView;
@property (nonatomic, strong) ImageView *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
//: @property (nonatomic, strong) UIView *bubblesBackgroundView; 
@property (nonatomic, strong) UIView *bubblesBackgroundView; //气泡背景视图
//: @property (nonatomic, strong) PushSessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) MoldControl *replyedBubbleView; //被回复内容区域

//: @property (nonatomic, strong) PushSessionMessageContentView *bubbleView;
@property (nonatomic, strong) MoldControl *bubbleView;//内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; //发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton; //重试
//: @property (nonatomic, strong) PushBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) AccumulationCellView *audioPlayedIcon; //语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton; //已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton; //选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask; //选择遮罩

//: @property (nonatomic, readonly) PushMessageModel *model;
@property (nonatomic, readonly) PurseModel *model;

//: @property (nonatomic, weak) id<PushMessageCellDelegate> delegate;
@property (nonatomic, weak) id<SharedOnly> delegate;

//: - (void)refreshData:(PushMessageModel *)data;
- (void)message:(PurseModel *)data;

//: @end
@end
