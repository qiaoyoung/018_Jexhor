// __DEBUG__
// __CLOSE_PRINT__
//
//  MainContainerView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "PushInputProtocol.h"
#import "PushInputProtocol.h"
//: #import "PushSessionConfig.h"
#import "CreateTop.h"
//: #import "PushInputToolBar.h"
#import "GildTheLilyView.h"
//: #import "PushInputAtCache.h"
#import "VoiceSharedCache.h"

//: @class PushInputMoreContainerView;
@class GhbView;
//: @class PushInputEmoticonContainerView;
@class CrossView;
//: @class PushReplyContentView;
@class GoopView;



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
@protocol LayerIndexDelegate <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)disabled:(CGFloat)inputHeight;

//: @end
@end

//: @interface PushInputView : UIView
@interface MainContainerView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) PushInputToolBar *toolBar;
@property (strong, nonatomic) GildTheLilyView *toolBar;
//: @property (strong, nonatomic) PushInputMoreContainerView *moreContainer;
@property (strong, nonatomic) GhbView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) PushReplyContentView *replyedContent;
@property (nonatomic, strong) GoopView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) PushInputAtCache *atCache;
@property (nonatomic, strong) VoiceSharedCache *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithTitle:(CGRect)frame
                       //: config:(id<PushSessionConfig>)config;
                       emptySessionConfig:(id<CreateTop>)config;

//: - (void)reset;
- (void)reloadReset;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)tempStatus:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<LayerIndexDelegate>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setSelected:(id<SizeDelegate>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setSetForCigaretteHolder:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)value:(NSString*)placeHolder key:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)need:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)maxPower:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)by:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)should:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)aggregation;

//: @end
@end
