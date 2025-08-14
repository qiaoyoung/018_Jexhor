
#import <Foundation/Foundation.h>

typedef struct {
    Byte estateAgent;
    Byte *withKeep;
    unsigned int deployButton;
} StructAgainstData;

@interface AgainstData : NSObject

+ (instancetype)sharedInstance;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *dreamSessionData;

//: {8,20,8,20}
@property (nonatomic, copy) NSString *appThanTitle;

@end

@implementation AgainstData

+ (instancetype)sharedInstance {
    static AgainstData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AgainstDataToByte:(StructAgainstData *)data {
    for (int i = 0; i < data->deployButton; i++) {
        data->withKeep[i] ^= data->estateAgent;
    }
    data->withKeep[data->deployButton] = 0;
    return data->withKeep;
}

- (NSString *)StringFromAgainstData:(StructAgainstData *)data {
    return [NSString stringWithUTF8String:(char *)[self AgainstDataToByte:data]];
}

//: {8,20,8,20}
- (NSString *)appThanTitle {
    if (!_appThanTitle) {
        StructAgainstData value = (StructAgainstData){96, (Byte []){27, 88, 76, 82, 80, 76, 88, 76, 82, 80, 29, 164}, 11};
        _appThanTitle = [self StringFromAgainstData:&value];
    }
    return _appThanTitle;
}

//: icon_session_time_bg
- (NSString *)dreamSessionData {
    if (!_dreamSessionData) {
        StructAgainstData value = (StructAgainstData){49, (Byte []){88, 82, 94, 95, 110, 66, 84, 66, 66, 88, 94, 95, 110, 69, 88, 92, 84, 110, 83, 86, 128}, 20};
        _dreamSessionData = [self StringFromAgainstData:&value];
    }
    return _dreamSessionData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PacketTextView.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "PacketTextView.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "NameButton.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface PacketTextView()<LabelDelegate>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation PacketTextView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initViewKey
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initViewKey]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[VideoTextView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:10];
        _label.font = [UIFont systemFontOfSize:10];
        //: _label.textColor = [UIColor whiteColor];;
        _label.textColor = [UIColor whiteColor];;

        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: _label.M80delegate = self;
        _label.M80delegate = self;
        //: _label.underLineForLink = NO;
        _label.underLineForLink = NO;
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
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(incandescenceLine)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.incandescenceLine;
        //: [self.label appendText:formatedMessage];
        [self.label bubbleTitle:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".shouldLocalized];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
}




//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)text:(UIControlState)state on:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[AgainstData sharedInstance].dreamSessionData];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([AgainstData sharedInstance].appThanTitle);
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


//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - LabelDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)messageValue:(VideoTextView *)label
             //: clickedOnLink:(id)linkData
             maxAlong:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(aboveImage:)]) {
        //: WorkKitEvent *event = [[WorkKitEvent alloc] init];
        WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = m_libraryValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate aboveImage:event];
    }
}


//: @end
@end
