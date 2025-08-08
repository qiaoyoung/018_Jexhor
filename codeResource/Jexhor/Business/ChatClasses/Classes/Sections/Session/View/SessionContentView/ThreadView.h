// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionMessageContentView.h"
#import "TextControl.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol TextTing <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)twentyFourHourPeriod; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)sessionMsg; //重收消息
//: @end
@end

//: @interface WorkSessionAudioContentView : WorkSessionMessageContentView
@interface ThreadView : TextControl

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable; //语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<TextTing> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setCombAt:(BOOL)isPlaying;

//: @end
@end
