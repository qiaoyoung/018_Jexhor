// __DEBUG__
// __CLOSE_PRINT__
//
//  TextNameView.h
// Secret
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionMessageContentView.h"
#import "MoldControl.h"

//: @class M80AttributedLabel;
@class InsertView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface PushReplyedTextContentView : PushSessionMessageContentView
@interface TextNameView : MoldControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) InsertView *textLabel;
//: @property (nonatomic, strong) UILabel *audioLabel;
@property (nonatomic, strong) UILabel *audioLabel;

//: @property (nonatomic,strong) UILabel *fromUser;
@property (nonatomic,strong) UILabel *fromUser;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIImageView *picView;
@property (nonatomic,strong) UIImageView *picView;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
