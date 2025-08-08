// __DEBUG__
// __CLOSE_PRINT__
//
//  CircleView.h
// MessageContent
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol WorkReplyContentViewDelegate <NSObject>
@protocol ProviderLine <NSObject>

//: @optional
@optional
//: - (void)onClearReplyContent:(id)sender;
- (void)actionned:(id)sender;

//: @end
@end

//: @interface WorkReplyContentView : UIView
@interface CircleView : UIView

//: @property (nonatomic,strong) UIButton *closeButton;
@property (nonatomic,strong) UIButton *closeButton;

//: @property (nonatomic,strong) UIView *divider;
@property (nonatomic,strong) UIView *divider;

//: @property (nonatomic,strong) UILabel *fromUser;
@property (nonatomic,strong) UILabel *fromUser;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIImageView *picView;
@property (nonatomic,strong) UIImageView *picView;

//: @property (nonatomic,strong) NIMMessage *replymessage;
@property (nonatomic,strong) NIMMessage *replymessage;

//: @property (nonatomic,weak) id<WorkReplyContentViewDelegate> delegate;
@property (nonatomic,weak) id<ProviderLine> delegate;

//: - (void)dismiss;
- (void)name;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
