
#import <Foundation/Foundation.h>

@interface FarData : NSObject

+ (instancetype)sharedInstance;

//: {8,20,8,20}
@property (nonatomic, copy) NSString *appTextId;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *userWithName;

@end

@implementation FarData

+ (instancetype)sharedInstance {
    static FarData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FarDataToCache:(Byte *)data {
    int pathAm = data[0];
    Byte legislature = data[1];
    int specialSession = data[2];
    for (int i = specialSession; i < specialSession + pathAm; i++) {
        int value = data[i] - legislature;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[specialSession + pathAm] = 0;
    return data + specialSession;
}

- (NSString *)StringFromFarData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FarDataToCache:data]];
}

//: {8,20,8,20}
- (NSString *)appTextId {
    if (!_appTextId) {
        Byte value[] = {11, 93, 6, 53, 96, 57, 216, 149, 137, 143, 141, 137, 149, 137, 143, 141, 218, 152};
        _appTextId = [self StringFromFarData:value];
    }
    return _appTextId;
}

//: icon_session_time_bg
- (NSString *)userWithName {
    if (!_userWithName) {
        Byte value[] = {20, 99, 10, 84, 221, 231, 173, 55, 49, 202, 204, 198, 210, 209, 194, 214, 200, 214, 214, 204, 210, 209, 194, 215, 204, 208, 200, 194, 197, 202, 178};
        _userWithName = [self StringFromFarData:value];
    }
    return _userWithName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "MemoryControl.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "AccumulationSecret.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface MemoryControl()<TempColorRead>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation MemoryControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initAssemblage
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initAssemblage]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[InsertView alloc] initWithFrame:CGRectZero];
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

//: - (void)refresh:(PushMessageModel *)model{
- (void)name:(PurseModel *)model{
    //: [super refresh:model];
    [super name:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<CreateInfo> attachment = (id<CreateInfo>)object.attachment;
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(menuOn)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.menuOn;
        //: [self.label appendText:formatedMessage];
        [self.label gift:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".ting];
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
- (UIImage *)link:(UIControlState)state array:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[FarData sharedInstance].userWithName];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([FarData sharedInstance].appTextId);
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
#pragma mark - TempColorRead
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)sessionText:(InsertView *)label
             //: clickedOnLink:(id)linkData
             modeReplacement:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(parametering:)]) {
        //: PushKitEvent *event = [[PushKitEvent alloc] init];
        BeforeEvent *event = [[BeforeEvent alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = main_dataValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate parametering:event];
    }
}


//: @end
@end
