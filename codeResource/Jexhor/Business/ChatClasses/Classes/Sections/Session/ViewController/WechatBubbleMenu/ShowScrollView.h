// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowScrollView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFTextView : UITextView
@interface ShowScrollView : UITextView

//: @property (nonatomic, copy)void (^selectBlock)(FFFMediaItem *item);
@property (nonatomic, copy)void (^selectBlock)(AccountAction *item);

//: @property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);
@property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);

//: @property (nonatomic, copy) NSArray *selectedAllRangeButtons;
@property (nonatomic, copy) NSArray *selectedAllRangeButtons;
//: @property (nonatomic, copy) NSArray *selectedPartRangeButtons;
@property (nonatomic, copy) NSArray *selectedPartRangeButtons;

//: @property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<LineConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<ButtonDelegate> actionDelegate;


//取消文本选中效果
//: - (void)hideTextSelection;
- (void)restoreExamineion;

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message;
- (void)send:(NIMMessage *)message;

// 群公告复制
//: - (void)new_genMediaButton;
- (void)fixing;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END