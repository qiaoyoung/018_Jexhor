// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol StanzaUidelegate <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)memberStatus; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)retry; //重收消息
//: @end
@end

//: @interface PushSessionAudioContentView : PushSessionMessageContentView
@interface ReadControl : MoldControl

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable; //语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<StanzaUidelegate> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setElite:(BOOL)isPlaying;

//: @end
@end
