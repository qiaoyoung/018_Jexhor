// __DEBUG__
// __CLOSE_PRINT__
//
//  SoundView.m
// MessageContent
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionNotificationContentView.h"
#import "SoundView.h"
//: #import "WorkMessageModel.h"
#import "ShowModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation WorkSessionNotificationContentView
@implementation SoundView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initViewKey
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initViewKey]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(WorkMessageModel *)model
- (void)panorama:(ShowModel *)model
{
    //: [super refresh:model];
    [super panorama:model];
    //: self.label.text = [WorkKitUtil messageTipContent:model.message];
    self.label.text = [WantUtil tingAcross:model.message];
    //: WorkKitSetting *setting = [[MyUserKit sharedKit].config setting:model.message];
    ViewKey *setting = [[MessageContent secretResolution].config ofSetting:model.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;

//    self.label.hidden = YES;
//    self.bubbleImageView.hidden = YES;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [MessageContent secretResolution].config.close;
    //: self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.nim_centerX = self.nim_width * .5f;
    self.label.nim_centerX = self.nim_width * .5f;
    //: self.label.nim_centerY = self.nim_height * .5f;
    self.label.nim_centerY = self.nim_height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}

//: @end
@end
