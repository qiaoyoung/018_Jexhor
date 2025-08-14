// __DEBUG__
// __CLOSE_PRINT__
//
//  TingShowView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkInputProtocol.h"
#import "WorkInputProtocol.h"
//: #import "WorkSessionConfig.h"
#import "LineConfig.h"
//: #import "WorkInputToolBar.h"
#import "CoatButtonView.h"
//: #import "WorkInputAtCache.h"
#import "AdministratorCache.h"

//: @class WorkInputMoreContainerView;
@class SignalingView;
//: @class WorkInputEmoticonContainerView;
@class ReferView;
//: @class WorkReplyContentView;
@class CircleView;



//: typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    //: AudioRecordPhaseStart,
    AudioRecordPhaseStart,
    //: AudioRecordPhaseRecording,
    AudioRecordPhaseRecording,
    //: AudioRecordPhaseCancelling,
    AudioRecordPhaseCancelling,
    //: AudioRecordPhaseEnd
    AudioRecordPhaseEnd
//: };
};



//: @protocol NIMInputDelegate <NSObject>
@protocol SignalingDelegate <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)nameLast:(CGFloat)inputHeight;

//: @end
@end

//: @interface WorkInputView : UIView
@interface TingShowView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) WorkInputToolBar *toolBar;
@property (strong, nonatomic) CoatButtonView *toolBar;
//: @property (strong, nonatomic) WorkInputMoreContainerView *moreContainer;
@property (strong, nonatomic) SignalingView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) WorkReplyContentView *replyedContent;
@property (nonatomic, strong) CircleView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) WorkInputAtCache *atCache;
@property (nonatomic, strong) AdministratorCache *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithContainerDisable:(CGRect)frame
                       //: config:(id<WorkSessionConfig>)config;
                       success:(id<LineConfig>)config;

//: - (void)reset;
- (void)more;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)commentMinimum:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<SignalingDelegate>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setMislay:(id<ButtonDelegate>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setSearched:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)value:(NSString*)placeHolder labelDisable:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)sign:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)sumPower:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)streetwiseItems:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)need:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)militaryPost;

//: @end
@end
