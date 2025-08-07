
#import <Foundation/Foundation.h>

NSString *StringFromCertaintyData(Byte *data);


//: icon_session_time_bg
Byte showDramaticallyUrl[] = {73, 20, 4, 14, 181, 165, 33, 205, 32, 221, 181, 45, 16, 56, 109, 103, 115, 114, 99, 119, 105, 119, 119, 109, 115, 114, 99, 120, 109, 113, 105, 99, 102, 107, 72};

//: {8,20,8,20}
Byte app_cancelMsg[] = {56, 11, 97, 4, 220, 153, 141, 147, 145, 141, 153, 141, 147, 145, 222, 143};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountView.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "CountView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"

//: @implementation NTESSessionTipContentView
@implementation CountView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initAssemblage
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initAssemblage]) {
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

//: - (void)refresh:(PushMessageModel *)model{
- (void)name:(PurseModel *)model{
    //: [super refresh:model];
    [super name:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<CreateInfo> attachment = (id<CreateInfo>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(menuOn)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment menuOn];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)link:(UIControlState)state array:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromCertaintyData(showDramaticallyUrl)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromCertaintyData(app_cancelMsg));
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: @end
@end

Byte * CertaintyDataToCache(Byte *data) {
    int aspectWith = data[0];
    int messageLeave = data[1];
    Byte milk = data[2];
    int quantityerchange = data[3];
    if (!aspectWith) return data + quantityerchange;
    for (int i = quantityerchange; i < quantityerchange + messageLeave; i++) {
        int value = data[i] - milk;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[quantityerchange + messageLeave] = 0;
    return data + quantityerchange;
}

NSString *StringFromCertaintyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CertaintyDataToCache(data)];
}
