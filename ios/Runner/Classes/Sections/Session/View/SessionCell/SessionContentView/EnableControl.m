
#import <Foundation/Foundation.h>

typedef struct {
    Byte format;
    Byte *betterOff;
    unsigned int balanceAmbition;
	int course;
	int infoPremium;
} StructOldData;

@interface OldData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation OldData

+ (instancetype)sharedInstance {
    static OldData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OldDataToByte:(StructOldData *)data {
    for (int i = 0; i < data->balanceAmbition; i++) {
        data->betterOff[i] ^= data->format;
    }
    data->betterOff[data->balanceAmbition] = 0;
	if (data->balanceAmbition >= 2) {
		data->course = data->betterOff[0];
		data->infoPremium = data->betterOff[1];
	}
    return data->betterOff;
}

- (NSString *)StringFromOldData:(StructOldData *)data {
    return [NSString stringWithUTF8String:(char *)[self OldDataToByte:data]];
}

//: icon_session_time_bg
- (NSString *)user_messageValue {
    /* static */ NSString *user_messageValue = nil;
    if (!user_messageValue) {
        StructOldData value = (StructOldData){242, (Byte []){155, 145, 157, 156, 173, 129, 151, 129, 129, 155, 157, 156, 173, 134, 155, 159, 151, 173, 144, 149, 155}, 20, 21, 56};
        user_messageValue = [self StringFromOldData:&value];
    }
    return user_messageValue;
}

//: {8,20,8,20}
- (NSString *)m_mustValue {
    /* static */ NSString *m_mustValue = nil;
    if (!m_mustValue) {
        StructOldData value = (StructOldData){112, (Byte []){11, 72, 92, 66, 64, 92, 72, 92, 66, 64, 13, 80}, 11, 73, 148};
        m_mustValue = [self StringFromOldData:&value];
    }
    return m_mustValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableControl.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "EnableControl.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"

//: @implementation NTESSessionTipContentView
@implementation EnableControl

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

//: - (void)refresh:(WorkMessageModel *)model{
- (void)panorama:(ShowModel *)model{
    //: [super refresh:model];
    [super panorama:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<GermanismInfo> attachment = (id<GermanismInfo>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(incandescenceLine)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment incandescenceLine];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)text:(UIControlState)state on:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[[OldData sharedInstance] user_messageValue]];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([[OldData sharedInstance] m_mustValue]);
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
