// __DEBUG__
// __CLOSE_PRINT__
//
//  MemorySignView.h
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/27.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushSessionConfig.h"
#import "CreateTop.h"
//: #import "PushInputProtocol.h"
#import "PushInputProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface PushInputAudioView : UIView
@interface MemorySignView : UIView

//: @property (nonatomic,weak) id<PushSessionConfig> config;
@property (nonatomic,weak) id<CreateTop> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<SizeDelegate> actionDelegate;


//: @property (nonatomic, assign) NSTimeInterval recordTime;
@property (nonatomic, assign) NSTimeInterval recordTime;

//: @property (nonatomic, strong) UIButton *audioButton;
@property (nonatomic, strong) UIButton *audioButton;

//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;

/** 动画显示 */
//: - (void)animationShow;
- (void)pressedTing;

/** 动画关闭 */
//: - (void)animationClose;
- (void)nearAdd;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
